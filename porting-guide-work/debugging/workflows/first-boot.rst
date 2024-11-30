.. _first-boot-debugging:

First Boot Debugging
====================

A systematic approach to debugging first boot issues and gaining initial system access.

Boot Stages
-----------

1. **Bootloader Stage**
   
   Check fastboot access::

       fastboot devices
       fastboot getvar all

   Issues:

   - No device detection
   - Wrong bootloader variant
   - Partition errors

2. **Early Boot**
   
   Monitor kernel logs::
   
       # From recovery
       cat /proc/last_kmsg
       
       # From host
       dmesg -w

   Common failures:

   - Kernel panic
   - Init failure
   - Missing modules

3. **System Init**
   
   Check init process::

       # Via SSH/ADB
       systemctl status
       journalctl -b
       lxc-info -n android

Gaining Access
--------------

USB Network Method
^^^^^^^^^^^^^^^^^^
1. On host system::

    ip link set <interface> address 02:11:22:33:44:55
    ip address add 10.15.19.100/24 dev <interface>
    ip link set <interface> up

2. Connect to device::

    ssh phablet@10.15.19.82

Telnet Debug Access
^^^^^^^^^^^^^^^^^^^
If system partially boots::

    telnet 192.168.2.15

Serial Console
^^^^^^^^^^^^^^
If available::

    sudo screen /dev/ttyUSB0 115200

Common Issues
-------------

Kernel Problems
^^^^^^^^^^^^^^^
1. **Panic on Boot**
   
   Check logs for::

       Unable to mount root fs
       VFS: Cannot open root device
       Kernel panic - not syncing

   Solutions:

   - Verify kernel config
   - Check initramfs
   - Review cmdline

2. **Driver Failures**
   
   Look for::

       Unknown symbol
       Failed to load module
       Device probe failed

   Solutions:

   - Check module dependencies
   - Verify vendor blobs
   - Review device tree

System Issues
^^^^^^^^^^^^^
1. **Container Failure**

   Check::

       # Container status
       lxc-info -n android
       
       # Service logs
       journalctl -u lxc@android

   Solutions:

   - Verify mounts
   - Check SELinux status
   - Review vendor files

2. **Init Problems**

   Monitor::

       systemctl status
       journalctl -u systemd-*
       dmesg | grep systemd

Recovery Steps
--------------

Safe Mode Boot
^^^^^^^^^^^^^^
1. Disable services::

    systemctl isolate rescue.target
    
2. Enable debugging::

    touch /userdata/.force-ssh

Recovery Access
^^^^^^^^^^^^^^^
1. Boot to recovery
2. Pull logs::

    adb pull /proc/last_kmsg
    adb pull /cache/recovery/last_kmsg

3. Check partitions::

    adb shell mount
    adb shell ls -l /dev/block/platform

Next Steps
----------

**Container issues?**
    → :doc:`../system-debug/container`

**Hardware problems?**
    → :doc:`../hardware-debug/index`

See Also
--------
* :ref:`debugging-strategies` - General debugging approach
* :ref:`hardware-abstraction` - Hardware subsystems
* :ref:`troubleshooting` - Issue-specific guides