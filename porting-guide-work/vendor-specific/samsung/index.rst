.. _samsung:

Samsung Devices
===============

Quick Reference
---------------
Essential requirements for Samsung devices:

* Custom boot image configuration (SEAndroid)
* Specialized flashing tools (Heimdall/Odin)
* Knox configuration handling
* Samsung-specific kernel patches

Platform Characteristics
------------------------

Platform Types
^^^^^^^^^^^^^^
.. list-table::
   :header-rows: 1
   :widths: 20 40 40

   * - Series
     - Characteristics
     - Common Issues
   * - Exynos 9xxx/2xxx
     - Modern flagship SoCs
     - SELinux policies, Vendor partitions
   * - Exynos 8xxx/1xxx
     - Mid-range SoCs
     - Mixed HAL versions, RIL handling
   * - Exynos 7xxx
     - Budget SoCs
     - Legacy driver support, WiFi issues

Boot Image Requirements
-----------------------

SEAndroid Configuration
^^^^^^^^^^^^^^^^^^^^^^^
Samsung devices require specific boot image modifications:

1. **Boot Image Footer**

   Add to deviceinfo::

    deviceinfo_bootimg_tailtype="SEAndroid"

2. **Header Version**

   Modern Samsung devices use header version 2 or higher::

    deviceinfo_bootimg_header_version="2"
    deviceinfo_bootimg_os_version="11.0.0"
    deviceinfo_bootimg_os_patch_level="2024-01"

3. **Board Name**

   Required for proper device detection::

    deviceinfo_bootimg_board="SRPUK23A007"

Flashing Tools
--------------

Heimdall Setup
^^^^^^^^^^^^^^
Use Heimdall for flashing from Linux:

1. **Installation**::

    # Ubuntu/Debian
    sudo apt install heimdall-flash

2. **Basic Usage**::

    # Flash boot partition
    sudo heimdall flash --BOOT boot.img

    # Flash recovery partition
    sudo heimdall flash --RECOVERY recovery.img

3. **Partition Layout**

   Common Samsung partition mapping::

    # Check partition layout
    sudo heimdall print-pit

    # Common partition names
    BOOT = boot.img
    RECOVERY = recovery.img
    SYSTEM = system.img
    VENDOR = vendor.img

Common Challenges
-----------------

RIL Configuration
^^^^^^^^^^^^^^^^^
Samsung devices need specific radio interface setup:

1. **Required Blobs**::

    # Key RIL files
    /vendor/lib64/libsec-ril.so
    /vendor/lib64/libsec-ril-dsds.so

2. **Service Configuration**

   Update rild service in init scripts::

    service vendor.ril-daemon /vendor/bin/hw/rild
        class main
        user radio
        group radio cache inet misc audio sdcard_r sdcard_rw log
        capabilities BLOCK_SUSPEND NET_ADMIN NET_RAW

Graphics Setup
^^^^^^^^^^^^^^
Samsung devices often use Mali or Adreno GPUs:

1. **Mali Configuration**::

    # Required kernel configs
    CONFIG_MALI_MIDGARD=y
    CONFIG_MALI_EXPERT=y
    CONFIG_MALI_DEBUG=y

2. **Display Panel**

   Configure display in device tree::

    &dsi_panel {
        compatible = "samsung,s6e3fc3";
        reg = <0>;
        ...
    };

Audio Configuration
^^^^^^^^^^^^^^^^^^^
Setup for Samsung audio hardware:

1. **Required UCM Files**::

    /usr/share/alsa/ucm2/conf.d/samsung-audio.conf

2. **Mixer Paths**::

    /vendor/etc/mixer_paths.xml

Special Considerations
----------------------

Knox Handling
^^^^^^^^^^^^^
For devices with Knox security:

1. **Warning Indicators**
   - Understand Knox warranty bits
   - Handle boot warning messages
   - Manage security indicators

2. **Feature Limitations**
   - Document disabled features
   - Handle secure storage
   - Manage encryption

One UI Integration
^^^^^^^^^^^^^^^^^^
Handling Samsung's Android modifications:

1. **Vendor Services**
   - Identify required services
   - Handle dependencies
   - Manage permissions

2. **Hardware Features**
   - Samsung Pay limitations
   - Secure Folder handling
   - Biometric systems

Best Practices
--------------

1. **Initial Setup**

   * Verify bootloader unlock status
   * Back up stock firmware
   * Document partition layout

2. **Build Configuration**

   * Use correct defconfig
   * Handle SELinux policies
   * Configure device tree

3. **Testing Process**

   * Verify basic functionality
   * Test radio features
   * Check power management

Debugging Tips
--------------

1. **Common Issues**

   * Boot loop after flashing
   * RIL initialization failures
   * Display driver issues
   * Audio configuration problems

2. **Debug Tools**

   * Samsung diagnostic tools
   * Kernel message logging
   * Hardware diagnostics

3. **Recovery Options**

   * Stock firmware restore
   * Emergency download mode
   * Safe boot procedures

See Also
--------
* :ref:`first-boot` - Initial boot and configuration 
* :ref:`hardware-abstraction` - HAL setup
* :ref:`debugging` - General debugging guide
* :doc:`../qualcomm/index` - For Samsung devices with Qualcomm SoCs