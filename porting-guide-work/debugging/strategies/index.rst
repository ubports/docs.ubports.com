.. _debugging-strategies:

Debugging Strategies
====================

This guide covers systematic approaches to debugging Ubuntu Touch ports.

Core Principles
---------------

1. **Identify Failure Stage**
   
   * Pre-boot: No USB detection
   * Early boot: USB detected, no shell access
   * Late boot: Shell access but system incomplete
   * Post-boot: System runs with issues

2. **Gather Information**

   Critical logs::

       dmesg                            # Kernel messages
       journalctl -b                    # System logs
       lxc-info -n android             # Container status
       /var/log/lightdm/lightdm.log    # Display server
       /proc/last_kmsg                 # Last kernel log

   Hardware status::

       ls /dev/input/event*            # Input devices
       ls /dev/block/platform          # Storage
       mount                           # Mounted filesystems
       ps aux                          # Running processes

3. **Isolate Issues**

   Hardware vs Software::

       # Hardware checks
       cat /proc/interrupts            # IRQ assignment
       cat /sys/class/power_supply/*   # Power subsystem
       
       # Software checks
       systemctl status               # Service status
       apparmor_status               # Security policy
       logcat                        # Android container

Core Tools
----------

Debug Access
^^^^^^^^^^^^
Methods by failure stage:

**No Boot**
    * Fastboot for partition operations
    * Recovery mode logging
    * Serial console if available

**Partial Boot**
    * ADB for system access
    * SSH over USB network
    * Telnet emergency shell

**System Running**
    * SSH/ADB normal access
    * System logs
    * Performance tools

Log Analysis
^^^^^^^^^^^^
Key log locations::

    /var/log/                   # System logs
    /proc/last_kmsg             # Last kernel messages
    /var/log/dmesg              # Boot messages
    /var/log/syslog             # System messages
    /var/log/lightdm/           # Display server
    /android/system/var/log/    # Android container

Common Patterns
---------------

Boot Issues
^^^^^^^^^^^
1. **Kernel Panic**
   
   * Check last_kmsg
   * Verify kernel config
   * Test without modules

2. **Init Failure**

   * Check init scripts
   * Verify mounts
   * Review service deps

3. **Container Issues**

   * Verify vendor blobs
   * Check SELinux status
   * Monitor LXC state

Hardware Detection
^^^^^^^^^^^^^^^^^^
1. **Input Devices**::

    # Check detection
    ls /dev/input/event*
    getevent -l
    
    # Test functionality
    evtest /dev/input/event0

2. **Display**::

    # Check framebuffer
    ls /dev/fb*
    
    # Monitor errors
    dmesg | grep -i display
    journalctl -u lightdm

3. **Storage**::

    # Verify partitions
    lsblk
    mount | grep mapper
    
    # Check errors
    dmesg | grep -i "I/O error"

Systematic Approach
-------------------

1. **Gather Facts**
   * Identify exact failure point
   * Collect relevant logs
   * Document hardware state

2. **Form Hypothesis**
   * Review similar issues
   * Check common failures
   * Consider hardware/software split

3. **Test Solution**
   * Make single changes
   * Document modifications
   * Verify fix complete

4. **Document Findings**
   * Record root cause
   * Document solution
   * Share with community

Recovery Options
----------------

1. **Safe Mode**::

    # Disable services
    systemctl isolate multi-user.target
    
    # Minimal graphics
    GRID_UNIT_PX=18 ubuntu-touch-session

2. **Emergency Access**::

    # Recovery shell
    touch /userdata/.force-ssh
    
    # Debug shell
    ubuntu_chroot debug

3. **Factory Reset**::

    # Clear user data
    rm -rf /userdata/*
    
    # Reset system
    halium-install -p ut rootfs.tar.gz system.img
    
.. toctree::
   :maxdepth: 2
   :name: strategies-toc

   logs
   hardware 
   performance
   recovery

Next Steps
----------

**Hardware issues?**
    → :doc:`../hardware-debug/index`

**System problems?**
    → :doc:`../system-debug/index`

**Need workflows?**
    → :doc:`../workflows/index`

See Also
--------
* :ref:`first-boot` - First boot debugging
* :ref:`hardware-abstraction` - Hardware subsystems
* :ref:`overlay-method` - System configuration