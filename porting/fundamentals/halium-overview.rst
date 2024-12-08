.. _halium-overview:

Halium Overview
===============

Quick Reference
---------------
Halium's essential functions:

* Provides Android hardware support to Linux userspace
* Runs minimal Android system in container
* Bridges Android and GNU/Linux through libhybris
* Manages boot process and hardware initialization

Key Requirements:

* Supported Android version (7.1, 9.0, or newer)
* Device kernel source availability
* Appropriate vendor blobs
* Android HAL compatibility

Understanding Halium
--------------------

What is Halium?
^^^^^^^^^^^^^^^
Halium solves a fundamental challenge in mobile Linux: how to make Android devices run standard Linux systems. Modern phones and tablets contain hardware that only works with Android drivers, creating a significant barrier for Linux adoption.

Halium bridges this gap by:

1. Running a minimal Android system to handle hardware
2. Converting Android hardware interfaces to standard Linux ones
3. Managing the boot process and system initialization
4. Providing a common base for different Linux distributions

Think of Halium as a translator that helps your Linux system talk to Android hardware. Just as a language translator helps two people who speak different languages communicate, Halium helps Linux and Android components work together.

Core Components
---------------

1. Android Container
^^^^^^^^^^^^^^^^^^^^
The Android container is like a small, focused Android system that only handles hardware:

* Runs inside LXC (Linux Containers)
* Contains minimal Android services
* Manages hardware-specific features
* Communicates with Linux system

Example services include:

* rild - Mobile network handling
* mediaserver - Camera and multimedia
* sensorservice - Device sensors

2. libhybris Bridge
^^^^^^^^^^^^^^^^^^^
libhybris is the key component that connects Android and Linux:

* Translates between Android's Bionic and GNU libc
* Enables direct use of Android drivers
* Provides hardware acceleration
* Manages binary compatibility

For example, when a Linux application needs to display graphics:

1. Application makes standard Linux OpenGL call
2. libhybris translates this to Android format
3. Android graphics driver processes request
4. Display shows the result

3. Boot System
^^^^^^^^^^^^^^
Halium manages the complex process of starting your device:

* Initializes core system
* Mounts necessary filesystems
* Starts Android container
* Launches system services

Version Support
---------------

Halium comes in different versions to match Android releases:

.. list-table::
   :header-rows: 1
   :widths: 20 30 50

   * - Halium Version
     - Android Base
     - Best Use Case
   * - Halium 7.1
     - Android 7.1
     - Legacy devices, basic ports
   * - Halium 9.0
     - Android 9
     - Modern devices, GSI support
   * - Halium 10+
     - Android 10+
     - Recent devices, GKI kernels

Each version provides:

* Compatible Android base system
* Appropriate HAL interfaces
* Necessary kernel features
* Required system services

Practical Implementation
------------------------

Basic Requirements
^^^^^^^^^^^^^^^^^^
To use Halium, you need:

1. **Device Requirements**

   * Unlocked bootloader
   * Available kernel source
   * Compatible Android version
   * Working hardware drivers

2. **Build Environment**

   * Linux development system
   * Required build tools
   * Source repositories
   * Storage space (100GB+)

3. **System Components**

   * Device kernel
   * Android system files
   * Vendor binary blobs
   * Hardware configurations

Integration Process
^^^^^^^^^^^^^^^^^^^
Halium integrates with your device through several steps:

1. **Boot Process**

   * Kernel loads with Android support
   * Initial ramdisk sets up system
   * Android container starts
   * Hardware services initialize

2. **Hardware Enablement**

   * Vendor blobs provide drivers
   * HAL interfaces connect hardware
   * libhybris enables Linux access
   * Services manage hardware features

3. **System Management**

   * Resource allocation
   * Process supervision
   * Hardware power management
   * Service coordination

Common Challenges
-----------------

1. **Hardware Support**

   * Missing or incompatible drivers
   * Vendor blob issues
   * HAL version mismatches
   * Power management problems

2. **System Integration**

   * Service initialization
   * Resource conflicts
   * Permission issues
   * Performance bottlenecks

3. **Boot Process**

   * Kernel compatibility
   * Init system conflicts
   * Service dependencies
   * Timing issues

Best Practices
--------------

1. **Version Selection**

   * Match Android version
   * Consider device age
   * Check HAL compatibility
   * Review kernel features

2. **Component Management**

   * Minimize Android services
   * Monitor resource usage
   * Test hardware functions
   * Document configurations

3. **Development Process**

   * Start with working device
   * Test incrementally
   * Monitor system logs
   * Document changes

Next Steps
----------

**Want to understand hardware details?**
    → :ref:`hardware-abstraction`

**Ready to learn about Ubuntu Touch?**
    → :ref:`ubuntu-touch-architecture`

See Also
--------
* :ref:`android-architecture` - Android system details
* :ref:`hardware-abstraction` - HAL implementation
* :ref:`build-systems` - Building Halium