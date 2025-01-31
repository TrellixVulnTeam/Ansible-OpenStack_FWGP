# All Rights Reserved.
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

import functools
import itertools

from oslo_log import log as logging
from oslo_serialization import jsonutils
from oslo_utils import excutils


from nova import block_device
import nova.conf
from nova import exception
from nova.i18n import _LE
from nova.i18n import _LI
from nova.i18n import _LW
from nova.volume import encryptors

CONF = nova.conf.CONF

LOG = logging.getLogger(__name__)


class _NotTransformable(Exception):
    pass


class _InvalidType(_NotTransformable):
    pass


def update_db(method):
    @functools.wraps(method)
    def wrapped(obj, context, *args, **kwargs):
        try:
            ret_val = method(obj, context, *args, **kwargs)
        finally:
            obj.save()
        return ret_val
    return wrapped


def _get_volume_create_az_value(instance):
    """Determine az to use when creating a volume

    Uses the cinder.cross_az_attach config option to determine the availability
    zone value to use when creating a volume.

    :param nova.objects.Instance instance: The instance for which the volume
        will be created and attached.
    :returns: The availability_zone value to pass to volume_api.create
    """
    # If we're allowed to attach a volume in any AZ to an instance in any AZ,
    # then we don't care what AZ the volume is in so don't specify anything.
    if CONF.cinder.cross_az_attach:
        return None
    # Else the volume has to be in the same AZ as the instance otherwise we
    # fail. If the AZ is not in Cinder the volume create will fail. But on the
    # other hand if the volume AZ and instance AZ don't match and
    # cross_az_attach is False, then volume_api.check_attach will fail too, so
    # we can't really win. :)
    # TODO(mriedem): It would be better from a UX perspective if we could do
    # some validation in the API layer such that if we know we're going to
    # specify the AZ when creating the volume and that AZ is not in Cinder, we
    # could fail the boot from volume request early with a 400 rather than
    # fail to build the instance on the compute node which results in a
    # NoValidHost error.
    return instance.availability_zone


class DriverBlockDevice(dict):
    """A dict subclass that represents block devices used by the virt layer.

    Uses block device objects internally to do the database access.

    _fields and _legacy_fields class attributes present a set of fields that
    are expected on a certain DriverBlockDevice type. We may have more legacy
    versions in the future.

    If an attribute access is attempted for a name that is found in the
    _proxy_as_attr set, it will be proxied to the underlying object. This
    allows us to access stuff that is not part of the data model that all
    drivers understand.

    The save() method allows us to update the database using the underlying
    object. _update_on_save class attribute dictionary keeps the following
    mapping:

        {'object field name': 'driver dict field name (or None if same)'}

    These fields will be updated on the internal object, from the values in the
    dict, before the actual database update is done.
    """

    _fields = set()
    _legacy_fields = set()

    _proxy_as_attr = set()
    _update_on_save = {'disk_bus': None,
                       'device_name': None,
                       'device_type': None}

    def __init__(self, bdm):
        self.__dict__['_bdm_obj'] = bdm

        if self._bdm_obj.no_device:
            raise _NotTransformable()

        self.update({field: None for field in self._fields})
        self._transform()

    def __getattr__(self, name):
        if name in self._proxy_as_attr:
            return getattr(self._bdm_obj, name)
        else:
            super(DriverBlockDevice, self).__getattr__(name)

    def __setattr__(self, name, value):
        if name in self._proxy_as_attr:
            return setattr(self._bdm_obj, name, value)
        else:
            super(DriverBlockDevice, self).__setattr__(name, value)

    def _transform(self):
        """Transform bdm to the format that is passed to drivers."""
        raise NotImplementedError()

    def legacy(self):
        """Basic legacy transformation.

        Basic method will just drop the fields that are not in
        _legacy_fields set. Override this in subclass if needed.
        """
        return {key: self.get(key) for key in self._legacy_fields}

    def attach(self, **kwargs):
        """Make the device available to be used by VMs.

        To be overridden in subclasses with the connecting logic for
        the type of device the subclass represents.
        """
        raise NotImplementedError()

    def save(self):
        for attr_name, key_name in self._update_on_save.items():
            lookup_name = key_name or attr_name
            if self[lookup_name] != getattr(self._bdm_obj, attr_name):
                setattr(self._bdm_obj, attr_name, self[lookup_name])
        self._bdm_obj.save()


class DriverSwapBlockDevice(DriverBlockDevice):
    _fields = set(['device_name', 'swap_size', 'disk_bus'])
    _legacy_fields = _fields - set(['disk_bus'])

    _update_on_save = {'disk_bus': None,
                       'device_name': None}

    def _transform(self):
        if not block_device.new_format_is_swap(self._bdm_obj):
            raise _InvalidType
        self.update({
            'device_name': self._bdm_obj.device_name,
            'swap_size': self._bdm_obj.volume_size or 0,
            'disk_bus': self._bdm_obj.disk_bus
        })


