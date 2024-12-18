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
     - * Modern ARM platforms
       * GKI compatibility
       * Dynamic partitions
       * Advanced ISP
     - * Device tree overlays
       * Camera integration
       * Thermal management
   * - Helio
     - * Mid-range platforms
       * Mixed HAL versions
       * Legacy components
     - * Mixed blob versions
       * Firmware compatibility
       * Power management
   * - MT67xx
     - * Legacy platforms
       * Basic feature set
       * Simpler architecture
     - * Driver backporting
       * Kernel patches
       * Limited documentation

Common Challenges
-----------------

WiFi Configuration
^^^^^^^^^^^^^^^^^^^
MediaTek WiFi requires specific setup:

1. **Driver Setup**::

    # Required kernel configs
    CONFIG_MTK_WIFI=y
    CONFIG_MTK_WIFI_DRIVER=y
    CONFIG_MTK_COMBO=y
    CONFIG_MTK_COMBO_WIFI=y

Understanding these options:

* MTK_WIFI: Core WiFi support
* COMBO: Connectivity combo driver
* WIFI_DRIVER: Main WiFi driver

2. **Firmware Integration**

   Required files and locations::

    /vendor/firmware/WIFI_RAM_CODE_soc.bin
    /vendor/firmware/WIFI_ROM_CODE_soc.bin
    /vendor/firmware/wifi.cfg

   Purpose of each file:

   * RAM_CODE: Runtime firmware
   * ROM_CODE: Base firmware
   * wifi.cfg: Configuration parameters

Display Configuration
^^^^^^^^^^^^^^^^^^^^^
1. **Panel Setup**

   Configure display in device tree::

    &pio {
        lcd_bias_pins_default: lcd_bias_pins_default {
            pins_cmd_dat {
                pinmux = <PINMUX_GPIO23__FUNC_GPIO23>;
                slew-rate = <1>;
                output-high;
            };
        };
    };

   Key components:

   * pio: GPIO controller
   * pinmux: Pin multiplexing
   * slew-rate: Signal timing
   * output-high: Default state

2. **Display Driver**

   Enable required configs::

    CONFIG_DRM_MEDIATEK=y
    CONFIG_DRM_PANEL_SIMPLE=y
    CONFIG_DRM_MEDIATEK_HDMI=y

   Understanding settings:

   * DRM_MEDIATEK: Display driver framework
   * PANEL_SIMPLE: Basic panel support
   * HDMI: External display support

Hardware Access
---------------

1. **Power Management**

   PMIC Configuration::

    &mt6359p {
        regulators {
            mt6359p_vcore_reg: buck_vcore {
                regulator-name = "vcore";
                regulator-min-microvolt = <600000>;
                regulator-max-microvolt = <1200000>;
                regulator-always-on;
            };
        };
    };

   Key concepts:

   * Regulators control power domains
   * Voltage ranges must match hardware
   * Some regulators must stay enabled

2. **Memory Controller**

   EMI Configuration::

    &emi {
        compatible = "mediatek,emi";
        reg = <0 0x10219000 0 0x1000>;
        mediatek,dram-rank-num = <2>;
        mediatek,dram-freq = <3200>;
    };

   Important settings:
   
   * rank-num: Memory configuration
   * dram-freq: Memory speed
   * timing parameters

Best Practices
--------------

1. **Power Management**
   
   * Configure PMIC settings
   * Handle sleep states
   * Manage CPU clusters

   Implementation::

    # CPU frequency scaling
    CONFIG_MTK_CPUFREQ_PLATFORM=y
    CONFIG_MTK_PTPOD=y
    
    # Power domains
    CONFIG_MTK_POWER_DOMAIN=y
    CONFIG_PM_DOMAIN=y

2. **Storage Setup**

   * Configure UFS/eMMC
   * Handle partition layout
   * Manage flash parameters

   Example configuration::

    &mmc0 {
        status = "okay";
        pinctrl-names = "default", "state_uhs";
        pinctrl-0 = <&mmc0_pins_default>;
        pinctrl-1 = <&mmc0_pins_uhs>;
        bus-width = <8>;
        max-frequency = <200000000>;
    };

3. **Performance Tuning**

   * CPU frequency scaling
   * Thermal management
   * Memory configuration

   Tuning parameters::

    # CPU governors
    CONFIG_CPU_FREQ_GOV_MTK=y
    
    # Thermal
    CONFIG_MTK_THERMAL=y
    CONFIG_MTK_THERMAL_PA_VIA_ATCMD=y

Debugging Tips
--------------

1. **Common Issues**
   
   WiFi initialization failures::

    # Check driver status
    dmesg | grep -i wifi
    
    # Verify firmware
    ls -l /vendor/firmware/WIFI*
    
    # Monitor initialization
    logcat -b radio

   Display driver crashes::

    # Check panel status
    dmesg | grep -i disp
    
    # Monitor DSI
    cat /sys/kernel/debug/dri/0/state

   Power management issues::

    # Check regulators
    cat /sys/class/regulator/regulator.*/name
    
    # Monitor voltages
    cat /sys/class/regulator/regulator.*/voltage

2. **Debug Tools**

   MTK debug tools::

    # Memory interface
    cat /sys/kernel/debug/emi_mbw/dump_buf
    
    # Clock status
    cat /sys/kernel/debug/clk/clk_dump

   Hardware monitoring::

    # Thermal zones
    cat /sys/class/thermal/thermal_zone*/temp
    
    # CPU frequency
    cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_cur_freq

See Also
--------
* :ref:`hardware-abstraction` - HAL configuration
* :ref:`debugging` - Debugging guide