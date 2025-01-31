# Copyright 2012 VMware, Inc.  All rights reserved.
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
#

import eventlet
import netaddr
from neutron_lib import constants as lib_const
from oslo_config import cfg
from oslo_context import context as common_context
from oslo_log import log as logging
import oslo_messaging
from oslo_serialization import jsonutils
from oslo_service import loopingcall
from oslo_service import periodic_task
from oslo_utils import excutils
from oslo_utils import timeutils

from neutron._i18n import _, _LE, _LI, _LW
from neutron.agent.common import utils as common_utils
from neutron.agent.l3 import dvr
from neutron.agent.l3 import dvr_edge_ha_router
from neutron.agent.l3 import dvr_edge_router as dvr_router
from neutron.agent.l3 import dvr_local_router as dvr_local_router
from neutron.agent.l3 import ha
from neutron.agent.l3 import ha_router
from neutron.agent.l3 import l3_agent_extension_api as l3_ext_api
from neutron.agent.l3 import l3_agent_extensions_manager as l3_ext_manager
from neutron.agent.l3 import legacy_router
from neutron.agent.l3 import namespace_manager
from neutron.agent.l3 import router_processing_queue as queue
from neutron.agent.linux import external_process
from neutron.agent.linux import ip_lib
from neutron.agent.linux import pd
from neutron.agent.metadata import driver as metadata_driver
from neutron.agent import rpc as agent_rpc
from neutron.callbacks import events
from neutron.callbacks import registry
from neutron.callbacks import resources
from neutron.common import constants as l3_constants
from neutron.common import exceptions as n_exc
from neutron.common import ipv6_utils
from neutron.common import rpc as n_rpc
from neutron.common import topics
from neutron.common import utils
from neutron import context as n_context
from neutron import manager

LOG = logging.getLogger(__name__)

# Number of routers to fetch from server at a time on resync.
# Needed to reduce load on server side and to speed up resync on agent side.
SYNC_ROUTERS_MAX_CHUNK_SIZE = 256
SYNC_ROUTERS_MIN_CHUNK_SIZE = 32


def log_verbose_exc(message, router_payload):
    LOG.exception(message)
    LOG.debug("Payload:\n%s",
              utils.DelayedStringRenderer(jsonutils.dumps,
                                          router_payload, indent=5))


class L3PluginApi(object):
    """Agent side of the l3 agent RPC API.

    API version history:
        1.0 - Initial version.
        1.1 - Floating IP operational status updates
        1.2 - DVR support: new L3 plugin methods added.
              - get_ports_by_subnet
              - get_agent_gateway_port
              Needed by the agent when operating in DVR/DVR_SNAT mode
        1.3 - Get the list of activated services
        1.4 - Added L3 HA update_router_state. This method was reworked in
              to update_ha_routers_states
        1.5 - Added update_ha_routers_states
        1.6 - Added process_prefix_update
        1.7 - DVR support: new L3 plugin methods added.
              - delete_agent_gateway_port
        1.8 - Added address scope information
        1.9 - Added get_router_ids
    """

    def __init__(self, topic, host):
        self.host = host
        target = oslo_messaging.Target(topic=topic, version='1.0')
        self.client = n_rpc.get_client(target)

    def get_routers(self, context, router_ids=None):
        """Make a remote process call to retrieve the sync data for routers."""
        cctxt = self.client.prepare()
        return cctxt.call(context, 'sync_routers', host=self.host,
                          router_ids=router_ids)

    def get_router_ids(self, context):
        """Make a remote process call to retrieve scheduled routers ids."""
        cctxt = self.client.prepare(version='1.9')
        return cctxt.call(context, 'get_router_ids', host=self.host)

    def get_external_network_id(self, context):
        """Make a remote process call to retrieve the external network id.

        @raise oslo_messaging.RemoteError: with TooManyExternalNetworks as
                                           exc_type if there are more than one
                                           external network
        """
        cctxt = self.client.prepare()
        return cctxt.call(context, 'get_external_network_id', host=self.host)

    def update_floatingip_statuses(self, context, router_id, fip_statuses):
        """Call the plugin update floating IPs's operational status."""
        cctxt = self.client.prepare(version='1.1')
        return cctxt.call(context, 'update_floatingip_statuses',
                          router_id=router_id, fip_statuses=fip_statuses)

    def get_ports_by_subnet(self, context, subnet_id):
        """Retrieve ports by subnet id."""
        cctxt = self.client.prepare(version='1.2')
        return cctxt.call(context, 'get_ports_by_subnet', host=self.host,
                          subnet_id=subnet_id)

    def get_agent_gateway_port(self, context, fip_net):
        """Get or create an agent_gateway_port."""
        cctxt = self.client.prepare(version='1.2')
        return cctxt.call(context, 'get_agent_gateway_port',
                          network_id=fip_net, host=self.host)

    def get_service_plugin_list(self, context, host=None):
        """Make a call to get the list of activated services."""
        cctxt = self.client.prepare(version='1.3')
        return cctxt.call(context, 'get_service_plugin_list', host=host)

    def update_ha_routers_states(self, context, states):
        """Update HA routers states."""
        cctxt = self.client.prepare(version='1.5')
        return cctxt.call(context, 'update_ha_routers_states',
                          host=self.host, states=states)

    def process_prefix_update(self, context, prefix_update):
        """Process prefix update whenever prefixes get changed."""
        cctxt = self.client.prepare(version='1.6')
        return cctxt.call(context, 'process_prefix_update',
                          subnets=prefix_update)

    def delete_agent_gateway_port(self, context, fip_net):
        """Delete Floatingip_agent_gateway_port."""
        cctxt = self.client.prepare(version='1.7')
        return cctxt.call(context, 'delete_agent_gateway_port',
                          host=self.host, network_id=fip_net)


