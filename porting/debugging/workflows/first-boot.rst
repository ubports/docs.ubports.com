.. _first-boot-debugging:

First Boot Debugging
====================

A systematic approach to debugging first boot issues and gaining initial system access. The first boot of a new port often provides no visual feedback, so we need to understand what's happening behind the scenes.

Boot Stages
-----------

1. **Bootloader Stage**
   
   First, verify you can communicate with the device::

       fastboot devices
       fastboot getvar all

   What to look for:
   
   * Device detected by fastboot
   * Correct bootloader variant
   * Partition information
   * Lock status

   Common issues:

   - No device detection

     * Check USB cable and port
     * Verify bootloader mode
     * Check udev rules

   - Wrong bootloader variant

     * Verify bootloader compatibility 
     * Check for specific requirements
     * Review vendor documentation

   - Partition errors

     * Verify partition table
     * Check partition sizes
     * Confirm naming conventions

2. **Early Boot**
   
   Monitor kernel startup::
   
       # From recovery
       cat /proc/last_kmsg
       
       # From host
       dmesg -w

   What to watch for:

   * Kernel initialization messages
   * Driver loading status
   * Hardware detection
   * Error messages

   Common failures:

   - Kernel panic

     * Incorrect configuration
     * Missing drivers
     * Wrong device tree

   - Init failure

     * Missing required modules
     * Wrong ramdisk
     * Filesystem issues

   - Missing modules

     * Check kernel config
     * Verify module loading
     * Review dependencies

3. **System Init**
   
   Check system startup::

       # Via SSH/ADB
       systemctl status
       journalctl -b
       lxc-info -n android

   Important indicators:

   * Systemd initialization
   * Service startup sequence
   * Android container status
   * Hardware initialization

Gaining Access
--------------

USB Network Method
^^^^^^^^^^^^^^^^^^
1. On host system::

    # Set up USB network interface
    ip link set <interface> address 02:11:22:33:44:55
    ip address add 10.15.19.100/24 dev <interface>
    ip link set <interface> up

Understanding these commands:

* Sets MAC address for consistent networking
* Configures IP network for communication
* Enables the interface

2. Connect to device::

    ssh phablet@10.15.19.82

The default password is the one you set during installation.

Telnet Debug Access
^^^^^^^^^^^^^^^^^^^
If system partially boots::

    telnet 192.168.2.15

This fallback method indicates:

* Init system started
* Network partially working
* System not fully booted

Serial Console
^^^^^^^^^^^^^^
If available::

    sudo screen /dev/ttyUSB0 115200

Serial access provides:

* Earliest boot messages
* Kernel debugging output
* Direct system access

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

   - Root filesystem issues

     * Verify kernel config
     * Check initramfs content
     * Review mount options

   - Device tree problems

     * Validate DTB/DTBO
     * Check compatibility
     * Review pin configurations

2. **Driver Failures**
   
   Look for::

       Unknown symbol
       Failed to load module
       Device probe failed

   Solutions:

   - Module issues

     * Check dependencies
     * Verify build config
     * Review loading order

   - Vendor blob problems

     * Verify blob versions
     * Check compatibility
     * Review initialization

System Issues
^^^^^^^^^^^^^
1. **Container Failure**

   Check::

       # Container status
       lxc-info -n android
       
       # Service logs
       journalctl -u lxc@android

   Solutions:

   - Mount problems

     * Check fstab entries
     * Verify mount points
     * Review permissions

   - SELinux issues

     * Check policies
     * Review contexts
     * Verify settings

2. **Init Problems**

   Monitor::

       systemctl status
       journalctl -u systemd-*
       dmesg | grep systemd

   Key areas:

   * Service dependencies
   * Mount ordering
   * Hardware initialization

Recovery Steps
--------------

Safe Mode Boot
^^^^^^^^^^^^^^
1. Disable services::

    systemctl isolate rescue.target
    
2. Enable debugging::

    touch /userdata/.force-ssh

This provides:

* Minimal system startup
* Basic hardware access
* Debug capabilities

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