class DriverEphemeralBlockDevice(DriverBlockDevice):
    _new_only_fields = set(['disk_bus', 'device_type', 'guest_format'])
    _fields = set(['device_name', 'size']) | _new_only_fields
    _legacy_fields = (_fields - _new_only_fields |
                      set(['num', 'virtual_name']))

    def _transform(self):
        if not block_device.new_format_is_ephemeral(self._bdm_obj):
            raise _InvalidType
        self.update({
            'device_name': self._bdm_obj.device_name,
            'size': self._bdm_obj.volume_size or 0,
            'disk_bus': self._bdm_obj.disk_bus,
            'device_type': self._bdm_obj.device_type,
            'guest_format': self._bdm_obj.guest_format
        })

    def legacy(self, num=0):
        legacy_bdm = super(DriverEphemeralBlockDevice, self).legacy()
        legacy_bdm['num'] = num
        legacy_bdm['virtual_name'] = 'ephemeral' + str(num)
        return legacy_bdm


class DriverVolumeBlockDevice(DriverBlockDevice):
    _legacy_fields = set(['connection_info', 'mount_device',
                          'delete_on_termination'])
    _new_fields = set(['guest_format', 'device_type',
                       'disk_bus', 'boot_index'])
    _fields = _legacy_fields | _new_fields

    _valid_source = 'volume'
    _valid_destination = 'volume'

    _proxy_as_attr = set(['volume_size', 'volume_id'])
    _update_on_save = {'disk_bus': None,
                       'device_name': 'mount_device',
                       'device_type': None}

    def _transform(self):
        if (not self._bdm_obj.source_type == self._valid_source
                or not self._bdm_obj.destination_type ==
                self._valid_destination):
            raise _InvalidType

        self.update(
            {k: v for k, v in self._bdm_obj.items()
             if k in self._new_fields | set(['delete_on_termination'])}
        )
        self['mount_device'] = self._bdm_obj.device_name
        try:
            self['connection_info'] = jsonutils.loads(
                self._bdm_obj.connection_info)
        except TypeError:
            self['connection_info'] = None

    def _preserve_multipath_id(self, connection_info):
        if self['connection_info'] and 'data' in self['connection_info']:
            if 'multipath_id' in self['connection_info']['data']:
                connection_info['data']['multipath_id'] =\
                    self['connection_info']['data']['multipath_id']
                LOG.info(_LI('preserve multipath_id %s'),
                         connection_info['data']['multipath_id'])

    @update_db
    def attach(self, context, instance, volume_api, virt_driver,
               do_check_attach=True, do_driver_attach=False, **kwargs):
        volume = volume_api.get(context, self.volume_id)
        if do_check_attach:
            volume_api.check_attach(context, volume, instance=instance)

        volume_id = volume['id']
        context = context.elevated()

        connector = virt_driver.get_volume_connector(instance)
        connection_info = volume_api.initialize_connection(context,
                                                           volume_id,
                                                           connector)
        if 'serial' not in connection_info:
            connection_info['serial'] = self.volume_id
        self._preserve_multipath_id(connection_info)

        # If do_driver_attach is False, we will attach a volume to an instance
        # at boot time. So actual attach is done by instance creation code.
        if do_driver_attach:
            encryption = encryptors.get_encryption_metadata(
                context, volume_api, volume_id, connection_info)

            try:
                virt_driver.attach_volume(
                        context, connection_info, instance,
                        self['mount_device'], disk_bus=self['disk_bus'],
                        device_type=self['device_type'], encryption=encryption)
            except Exception:
                with excutils.save_and_reraise_exception():
                    LOG.exception(_LE("Driver failed to attach volume "
                                      "%(volume_id)s at %(mountpoint)s"),
                                  {'volume_id': volume_id,
                                   'mountpoint': self['mount_device']},
                                  instance=instance)
                    volume_api.terminate_connection(context, volume_id,
                                                    connector)
        self['connection_info'] = connection_info
        if self.volume_size is None:
            self.volume_size = volume.get('size')

        mode = 'rw'
        if 'data' in connection_info:
            mode = connection_info['data'].get('access_mode', 'rw')
        if volume['attach_status'] == "detached":
            # NOTE(mriedem): save our current state so connection_info is in
            # the database before the volume status goes to 'in-use' because
            # after that we can detach and connection_info is required for
            # detach.
            self.save()
            try:
                volume_api.attach(context, volume_id, instance.uuid,
                                  self['mount_device'], mode=mode)
            except Exception:
                with excutils.save_and_reraise_exception():
                    if do_driver_attach:
                        try:
                            virt_driver.detach_volume(connection_info,
                                                      instance,
                                                      self['mount_device'],
                                                      encryption=encryption)
                        except Exception:
                            LOG.warning(_LW("Driver failed to detach volume "
                                         "%(volume_id)s at %(mount_point)s."),
                                     {'volume_id': volume_id,
                                      'mount_point': self['mount_device']},
                                     exc_info=True, instance=instance)
                    volume_api.terminate_connection(context, volume_id,
                                                    connector)

                    # Cinder-volume might have completed volume attach. So
                    # we should detach the volume. If the attach did not
                    # happen, the detach request will be ignored.
                    volume_api.detach(context, volume_id)

    @update_db
    def refresh_connection_info(self, context, instance,
                                volume_api, virt_driver):
        # NOTE (ndipanov): A no-op if there is no connection info already
        if not self['connection_info']:
            return

        connector = virt_driver.get_volume_connector(instance)
        connection_info = volume_api.initialize_connection(context,
                                                           self.volume_id,
                                                           connector)
        if 'serial' not in connection_info:
            connection_info['serial'] = self.volume_id
        self._preserve_multipath_id(connection_info)
        self['connection_info'] = connection_info

    def save(self):
        # NOTE(ndipanov): we might want to generalize this by adding it to the
        # _update_on_save and adding a transformation function.
        try:
            connection_info_string = jsonutils.dumps(
                self.get('connection_info'))
            if connection_info_string != self._bdm_obj.connection_info:
                self._bdm_obj.connection_info = connection_info_string
        except TypeError:
            pass
        super(DriverVolumeBlockDevice, self).save()

    def _call_wait_func(self, context, wait_func, volume_api, volume_id):
        try:
            wait_func(context, volume_id)
        except exception.VolumeNotCreated:
            with excutils.save_and_reraise_exception():
                if self['delete_on_termination']:
                    try:
                        volume_api.delete(context, volume_id)
                    except Exception as exc:
                        LOG.warning(
                            _LW('Failed to delete volume: %(volume_id)s '
                                'due to %(exc)s'),
                            {'volume_id': volume_id, 'exc': exc})


