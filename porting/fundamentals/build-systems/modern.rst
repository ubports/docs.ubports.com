.. _modern-build:

Modern Build Methods
====================

The modern build method is the recommended approach for devices running Android 9.0 or newer. It simplifies the porting process by leveraging Project Treble's standardized hardware interfaces.

Quick Reference
---------------
Essential requirements:

* Android 9.0+ device
* Available kernel source
* Project Treble support
* Working vendor blobs

Understanding the Build Process
-------------------------------
Think of building Ubuntu Touch like assembling a complex model kit. You need:

- The right parts (source code and tools)
- Clear instructions (configuration files)
- Proper assembly order (build steps)
- Quality checks (testing)

Understanding Modern Builds 
---------------------------

Modern builds take advantage of Android's hardware standardization:

1. **Project Treble**
   
   How it helps:

   * Standardized HAL interfaces
   * Separated vendor code
   * Consistent hardware access
   * Simplified updates

   Required components:

   * Vendor partition
   * HIDL interfaces
   * HAL implementations
   * System services

2. **GSI Compatibility**
   
   Benefits:

   * Standard system images
   * Hardware abstraction
   * Easier testing
   * Faster development

Build Components
----------------

Key elements of the modern build:

1. **Kernel Build**
   
   Essential parts::

    deviceinfo_kernel_source="https://github.com/..."
    deviceinfo_kernel_defconfig="vendor_defconfig"
    deviceinfo_kernel_image_name="Image.gz-dtb"

   Purpose:

   * Hardware support
   * System initialization
   * Device control
   * Feature enablement

2. **System Image**
   
   Components:

   * Ubuntu Touch rootfs
   * Android container
   * Hardware support
   * System configuration

3. **Boot Image**
   
   Required files:

   * Kernel
   * Initial ramdisk
   * Device tree
   * Boot configuration

Implementation Steps
--------------------

1. **Environment Setup**::

    sudo apt install git gcc adb fastboot
    # This installs:
    # git - Gets source code (like getting your model kit parts)
    # gcc - Compiles code (like the glue for your model)
    # adb/fastboot - Talks to device (like the paint brushes and tools)

2. **Source Preparation**

Two distinct build methods are available. Choose ONE of these approaches based on your device:

A) Standalone Kernel Method (Recommended for modern devices)::

    # Clone build tools
    git clone https://github.com/ubports/build-tools
    
    # This:
    # - Downloads necessary build scripts (instruction manual)
    # - Sets up basic directory structure (organizes workspace)
    # - Prepares build environment (sets up workbench)

B) Full System Build Method (For legacy or special cases)::

    # Initialize repository
    repo init -u https://github.com/Halium/android -b halium-10.1
    repo sync -c -j$(nproc)
    
    # This:
    # - Sets up complete Android build environment
    # - Downloads all required Android sources
    # - Prepares for full system compilation

WARNING: These methods are mutually exclusive - do not mix commands between them. 
Choose the appropriate method based on your device's Android version and hardware support:

- Use Standalone Kernel Method for Android 9+ devices
- Use Full System Build Method (legacy build method) for pre-Android 9 devices or those requiring deep customization

3. **Configuration**

A) For Standalone Kernel Method::

    # Create deviceinfo configuration
    cp deviceinfo.template deviceinfo
    
    # Edit essential settings like:
    # - Device name and manufacturer
    # - Kernel source and branch
    # - Build parameters
    # - Hardware configs
    nano deviceinfo

B) For Full System Build Method::

    # Initialize device configuration
    breakfast [device]
    
    # Configure device-specific settings in:
    # device/[vendor]/[device]/BoardConfig.mk - Hardware configs
    # device/[vendor]/[device]/device.mk      - Features and packages
    # device/[vendor]/[device]/system.prop    - System properties
    
    # Verify vendor files are present in:
    # vendor/[vendor]/[device]/proprietary-files.txt

4. **Build Process**

A) For Standalone Kernel Method::

    # Build kernel only
    ./build.sh -k
    # This command:
    # 1. Downloads your device's kernel source
    # 2. Applies necessary patches
    # 3. Configures for Ubuntu Touch
    # 4. Compiles the kernel
    # 5. Creates kernel modules
    
    # Full build
    ./build.sh -b
    # This command:
    # 1. Builds the complete system image
    # 2. Creates necessary Android components
    # 3. Packages Ubuntu Touch rootfs
    # 4. Generates boot and recovery images
    # 5. Prepares flashable system files

B) For Full System Build Method::

    # Build boot image
    mka halium-boot
    # This command:
    # 1. Compiles the kernel and modules
    # 2. Creates initial ramdisk
    # 3. Packages boot image with device tree
    # 4. Prepares bootloader-compatible format
    
    # Build system image
    mka systemimage
    # This command:
    # 1. Compiles Android HAL components
    # 2. Integrates vendor binaries
    # 3. Creates system partition image
    # 4. Packages for device installation

Debugging Builds
----------------

Common issues and solutions:

1. **Compilation Errors**
   
   Check:

   * Build dependencies
   * Compiler version
   * Source compatibility
   * Configuration flags

2. **Boot Problems**
   
   Verify:

   * Kernel configuration
   * Device tree
   * Boot parameters
   * Initial ramdisk

3. **System Integration**
   
   Review:

   * HAL compatibility
   * Vendor blobs
   * Service configuration
   * Hardware support

Best Practices
--------------

1. **Source Management**
   
   * Use version control
   * Document changes
   * Keep clean trees
   * Backup configurations

2. **Testing Process**
   
   * Build incrementally
   * Test each component
   * Document issues
   * Maintain logs

3. **Update Strategy**
   
   * Track upstream changes
   * Manage dependencies
   * Document procedures
   * Plan maintenance

Next Steps
----------

Further details on modern porting methods:

* :ref:`modern-methods` - Modern porting methods

After successful build:

* :ref:`initial-boot` - First boot process
* :ref:`debugging` - Problem solving
* :ref:`hardware-enablement` - Feature support

See Also
--------
* :ref:`build-concepts` - Core build concepts
* :ref:`gki-devices` - GSI compatibility
* :doc:`legacy` - Legacy build support