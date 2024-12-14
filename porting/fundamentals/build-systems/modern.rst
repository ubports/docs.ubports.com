Modern Build Methods
===================

The modern build method is the recommended approach for devices running Android 9.0 or newer. It simplifies the porting process by leveraging Project Treble's standardized hardware interfaces.

Quick Reference
---------------
Essential requirements:

* Android 9.0+ device
* Available kernel source
* Project Treble support
* Working vendor blobs

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
    pip install --user crossdev

2. **Source Preparation**::

    git clone https://github.com/ubports/build-tools
    ./setup.sh -p [device]

3. **Configuration**::

    # Create device config
    cp config/sample.config device/[vendor]/[device].config
    
    # Edit essential settings
    nano device/[vendor]/[device].config

4. **Build Process**::

    # Build kernel only
    ./build.sh -k
    
    # Full build
    ./build.sh -b

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

After successful build:

* :ref:`initial-boot` - First boot process
* :ref:`debugging` - Problem solving
* :ref:`hardware-enablement` - Feature support

See Also
--------
* :ref:`build-concepts` - Core build concepts
* :ref:`gsi-devices` - GSI compatibility
* :doc:`legacy` - Legacy build support