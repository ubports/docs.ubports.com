.. _device-config:

Device Configuration
====================

The deviceinfo file is the central configuration point for your Ubuntu Touch port. This section covers both basic setup and advanced configuration options.

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
Choose the correct header version based on your Android version:

.. list-table::
   :header-rows: 1
   :widths: 20 50 30

   * - Header Version
     - Android Version
     - Common Traits
   * - 0
     - Pre-Android 9
     - Legacy devices
   * - 1
     - Android 9
     - Basic Treble
   * - 2
     - Android 10
     - Standard modern
   * - 3
     - Android 11
     - Early GKI
   * - 4
     - Android 12+
     - Modern GKI

Kernel Configuration
--------------------
Configure kernel build settings based on your device's requirements:

Basic Build Options::

    # Standard compilation
    deviceinfo_kernel_clang_compile="true"
    deviceinfo_kernel_llvm_compile="true"

For GKI kernels, add::

    deviceinfo_bootimg_header_version="4"
    deviceinfo_kernel_llvm_compile="true"
    deviceinfo_vendor_bootconfig_path="bootconfig"
    deviceinfo_ramdisk_compression="lz4"

Flash Layout Configuration
--------------------------
These settings define how your device handles boot images and partitions.

Essential Settings::

    # Flash offset configuration
    deviceinfo_flash_offset_base="0x00000000"
    deviceinfo_flash_offset_kernel="0x00008000"
    deviceinfo_flash_offset_ramdisk="0x01000000"
    deviceinfo_flash_offset_second="0x00f00000"
    deviceinfo_flash_offset_tags="0x00000100"
    deviceinfo_flash_pagesize="4096"

Find these values by:

1. Extracting your stock boot.img
2. Reading kernel documentation
3. Checking device tree files

Advanced Configuration
----------------------

Device Tree Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^
For devices requiring device tree support::

    # DTB configuration
    deviceinfo_dtb="path/to/dtb.dtb"                  # Device tree blob
    deviceinfo_prebuilt_dtb="path/to/dtb"            # Pre-built DTB
    deviceinfo_dtbo="path/to/dtbo.img"               # Device tree overlay
    deviceinfo_prebuilt_dtbo="path/to/dtbo.img"      # Pre-built DTBO

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
Configure system storage parameters::

    deviceinfo_rootfs_image_sector_size="4096"      # UFS devices common value
    deviceinfo_system_partition_size="4000M"        # Override default size
    deviceinfo_use_overlaystore="true"              # Enable overlay storage

Troubleshooting
---------------

Common Issues:

1. **Boot loops**: Check header version and cmdline
2. **Flash fails**: Verify flash offsets and pagesize
3. **No display**: Ensure console=tty0 in cmdline
4. **Init fails**: Check systempart parameter

Finding Values
--------------

Extract from Stock Device::

    # Unpack boot image
    unpack_bootimg.py --boot_img boot.img --out boot/
    
    # View values
    cat boot/header_version
    cat boot/cmdline
    cat boot/pagesize

Example Configurations
----------------------

Standard Modern Device::

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

GKI Device::

    deviceinfo_bootimg_header_version="4"
    deviceinfo_kernel_llvm_compile="true"
    deviceinfo_use_overlaystore="true"
    deviceinfo_vendor_bootconfig_path="bootconfig"
    deviceinfo_ramdisk_compression="lz4"
    deviceinfo_bootimg_has_init_boot="true"

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