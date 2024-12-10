Deviceinfo Configuration Quick Reference
========================================

This reference documents all currently available deviceinfo parameters used in the UBports build system. This list was last updated in December 2024.

Basic Device Information
------------------------
.. code-block:: bash

    deviceinfo_name           # Human-readable device name
    deviceinfo_manufacturer   # Device manufacturer
    deviceinfo_codename       # Device codename (used in paths and filenames)
    deviceinfo_arch           # Architecture (aarch64, arm, x86_64)

Kernel Configuration
--------------------

Source Settings
^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_kernel_source          # Git repository URL
    deviceinfo_kernel_source_branch   # Branch to use
    deviceinfo_kernel_defconfig       # Kernel defconfig name and optional configs
    deviceinfo_kernel_image_name      # Optional custom kernel image name
    deviceinfo_kernel_apply_overlay   # Boolean: apply DTB overlays
    deviceinfo_kernel_disable_modules # Boolean: skip module compilation
    deviceinfo_dtb                    # List of DTB files to include
    deviceinfo_dtbo                   # List of DTBO files to compile

Compiler Settings
^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_kernel_clang_compile   # Boolean: use Clang compiler
    deviceinfo_kernel_llvm_compile    # Boolean: use complete LLVM toolchain
    deviceinfo_kernel_use_lld         # Boolean: use LLD linker
    deviceinfo_kernel_use_dtc_ext     # Boolean: use external DTC

Boot Configuration
------------------

Image Settings
^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_bootimg_header_version    # Boot image header version
    deviceinfo_bootimg_os_version        # OS version in boot image
    deviceinfo_bootimg_os_patch_level    # Security patch level
    deviceinfo_bootimg_partition_size    # Boot partition size in bytes
    deviceinfo_bootimg_board             # Board name in boot image
    deviceinfo_bootimg_hash_footer       # Boolean: append hash footer
    deviceinfo_bootimg_append_vbmeta     # Boolean: append vbmeta
    deviceinfo_bootimg_has_init_boot     # Boolean: uses separate init_boot

Flash Layout
^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_flash_offset_base      # Base address for flash
    deviceinfo_flash_offset_kernel    # Kernel offset
    deviceinfo_flash_offset_ramdisk   # Ramdisk offset
    deviceinfo_flash_offset_second    # Second bootloader offset
    deviceinfo_flash_offset_tags      # Tags offset
    deviceinfo_flash_offset_dtb       # DTB offset
    deviceinfo_flash_pagesize         # Flash page size

Advanced Features
-----------------

Dynamic Partitions
^^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_use_overlaystore         # Boolean: use overlay storage
    deviceinfo_rootfs_image_sector_size # Sector size for rootfs
    deviceinfo_system_partition_size    # System partition size

Recovery & Special Cases
^^^^^^^^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_has_recovery_partition   # Boolean: device has recovery
    deviceinfo_recovery_partition_size  # Recovery partition size
    deviceinfo_bootimg_tailtype         # Special boot image tail type
    deviceinfo_vendor_bootconfig_path   # Path to vendor bootconfig

Usage Examples
--------------

Standard Configuration
^^^^^^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_name="Google Pixel 4a"
    deviceinfo_manufacturer="Google"
    deviceinfo_codename="sunfish"
    deviceinfo_arch="aarch64"
    deviceinfo_kernel_source="https://github.com/vendor/kernel"
    deviceinfo_kernel_source_branch="android12-5.4"
    deviceinfo_kernel_defconfig="sunfish_defconfig halium.config"

GKI Device Configuration
^^^^^^^^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_bootimg_header_version="4"
    deviceinfo_kernel_llvm_compile="true"
    deviceinfo_use_overlaystore="true"
    deviceinfo_vendor_bootconfig_path="bootconfig"

See Also
--------
- :doc:`../modern-porting/standalone-kernel/device-config`
- :doc:`../modern-porting/special-cases/gki-devices`
- :doc:`../resources/understanding-deviceinfo`