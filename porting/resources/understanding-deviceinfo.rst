Understanding Deviceinfo Parameters
===================================

Introduction
------------
The deviceinfo file is the central configuration point for your Ubuntu Touch port. It tells the build system everything it needs to know about your device and how to build for it. This guide explains each parameter in detail, helping you understand not just what to set, but why and how.

Basic Device Information
------------------------

Understanding Device Identity
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Every device needs to be uniquely identified in the system. This identification serves multiple purposes:
- Ensuring correct hardware detection
- Setting up proper file paths
- Displaying device information to users
- Matching system components to your device

These first parameters establish your device's basic identity:

deviceinfo_name
"""""""""""""""

.. container:: parameter-details
    
    **Purpose**: The full commercial name of your device as it should appear to users.

    **Format**: String in quotes

    **Example**: ``deviceinfo_name="Google Pixel 4a"``

    **How to determine**: Use the official marketing name of your device. For variants, include relevant identifiers:
    - Storage variants: "Google Pixel 4a 128GB"
    - Regional variants: "OnePlus 9 (European)"

    **Common mistakes to avoid**:
    - Using codenames here instead of full names
    - Including unnecessary information like OS version

deviceinfo_manufacturer
"""""""""""""""""""""""
    **Purpose**: The company that manufactured your device.

    **Format**: String in quotes

    **Example**: ``deviceinfo_manufacturer="Google"``

    **How to determine**: Use the brand name shown on:
    - Device packaging
    - Official website
    - Regulatory labels

    **Common mistakes to avoid**:
    - Using parent company names (e.g., "BBK" instead of "OnePlus")
    - Including suffixes like "Inc." or "Ltd."

deviceinfo_codename
"""""""""""""""""""
    **Purpose**: The internal development name for your device.

    **Format**: String in quotes, lowercase, no spaces

    **Example**: ``deviceinfo_codename="sunfish"``

    **How to determine**:
    1. Check your device's build.prop file
    2. Look up the device on LineageOS wiki
    3.  Search kernel source repository names

    **Common mistakes to avoid**:
    - Using marketing names
    - Including uppercase letters
    - Using variant names (e.g., "sunfish_verizon")

Understanding Architecture
^^^^^^^^^^^^^^^^^^^^^^^^^^
The CPU architecture determines which code can run on your device. Modern Android devices typically use either 32-bit (arm) or 64-bit (aarch64) ARM processors.

deviceinfo_arch
"""""""""""""""
    **Purpose**: Defines the CPU architecture for building system components.

    **Format**: One of: ``aarch64``, ``arm``, ``x86_64``

    **Example**: ``deviceinfo_arch="aarch64"``

    **How to determine**:
        1. Check your device specifications
        2. Look at the kernel architecture:

        .. code-block:: bash
   
            # For ARM64 devices
            ls arch/arm64/boot/

            # For 32-bit ARM devices
            ls arch/arm/boot/

        3.  Check Android build configuration

    **Common mistakes to avoid**:
        - Confusing build architecture with CPU capability
        - Not matching kernel architecture
        - Using incorrect format (e.g., "arm64" instead of "aarch64")

Kernel Configuration
--------------------

Understanding Kernel Sources
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The kernel is the core component that enables Ubuntu Touch to interact with your device's hardware. The build system needs to know where to find the kernel source code and how to compile it.

deviceinfo_kernel_source
""""""""""""""""""""""""
    **Purpose**: Specifies the Git repository containing your device's kernel source code.

    **Format**: URL to Git repository

    **Example**: ``deviceinfo_kernel_source="https://github.com/LineageOS/android_kernel_google_sunfish"``

    **How to determine**:

    1. Check device manufacturer's GitHub
    2. Look for LineageOS kernel repository
    3.  Search for community-maintained sources

    **Common mistakes to avoid**:

    - Using Android ROM repositories instead of kernel sources
    - Using incorrect branches
    - Linking to archived/outdated repositories

deviceinfo_kernel_source_branch
"""""""""""""""""""""""""""""""
    **Purpose**: Specifies which branch of the kernel source to use.

    **Format**: String matching branch name in repository

    **Example**: ``deviceinfo_kernel_source_branch="lineage-18.1"``

    **How to determine**:

    1. Check device's Android version:

       - Android 11 → lineage-18.1
       - Android 12 → lineage-19.1
       - Android 13 → lineage-20.0

    2. Look for android-[version] branches
    3. Check for specific Halium branches

    **Common mistakes to avoid**:

    - Using feature branches instead of stable branches
    - Not matching Android/Halium version
    - Using tags instead of branches

Understanding Kernel Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The kernel needs specific configuration options for Ubuntu Touch compatibility.

deviceinfo_kernel_defconfig
"""""""""""""""""""""""""""
    **Purpose**: Specifies base kernel configuration and additional config files.

    **Format**: String with config names, space-separated

    **Example**: ``deviceinfo_kernel_defconfig="sunfish_defconfig halium.config"``

    **How to determine**:

    1. Find device defconfig in kernel source:

    .. code-block:: bash
   
        ls arch/arm64/configs/  # or arch/arm/configs/

    2. Always add halium.config for Ubuntu Touch compatibility

    **Special configurations**:

    - halium.config: Adds required Ubuntu Touch options
    - Custom configs: Can be added for specific features

    **Common mistakes to avoid**:

    - Using wrong architecture path
    - Forgetting halium.config
    - Using invalid config names

