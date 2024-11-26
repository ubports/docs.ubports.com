.. _build-systems:

Build Systems
=============

Ubuntu Touch ports require integrating multiple build systems to create a complete system image. This section covers the build process, tools, and methods used.

Core Build Components
---------------------

1. **Android Build System**

   * Platform build tools
   * Soong/Android.bp
   * Android.mk files
   * Binary packaging

2. **Halium Build Chain**

   * Device adaptation
   * System integration
   * Image generation
   * Recovery building

3. **Ubuntu Touch Specifics**

   * Root filesystem creation
   * System image assembly
   * Package integration
   * OTA update preparation

Build Methods
-------------

Full System Image
^^^^^^^^^^^^^^^^^
Traditional approach building complete system:

* Full Android base
* Custom HAL integration
* Device-specific adaptations
* System partition creation

GSI-Based Build
^^^^^^^^^^^^^^^
Modern approach using generic images:

* Minimal device tree
* Standard Android base
* Treble compliance
* Vendor partition usage

Standalone Kernel
^^^^^^^^^^^^^^^^^
Latest method for modern devices:

* Kernel-only builds
* GSI compatibility
* Dynamic partitions
* A/B slot support

Build Process
-------------

1. **Environment Setup**

   * Tool installation
   * Path configuration
   * Dependency resolution
   * Source preparation

2. **Source Management**

   * Repo initialization
   * Manifest configuration
   * Device tree setup
   * Vendor blob integration

3. **Build Execution**

   * Kernel compilation
   * System image creation
   * Recovery building
   * Package generation

4. **Image Creation**

   * Boot image assembly
   * System image packaging
   * OTA preparation
   * Verification steps

Key Tools
---------

.. list-table::
   :header-rows: 1
   :widths: 30 70

   * - Tool
     - Purpose
   * - repo
     - Source management
   * - make/ninja
     - Build execution
   * - mkbootimg
     - Boot image creation
   * - mka
     - Android build wrapper
   * - halium-install
     - System deployment

Common Issues
-------------

1. **Build Environment**

   * Path conflicts
   * Tool version mismatches
   * Resource limitations
   * Dependency problems

2. **Source Integration**

   * Manifest errors
   * Branch conflicts
   * Missing dependencies
   * Patch failures

3. **Image Creation**

   * Partition sizing
   * Format compatibility
   * Signature verification
   * Boot image parameters

Best Practices
--------------

1. **Environment Management**

   * Clean build directory
   * Consistent toolchain versions
   * Proper PATH setup
   * Resource monitoring

2. **Source Control**

   * Regular sync schedule
   * Clean working tree
   * Branch organization
   * Patch management

3. **Build Process**

   * Incremental builds
   * Error logging
   * Output verification
   * Testing procedures

See Also
--------
* :ref:`android-architecture` - Android build context
* :ref:`halium-overview` - Halium build requirements
* :ref:`ubuntu-touch-architecture` - System integration
* :ref:`hardware-abstraction` - HAL build aspects

.. note::
    Different build methods suit different devices and scenarios. Choose based on device characteristics and available resources.