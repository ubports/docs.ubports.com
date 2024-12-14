Legacy Build Methods
====================

The legacy build method is used for devices running pre-Android 9.0 systems or requiring complete system customization. While more complex than modern methods, it provides maximum control over the build process.

Quick Reference
---------------
Requirements:

* Pre-Android 9.0 device
* Complete device tree
* Working LineageOS/AOSP base
* Vendor blobs
* Hardware sources

Understanding Legacy Builds
---------------------------

Legacy builds require building the complete system:

1. **Full System Stack**
   
   Components needed:
   
   * Complete Android base
   * Hardware support layer
   * System services
   * Vendor implementations

2. **Build Environment**
   
   Requirements:

   * Linux system
   * 16GB+ RAM
   * 200GB+ storage
   * Development tools

Build Process Overview
----------------------

1. **Source Setup**

   Initialize repository::

    mkdir halium && cd halium
    repo init -u https://github.com/Halium/android -b halium-7.1
    repo sync -c -j$(nproc)

2. **Device Configuration**

   Create manifest::

    # device/manifests/[vendor]_[device].xml
    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
        <project path="device/[vendor]/[device]"
                 name="[repository-name]"
                 remote="[remote]"
                 revision="[branch]" />
        
        <project path="kernel/[vendor]/[device]"
                 name="[kernel-repository]"
                 remote="[remote]"
                 revision="[branch]" />
    </manifest>

3. **Source Management**
   
   Organizing sources:

   * Device tree files
   * Kernel source
   * Vendor blobs
   * Hardware configurations

Implementation Details
----------------------

1. **Device Tree**
   
   Required files:

   * BoardConfig.mk
   * device.mk
   * vendor setup
   * Configuration files

2. **Kernel Configuration**
   
   Essential settings::

    CONFIG_ANDROID_BINDER_IPC=y
    CONFIG_NAMESPACES=y
    CONFIG_SECURITY_APPARMOR=y
    CONFIG_FHANDLE=y

3. **System Integration**
   
   Components:

   * Init scripts
   * Hardware abstraction
   * Service definitions
   * Mount points

Common Challenges
-----------------

1. **Source Availability**
   
   Issues:

   * Missing repositories
   * Outdated sources
   * Binary blobs
   * Documentation gaps

2. **Build Complexity**
   
   Challenges:

   * Long build times
   * Resource requirements
   * Dependency management
   * Version conflicts

3. **Hardware Support**
   
   Problems:

   * Driver compatibility
   * HAL versions
   * Vendor blobs
   * Feature support

Best Practices
--------------

1. **Environment Management**
   
   * Use ccache
   * Monitor resources
   * Clean builds
   * Source organization

2. **Build Process**
   
   * Incremental builds
   * Regular testing
   * Error logging
   * Version control

3. **Documentation**
   
   * Track changes
   * Document fixes
   * Keep notes
   * Share solutions

Debugging Builds
----------------

1. **Build Failures**
   
   Check:

   * Log files
   * Dependencies
   * Compiler errors
   * Resource limits

2. **Integration Issues**
   
   Verify:

   * HAL compatibility
   * Service configuration
   * Mount points
   * Init sequence

3. **Hardware Problems**
   
   Review:

   * Driver loading
   * Device permissions
   * Hardware initialization
   * System services

Migration Options
-----------------

Consider upgrading to modern builds if:

* Device supports Android 9.0
* Hardware documentation exists
* Vendor provides sources
* Community support available

Next Steps
----------

After building:

* :ref:`initial-boot` - First boot
* :ref:`debugging` - Problem solving
* :ref:`hardware-enablement` - Features

See Also
--------
* :doc:`modern` - Modern build methods
* :ref:`build-concepts` - Core concepts
* :ref:`migration-guide` - Upgrading builds