Understanding Compiler Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Modern Android kernels often require specific compiler configurations.

deviceinfo_kernel_clang_compile
"""""""""""""""""""""""""""""""
    **Purpose**: Enables Clang compiler for kernel build.

    **Format**: Boolean ("true" or "false")

    **Example**: ``deviceinfo_kernel_clang_compile="true"``

    **When to use**:

    - Required for Android 10+ kernels
    - When kernel makefile specifies Clang
    - For GKI kernels

deviceinfo_kernel_llvm_compile
""""""""""""""""""""""""""""""
    **Purpose**: Enables full LLVM toolchain (includes linker).

    **Format**: Boolean ("true" or "false")

    **Example**: ``deviceinfo_kernel_llvm_compile="true"``

    **When to use**:
    - For newer GKI kernels
    - When specified in kernel documentation
    - Android 12+ devices typically

    **Note**: Supersedes deviceinfo_kernel_use_lld when enabled

deviceinfo_kernel_use_lld
"""""""""""""""""""""""""
    **Purpose**: Uses LLVM's LLD linker.

    **Format**: Boolean ("true" or "false")

    **Example**: ``deviceinfo_kernel_use_lld="true"``

    **When to use**:
    - When needing LLD without full LLVM
    - For specific kernel optimizations
    - If specified in kernel build

Device Tree Configuration
-------------------------

Understanding Device Trees
^^^^^^^^^^^^^^^^^^^^^^^^^^
Device Tree Blobs (DTB) and Device Tree Overlays (DTBO) describe your device's hardware to the kernel. Getting these right is crucial for hardware support.

deviceinfo_dtb
""""""""""""""
    **Purpose**: Specifies which Device Tree Blob(s) to include in the boot image.

    **Format**: Space-separated list of DTB files relative to kernel source

    **Example**: ``deviceinfo_dtb="mediatek/mt6765.dtb mediatek/mt6765-motorola-ginna.dtb"``

    **How to determine**:

    1. Check kernel source:

    .. code-block:: bash
   
        ls arch/arm64/boot/dts/  # or arch/arm/boot/dts/

    2. Look for your device's manufacturer directory
    3.  Find DTB matching your device codename

    **Common mistakes to avoid**:

    - Using incorrect paths
    - Wrong manufacturer directory
    - Missing vendor-specific DTBs