class DriverSnapshotBlockDevice(DriverVolumeBlockDevice):

    _valid_source = 'snapshot'
    _proxy_as_attr = set(['volume_size', 'volume_id', 'snapshot_id'])

    def attach(self, context, instance, volume_api,
               virt_driver, wait_func=None, do_check_attach=True):

        if not self.volume_id:
            av_zone = _get_volume_create_az_value(instance)
            snapshot = volume_api.get_snapshot(context,
                                               self.snapshot_id)
            vol = volume_api.create(context, self.volume_size, '', '',
                                    snapshot, availability_zone=av_zone)
            if wait_func:
                self._call_wait_func(context, wait_func, volume_api, vol['id'])

            self.volume_id = vol['id']

        # Call the volume attach now
        super(DriverSnapshotBlockDevice, self).attach(
            context, instance, volume_api, virt_driver,
            do_check_attach=do_check_attach)


class DriverImageBlockDevice(DriverVolumeBlockDevice):

    _valid_source = 'image'
    _proxy_as_attr = set(['volume_size', 'volume_id', 'image_id'])

    def attach(self, context, instance, volume_api,
               virt_driver, wait_func=None, do_check_attach=True):
        if not self.volume_id:
            av_zone = _get_volume_create_az_value(instance)
            vol = volume_api.create(context, self.volume_size,
                                    '', '', image_id=self.image_id,
                                    availability_zone=av_zone)
            if wait_func:
                self._call_wait_func(context, wait_func, volume_api, vol['id'])

            self.volume_id = vol['id']

        super(DriverImageBlockDevice, self).attach(
            context, instance, volume_api, virt_driver,
            do_check_attach=do_check_attach)


class DriverBlankBlockDevice(DriverVolumeBlockDevice):

    _valid_source = 'blank'
    _proxy_as_attr = set(['volume_size', 'volume_id', 'image_id'])

    def attach(self, context, instance, volume_api,
               virt_driver, wait_func=None, do_check_attach=True):
        if not self.volume_id:
            vol_name = instance.uuid + '-blank-vol'
            av_zone = _get_volume_create_az_value(instance)
            vol = volume_api.create(context, self.volume_size, vol_name, '',
                                    availability_zone=av_zone)
            if wait_func:
                self._call_wait_func(context, wait_func, volume_api, vol['id'])

            self.volume_id = vol['id']

        super(DriverBlankBlockDevice, self).attach(
            context, instance, volume_api, virt_driver,
            do_check_attach=do_check_attach)