class L3NATAgent(ha.AgentMixin,
                 dvr.AgentMixin,
                 manager.Manager):
    """Manager for L3NatAgent

        API version history:
        1.0 initial Version
        1.1 changed the type of the routers parameter
            to the routers_updated method.
            It was previously a list of routers in dict format.
            It is now a list of router IDs only.
            Per rpc versioning rules,  it is backwards compatible.
        1.2 - DVR support: new L3 agent methods added.
              - add_arp_entry
              - del_arp_entry
        1.3 - fipnamespace_delete_on_ext_net - to delete fipnamespace
              after the external network is removed
              Needed by the L3 service when dealing with DVR
    """
    target = oslo_messaging.Target(version='1.3')

    def __init__(self, host, conf=None):
        if conf:
            self.conf = conf
        else:
            self.conf = cfg.CONF
        self.router_info = {}

        self._check_config_params()

        self.process_monitor = external_process.ProcessMonitor(
            config=self.conf,
            resource_type='router')

        self.driver = common_utils.load_interface_driver(self.conf)

        self._context = n_context.get_admin_context_without_session()
        self.plugin_rpc = L3PluginApi(topics.L3PLUGIN, host)
        self.fullsync = True
        self.sync_routers_chunk_size = SYNC_ROUTERS_MAX_CHUNK_SIZE

        # Get the list of service plugins from Neutron Server
        # This is the first place where we contact neutron-server on startup
        # so retry in case its not ready to respond.
        while True:
            try:
                self.neutron_service_plugins = (
                    self.plugin_rpc.get_service_plugin_list(self.context,
                                                            host=host))
            except oslo_messaging.RemoteError as e:
                with excutils.save_and_reraise_exception() as ctx:
                    ctx.reraise = False
                    LOG.warning(_LW('l3-agent cannot check service plugins '
                                    'enabled at the neutron server when '
                                    'startup due to RPC error. It happens '
                                    'when the server does not support this '
                                    'RPC API. If the error is '
                                    'UnsupportedVersion you can ignore this '
                                    'warning. Detail message: %s'), e)
                self.neutron_service_plugins = None
            except oslo_messaging.MessagingTimeout as e:
                with excutils.save_and_reraise_exception() as ctx:
                    ctx.reraise = False
                    LOG.warning(_LW('l3-agent cannot contact neutron server '
                                    'to retrieve service plugins enabled. '
                                    'Check connectivity to neutron server. '
                                    'Retrying... '
                                    'Detailed message: %(msg)s.'), {'msg': e})
                    continue
            break

        self.init_extension_manager(self.plugin_rpc)

        self.metadata_driver = None
        if self.conf.enable_metadata_proxy:
            self.metadata_driver = metadata_driver.MetadataDriver(self)

        self.namespaces_manager = namespace_manager.NamespaceManager(
            self.conf,
            self.driver,
            self.metadata_driver)

        self._queue = queue.RouterProcessingQueue()
        super(L3NATAgent, self).__init__(host=self.conf.host)

        self.target_ex_net_id = None
        self.use_ipv6 = ipv6_utils.is_enabled_and_bind_by_default()

        self.pd = pd.PrefixDelegation(self.context, self.process_monitor,
                                      self.driver,
                                      self.plugin_rpc.process_prefix_update,
                                      self.create_pd_router_update,
                                      self.conf)

    def _check_config_params(self):
        """Check items in configuration files.

        Check for required and invalid configuration items.
        The actual values are not verified for correctness.
        """
        if not self.conf.interface_driver:
            msg = _LE('An interface driver must be specified')
            LOG.error(msg)
            raise SystemExit(1)

        if self.conf.ipv6_gateway:
            # ipv6_gateway configured. Check for valid v6 link-local address.
            try:
                msg = _LE("%s used in config as ipv6_gateway is not a valid "
                          "IPv6 link-local address."),
                ip_addr = netaddr.IPAddress(self.conf.ipv6_gateway)
                if ip_addr.version != 6 or not ip_addr.is_link_local():
                    LOG.error(msg, self.conf.ipv6_gateway)
                    raise SystemExit(1)
            except netaddr.AddrFormatError:
                LOG.error(msg, self.conf.ipv6_gateway)
                raise SystemExit(1)

    def _fetch_external_net_id(self, force=False):
        """Find UUID of single external network for this agent."""
        if self.conf.gateway_external_network_id:
            return self.conf.gateway_external_network_id

        # L3 agent doesn't use external_network_bridge to handle external
        # networks, so bridge_mappings with provider networks will be used
        # and the L3 agent is able to handle any external networks.
        if not self.conf.external_network_bridge:
            return

        if not force and self.target_ex_net_id:
            return self.target_ex_net_id

        try:
            self.target_ex_net_id = self.plugin_rpc.get_external_network_id(
                self.context)
            return self.target_ex_net_id
        except oslo_messaging.RemoteError as e:
            with excutils.save_and_reraise_exception() as ctx:
                if e.exc_type == 'TooManyExternalNetworks':
                    ctx.reraise = False
                    msg = _(
                        "The 'gateway_external_network_id' option must be "
                        "configured for this agent as Neutron has more than "
                        "one external network.")
                    raise Exception(msg)

    def _create_router(self, router_id, router):
        args = []
        kwargs = {
            'agent': self,
            'router_id': router_id,
            'router': router,
            'use_ipv6': self.use_ipv6,
            'agent_conf': self.conf,
            'interface_driver': self.driver,
        }

        if router.get('distributed'):
            kwargs['host'] = self.host

        if router.get('distributed') and router.get('ha'):
            # if the router does not contain information about the HA interface
            # this means that this DVR+HA router needs to host only the edge
            # side of it, typically because it's landing on a node that needs
            # to provision a router namespace because of a DVR service port
            # (e.g. DHCP).
            if (self.conf.agent_mode == lib_const.L3_AGENT_MODE_DVR_SNAT
                    and router.get(lib_const.HA_INTERFACE_KEY) is not None):
                kwargs['state_change_callback'] = self.enqueue_state_change
                return dvr_edge_ha_router.DvrEdgeHaRouter(*args, **kwargs)

        if router.get('distributed'):
            if self.conf.agent_mode == lib_const.L3_AGENT_MODE_DVR_SNAT:
                return dvr_router.DvrEdgeRouter(*args, **kwargs)
            else:
                return dvr_local_router.DvrLocalRouter(*args, **kwargs)

        if router.get('ha'):
            kwargs['state_change_callback'] = self.enqueue_state_change
            return ha_router.HaRouter(*args, **kwargs)

        return legacy_router.LegacyRouter(*args, **kwargs)

    def _router_added(self, router_id, router):
        ri = self._create_router(router_id, router)
        registry.notify(resources.ROUTER, events.BEFORE_CREATE,
                        self, router=ri)

        self.router_info[router_id] = ri

        # If initialize() fails, cleanup and retrigger complete sync
        try:
            ri.initialize(self.process_monitor)
        except Exception:
            with excutils.save_and_reraise_exception():
                del self.router_info[router_id]
                LOG.exception(_LE('Error while initializing router %s'),
                              router_id)
                self.namespaces_manager.ensure_router_cleanup(router_id)
                try:
                    ri.delete()
                except Exception:
                    LOG.exception(_LE('Error while deleting router %s'),
                                  router_id)

    def _safe_router_removed(self, router_id):
        """Try to delete a router and return True if successful."""

        try:
            self._router_removed(router_id)
            self.l3_ext_manager.delete_router(self.context, router_id)
        except Exception:
            LOG.exception(_LE('Error while deleting router %s'), router_id)
            return False
        else:
            return True

    def _router_removed(self, router_id):
        ri = self.router_info.get(router_id)
        if ri is None:
            LOG.warning(_LW("Info for router %s was not found. "
                            "Performing router cleanup"), router_id)
            self.namespaces_manager.ensure_router_cleanup(router_id)
            return

        registry.notify(resources.ROUTER, events.BEFORE_DELETE,
                        self, router=ri)

        ri.delete()
        del self.router_info[router_id]

        registry.notify(resources.ROUTER, events.AFTER_DELETE, self, router=ri)

    def init_extension_manager(self, connection):
        l3_ext_manager.register_opts(self.conf)
        self.agent_api = l3_ext_api.L3AgentExtensionAPI(self.router_info)
        self.l3_ext_manager = (
            l3_ext_manager.L3AgentExtensionsManager(self.conf))
        self.l3_ext_manager.initialize(
            connection, lib_const.L3_AGENT_MODE,
            self.agent_api)

    def router_deleted(self, context, router_id):
        """Deal with router deletion RPC message."""
        LOG.debug('Got router deleted notification for %s', router_id)
        update = queue.RouterUpdate(router_id,
                                    queue.PRIORITY_RPC,
                                    action=queue.DELETE_ROUTER)
        self._queue.add(update)

    def routers_updated(self, context, routers):
        """Deal with routers modification and creation RPC message."""
        LOG.debug('Got routers updated notification :%s', routers)
        if routers:
            # This is needed for backward compatibility
            if isinstance(routers[0], dict):
                routers = [router['id'] for router in routers]
            for id in routers:
                update = queue.RouterUpdate(id, queue.PRIORITY_RPC)
                self._queue.add(update)

    def router_removed_from_agent(self, context, payload):
        LOG.debug('Got router removed from agent :%r', payload)
        router_id = payload['router_id']
        update = queue.RouterUpdate(router_id,
                                    queue.PRIORITY_RPC,
                                    action=queue.DELETE_ROUTER)
        self._queue.add(update)

    def router_added_to_agent(self, context, payload):
        LOG.debug('Got router added to agent :%r', payload)
        self.routers_updated(context, payload)

    def _process_router_if_compatible(self, router):
        if (self.conf.external_network_bridge and
            not ip_lib.device_exists(self.conf.external_network_bridge)):
            LOG.error(_LE("The external network bridge '%s' does not exist"),
                      self.conf.external_network_bridge)
            return

        # Either ex_net_id or handle_internal_only_routers must be set
        ex_net_id = (router['external_gateway_info'] or {}).get('network_id')
        if not ex_net_id and not self.conf.handle_internal_only_routers:
            raise n_exc.RouterNotCompatibleWithAgent(router_id=router['id'])

        # If target_ex_net_id and ex_net_id are set they must be equal
        target_ex_net_id = self._fetch_external_net_id()
        if (target_ex_net_id and ex_net_id and ex_net_id != target_ex_net_id):
            # Double check that our single external_net_id has not changed
            # by forcing a check by RPC.
            if ex_net_id != self._fetch_external_net_id(force=True):
                raise n_exc.RouterNotCompatibleWithAgent(
                    router_id=router['id'])

        if router['id'] not in self.router_info:
            self._process_added_router(router)
        else:
            self._process_updated_router(router)

    def _process_added_router(self, router):
        self._router_added(router['id'], router)
        ri = self.router_info[router['id']]
        ri.router = router
        ri.process()
        registry.notify(resources.ROUTER, events.AFTER_CREATE, self, router=ri)
        self.l3_ext_manager.add_router(self.context, router)

    def _process_updated_router(self, router):
        is_dvr_only_agent = (
            self.conf.agent_mode == lib_const.L3_AGENT_MODE_DVR)
        # For HA routers check that DB state matches actual state
        if router.get('ha') and not is_dvr_only_agent:
            self.check_ha_state_for_router(
                router['id'], router.get(l3_constants.HA_ROUTER_STATE_KEY))
        ri = self.router_info[router['id']]
        ri.router = router
        registry.notify(resources.ROUTER, events.BEFORE_UPDATE,
                        self, router=ri)
        ri.process()
        registry.notify(resources.ROUTER, events.AFTER_UPDATE, self, router=ri)
        self.l3_ext_manager.update_router(self.context, router)

    def _resync_router(self, router_update,
                       priority=queue.PRIORITY_SYNC_ROUTERS_TASK):
        # Don't keep trying to resync if it's failing
        if router_update.hit_retry_limit():
            LOG.warning(_LW("Hit retry limit with router update for %(id)s, "
                            "action %(action)s"),
                        {'id': router_update.id,
                         'action': router_update.action})
            if router_update.action != queue.DELETE_ROUTER:
                LOG.debug("Deleting router %s", router_update.id)
                self._safe_router_removed(router_update.id)
            return
        router_update.timestamp = timeutils.utcnow()
        router_update.priority = priority
        router_update.router = None  # Force the agent to resync the router
        self._queue.add(router_update)

    def _process_router_update(self):
        for rp, update in self._queue.each_update_to_next_router():
            LOG.debug("Starting router update for %s, action %s, priority %s",
                      update.id, update.action, update.priority)
            if update.action == queue.PD_UPDATE:
                self.pd.process_prefix_update()
                LOG.debug("Finished a router update for %s", update.id)
                continue
            router = update.router
            if update.action != queue.DELETE_ROUTER and not router:
                try:
                    update.timestamp = timeutils.utcnow()
                    routers = self.plugin_rpc.get_routers(self.context,
                                                          [update.id])
                except Exception:
                    msg = _LE("Failed to fetch router information for '%s'")
                    LOG.exception(msg, update.id)
                    self._resync_router(update)
                    continue

                if routers:
                    router = routers[0]

            if not router:
                removed = self._safe_router_removed(update.id)
                if not removed:
                    self._resync_router(update)
                else:
                    # need to update timestamp of removed router in case
                    # there are older events for the same router in the
                    # processing queue (like events from fullsync) in order to
                    # prevent deleted router re-creation
                    rp.fetched_and_processed(update.timestamp)
                LOG.debug("Finished a router update for %s", update.id)
                continue

            try:
                self._process_router_if_compatible(router)
            except n_exc.RouterNotCompatibleWithAgent as e:
                log_verbose_exc(e.msg, router)
                # Was the router previously handled by this agent?
                if router['id'] in self.router_info:
                    LOG.error(_LE("Removing incompatible router '%s'"),
                              router['id'])
                    self._safe_router_removed(router['id'])
            except Exception:
                log_verbose_exc(
                    _LE("Failed to process compatible router: %s") % update.id,
                    router)
                self._resync_router(update)
                continue

            LOG.debug("Finished a router update for %s", update.id)
            rp.fetched_and_processed(update.timestamp)

    def _process_routers_loop(self):
        LOG.debug("Starting _process_routers_loop")
        pool = eventlet.GreenPool(size=8)
        while True:
            pool.spawn_n(self._process_router_update)

    # NOTE(kevinbenton): this is set to 1 second because the actual interval
    # is controlled by a FixedIntervalLoopingCall in neutron/service.py that
    # is responsible for task execution.
    @periodic_task.periodic_task(spacing=1, run_immediately=True)
    def periodic_sync_routers_task(self, context):
        if not self.fullsync:
            return
        LOG.debug("Starting fullsync periodic_sync_routers_task")

        # self.fullsync is True at this point. If an exception -- caught or
        # uncaught -- prevents setting it to False below then the next call
        # to periodic_sync_routers_task will re-enter this code and try again.

        # Context manager self.namespaces_manager captures a picture of
        # namespaces *before* fetch_and_sync_all_routers fetches the full list
        # of routers from the database.  This is important to correctly
        # identify stale ones.

        try:
            with self.namespaces_manager as ns_manager:
                self.fetch_and_sync_all_routers(context, ns_manager)
        except n_exc.AbortSyncRouters:
            self.fullsync = True

    def fetch_and_sync_all_routers(self, context, ns_manager):
        prev_router_ids = set(self.router_info)
        curr_router_ids = set()
        timestamp = timeutils.utcnow()
        router_ids = []
        chunk = []
        is_snat_agent = (self.conf.agent_mode ==
                         lib_const.L3_AGENT_MODE_DVR_SNAT)
        try:
            router_ids = self.plugin_rpc.get_router_ids(context)
            # fetch routers by chunks to reduce the load on server and to
            # start router processing earlier
            for i in range(0, len(router_ids), self.sync_routers_chunk_size):
                chunk = router_ids[i:i + self.sync_routers_chunk_size]
                routers = self.plugin_rpc.get_routers(context, chunk)
                LOG.debug('Processing :%r', routers)
                for r in routers:
                    curr_router_ids.add(r['id'])
                    ns_manager.keep_router(r['id'])
                    if r.get('distributed'):
                        # need to keep fip namespaces as well
                        ext_net_id = (r['external_gateway_info'] or {}).get(
                            'network_id')
                        if ext_net_id:
                            ns_manager.keep_ext_net(ext_net_id)
                        elif is_snat_agent and not r.get('ha'):
                            ns_manager.ensure_snat_cleanup(r['id'])
                    update = queue.RouterUpdate(
                        r['id'],
                        queue.PRIORITY_SYNC_ROUTERS_TASK,
                        router=r,
                        timestamp=timestamp)
                    self._queue.add(update)
        except oslo_messaging.MessagingTimeout:
            if self.sync_routers_chunk_size > SYNC_ROUTERS_MIN_CHUNK_SIZE:
                self.sync_routers_chunk_size = max(
                    self.sync_routers_chunk_size / 2,
                    SYNC_ROUTERS_MIN_CHUNK_SIZE)
                LOG.error(_LE('Server failed to return info for routers in '
                              'required time, decreasing chunk size to: %s'),
                          self.sync_routers_chunk_size)
            else:
                LOG.error(_LE('Server failed to return info for routers in '
                              'required time even with min chunk size: %s. '
                              'It might be under very high load or '
                              'just inoperable'),
                          self.sync_routers_chunk_size)
            raise
        except oslo_messaging.MessagingException:
            failed_routers = chunk or router_ids
            LOG.exception(_LE("Failed synchronizing routers '%s' "
                              "due to RPC error"), failed_routers)
            raise n_exc.AbortSyncRouters()

        self.fullsync = False
        LOG.debug("periodic_sync_routers_task successfully completed")
        # adjust chunk size after successful sync
        if self.sync_routers_chunk_size < SYNC_ROUTERS_MAX_CHUNK_SIZE:
            self.sync_routers_chunk_size = min(
                self.sync_routers_chunk_size + SYNC_ROUTERS_MIN_CHUNK_SIZE,
                SYNC_ROUTERS_MAX_CHUNK_SIZE)

        # Delete routers that have disappeared since the last sync
        for router_id in prev_router_ids - curr_router_ids:
            ns_manager.keep_router(router_id)
            update = queue.RouterUpdate(router_id,
                                        queue.PRIORITY_SYNC_ROUTERS_TASK,
                                        timestamp=timestamp,
                                        action=queue.DELETE_ROUTER)
            self._queue.add(update)

    @property
    def context(self):
        # generate a new request-id on each call to make server side tracking
        # of RPC calls easier.
        self._context.request_id = common_context.generate_request_id()
        return self._context

    def after_start(self):
        # Note: the FWaaS' vArmourL3NATAgent is a subclass of L3NATAgent. It
        # calls this method here. So Removing this after_start() would break
        # vArmourL3NATAgent. We need to find out whether vArmourL3NATAgent
        # can have L3NATAgentWithStateReport as its base class instead of
        # L3NATAgent.
        eventlet.spawn_n(self._process_routers_loop)
        LOG.info(_LI("L3 agent started"))

    def create_pd_router_update(self):
        router_id = None
        update = queue.RouterUpdate(router_id,
                                    queue.PRIORITY_PD_UPDATE,
                                    timestamp=timeutils.utcnow(),
                                    action=queue.PD_UPDATE)
        self._queue.add(update)


