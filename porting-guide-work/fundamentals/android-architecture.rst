.. _android-architecture:

Android System Architecture
===========================

Quick Reference
---------------
Essential components for Ubuntu Touch porting:

* Linux kernel with Android modifications
* Hardware Abstraction Layer (HAL)
* Android services needed for hardware support
* Bionic C library and runtime components

Key Points for Porters
^^^^^^^^^^^^^^^^^^^^^^
* Device kernel must support Android features
* Hardware access requires vendor blobs and HAL
* Android services run in LXC container
* System integration through libhybris

Understanding Android Architecture
----------------------------------

Core Components
^^^^^^^^^^^^^^^
Android is built in layers, each serving specific purposes:

1. **Linux Kernel Layer**
   
   The foundation of Android is a modified Linux kernel that includes:
   
   * Binder - Android's inter-process communication system
   * Wakelocks - Power management controls
   * Android shared memory (ashmem)
   * Special device drivers

   These modifications enable Android's unique features while maintaining Linux compatibility.

2. **Hardware Abstraction Layer**

   HAL provides standardized interfaces between hardware and higher layers:
   
   * Defines how hardware features are exposed
   * Allows vendor-specific implementations
   * Maintains binary compatibility
   * Enables hardware support without kernel modifications

   For example, when an app needs to take a photo, it communicates through 
   multiple layers down to the HAL, which then talks to your device's actual 
   camera hardware using vendor-specific code.

3. **Native Libraries**

   Core system components written in C/C++:
   
   * Bionic - Android's C library
   * Surface Flinger - Display management
   * OpenGL ES - 3D graphics
   * Media frameworks
   
   These provide essential functionality while being optimized for mobile devices.

4. **Android Runtime**

   Executes Android applications:
   
   * Process management
   * Memory management
   * Thread handling
   
   This layer ensures apps run efficiently on limited mobile resources.

5. **Application Framework**

   Provides high-level services to applications:
   
   * Activity Manager - Controls app lifecycle
   * Window Manager - Handles display elements
   * Content Providers - Manages data sharing
   * Package Manager - Handles app installation

Relevance to Ubuntu Touch
-------------------------

Hardware Support
^^^^^^^^^^^^^^^^
Ubuntu Touch relies on Android's hardware support through:

1. **Kernel Layer**

   * Uses Android-compatible kernel
   * Maintains Android driver support
   * Implements necessary Android features

2. **HAL Integration**

   * Accesses hardware through Android HAL
   * Uses libhybris to bridge Android and GNU/Linux
   * Requires vendor binary blobs

3. **Service Container**

   * Runs minimal Android system
   * Provides hardware functionality
   * Managed through LXC

Essential Features
^^^^^^^^^^^^^^^^^^
Key Android components needed for Ubuntu Touch:

1. **Binder**

   * Enables communication with Android services
   * Required for hardware access
   * Managed through libhybris

2. **Graphics Stack**

   * Hardware composition
   * GPU acceleration
   * Display management

3. **Input System**

   * Touch processing
   * Sensor handling
   * Event management

Common Challenges
-----------------

1. **Kernel Compatibility**

   * Missing Android features
   * Driver conflicts
   * Version mismatches

2. **HAL Integration**

   * Vendor blob compatibility
   * Interface version matching
   * Binary compatibility

3. **Service Management**

   * Process initialization
   * Resource allocation
   * System integration

Best Practices
--------------

1. **Kernel Configuration**

   * Enable required Android features
   * Configure proper subsystems
   * Maintain necessary drivers

2. **HAL Setup**

   * Match interface versions
   * Verify blob compatibility
   * Test hardware access

3. **System Integration**

   * Minimize Android components
   * Configure proper permissions
   * Manage resource usage

Next Steps
----------

**Ready to understand Halium's role?**
    → :ref:`halium-overview`

**Want hardware details?**
    → :ref:`hardware-abstraction`

See Also
--------
* :ref:`halium-overview` - Halium architecture
* :ref:`hardware-abstraction` - HAL details
* :ref:`build-systems` - Building Android components