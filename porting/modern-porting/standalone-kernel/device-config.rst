.. _device-config:

Device Configuration
====================

Quick Reference
---------------
For experienced developers, create a deviceinfo file in your repository root with these minimal settings::

    deviceinfo_name="Device Name"
    deviceinfo_manufacturer="Brand"
    deviceinfo_codename="codename"
    deviceinfo_arch="aarch64"
    deviceinfo_kernel_source="https://github.com/path/to/kernel"
    deviceinfo_kernel_source_branch="branch-name"
    deviceinfo_kernel_defconfig="codename_defconfig halium.config"
    deviceinfo_bootimg_header_version="2"
    deviceinfo_kernel_cmdline="console=tty0 systempart=/dev/mapper/system"
    deviceinfo_flash_pagesize="4096"
    deviceinfo_use_overlaystore="true"

Understanding deviceinfo
------------------------
The deviceinfo file is the central configuration point that tells the build system everything it needs to know about your device. Think of it as your device's "ID card" that contains:

* Basic information (name, manufacturer, architecture)
* Where to find source code
* How to build the kernel
* How to create boot images
* How to handle system storage

This configuration affects every aspect of your port, from initial building to final operation. Getting it right is crucial for a working port.

Essential Configuration
-----------------------
For basic port initialization, create a deviceinfo file in your repository root with these minimal settings::

    # Basic device information
    deviceinfo_name="Device Name"        # e.g., "OnePlus 8"
    deviceinfo_manufacturer="Brand"      # e.g., "OnePlus"
    deviceinfo_codename="codename"       # e.g., "instantnoodle"
    deviceinfo_arch="aarch64"           # or "arm" for 32-bit devices

    # Kernel source configuration
    deviceinfo_kernel_source="https://github.com/path/to/kernel"
    deviceinfo_kernel_source_branch="branch-name"
    deviceinfo_kernel_defconfig="codename_defconfig halium.config"

    # Boot configuration
    deviceinfo_bootimg_header_version="2"        # See version table below
    deviceinfo_kernel_cmdline="console=tty0 systempart=/dev/mapper/system"
    deviceinfo_flash_pagesize="4096"
    deviceinfo_use_overlaystore="true"

This minimal configuration allows initial building and testing. Expand it based on your device's requirements.

Boot Image Headers
------------------
The boot image header tells the system how to load and start your device. Choose the correct version based on your Android version:

.. list-table::
   :header-rows: 1
   :widths: 20 50 30

   * - Header Version
     - Android Version
     - When to Use
   * - 0
     - Pre-Android 9
     - Legacy devices only
   * - 1
     - Android 9
     - Early Treble devices
   * - 2
     - Android 10
     - Most modern devices
   * - 3
     - Android 11
     - Early GKI devices
   * - 4
     - Android 12+
     - Modern GKI devices

Using the wrong header version will prevent your device from booting. When in doubt:

1. Check your device's Android version
2. Extract current boot.img and check header
3. Look at similar device ports

.. note::
    Modern devices (Android 10+) almost always use version 2 or higher. Using an older version will likely fail.

Kernel Configuration
--------------------
The kernel is the core of your device's operating system. It needs specific configuration to work with Ubuntu Touch.

Basic Build Options
^^^^^^^^^^^^^^^^^^^
Configure how your kernel should be built::

    # Standard compilation
    deviceinfo_kernel_clang_compile="true"  # Use modern Clang compiler
    deviceinfo_kernel_llvm_compile="true"   # Use complete LLVM toolchain

Why these settings?
* Modern Android kernels expect Clang compilation
* LLVM provides better optimization and debugging
* Some devices require specific compiler settings

For GKI (Generic Kernel Image) devices, additional settings are needed::

    deviceinfo_bootimg_header_version="4"           # Modern GKI header
    deviceinfo_kernel_llvm_compile="true"           # Required for GKI
    deviceinfo_vendor_bootconfig_path="bootconfig"  # Vendor boot config
    deviceinfo_ramdisk_compression="lz4"           # Modern compression

.. note::
    If you're unsure whether your device uses GKI, check your kernel source tree 
    for GKI-specific configurations or Android documentation for your device's 
    release date - devices launched with Android 12 or later typically use GKI.

Flash Layout Configuration
--------------------------
These settings tell the system where to find different components in your device's memory. Getting these wrong can prevent booting or cause data corruption.