deviceinfo_dtbo
"""""""""""""""
    **Purpose**: Specifies Device Tree Overlay files to compile.

    **Format**: Space-separated list of DTBO files

    **Example**: ``deviceinfo_dtbo="mediatek/ginna-dvt1.dtbo mediatek/ginna-evt1.dtbo"``

    **When to use**:

    - Modern devices (Android 9+)
    - When device has dynamic hardware variants
    - If kernel uses overlays

deviceinfo_kernel_apply_overlay
"""""""""""""""""""""""""""""""
    **Purpose**: Enables merging of DTB and DTBO during build.

    **Format**: Boolean ("true" or "false")

    **Example**: ``deviceinfo_kernel_apply_overlay="true"``

    **When to use**:

    - Qualcomm devices often need this
    - When DTB needs runtime modifications
    - If boot fails without overlay

Boot Image Configuration
------------------------

Understanding Boot Images
^^^^^^^^^^^^^^^^^^^^^^^^^
The boot image contains the kernel and initial ramdisk. Its format has evolved through Android versions.

deviceinfo_bootimg_header_version
"""""""""""""""""""""""""""""""""
    **Purpose**: Specifies the Android boot image header format.

    **Format**: Integer (0-4)

    **Example**: ``deviceinfo_bootimg_header_version="2"``

    **How to determine**:

    - Android version correlation:

        * Version 0: Pre-Android 9
        * Version 1: Android 9
        * Version 2: Android 10
        * Version 3: Android 11 GKI
        * Version 4: Android 12+ GKI

    **Common issues**:

    - Boot fails to flash
    - Kernel panic during boot
    - Recovery mode issues

deviceinfo_bootimg_os_version
"""""""""""""""""""""""""""""
    **Purpose**: Sets OS version in boot image header.

    **Format**: Android version (e.g., "11.0.0")

    **Example**: ``deviceinfo_bootimg_os_version="11.0.0"``

    **When needed**:
    
    - Bootloader checks OS version
    - Secure boot is enabled
    - Version-specific features

deviceinfo_bootimg_os_patch_level
"""""""""""""""""""""""""""""""""
    **Purpose**: Sets security patch level in boot image.

    **Format**: "YYYY-MM" date string

    **Example**: ``deviceinfo_bootimg_os_patch_level="2024-01"``

    **How to determine**:

    1. Check your device's current Android build
    2. Use latest available patch level
    3.  Match vendor image level if using stock vendor

deviceinfo_bootimg_has_init_boot
""""""""""""""""""""""""""""""""
    **Purpose**: Indicates separate init_boot partition usage.

    **Format**: Boolean ("true" or "false")

    **Example**: ``deviceinfo_bootimg_has_init_boot="true"``

    **When to use**:

    - GKI devices (typically)
    - Android 13+ devices
    - When device has init_boot partition

Flash Layout Configuration
--------------------------

Understanding Flash Layouts
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Flash layout parameters define where different components are stored in the device's memory. Incorrect values can prevent booting or cause data corruption.

deviceinfo_flash_offset_base
""""""""""""""""""""""""""""
    **Purpose**: Base address for loading kernel into memory.

    **Format**: Hexadecimal address (e.g., "0x00000000")

    **Example**: ``deviceinfo_flash_offset_base="0x00000000"``

    **How to determine**:

    1. Extract from stock boot.img
    2. Check kernel documentation
    3.  Look in device tree files

    **Common mistakes to avoid**:

    - Using decimal instead of hex
    - Omitting "0x" prefix
    - Using incorrect alignment

deviceinfo_flash_offset_kernel
""""""""""""""""""""""""""""""
    **Purpose**: Offset where kernel is loaded relative to base.

    **Format**: Hexadecimal address

    **Example**: ``deviceinfo_flash_offset_kernel="0x00008000"``

**Typical values**:

    - 0x00008000 (common)
    - 0x00080000 (some newer devices)
    - Check device trees for unusual values

deviceinfo_flash_offset_ramdisk
"""""""""""""""""""""""""""""""
    **Purpose**: Offset where initial ramdisk is loaded.

    **Format**: Hexadecimal address

    **Example**: ``deviceinfo_flash_offset_ramdisk="0x01000000"``

    **Important considerations**:

    - Must not overlap with kernel
    - Needs sufficient space for ramdisk
    - Platform-specific alignment requirements

deviceinfo_flash_offset_second
""""""""""""""""""""""""""""""
    **Purpose**: Offset for second bootloader if present.

    **Format**: Hexadecimal address

    **Example**: ``deviceinfo_flash_offset_second="0x00f00000"``

    **When needed**:

    - Samsung devices often use this
    - Some legacy devices
    - Special bootloader configurations

deviceinfo_flash_offset_tags
""""""""""""""""""""""""""""
    **Purpose**: Offset for kernel tags.

    **Format**: Hexadecimal address

    **Example**: ``deviceinfo_flash_offset_tags="0x00000100"``

    **Common issues**:

    - Boot failures if misaligned
    - Kernel panic during boot
    - Device not responding to commands