def _convert_block_devices(device_type, block_device_mapping):
    devices = []
    for bdm in block_device_mapping:
        try:
            devices.append(device_type(bdm))
        except _NotTransformable:
            pass

    return devices

convert_swap = functools.partial(_convert_block_devices,
                                 DriverSwapBlockDevice)


convert_ephemerals = functools.partial(_convert_block_devices,
                                      DriverEphemeralBlockDevice)


convert_volumes = functools.partial(_convert_block_devices,
                                   DriverVolumeBlockDevice)


convert_snapshots = functools.partial(_convert_block_devices,
                                     DriverSnapshotBlockDevice)

convert_images = functools.partial(_convert_block_devices,
                                     DriverImageBlockDevice)

convert_blanks = functools.partial(_convert_block_devices,
                                   DriverBlankBlockDevice)


def convert_all_volumes(*volume_bdms):
    source_volume = convert_volumes(volume_bdms)
    source_snapshot = convert_snapshots(volume_bdms)
    source_image = convert_images(volume_bdms)
    source_blank = convert_blanks(volume_bdms)

    return [vol for vol in
            itertools.chain(source_volume, source_snapshot,
                            source_image, source_blank)]


def convert_volume(volume_bdm):
    try:
        return convert_all_volumes(volume_bdm)[0]
    except IndexError:
        pass


def attach_block_devices(block_device_mapping, *attach_args, **attach_kwargs):
    def _log_and_attach(bdm):
        instance = attach_args[1]
        if bdm.get('volume_id'):
            LOG.info(_LI('Booting with volume %(volume_id)s at '
                         '%(mountpoint)s'),
                     {'volume_id': bdm.volume_id,
                      'mountpoint': bdm['mount_device']},
                     instance=instance)
        elif bdm.get('snapshot_id'):
            LOG.info(_LI('Booting with volume snapshot %(snapshot_id)s at '
                         '%(mountpoint)s'),
                     {'snapshot_id': bdm.snapshot_id,
                      'mountpoint': bdm['mount_device']},
                     instance=instance)
        elif bdm.get('image_id'):
            LOG.info(_LI('Booting with volume-backed-image %(image_id)s at '
                         '%(mountpoint)s'),
                     {'image_id': bdm.image_id,
                      'mountpoint': bdm['mount_device']},
                     instance=instance)
        else:
            LOG.info(_LI('Booting with blank volume at %(mountpoint)s'),
                     {'mountpoint': bdm['mount_device']},
                     instance=instance)

        bdm.attach(*attach_args, **attach_kwargs)

    for device in block_device_mapping:
        _log_and_attach(device)
    return block_device_mapping


def refresh_conn_infos(block_device_mapping, *refresh_args, **refresh_kwargs):
    for device in block_device_mapping:
        # NOTE(lyarwood): At present only DriverVolumeBlockDevice derived
        # devices provide a refresh_connection_info method.
        if hasattr(device, 'refresh_connection_info'):
            device.refresh_connection_info(*refresh_args, **refresh_kwargs)
    return block_device_mapping


def legacy_block_devices(block_device_mapping):
    bdms = [bdm.legacy() for bdm in block_device_mapping]

    # Re-enumerate ephemeral devices
    if all(isinstance(bdm, DriverEphemeralBlockDevice)
           for bdm in block_device_mapping):
        for i, dev in enumerate(bdms):
            dev['virtual_name'] = dev['virtual_name'][:-1] + str(i)
            dev['num'] = i

    return bdms


def get_swap(transformed_list):
    """Get the swap device out of the list context.

    The block_device_info needs swap to be a single device,
    not a list - otherwise this is a no-op.
    """
    if not all(isinstance(device, DriverSwapBlockDevice) or
               'swap_size' in device
                for device in transformed_list):
        return None
    try:
        return transformed_list.pop()
    except IndexError:
        return None


_IMPLEMENTED_CLASSES = (DriverSwapBlockDevice, DriverEphemeralBlockDevice,
                        DriverVolumeBlockDevice, DriverSnapshotBlockDevice,
                        DriverImageBlockDevice, DriverBlankBlockDevice)


def is_implemented(bdm):
    for cls in _IMPLEMENTED_CLASSES:
        try:
            cls(bdm)
            return True
        except _NotTransformable:
            pass
    return False


def is_block_device_mapping(bdm):
    return (bdm.source_type in ('image', 'volume', 'snapshot', 'blank')
            and bdm.destination_type == 'volume'
            and is_implemented(bdm))


def get_volume_id(connection_info):
    if connection_info:
        # Check for volume_id in 'data' and if not there, fallback to
        # the 'serial' that the DriverVolumeBlockDevice adds during attach.
        volume_id = connection_info.get('data', {}).get('volume_id')
        if not volume_id:
            volume_id = connection_info.get('serial')
        return volume_id
