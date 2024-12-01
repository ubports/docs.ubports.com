Building System Images
======================

This guide walks you through building the necessary system images for your legacy device port. We'll build two main components: a boot image (halium-boot.img) and a system image (system.img).

Quick Reference
---------------
For experienced developers::

    source build/envsetup.sh
    breakfast [device]
    mka halium-boot
    mka systemimage

Understanding the Build Process
-------------------------------
Before diving in, let's understand what we're building:

1. **Boot Image (halium-boot.img)**

   - Contains the kernel
   - Includes initial ramdisk
   - Handles hardware initialization
   - Starts core system

2. **System Image (system.img)**

   - Main system files
   - Hardware abstraction layer
   - Android services
   - Vendor files

Think of the boot image as the starter and the system image as the engine of your device.

Detailed Steps
--------------

1. Prepare Build Environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
First, set up your shell environment::

    source build/envsetup.sh

This command:

- Sets up necessary environment variables
- Adds build commands to your shell
- Configures build tools

2. Configure Device
^^^^^^^^^^^^^^^^^^^
Initialize device configuration::

    breakfast [device]

Replace [device] with your device's codename (like i9300).

What breakfast does:

- Checks device configuration
- Downloads additional dependencies
- Sets up build targets

3. Configure Kernel
^^^^^^^^^^^^^^^^^^^
The kernel needs specific settings for Ubuntu Touch.

Find your kernel config::

    grep "TARGET_KERNEL_CONFIG" device/[vendor]/[device]/BoardConfig.mk

This shows which kernel configuration file to modify.

Apply Halium patches::

    ./halium/halium-boot/check-kernel-config path/to/defconfig -w

Important kernel settings::

    CONFIG_NAMESPACES=y        # Container support
    CONFIG_ANDROID_BINDER_IPC=y # Android IPC
    CONFIG_DUMMY_CONSOLE=y     # Display support
    CONFIG_DEVTMPFS=y         # Device filesystem

4. Build Boot Image
^^^^^^^^^^^^^^^^^^^
First, build boot image tools::

    mka mkbootimg

Then build the boot image::

    mka halium-boot

This creates halium-boot.img, which contains:

- Your compiled kernel
- Initial ramdisk
- Device tree (if required)

5. Build System Image
^^^^^^^^^^^^^^^^^^^^^
Build the complete system::

    mka systemimage

This step:

- Compiles Android HAL
- Integrates vendor blobs
- Creates filesystem image
- Packages everything together

Build Output
------------
Find your build results in::

    out/target/product/[device]/
    ├── halium-boot.img    # Boot image
    ├── system.img        # System image
    └── recovery.img      # Recovery (if built)

Common Issues
-------------
1. **Build Errors**

   - Missing dependencies: Check build-essential, etc.
   - Space issues: Need at least 100GB free
   - RAM limitations: Need 16GB+ RAM

2. **Kernel Problems**

   - Config errors: Verify kernel configuration
   - Missing modules: Check kernel defconfig
   - Build fails: Look for compiler errors

3. **System Image Issues**

   - Vendor blob problems: Check vendor files
   - HAL errors: Verify HAL versions
   - Space errors: Check partition sizes

Monitoring Progress
-------------------
Watch build progress::

    # Check CPU usage
    htop
    
    # Monitor storage
    df -h
    
    # Watch memory
    free -h

Next Steps
----------
After successful build:

- :doc:`installation` - Installing your build
- :doc:`../../debugging/workflows/first-boot` - First boot process
- :doc:`../../debugging/index` - Debugging tools

See Also
--------
* :ref:`build-systems` - Understanding build systems
* :ref:`hardware-abstraction` - HAL details
* :ref:`android-architecture` - Android build process