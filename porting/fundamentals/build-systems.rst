.. _build-systems:

Build Systems
=============

Quick Reference
---------------
Essential build components:

* Device configuration (deviceinfo)
* Kernel compilation
* System image creation
* Recovery generation

Build methods:

* Standalone kernel + GSI (recommended for modern devices)
* Full system build (for complex/legacy devices)
* Legacy build (pre-Android 9 devices)

Understanding Build Systems
---------------------------

What Are We Building?
^^^^^^^^^^^^^^^^^^^^^
An Ubuntu Touch port requires several components working together:

1. **Boot Image**

   * Kernel - Handles hardware
   * Ramdisk - Initial system setup
   * Device tree - Hardware description

2. **System Image**

   * Root filesystem - Core system
   * Android layer - Hardware support
   * Configuration - Device settings

Think of these components like building blocks – each must be correctly configured and assembled for your device to work properly.

Build Methods
-------------

1. Standalone Kernel Method
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Best for modern devices (Android 9+):

**What You Build**
   * Device kernel
   * Boot configuration
   * Basic device settings

**Advantages**
   * Simpler process
   * Faster builds
   * Easier maintenance

Example workflow::

    # Build kernel only
    ./build.sh -k -b workdir
    
    # Build complete system
    ./build.sh -b workdir
    ./build/prepare-fake-ota.sh out/device_${DEVICE}.tar.xz ota
    ./build/system-image-from-ota.sh ota/ubuntu_command images

2. Full System Build
^^^^^^^^^^^^^^^^^^^^
For devices needing customization:

**What You Build**
   * Complete system image
   * Kernel and modules
   * Android integration
   * All configurations

**When to Use**
   * Legacy devices
   * Special requirements
   * Custom Android changes

Example workflow::

    # Initialize build
    source build/envsetup.sh
    breakfast ${DEVICE}
    
    # Build components
    mka halium-boot
    mka systemimage

Build Environment
-----------------

1. Directory Structure
^^^^^^^^^^^^^^^^^^^^^^
Standard layout::

    halium/
    ├── device/           # Device configurations
    ├── kernel/           # Kernel source
    ├── vendor/           # Proprietary blobs
    └── out/             # Build outputs

2. Tool Requirements
^^^^^^^^^^^^^^^^^^^^
Essential build tools::

    # Core build tools
    gcc, make, python3
    
    # Android tools
    repo, adb, fastboot
    
    # System tools
    git, curl, rsync

3. Environment Setup
^^^^^^^^^^^^^^^^^^^^
Configure build environment::

    # Set common variables
    export USE_CCACHE=1
    export CCACHE_DIR=~/.ccache
    
    # Configure storage
    ccache -M 50G

Build Process
-------------

1. Source Preparation
^^^^^^^^^^^^^^^^^^^^^
Get required sources::

    # Initialize repository
    repo init -u https://github.com/Halium/android \
        -b halium-9.0
    
    # Sync sources
    repo sync -c -j$(nproc)

2. Device Configuration
^^^^^^^^^^^^^^^^^^^^^^^
Set up device files::

    # Create device manifest
    vim halium/devices/manifests/${VENDOR}_${DEVICE}.xml
    
    # Configure device
    vim deviceinfo

3. Build Execution
^^^^^^^^^^^^^^^^^^
Build process steps:

**Kernel Build**
   * Configure kernel
   * Build modules
   * Create boot image

**System Creation**
   * Generate system files
   * Package images
   * Create OTA update

Common Issues
-------------

1. Build Failures
^^^^^^^^^^^^^^^^^
Typical problems and solutions:

**Missing Dependencies**::

    # Check build tools
    which make gcc python3
    
    # Install missing packages
    sudo apt install build-essential

**Resource Limits**::

    # Check storage
    df -h
    
    # Monitor memory
    free -h

2. Configuration Errors
^^^^^^^^^^^^^^^^^^^^^^^
Common configuration issues:

**Wrong Paths**::

    # Verify source tree
    repo status
    
    # Check manifest
    cat .repo/manifest.xml

**Build Variables**::

    # Review environment
    env | grep ANDROID
    
    # Check build config
    cat build/envsetup.sh

Best Practices
--------------

1. Build Management
^^^^^^^^^^^^^^^^^^^
Optimize your build process:

* Use ccache for faster rebuilds
* Keep clean source tree
* Document custom changes
* Version control configurations

2. Testing Strategy
^^^^^^^^^^^^^^^^^^^
Verify builds properly:

* Test boot image first
* Verify system services
* Check hardware functions
* Monitor performance

3. Troubleshooting Steps
^^^^^^^^^^^^^^^^^^^^^^^^
When builds fail:

1. Check build logs
2. Verify dependencies
3. Review configurations
4. Test incrementally

Development Flow
----------------

1. Initial Setup
^^^^^^^^^^^^^^^^
* Configure environment
* Get sources
* Set up device

2. Development Cycle
^^^^^^^^^^^^^^^^^^^^
* Make changes
* Build components
* Test functionality
* Debug issues

3. Release Process
^^^^^^^^^^^^^^^^^^
* Final testing
* Package creation
* Update preparation
* Documentation

Next Steps
----------

**Ready to build?**
    → :doc:`../modern-porting/standalone-kernel/index`

**Need device config help?**
    → :doc:`../modern-porting/standalone-kernel/device-config`

See Also
--------
* :ref:`android-architecture` - System structure
* :ref:`halium-overview` - Halium integration
* :doc:`../debugging/index` - Debugging builds