.. _gki-devices:

GKI Device Support
==================

Quick Reference
---------------
::

    # Essential GKI configuration
    deviceinfo_bootimg_header_version="4"
    deviceinfo_kernel_llvm_compile="true"
    deviceinfo_vendor_bootconfig_path="bootconfig"
    deviceinfo_ramdisk_compression="lz4"
    deviceinfo_bootimg_has_init_boot="true"

Understanding GKI
-----------------
Generic Kernel Image (GKI) represents a significant change in how Android handles device kernels. Instead of each device having a completely customized kernel, GKI provides:

* A standardized core kernel
* Vendor-specific modules
* Strict hardware abstraction
* Unified update path

Think of GKI like a standard engine (core kernel) that can be customized with different parts (modules) for different vehicles (devices).

Key Components
--------------

1. **Core Kernel**

   The standard GKI kernel provides:
   * Basic system functionality
   * Common driver frameworks
   * Standard interfaces
   * Security features

2. **Vendor Modules**

   Device-specific code exists as modules::

    # Common module locations
    /vendor/lib/modules/
    /vendor/lib64/modules/
    
    # Module configuration
    /vendor/etc/modules.load

3. **Boot Components**

   GKI devices use a split boot configuration:
   * boot.img - Core kernel
   * vendor_boot.img - Device-specific code
   * init_boot.img - Early initialization

Build Requirements
------------------

1. **Compiler Setup**::

    deviceinfo_kernel_llvm_compile="true"   # Use LLVM toolchain
    deviceinfo_bootimg_header_version="4"   # Modern header version

2. **Boot Configuration**::

    deviceinfo_vendor_bootconfig_path="bootconfig"  # Vendor boot config
    deviceinfo_bootimg_has_init_boot="true"        # Enable init_boot
    deviceinfo_ramdisk_compression="lz4"           # Modern compression

3. **Module Handling**::

    # Modules in vendor_ramdisk-overlay
    vendor-ramdisk-overlay/lib/modules/
    ├── modules.load          # Load sequence
    ├── modules.dep          # Dependencies
    └── kernel-modules/      # Actual modules

Common Challenges
-----------------

1. **Module Integration**

   Issues:

   * Missing dependencies
   * Load order problems
   * Version mismatches

   Solutions:

   * Check module dependencies
   * Verify load sequence
   * Match kernel versions

2. **Boot Process**

   Challenges:

   * Split boot image handling
   * Vendor boot configuration
   * Init sequence timing

   Approach:

   * Verify bootloader support
   * Check partition layout
   * Monitor boot sequence

3. **Hardware Support**

   Common problems:

   * Driver compatibility
   * Module initialization
   * Hardware detection

   Solutions:
   
   * Use vendor modules when possible
   * Check hardware initialization
   * Monitor driver loading

Debugging Tips
--------------

1. **Boot Issues**::

    # Check kernel logs
    dmesg | grep -i "module"
    
    # Monitor module loading
    journalctl -b | grep modprobe
    
    # View vendor boot status
    cat /proc/cmdline

2. **Module Problems**::

    # List loaded modules
    lsmod
    
    # Check module details
    modinfo module_name
    
    # View loading errors
    dmesg | grep -i "module"

3. **Hardware Detection**::

    # Check device nodes
    ls /dev
    
    # View hardware status
    lspci -v
    
    # Monitor udev events
    udevadm monitor

Best Practices
--------------

1. **Build Process**

   * Use LLVM/Clang toolchain
   * Keep modules separate
   * Maintain clean configuration

2. **Module Management**

   * Document dependencies
   * Test load sequences
   * Monitor performance

3. **Testing**

   * Verify boot sequence
   * Check hardware support
   * Monitor resource usage

Example Configuration
---------------------

Full GKI device setup::

    # Basic device info
    deviceinfo_name="Pixel 6"
    deviceinfo_manufacturer="Google"
    deviceinfo_codename="raven"
    deviceinfo_arch="aarch64"

    # GKI configuration
    deviceinfo_bootimg_header_version="4"
    deviceinfo_kernel_llvm_compile="true"
    deviceinfo_vendor_bootconfig_path="bootconfig"
    deviceinfo_bootimg_has_init_boot="true"
    deviceinfo_ramdisk_compression="lz4"

    # Kernel specifics
    deviceinfo_kernel_source="https://github.com/kernel/common"
    deviceinfo_kernel_source_branch="android13-5.10"
    deviceinfo_kernel_defconfig="gki_defconfig"

Next Steps
----------

**Need hardware debugging?**
    → :doc:`../../debugging/hardware-debug/index`

**Build issues?**
    → :doc:`../../debugging/troubleshooting/system-issues`

See Also
--------
* :ref:`build-systems` - Build system details
* :ref:`hardware-abstraction` - HAL integration
* :doc:`../../debugging/index` - Debugging guide