deviceinfo_flash_pagesize
"""""""""""""""""""""""""
    **Purpose**: Flash memory page size of device.

    **Format**: Integer (typically power of 2)

    **Example**: ``deviceinfo_flash_pagesize="4096"``

    **Common values**:

    - 2048 (2K pages)
    - 4096 (4K pages)
    - Must match device hardware

Advanced Features
-----------------

Understanding System Storage
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
These parameters control how Ubuntu Touch uses device storage.

deviceinfo_use_overlaystore
"""""""""""""""""""""""""""
    **Purpose**: Enables overlay-based system modifications.

    **Format**: Boolean ("true" or "false")

    **Example**: ``deviceinfo_use_overlaystore="true"``

    **When to use**:

    - Modern ports (recommended)
    - When using GSI
    - For easier system updates

deviceinfo_rootfs_image_sector_size
"""""""""""""""""""""""""""""""""""
    **Purpose**: Specifies sector size for rootfs creation.

    **Format**: Integer (typically power of 2)

    **Example**: ``deviceinfo_rootfs_image_sector_size="4096"``

    **When to set**:

    - UFS storage devices
    - Newer flagship devices
    - When default size causes issues

deviceinfo_system_partition_size
""""""""""""""""""""""""""""""""
    **Purpose**: Sets the size of system partition image.

    **Format**: Size with suffix (M or G)

    **Example**: ``deviceinfo_system_partition_size="4000M"``

    **How to determine**:

    1. Check partition table
    2. Use adb/fastboot to query
    3.  Consider system requirements:

       - Base system: ~2.5GB
       - Apps and updates: ~500MB
       - Safe margin: ~500MB

Special Boot Configurations
^^^^^^^^^^^^^^^^^^^^^^^^^^^

deviceinfo_bootimg_board
""""""""""""""""""""""""
    **Purpose**: Sets board name in boot image header.

    **Format**: String

    **Example**: ``deviceinfo_bootimg_board="EXYNOS4412"``

    **When needed**:

    - Samsung devices often require this
    - Some MediaTek devices
    - When bootloader checks board name

Recovery Configuration
----------------------

Understanding Recovery Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Recovery mode provides a way to perform system maintenance and updates. Ubuntu Touch uses a custom recovery for system updates and troubleshooting.

deviceinfo_has_recovery_partition
"""""""""""""""""""""""""""""""""
    **Purpose**: Indicates if device uses separate recovery partition.

    **Format**: Boolean ("true" or "false")

    **Example**: ``deviceinfo_has_recovery_partition="true"``

    **When to use**:

    - Most devices need this
    - Required for system updates
    - When not using A/B partition scheme

    **Common configurations**:

    - Standard devices: "true"
    - A/B devices: "false"
    - GSI devices: varies by device

deviceinfo_recovery_partition_size
""""""""""""""""""""""""""""""""""
    **Purpose**: Sets recovery image size limit.

    **Format**: Integer (bytes)

    **Example**: ``deviceinfo_recovery_partition_size="67108864"``

    **How to determine**:

    1. Check existing partition size:

    .. code-block:: bash
   
        fastboot getvar partition-size:recovery

    2. Use alignment guidelines:

       - Must be multiple of flash page size
       - Leave margin for headers
       - Consider firmware requirements

Vendor Integration
------------------

Understanding Vendor Requirements
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Modern devices often require specific vendor configurations and bootloader interactions.

