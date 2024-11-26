Halium Versions Overview
========================

Halium versions 11-13 support increasingly modern Android devices. Each version brings new capabilities and requirements.

Version Selection
-----------------

.. list-table::
   :header-rows: 1
   :widths: 20 25 25 30

   * - Halium Version
     - Android Base
     - Key Features
     - Best For
   * - Halium 11
     - Android 11
     - GKI support, Dynamic partitions
     - Devices launched with Android 11
   * - Halium 12
     - Android 12/12.1
     - Enhanced security, AIDL HAL
     - Modern mid-range devices
   * - Halium 13
     - Android 13
     - Latest HAL support, Upstream alignment
     - Recent flagship devices

Version Requirements
--------------------

Halium 11
^^^^^^^^^
* GKI-compatible kernel 5.4+
* Dynamic partition support
* A/B partition scheme support
* VNDK version 30

Essential files:

- vendor_boot.img
- boot.img
- vbmeta.img

Halium 12
^^^^^^^^^
* Linux kernel 5.10+
* AIDL HAL support
* Enhanced SELinux policies
* VNDK version 31/32

Additional requirements:

- Generic Kernel Image (GKI)
- Updated vendor interfaces

Halium 13
^^^^^^^^^
* Linux kernel 5.15+
* Latest HIDL/AIDL HALs
* Modern security features
* VNDK version 33

New considerations:

- Modular kernel components
- Strict HAL compatibility

Build Differences
-----------------

Common Elements
^^^^^^^^^^^^^^^
All versions share:

* Basic directory structure
* Core build commands
* Basic rootfs integration

Version-Specific Changes
^^^^^^^^^^^^^^^^^^^^^^^^

**Halium 11**:

.. code-block:: bash

    # Build commands
    ./build.sh -b workdir
    ./build/prepare-fake-ota.sh out/device_$DEVICE.tar.xz ota
    ./build/system-image-from-ota.sh ota/ubuntu_command images

**Halium 12**:

.. code-block:: bash

    # Additional flags needed
    ./build.sh -b workdir --gki-kernel
    export EXTRA_VENDOR_MODULES=1


**Halium 13**:

.. code-block:: bash

    # Latest build process
    ./build.sh -b workdir --android13
    export USE_AIDL_HALS=1


Special Considerations
----------------------

1. **GKI Support**

   * Required for H11+
   * Kernel configuration changes
   * Module handling differences

2. **Partition Layout**

   * Dynamic partitions 
   * A/B scheme support
   * Recovery partition changes

3. **HAL Compatibility**

   * HIDL to AIDL transition
   * Vendor interface versions
   * Binary compatibility

4. **Security Features**

   * SELinux policy updates
   * Verified boot requirements
   * Encryption changes

Migration Notes
---------------
* H11 → H12: HAL updates needed
* H12 → H13: AIDL transition required
* All versions: Check vendor blobs

See Also
--------
* :ref:`build-systems` - Build process details
* :ref:`hardware-abstraction` - HAL information
* :ref:`gki-devices` - GKI-specific guidance