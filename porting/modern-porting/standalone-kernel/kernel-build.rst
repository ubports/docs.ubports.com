Building the Kernel
===================

Initial Kernel Build
--------------------

Start with a kernel-only build to identify and resolve issues early. The build command varies based on your device type:

Standard Devices::

    ./build.sh -k -b workdir

GKI Devices::

    export LLVM=1 LLVM_IAS=1
    ./build.sh -k -b workdir

This builds just the kernel without generating boot or system images.

Understanding the Build Process
-------------------------------

The build system follows this sequence:

1. Sets up build environment and tools
2. Configures compiler toolchain based on device type
3. Builds kernel and modules
4. Processes device tree files
5. Prepares boot image components

Kernel Configuration
--------------------

Required Options
^^^^^^^^^^^^^^^^
Add to halium.config in arch/<architecture>/configs/:

.. code-block:: none

    CONFIG_DEVTMPFS=y
    CONFIG_FHANDLE=y
    CONFIG_SYSVIPC=y
    CONFIG_IPC_NS=y
    CONFIG_NET_NS=y
    CONFIG_PID_NS=y
    CONFIG_USER_NS=y
    CONFIG_UTS_NS=y
    CONFIG_VT=y

Build Environment Variables
---------------------------

Modern devices may require specific compiler settings:

Standard Devices::

    export ARCH=arm64                       # For ARM64 devices
    export CROSS_COMPILE=aarch64-linux-android-

GKI Devices::

    export LLVM=1                           # Use LLVM compiler
    export LLVM_IAS=1                       # Use LLVM integrated assembler
    export CROSS_COMPILE=aarch64-linux-gnu- # For ARM64 devices
    
.. note::
    These variables are automatically set based on your deviceinfo configuration. Manual setting is only needed if you encounter toolchain-related issues.

Module Handling
---------------

Standard Module Installation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Modules are installed to the system image unless disabled::

    deviceinfo_kernel_disable_modules="true"  # Skip module installation

For GKI devices, modules go into vendor_ramdisk-overlay::

    vendor-ramdisk-overlay/
    ├── lib/modules/
    │   ├── modules.load    # Load sequence
    │   ├── modules.dep     # Dependencies
    │   └── *.ko            # Module files

Build Flash Artifacts
---------------------

After successful kernel build:

.. code-block:: bash

    # Build kernel and create artifacts
    ./build.sh -b workdir

    # Prepare system image
    ./build/prepare-fake-ota.sh out/device_${DEVICE}.tar.xz ota
    
    # Create final images
    ./build/system-image-from-ota.sh ota/ubuntu_command images

This creates:

- boot.img
- system.img
- rootfs.img 
- vendor_boot.img (if needed)
- dtbo.img (if specified in deviceinfo)

Common Issues
-------------

1. **Build Environment**

   - Missing toolchain (automatically downloaded)
   - Config option conflicts
   - Architecture mismatch

2. **Module Problems**

   - Missing kernel configs
   - Wrong module path
   - Dependency issues
   - Strip errors

3. **Output Issues**

   - Incorrect kernel image name
   - Build directory permissions
   - Insufficient resources

Debugging Tips
--------------

Monitor Build Progress::

    # Watch compilation
    make O="$OUT" V=1
    
    # Check for errors
    make O="$OUT" 2>&1 | tee build.log
    
    # Verify toolchain
    ${CROSS_COMPILE}gcc --version  # For standard devices
    clang --version                # For GKI devices

Next Steps
----------

**Kernel built successfully?**
    → :doc:`first-boot`

**Build problems?**
    → :doc:`../../debugging/troubleshooting/system-issues`

See Also
--------
* :ref:`build-systems` - Build process details
* :doc:`device-config` - Device configuration
* :doc:`../../debugging/index` - Debugging guide