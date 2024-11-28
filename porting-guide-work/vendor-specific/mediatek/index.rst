.. _mediatek:

MediaTek Devices
================

Quick Reference
---------------
Essential configurations for MediaTek devices:

* WiFi driver setup (MTK-WLAN)
* Power management (PMIC)
* Display configuration (DISP)
* Touchscreen handling

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
   * - Dimensity
     - Modern platforms
     - DT overlay handling, Dynamic partitions
   * - Helio
     - Mid-range platforms
     - Mixed HAL versions, Firmware blobs
   * - MT67xx
     - Legacy platforms
     - Driver backports, Kernel patches

Common Challenges
-----------------

WiFi Configuration
^^^^^^^^^^^^^^^^^^
MediaTek WiFi requires specific setup:

1. **Driver Setup**::

    # Required kernel configs
    CONFIG_MTK_WIFI=y
    CONFIG_MTK_WIFI_DRIVER=y

2. **Firmware Integration**

   Required files and locations::

    /vendor/firmware/WIFI_RAM_CODE_soc.bin
    /vendor/firmware/WIFI_ROM_CODE_soc.bin

Display Configuration
^^^^^^^^^^^^^^^^^^^^^
1. **Panel Setup**

   Configure display in device tree::

    &pio {
        lcd_bias_pins_default: lcd_bias_pins_default {
            pins_cmd_dat {
                pinmux = <PINMUX_GPIO23__FUNC_GPIO23>;
            };
        };
    };

2. **Display Driver**

   Enable required configs::

    CONFIG_DRM_MEDIATEK=y
    CONFIG_DRM_PANEL_SIMPLE=y

Best Practices
--------------

1. **Power Management**
   
   * Configure PMIC settings
   * Handle sleep states
   * Manage CPU clusters

2. **Storage Setup**

   * Configure UFS/eMMC
   * Handle partition layout
   * Manage flash parameters

3. **Performance Tuning**

   * CPU frequency scaling
   * Thermal management
   * Memory configuration

Debugging Tips
--------------

1. **Common Issues**
   
   * WiFi initialization failures
   * Display driver crashes
   * Power management issues

2. **Debug Tools**

   * MTK debug tools
   * Kernel message logging
   * Hardware tracing

See Also
--------
* :ref:`hardware-abstraction` - HAL configuration
* :ref:`debugging` - Debugging guide