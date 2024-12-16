.. _device-config:

Device Configuration
====================

[Previous Quick Reference and Understanding deviceinfo sections remain unchanged]

Essential Configuration
-----------------------
[Previous Basic port initialization section remains unchanged through boot configuration]

Kernel Configuration
--------------------
The kernel is the core of your device's operating system. It needs specific configuration to work with Ubuntu Touch.

Basic Build Options
^^^^^^^^^^^^^^^^^^^
Configure how your kernel should be built::

    # Standard compilation
    deviceinfo_kernel_clang_compile="true"  # Use modern Clang compiler
    deviceinfo_kernel_llvm_compile="true"   # Use complete LLVM toolchain

Toolchain Selection
^^^^^^^^^^^^^^^^^^^
The build system selects toolchains in this priority order:

1. Custom GCC toolchain (if specified)
2. LLVM/Clang (if enabled)
3. Default Android GCC toolchain

Basic Selection::

    deviceinfo_kernel_clang_compile="true"   # Use Clang instead of GCC
    deviceinfo_kernel_llvm_compile="true"    # Use complete LLVM toolchain

Custom GCC Toolchain::

    deviceinfo_kernel_gcc_toolchain_source="https://releases.linaro.org/path/to/toolchain.tar.xz"
    deviceinfo_kernel_gcc_toolchain_dir="gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu"

.. note::
    Modern Android devices typically require Clang compilation. Only use custom GCC 
    toolchains when specifically required by your device.

For GKI devices, additional settings are needed::

    deviceinfo_bootimg_header_version="4"           # Modern GKI header
    deviceinfo_kernel_llvm_compile="true"           # Required for GKI
    deviceinfo_vendor_bootconfig_path="bootconfig"  # Vendor boot config
    deviceinfo_ramdisk_compression="lz4"            # Modern compression

Flash Layout Configuration
--------------------------
[Previous Flash Layout section remains unchanged]

Advanced Configuration
----------------------

Device Tree Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^
[Previous Device Tree Configuration section remains unchanged]

Vendor Ramdisk Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
For GKI devices, kernel modules are handled through vendor_ramdisk-overlay::

    # Directory structure
    vendor-ramdisk-overlay/
    ├── lib/
    │   └── modules/
    │       ├── modules.load      # Module load sequence
    │       ├── modules.dep       # Module dependencies
    │       └── kernel-modules/   # Actual module files

The modules.load file specifies the loading sequence::

    # modules.load example
    kernel/drivers/misc/foo.ko
    kernel/net/bar.ko
    kernel/drivers/baz.ko

Dependencies are automatically calculated and included in modules.dep.

Boot Image Configuration
^^^^^^^^^^^^^^^^^^^^^^^^
Advanced boot image settings for modern devices::

    # Basic boot image settings
    deviceinfo_bootimg_header_version="2"  # See version table
    deviceinfo_bootimg_os_version="11.0.0" # OS version in header
    deviceinfo_bootimg_os_patch_level="2024-01"  # Security patch level

    # Verified Boot settings
    deviceinfo_bootimg_append_vbmeta="true"  # Include vbmeta in boot image
    deviceinfo_bootimg_partition_size="67108864"  # Boot partition size
    
    # Special device requirements
    deviceinfo_bootimg_board="SRPUK23A007"  # Device-specific board name
    deviceinfo_bootimg_tailtype="SEAndroid"  # Custom tail format

For devices using Verified Boot:

1. vbmeta.img will be automatically downloaded and appended if needed
2. Partition size must match device specifications exactly 
3. Board name must match device expectations

Storage Configuration
^^^^^^^^^^^^^^^^^^^^^
[Previous Storage Configuration section remains unchanged]

Example Configurations
----------------------
[Previous example configurations section remains unchanged, 
but add these examples for GKI and Verified Boot devices:]

GKI Device with Verified Boot::

    deviceinfo_bootimg_header_version="4"
    deviceinfo_kernel_llvm_compile="true"
    deviceinfo_use_overlaystore="true"
    deviceinfo_vendor_bootconfig_path="bootconfig"
    deviceinfo_ramdisk_compression="lz4"
    deviceinfo_bootimg_has_init_boot="true"
    deviceinfo_bootimg_append_vbmeta="true"
    deviceinfo_bootimg_partition_size="67108864"

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