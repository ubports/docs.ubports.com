.. _legacy-build:

Legacy Build Methods
====================

The legacy build method is required for devices running pre-Android 9.0 systems or needing complete system customization. While more complex than modern methods, it provides maximum control for devices that need it.

Quick Reference
---------------
Essential requirements:

* Pre-Android 9.0 device
* Complete device tree available  
* Working LineageOS/AOSP base
* Vendor blobs
* Hardware sources

Implementation Steps
--------------------

1. **Environment Setup**::

    sudo apt install git gcc adb fastboot repo python-is-python2
    # This installs:
    # git/repo - Source code management tools
    # gcc - Code compiler
    # adb/fastboot - Device communication
    # python - Required for build scripts

2. **Source Preparation**::

    # Initialize repository
    mkdir halium && cd halium
    repo init -u https://github.com/Halium/android -b halium-7.1
    repo sync -c -j$(nproc)
    
    # This:
    # - Creates build directory
    # - Sets up Android build system
    # - Downloads required Android sources
    # - Prepares build environment

3. **Configuration**::

    # Initialize device
    breakfast [device]
    # This:
    # - Sets up device-specific configurations
    # - Checks build dependencies
    # - Prepares vendor files
    # - Configures build targets
    
    # Configure device settings in:
    # device/[vendor]/[device]/BoardConfig.mk  # Hardware settings
    # device/[vendor]/[device]/device.mk       # Features and packages
    # device/[vendor]/[device]/system.prop     # System properties

4. **Build Process**::

    # Build boot image
    mka halium-boot
    # This:
    # - Compiles device kernel
    # - Creates initial ramdisk
    # - Builds Android boot image
    # - Packages for device flashing
    
    # Build system image
    mka systemimage
    # This:
    # - Builds Android system components
    # - Compiles hardware support layer
    # - Creates system partition image
    # - Prepares for device installation

Common Issues
-------------

1. **Source Sync Failures**
   
   * Check internet connection
   * Verify repo installation
   * Ensure sufficient storage
   * Try with different branch

2. **Build Environment Problems**
   
   * Install missing packages
   * Check Python version
   * Verify $PATH setup
   * Update build tools

3. **Device Tree Issues**
   
   * Verify device tree exists
   * Check vendor blobs
   * Validate configurations
   * Review dependencies

Best Practices
--------------

1. **Environment Management**
   
   * Use ccache for faster rebuilds
   * Keep build tree clean
   * Document configurations
   * Backup working builds

2. **Testing Process**
   
   * Build incrementally
   * Test each component
   * Document issues
   * Save known-good configs

3. **Update Strategy**
   
   * Track upstream changes
   * Manage patches carefully
   * Document modifications
   * Test thoroughly

Next Steps
----------

After successful build:

* :ref:`initial-boot` - First boot process
* :ref:`debugging` - Problem solving
* :ref:`hardware-enablement` - Feature support

See Also
--------
* :doc:`modern` - Modern build methods
* :ref:`migration-guide` - Upgrading builds
* :ref:`debugging` - Troubleshooting guide