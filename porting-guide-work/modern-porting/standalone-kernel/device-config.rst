.. _device-config:

Device Configuration
====================

The deviceinfo file is the central configuration point for your Ubuntu Touch port. It controls the build process and defines device-specific parameters.

Below is a list of the minimal required settings for basic functionality, as well as a few more detailed options. For a complete reference of all available parameters, see :doc:`../../resources/deviceinfo-reference`.


File Location and Format
------------------------
The deviceinfo file must be in the root of your device port repository. It contains shell variables that configure various aspects of the build and device behavior.

Essential Configuration
-----------------------
.. code-block:: bash

    # Basic device information
    deviceinfo_name="Device Name"
    deviceinfo_manufacturer="Manufacturer"
    deviceinfo_codename="codename"
    deviceinfo_arch="aarch64"

    # Kernel source configuration
    deviceinfo_kernel_source="https://github.com/path/to/kernel"
    deviceinfo_kernel_source_branch="branch-name"
    deviceinfo_kernel_defconfig="defconfig_name"

    # Build configuration
    deviceinfo_kernel_clang_compile="true"
    deviceinfo_kernel_llvm_compile="true"
    deviceinfo_kernel_apply_overlay="true"

    # Flash configuration
    deviceinfo_flash_offset_base="0x00000000"
    deviceinfo_flash_offset_kernel="0x00008000"
    deviceinfo_flash_offset_ramdisk="0x01000000"
    deviceinfo_flash_offset_second="0x00f00000"
    deviceinfo_flash_offset_tags="0x00000100"
    deviceinfo_flash_pagesize="4096"

Key Parameters
--------------
- Kernel Source: Set repositories and branches
- Build Options: Configure compiler and build process
- Flash Layout: Define partition offsets and sizes
- Hardware Config: Set device-specific features

Detailed Options
----------------
Bootloader Configuration
^^^^^^^^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_bootimg_header_version="2"
    deviceinfo_bootimg_os_version="11"
    deviceinfo_bootimg_os_patch_level="2024-01"

System Configuration
^^^^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_rootfs_image_sector_size="4096"
    deviceinfo_use_overlaystore="true"

Common Configurations
---------------------
Provide examples for:

- Standard Android devices
- GKI devices
- Dynamic partition devices

See Also
--------
- :doc:`../../resources/deviceinfo-reference`
- :doc:`../../resources/understanding-deviceinfo`