deviceinfo_vendor_bootconfig_path
"""""""""""""""""""""""""""""""""
    **Purpose**: Path to vendor bootconfig file for GKI devices.

    **Format**: Path relative to device tree root

    **Example**: ``deviceinfo_vendor_bootconfig_path="bootconfig"``

    **When needed**:

    - GKI devices (Android 12+)
    - Custom boot configurations
    - Vendor-specific requirements

deviceinfo_bootimg_tailtype
"""""""""""""""""""""""""""
    **Purpose**: Specifies custom boot image tail format.

    **Format**: String identifier

    **Example**: ``deviceinfo_bootimg_tailtype="SEAndroid"``

    **Common values**:

    - "SEAndroid": Samsung devices
    - Empty: Most devices
    - Vendor-specific values

Boot Ramdisk Options
--------------------

Understanding Boot Ramdisk Options
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The build needs to receive an instruction if a specific ramdisk compression method is to be used.

deviceinfo_ramdisk_compression
""""""""""""""""""""""""""""""
    **Purpose**: Sets compression method for ramdisk.

    **Format**: String ("gzip" or "lz4")

    **Example**: ``deviceinfo_ramdisk_compression="lz4"``

    **When to use**:

    - "lz4": Modern GKI devices
    - "gzip": Traditional devices
    - Check kernel config support

Special Hardware Support
------------------------

Understanding Special Hardware Support
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The build system can make use of an external device tree compiler if required.

deviceinfo_kernel_use_dtc_ext
"""""""""""""""""""""""""""""
    **Purpose**: Uses external Device Tree Compiler.

    **Format**: Boolean ("true" or "false")

    **Example**: ``deviceinfo_kernel_use_dtc_ext="true"``

    **When needed**:

    - Complex DTB requirements
    - Vendor-specific DTB formats
    - Build compatibility issues

Practical Examples
------------------

Standard Android Device
^^^^^^^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_name="OnePlus 8"
    deviceinfo_manufacturer="OnePlus"
    deviceinfo_codename="instantnoodle"
    deviceinfo_arch="aarch64"
    deviceinfo_kernel_source="https://github.com/OnePlus-SM8250-Development/android_kernel_oneplus_sm8250"
    deviceinfo_kernel_source_branch="lineage-20"
    deviceinfo_kernel_defconfig="vendor/instantnoodle_defconfig"
    deviceinfo_has_recovery_partition="true"
    deviceinfo_flash_pagesize="4096"

GKI Device Configuration
^^^^^^^^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_bootimg_header_version="4"
    deviceinfo_kernel_llvm_compile="true"
    deviceinfo_use_overlaystore="true"
    deviceinfo_vendor_bootconfig_path="bootconfig"
    deviceinfo_ramdisk_compression="lz4"
    deviceinfo_bootimg_has_init_boot="true"

Samsung Device Example
^^^^^^^^^^^^^^^^^^^^^^
.. code-block:: bash

    deviceinfo_bootimg_board="SRPUK23A007"
    deviceinfo_bootimg_tailtype="SEAndroid"
    deviceinfo_flash_pagesize="2048"
    deviceinfo_has_recovery_partition="true"

Troubleshooting Common Issues
-----------------------------

Boot Problems
^^^^^^^^^^^^^
1. Device won't boot:
   - Check flash offsets
   - Verify header version
   - Confirm compression method

2. Recovery issues:
   - Verify partition sizes
   - Check recovery configuration
   - Confirm ramdisk settings

3. Vendor compatibility:
   - Match bootconfig settings
   - Verify tail requirements
   - Check board name setting

Build Failures
^^^^^^^^^^^^^^
1. Compilation errors:
   - Verify compiler settings
   - Check LLVM/Clang configuration
   - Confirm kernel branch

2. Image creation fails:
   - Check partition sizes
   - Verify compression settings
   - Confirm DTB/DTBO paths

See Also
--------
- :doc:`../modern-porting/standalone-kernel/device-config`
- :doc:`../modern-porting/special-cases/gki-devices`