class L3NATAgentWithStateReport(L3NATAgent):

    def __init__(self, host, conf=None):
        super(L3NATAgentWithStateReport, self).__init__(host=host, conf=conf)
        self.state_rpc = agent_rpc.PluginReportStateAPI(topics.REPORTS)
        self.agent_state = {
            'binary': 'neutron-l3-agent',
            'host': host,
            'availability_zone': self.conf.AGENT.availability_zone,
            'topic': topics.L3_AGENT,
            'configurations': {
                'agent_mode': self.conf.agent_mode,
                'handle_internal_only_routers':
                self.conf.handle_internal_only_routers,
                'external_network_bridge': self.conf.external_network_bridge,
                'gateway_external_network_id':
                self.conf.gateway_external_network_id,
                'interface_driver': self.conf.interface_driver,
                'log_agent_heartbeats': self.conf.AGENT.log_agent_heartbeats},
            'start_flag': True,
            'agent_type': lib_const.AGENT_TYPE_L3}
        report_interval = self.conf.AGENT.report_interval
        if report_interval:
            self.heartbeat = loopingcall.FixedIntervalLoopingCall(
                self._report_state)
            self.heartbeat.start(interval=report_interval)

    def _report_state(self):
        num_ex_gw_ports = 0
        num_interfaces = 0
        num_floating_ips = 0
        router_infos = self.router_info.values()
        num_routers = len(router_infos)
        for ri in router_infos:
            ex_gw_port = ri.get_ex_gw_port()
            if ex_gw_port:
                num_ex_gw_ports += 1
            num_interfaces += len(ri.router.get(lib_const.INTERFACE_KEY,
                                                []))
            num_floating_ips += len(ri.router.get(lib_const.FLOATINGIP_KEY,
                                                  []))
        configurations = self.agent_state['configurations']
        configurations['routers'] = num_routers
        configurations['ex_gw_ports'] = num_ex_gw_ports
        configurations['interfaces'] = num_interfaces
        configurations['floating_ips'] = num_floating_ips
        try:
            agent_status = self.state_rpc.report_state(self.context,
                                                       self.agent_state,
                                                       True)
            if agent_status == l3_constants.AGENT_REVIVED:
                LOG.info(_LI('Agent has just been revived. '
                             'Doing a full sync.'))
                self.fullsync = True
            self.agent_state.pop('start_flag', None)
        except AttributeError:
            # This means the server does not support report_state
            LOG.warning(_LW("Neutron server does not support state report. "
                            "State report for this agent will be disabled."))
            self.heartbeat.stop()
            return
        except Exception:
            LOG.exception(_LE("Failed reporting state!"))

    def after_start(self):
        eventlet.spawn_n(self._process_routers_loop)
        LOG.info(_LI("L3 agent started"))
        # Do the report state before we do the first full sync.
        self._report_state()

        self.pd.after_start()

    def agent_updated(self, context, payload):
        """Handle the agent_updated notification event."""
        self.fullsync = True
        LOG.info(_LI("agent_updated by server side %s!"), payload)
