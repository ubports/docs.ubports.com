Container System
================

Ubuntu Touch uses containers to isolate Android hardware support from the main GNU/Linux system. This design enables standard Linux software to run while maintaining full hardware compatibility.

Quick Reference
---------------
Key container concepts:

* LXC container hosts Android
* Hardware access through libhybris
* Service isolation
* Resource management

Understanding Containers
------------------------

The Container Model
^^^^^^^^^^^^^^^^^^^
Ubuntu Touch's container system:

1. **Main System**

   * GNU/Linux userspace
   * Ubuntu Touch interface
   * User applications
   * System services

2. **Android Container**

   * Minimal Android system
   * Hardware services
   * Vendor binaries
   * Device drivers

Think of the container system like a house with two rooms:

- One room (main system) where you live and work
- Another room (Android container) containing all the building's infrastructure

Container Implementation
------------------------

1. **LXC Configuration**

   Basic structure::

    /var/lib/lxc/android/
    ├── config           # Container configuration
    ├── rootfs/         # Android root filesystem
    └── system.img      # System image

   Key settings::

    # Container config
    lxc.rootfs.path = /var/lib/lxc/android/rootfs
    lxc.mount.auto = cgroup:mixed proc:mixed sys:mixed
    lxc.arch = arm64

2. **Service Integration**

   Essential services:

   * binder - IPC system
   * hwcomposer - Display
   * media - Audio/Video
   * sensors - Device input

3. **Resource Management**

   Container controls:

   * Memory limits
   * CPU allocation
   * Storage access
   * Device permissions

Hardware Access
---------------

1. **Direct Hardware**
   
   Through container:

   * Device drivers
   * Kernel modules
   * Hardware interfaces
   * Low-level access

2. **Abstracted Hardware**
   
   Via libhybris:

   * Graphics
   * Audio
   * Sensors
   * Networking

3. **Shared Resources**
   
   Common access:

   * Storage
   * Network interfaces
   * Input devices
   * System memory

Security Considerations
-----------------------

1. **Isolation**
   
   Container boundaries:

   * Process separation
   * Resource limits
   * Permission control
   * Access restrictions

2. **AppArmor Profiles**

   Security policies::

    # Container profile
    profile lxc-container-default flags=(attach_disconnected,mediate_deleted) {
      # Allow container access
      capability,
      network,
      
      # Restrict system access
      deny /proc/** wkx,
      deny /sys/** wkx,
    }

3. **Resource Controls**
   
   Management tools:

   * cgroups configuration
   * Resource limits
   * Process controls
   * Network isolation

Common Issues
-------------

1. **Container Start Failures**
   
   Check:

   * LXC configuration
   * Mount points
   * Service dependencies
   * Log files

2. **Hardware Access**
   
   Verify:

   * Device permissions
   * Driver loading
   * Service status
   * System logs

3. **Resource Problems**
   
   Monitor:

   * Memory usage
   * CPU allocation
   * Storage space
   * Process limits

Best Practices
--------------

1. **Configuration**
   
   * Document changes
   * Test modifications
   * Back up working configs
   * Monitor performance

2. **Debugging**
   
   Essential commands::

    # Check container status
    lxc-info -n android
    
    # View logs
    journalctl -u lxc@android
    
    # Monitor processes
    ps aux | grep android

3. **Maintenance**
   
   Regular tasks:

   * Update configurations
   * Check logs
   * Monitor resources
   * Test functionality

Next Steps
----------

* :doc:`system-images` - Image structure
* :doc:`hardware-support` - Hardware integration
* :ref:`debugging` - Problem solving

See Also
--------
* :ref:`android-integration` - Android system details
* :ref:`hardware-abstraction` - HAL implementation
* :ref:`implementation-guide` - Practical steps