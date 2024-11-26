Halium Versions Overview
========================

Halium versions from 9 through 13 support a wide range of Android devices, with newer versions adding support for more recent hardware and features.

Version Selection
-----------------

.. list-table::
   :header-rows: 1
   :widths: 15 20 35 30

   * - Halium Version
     - Android Base
     - Key Features
     - Best For
   * - Halium 9
     - Android 9
     - GSI support, Project Treble
     - Older devices, initial GSI ports
   * - Halium 10
     - Android 10
     - Enhanced Treble, early GKI
     - Mid-range devices, transitional ports
   * - Halium 11
     - Android 11
     - Full GKI support, Dynamic partitions
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

Halium 9
^^^^^^^^
* Project Treble compliance
* VNDK version 28
* Linux kernel 4.4+
* Basic vendor partition

Key files:

- boot.img
- system.img
- vendor.img

Halium 10
^^^^^^^^^
* Enhanced Treble support
* VNDK version 29
* Linux kernel 4.14+
* Optional GKI support

Additional features:

- Early dynamic partition support
- Enhanced security features

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

Build Methods
-------------

Standalone Kernel Method
^^^^^^^^^^^^^^^^^^^^^^^^
Available for Halium 9+:

.. code-block:: bash

    # Basic build
    ./build.sh -b workdir

    # With GSI
    ./build/prepare-fake-ota.sh out/device_$DEVICE.tar.xz ota
    ./build/system-image-from-ota.sh ota/ubuntu_command images

Version-Specific Options
^^^^^^^^^^^^^^^^^^^^^^^^
**Halium 9/10**::

    export USE_HALIUM_BOOT=1
    export FLASH_BOOT=boot.img

**Halium 11+**::

    export USE_VENDOR_BOOT=1
    export FLASH_BOOT="boot.img vendor_boot.img"

Special Considerations
----------------------

1. **Architecture Evolution**

   * H9: Basic Treble support
   * H10: Enhanced Treble
   * H11+: Full GKI support

2. **Partition Schemes**

   * H9: Traditional layout
   * H10: Optional dynamic
   * H11+: Mandatory dynamic

3. **HAL Transitions**

   * H9-10: HIDL focused
   * H11-12: Mixed HIDL/AIDL
   * H13: AIDL preferred

4. **Security Features**

   * Verified boot progression
   * SELinux policy evolution
   * Encryption requirements

Version Migration
-----------------
* H9 → H10: Treble compliance update
* H10 → H11: GKI adaptation
* H11 → H12: AIDL introduction
* H12 → H13: Full AIDL transition

See Also
--------
* :ref:`build-systems` - Build process details
* :ref:`hardware-abstraction` - HAL information
* :ref:`gki-devices` - GKI-specific guidance