Essential Settings
^^^^^^^^^^^^^^^^^^
Each device needs specific memory addresses and sizes::

    # Flash offset configuration
    deviceinfo_flash_offset_base="0x00000000"      # Base memory address
    deviceinfo_flash_offset_kernel="0x00008000"    # Kernel load point
    deviceinfo_flash_offset_ramdisk="0x01000000"   # Ramdisk location
    deviceinfo_flash_offset_second="0x00f00000"    # Second bootloader (if needed)
    deviceinfo_flash_offset_tags="0x00000100"      # Kernel tags location
    deviceinfo_flash_pagesize="4096"               # Flash memory page size

How to find these values:

1. Extract from your stock boot.img
2. Read kernel documentation
3. Check device tree files
4. Look at similar device configurations

.. warning::
    Using incorrect flash layout values can potentially brick your device. Always 
    verify these values against stock firmware or existing ports.

Advanced Configuration
----------------------

Device Tree Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^
Device Tree Blobs (DTB) and Overlays (DTBO) describe your device's hardware to the kernel::

    # DTB configuration
    deviceinfo_dtb="path/to/dtb.dtb"                  # Device tree blob
    deviceinfo_prebuilt_dtb="path/to/dtb"            # Pre-built DTB
    deviceinfo_dtbo="path/to/dtbo.img"               # Device tree overlay
    deviceinfo_prebuilt_dtbo="path/to/dtbo.img"      # Pre-built DTBO

When do you need these?
* DTB: Almost always required for modern devices
* DTBO: Usually needed for Android 9+ devices
* Prebuilt versions: When building from source isn't possible

Special Boot Requirements
^^^^^^^^^^^^^^^^^^^^^^^^^
Some devices need additional boot configuration::

    # Samsung devices
    deviceinfo_bootimg_board="SRPUK23A007"           # Board name in header
    deviceinfo_bootimg_tailtype="SEAndroid"          # Special tail type

    # GKI devices
    deviceinfo_bootimg_has_init_boot="true"          # Separate init_boot
    deviceinfo_vendor_bootconfig_path="bootconfig"    # Vendor boot config

Storage Configuration
^^^^^^^^^^^^^^^^^^^^^
Configure how system storage should be handled::

    deviceinfo_rootfs_image_sector_size="4096"      # Common for UFS devices
    deviceinfo_system_partition_size="4000M"        # Override default size
    deviceinfo_use_overlaystore="true"              # Enable overlay storage

Understanding these settings:
* Sector size affects storage performance and compatibility
* System partition size must accommodate OS and apps
* Overlay storage enables updates without modifying system partition

Example Configurations
----------------------

Standard Modern Device
^^^^^^^^^^^^^^^^^^^^^^
Example configuration for a typical recent device::

    deviceinfo_name="OnePlus 8"
    deviceinfo_manufacturer="OnePlus"
    deviceinfo_codename="instantnoodle"
    deviceinfo_arch="aarch64"
    deviceinfo_kernel_source="https://github.com/OnePlus-SM8250-Development/android_kernel_oneplus_sm8250"
    deviceinfo_kernel_source_branch="lineage-20"
    deviceinfo_kernel_defconfig="vendor/instantnoodle_defconfig"
    deviceinfo_bootimg_header_version="2"
    deviceinfo_has_recovery_partition="true"
    deviceinfo_flash_pagesize="4096"

GKI Device
^^^^^^^^^^
Configuration for a GKI-based device::

    deviceinfo_bootimg_header_version="4"
    deviceinfo_kernel_llvm_compile="true"
    deviceinfo_use_overlaystore="true"
    deviceinfo_vendor_bootconfig_path="bootconfig"
    deviceinfo_ramdisk_compression="lz4"
    deviceinfo_bootimg_has_init_boot="true"

Troubleshooting
---------------

Common Issues:

1. **Boot loops**:

   * Check header version matches Android version
   * Verify cmdline includes console=tty0
   * Confirm flash offsets are correct

2. **Flash fails**:

   * Verify flash offsets and pagesize
   * Check partition sizes match device
   * Confirm bootloader accepts images

3. **No display**:

   * Ensure console=tty0 in cmdline
   * Check DTB configuration
   * Verify display driver enabled in kernel

4. **Init fails**:

   * Check systempart parameter
   * Verify ramdisk compression
   * Confirm init_boot configuration (if GKI)

Next Steps
----------

**Configuration complete?**
    → :doc:`kernel-build`

**Need hardware details?**
    → :ref:`hardware-abstraction`

See Also
--------
* :ref:`build-systems` - Build process details
* :doc:`../../vendor-specific/index` - Vendor-specific requirements
* :doc:`../../resources/deviceinfo-reference` - Complete parameter reference