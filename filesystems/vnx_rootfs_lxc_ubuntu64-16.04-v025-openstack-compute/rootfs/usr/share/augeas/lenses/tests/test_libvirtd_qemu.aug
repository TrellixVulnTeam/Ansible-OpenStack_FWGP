module Test_libvirtd_qemu =
  let conf = "default_tls_x509_cert_dir = \"/etc/pki/qemu\"
default_tls_x509_verify = 1
default_tls_x509_secret_uuid = \"00000000-0000-0000-0000-000000000000\"
vnc_listen = \"0.0.0.0\"
vnc_auto_unix_socket = 1
vnc_tls = 1
vnc_tls_x509_cert_dir = \"/etc/pki/libvirt-vnc\"
vnc_tls_x509_verify = 1
vnc_password = \"XYZ12345\"
vnc_sasl = 1
vnc_sasl_dir = \"/some/directory/sasl2\"
vnc_allow_host_audio = 0
spice_listen = \"0.0.0.0\"
spice_tls = 1
spice_tls_x509_cert_dir = \"/etc/pki/libvirt-spice\"
spice_auto_unix_socket = 1
spice_password = \"XYZ12345\"
spice_sasl = 1
spice_sasl_dir = \"/some/directory/sasl2\"
chardev_tls = 1
chardev_tls_x509_cert_dir = \"/etc/pki/libvirt-chardev\"
chardev_tls_x509_verify = 1
chardev_tls_x509_secret_uuid = \"00000000-0000-0000-0000-000000000000\"
nographics_allow_host_audio = 1
remote_display_port_min = 5900
remote_display_port_max = 65535
remote_websocket_port_min = 5700
remote_websocket_port_max = 65535
security_driver = \"selinux\"
security_default_confined = 1
security_require_confined = 1
user = \"root\"
group = \"root\"
dynamic_ownership = 1
cgroup_controllers = [ \"cpu\", \"devices\", \"memory\", \"blkio\", \"cpuset\", \"cpuacct\" ]
cgroup_device_acl = [
    \"/dev/null\", \"/dev/full\", \"/dev/zero\",
    \"/dev/random\", \"/dev/urandom\",
    \"/dev/ptmx\", \"/dev/kvm\", \"/dev/kqemu\",
    \"/dev/rtc\",\"/dev/hpet\", \"/dev/vfio/vfio\"
]
save_image_format = \"raw\"
dump_image_format = \"raw\"
snapshot_image_format = \"raw\"
auto_dump_path = \"/var/lib/libvirt/qemu/dump\"
auto_dump_bypass_cache = 0
auto_start_bypass_cache = 0
hugetlbfs_mount = \"/dev/hugepages\"
bridge_helper = \"/usr/libexec/qemu-bridge-helper\"
clear_emulator_capabilities = 1
set_process_name = 1
max_processes = 0
max_files = 0
max_core = \"unlimited\"
dump_guest_core = 1
mac_filter = 1
relaxed_acs_check = 1
allow_disk_format_probing = 1
lock_manager = \"lockd\"
max_queued = 0
keepalive_interval = 5
keepalive_count = 5
seccomp_sandbox = 1
migration_address = \"0.0.0.0\"
migration_host = \"host.example.com\"
migration_port_min = 49152
migration_port_max = 49215
log_timestamp = 0
nvram = [
   \"/usr/share/OVMF/OVMF_CODE.fd:/usr/share/OVMF/OVMF_VARS.fd\",
   \"/usr/share/OVMF/OVMF_CODE.secboot.fd:/usr/share/OVMF/OVMF_VARS.fd\",
   \"/usr/share/AAVMF/AAVMF_CODE.fd:/usr/share/AAVMF/AAVMF_VARS.fd\"
]
stdio_handler = \"logd\"
gluster_debug_level = 9
"

   test Libvirtd_qemu.lns get conf =
{ "default_tls_x509_cert_dir" = "/etc/pki/qemu" }
{ "default_tls_x509_verify" = "1" }
{ "default_tls_x509_secret_uuid" = "00000000-0000-0000-0000-000000000000" }
{ "vnc_listen" = "0.0.0.0" }
{ "vnc_auto_unix_socket" = "1" }
{ "vnc_tls" = "1" }
{ "vnc_tls_x509_cert_dir" = "/etc/pki/libvirt-vnc" }
{ "vnc_tls_x509_verify" = "1" }
{ "vnc_password" = "XYZ12345" }
{ "vnc_sasl" = "1" }
{ "vnc_sasl_dir" = "/some/directory/sasl2" }
{ "vnc_allow_host_audio" = "0" }
{ "spice_listen" = "0.0.0.0" }
{ "spice_tls" = "1" }
{ "spice_tls_x509_cert_dir" = "/etc/pki/libvirt-spice" }
{ "spice_auto_unix_socket" = "1" }
{ "spice_password" = "XYZ12345" }
{ "spice_sasl" = "1" }
{ "spice_sasl_dir" = "/some/directory/sasl2" }
{ "chardev_tls" = "1" }
{ "chardev_tls_x509_cert_dir" = "/etc/pki/libvirt-chardev" }
{ "chardev_tls_x509_verify" = "1" }
{ "chardev_tls_x509_secret_uuid" = "00000000-0000-0000-0000-000000000000" }
{ "nographics_allow_host_audio" = "1" }
{ "remote_display_port_min" = "5900" }
{ "remote_display_port_max" = "65535" }
{ "remote_websocket_port_min" = "5700" }
{ "remote_websocket_port_max" = "65535" }
{ "security_driver" = "selinux" }
{ "security_default_confined" = "1" }
{ "security_require_confined" = "1" }
{ "user" = "root" }
{ "group" = "root" }
{ "dynamic_ownership" = "1" }
{ "cgroup_controllers"
    { "1" = "cpu" }
    { "2" = "devices" }
    { "3" = "memory" }
    { "4" = "blkio" }
    { "5" = "cpuset" }
    { "6" = "cpuacct" }
}
{ "cgroup_device_acl"
    { "1" = "/dev/null" }
    { "2" = "/dev/full" }
    { "3" = "/dev/zero" }
    { "4" = "/dev/random" }
    { "5" = "/dev/urandom" }
    { "6" = "/dev/ptmx" }
    { "7" = "/dev/kvm" }
    { "8" = "/dev/kqemu" }
    { "9" = "/dev/rtc" }
    { "10" = "/dev/hpet" }
    { "11" = "/dev/vfio/vfio" }
}
{ "save_image_format" = "raw" }
{ "dump_image_format" = "raw" }
{ "snapshot_image_format" = "raw" }
{ "auto_dump_path" = "/var/lib/libvirt/qemu/dump" }
{ "auto_dump_bypass_cache" = "0" }
{ "auto_start_bypass_cache" = "0" }
{ "hugetlbfs_mount" = "/dev/hugepages" }
{ "bridge_helper" = "/usr/libexec/qemu-bridge-helper" }
{ "clear_emulator_capabilities" = "1" }
{ "set_process_name" = "1" }
{ "max_processes" = "0" }
{ "max_files" = "0" }
{ "max_core" = "unlimited" }
{ "dump_guest_core" = "1" }
{ "mac_filter" = "1" }
{ "relaxed_acs_check" = "1" }
{ "allow_disk_format_probing" = "1" }
{ "lock_manager" = "lockd" }
{ "max_queued" = "0" }
{ "keepalive_interval" = "5" }
{ "keepalive_count" = "5" }
{ "seccomp_sandbox" = "1" }
{ "migration_address" = "0.0.0.0" }
{ "migration_host" = "host.example.com" }
{ "migration_port_min" = "49152" }
{ "migration_port_max" = "49215" }
{ "log_timestamp" = "0" }
{ "nvram"
    { "1" = "/usr/share/OVMF/OVMF_CODE.fd:/usr/share/OVMF/OVMF_VARS.fd" }
    { "2" = "/usr/share/OVMF/OVMF_CODE.secboot.fd:/usr/share/OVMF/OVMF_VARS.fd" }
    { "3" = "/usr/share/AAVMF/AAVMF_CODE.fd:/usr/share/AAVMF/AAVMF_VARS.fd" }
}
{ "stdio_handler" = "logd" }
{ "gluster_debug_level" = "9" }
