# SecretStorage module for Python
# Access passwords using the SecretService DBus API
# Author: Dmitry Shachnev, 2013
# License: BSD

"""This module provides some utility functions, but these shouldn't
normally be used by external applications."""

import dbus
from secretstorage.defines import DBUS_UNKNOWN_METHOD, DBUS_NO_SUCH_OBJECT, \
 DBUS_SERVICE_UNKNOWN, DBUS_NO_REPLY, DBUS_NOT_SUPPORTED, DBUS_EXEC_FAILED, \
 SECRETS, SS_PATH, SS_PREFIX, ALGORITHM_DH, ALGORITHM_PLAIN
from secretstorage.dhcrypto import Session
from secretstorage.exceptions import ItemNotFoundException, \
 SecretServiceNotAvailableException
from Crypto.Random import get_random_bytes
from Crypto.Cipher.AES import AESCipher, MODE_CBC, block_size
from secretstorage.dhcrypto import long_to_bytes, bytes_to_long

SERVICE_IFACE = SS_PREFIX + 'Service'

class InterfaceWrapper(dbus.Interface):
	"""Wraps :cls:`dbus.Interface` class and replaces some D-Bus exceptions
	with :doc:`SecretStorage exceptions <exceptions>`."""

	def catch_errors(self, function_in):
		def function_out(*args, **kwargs):
			try:
				return function_in(*args, **kwargs)
			except dbus.exceptions.DBusException as e:
				if e.get_dbus_name() == DBUS_UNKNOWN_METHOD:
					raise ItemNotFoundException('Item does not exist!')
				if e.get_dbus_name() == DBUS_NO_SUCH_OBJECT:
					raise ItemNotFoundException(e.get_dbus_message())
				if e.get_dbus_name() in (DBUS_NO_REPLY, DBUS_NOT_SUPPORTED):
					raise SecretServiceNotAvailableException(
						e.get_dbus_message())
				raise
		return function_out

	def __getattr__(self, attribute):
		result = dbus.Interface.__getattr__(self, attribute)
		if callable(result):
			result = self.catch_errors(result)
		return result

def bus_get_object(bus, name, object_path):
	"""A wrapper around :meth:`SessionBus.get_object` that raises
	:exc:`~secretstorage.exceptions.SecretServiceNotAvailableException`
	when appropriate."""
	try:
		return bus.get_object(name, object_path, introspect=False)
	except dbus.exceptions.DBusException as e:
		if e.get_dbus_name() in (DBUS_SERVICE_UNKNOWN, DBUS_EXEC_FAILED,
		                         DBUS_NO_REPLY):
			raise SecretServiceNotAvailableException(e.get_dbus_message())
		raise

def open_session(bus):
	"""Returns a new Secret Service session."""
	service_obj = bus_get_object(bus, SECRETS, SS_PATH)
	service_iface = dbus.Interface(service_obj, SS_PREFIX+'Service')
	session = Session()
	try:
		output, result = service_iface.OpenSession(
			ALGORITHM_DH,
			dbus.ByteArray(long_to_bytes(session.my_public_key)),
			signature='sv'
		)
	except dbus.exceptions.DBusException as e:
		if e.get_dbus_name() != DBUS_NOT_SUPPORTED:
			raise
		output, result = service_iface.OpenSession(
			ALGORITHM_PLAIN,
			'',
			signature='sv'
		)
		session.encrypted = False
	else:
		session.set_server_public_key(bytes_to_long(output))
	session.object_path = result
	return session

def format_secret(session, secret, content_type):
	"""Formats `secret` to make possible to pass it to the
	Secret Service API."""
	if not isinstance(secret, bytes):
		secret = secret.encode('utf-8')
	if not session.encrypted:
		return dbus.Struct((session.object_path, '',
			dbus.ByteArray(secret), content_type))
	# PKCS-7 style padding
	padding = 0x10 - (len(secret) & 0xf)
	secret += bytes(bytearray((padding,)) * padding)
	aes_iv = get_random_bytes(block_size)
	aes_cipher = AESCipher(session.aes_key, mode=MODE_CBC, IV=aes_iv)
	return dbus.Struct((
		session.object_path,
		dbus.Array(aes_iv),
		dbus.Array(bytearray(aes_cipher.encrypt(secret))),
		content_type
	))

def exec_prompt(bus, prompt, callback):
	"""Executes the given `prompt`, when complete calls `callback`
	function with two arguments: a boolean representing whether the
	operation was dismissed and a list of unlocked item paths. A main
	loop should be running and registered for this function to work."""
	prompt_obj = bus_get_object(bus, SECRETS, prompt)
	prompt_iface = dbus.Interface(prompt_obj, SS_PREFIX+'Prompt')
	prompt_iface.Prompt('', signature='s')
	def new_callback(dismissed, unlocked):
		if isinstance(unlocked, dbus.Array):
			unlocked = list(unlocked)
		callback(bool(dismissed), unlocked)
	prompt_iface.connect_to_signal('Completed', new_callback)

def exec_prompt_glib(bus, prompt):
	"""Like :func:`exec_prompt`, but synchronous (uses loop from GLib
	API). Returns (*dismissed*, *unlocked*) tuple."""
	from gi.repository import GLib
	loop = GLib.MainLoop()
	result = []
	def callback(dismissed, unlocked):
		result.append(dismissed)
		result.append(unlocked)
		loop.quit()
	exec_prompt(bus, prompt, callback)
	loop.run()
	return result[0], result[1]

def exec_prompt_qt(bus, prompt):
	"""Like :func:`exec_prompt`, but synchronous (uses loop from PyQt5
	API). Returns (*dismissed*, *unlocked*) tuple."""
	from PyQt5.QtCore import QCoreApplication
	app = QCoreApplication([])
	result = []
	def callback(dismissed, unlocked):
		result.append(dismissed)
		result.append(unlocked)
		app.quit()
	exec_prompt(bus, prompt, callback)
	app.exec_()
	return result[0], result[1]

def unlock_objects(bus, paths, callback=None):
	"""Requests unlocking objects specified in `paths`. If `callback`
	is specified, calls it when unlocking is complete (see
	:func:`exec_prompt` description for details).
	Otherwise, uses the loop from GLib API and returns a boolean
	representing whether the operation was dismissed."""
	service_obj = bus_get_object(bus, SECRETS, SS_PATH)
	service_iface = InterfaceWrapper(service_obj, SERVICE_IFACE)
	unlocked_paths, prompt = service_iface.Unlock(paths, signature='ao')
	unlocked_paths = list(unlocked_paths)  # Convert from dbus.Array
	if len(prompt) > 1:
		if callback:
			exec_prompt(bus, prompt, callback)
		else:
			return exec_prompt_glib(bus, prompt)[0]
	elif callback:
		# We still need to call it.
		callback(False, unlocked_paths)

def to_unicode(string):
	"""Converts D-Bus string to unicode string."""
	try:
		# For Python 2
		return unicode(string)
	except NameError:
		# For Python 3
		return str(string)
