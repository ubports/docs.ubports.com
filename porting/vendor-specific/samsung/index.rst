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

Understanding Samsung Architecture
----------------------------------

Platform Types
^^^^^^^^^^^^^^
.. list-table::
   :header-rows: 1
   :widths: 20 40 40

   * - Series
     - Characteristics
     - Common Issues
   * - Exynos 9xxx/2xxx
     - * Modern flagship SoCs
       * In-house design
       * Advanced security
       * Custom mali drivers
     - * SELinux policies
       * Vendor partitions
       * Knox integration
       * Proprietary blobs
   * - Exynos 8xxx/1xxx
     - * Mid-range SoCs
       * Mixed hardware
       * Legacy features
     - * Mixed HAL versions
       * RIL handling
       * Power management
       * Graphics drivers
   * - Exynos 7xxx
     - * Budget SoCs
       * Basic features
       * Simpler security
     - * Legacy driver support
       * WiFi integration
       * Limited documentation
       * Memory management

Boot Image Requirements
-----------------------

SEAndroid Configuration
^^^^^^^^^^^^^^^^^^^^^^^
Samsung devices require specific boot image modifications:

1. **Boot Image Footer**

   Add to deviceinfo::

    deviceinfo_bootimg_tailtype="SEAndroid"

   Why needed:

   * Samsung bootloader checks for footer
   * Prevents red Knox warning
   * Required for secure boot

2. **Header Version**

   Modern Samsung devices use header version 2 or higher::

    deviceinfo_bootimg_header_version="2"
    deviceinfo_bootimg_os_version="11.0.0"
    deviceinfo_bootimg_os_patch_level="2024-01"

   Understanding parameters:

   * Header version matches Android release
   * OS version affects bootloader checks
   * Patch level must be recent

3. **Board Name**

   Required for proper device detection::

    deviceinfo_bootimg_board="SRPUK23A007"

   Purpose:

   * Bootloader verification
   * Hardware identification
   * Firmware compatibility

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

   Understanding PIT:

   * Partition Information Table
   * Defines partition layout
   * Required for flashing

Hardware Integration
--------------------

RIL Configuration
^^^^^^^^^^^^^^^^^
Samsung devices need specific radio interface setup:

1. **Required Blobs**::

    # Key RIL files
    /vendor/lib64/libsec-ril.so
    /vendor/lib64/libsec-ril-dsds.so

    # Required configurations
    /vendor/etc/plmn_delta.bin
    /vendor/etc/plmn_se13.bin

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

   Understanding options:

   * MIDGARD: Modern Mali architecture
   * EXPERT: Advanced configuration
   * DEBUG: Development support

2. **Display Panel**

   Configure display in device tree::

    &dsi_panel {
        compatible = "samsung,s6e3fc3";
        reg = <0>;
        reset-gpios = <&tlmm 12 0>;
        power-gpios = <&tlmm 100 0>;
        vddio-supply = <&pm8150_l14>;
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
   
   Understanding Knox:

   * Warranty void counter
   * Security indicators
   * Boot verification

2. **Feature Limitations**
   
   Impact on functionality:

   * Secure storage access
   * DRM capabilities
   * Payment services
   * Biometric features

One UI Integration
^^^^^^^^^^^^^^^^^^
Handling Samsung's Android modifications:

1. **Vendor Services**
   
   Required components:

   * Samsung framework services
   * Custom HAL implementations
   * Security services

2. **Hardware Features**
   
   Limitations:

   * Samsung Pay unavailable
   * Secure Folder restrictions
   * Biometric system changes

Debugging Tips
--------------

1. **Common Issues**

   Boot loop after flashing:

   * Check boot image footer
   * Verify partition table
   * Monitor boot process

   RIL initialization failures:

   * Check vendor blobs
   * Monitor logcat
   * Verify permissions

2. **Debug Tools**

   Samsung-specific tools:

   * Samsung Modem Logger
   * SysDump
   * SEC Debug Bridge

3. **Recovery Options**

   Emergency recovery:
   
   * Download mode access
   * PIT restoration
   * Factory binary flashing

Best Practices
--------------

1. **Initial Setup**

   * Verify bootloader unlock status
   * Back up stock firmware
   * Document partition layout
   * Save stock PIT file

2. **Build Configuration**

   * Use correct defconfig
   * Handle SELinux policies
   * Configure device tree
   * Match security settings

3. **Testing Process**

   * Verify basic functionality
   * Test radio features
   * Check power management
   * Monitor Knox status

See Also
--------
* :ref:`first-boot` - Initial boot and configuration 
* :ref:`hardware-abstraction` - HAL setup
* :ref:`debugging` - General debugging guide
* :doc:`../qualcomm/index` - For Samsung devices with Qualcomm SoCs