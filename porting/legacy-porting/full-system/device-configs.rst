Device Configuration
====================

This guide explains how to configure your device-specific settings. These configurations tell the build system about your device's hardware and features.

Quick Reference
---------------
Key configuration files:

* BoardConfig.mk - Core hardware settings
* device.mk - Features and packages
* system.prop - System properties

Understanding Configuration Files
---------------------------------
Your device needs three main configuration files:

1. **BoardConfig.mk**

   - Basic hardware setup
   - Partition information
   - Kernel configuration
   - CPU/GPU settings

2. **device.mk**

   - Hardware features
   - Included packages
   - System properties
   - File permissions

3. **system.prop**

   - Runtime properties
   - Hardware settings
   - Feature flags
   - System behaviors

Think of these files as your device's instruction manual - they tell Ubuntu Touch how your hardware works.

Detailed Configuration
----------------------

BoardConfig.mk Settings
^^^^^^^^^^^^^^^^^^^^^^^
Basic device architecture::

    # CPU Architecture
    TARGET_ARCH := arm64                 # or 'arm' for 32-bit
    TARGET_ARCH_VARIANT := armv8-a       # CPU version
    TARGET_CPU_VARIANT := generic        # CPU type
    
    # Bootloader
    TARGET_NO_BOOTLOADER := true         # Skip bootloader build
    TARGET_NO_RECOVERY := false          # Include recovery

Kernel configuration::

    # Kernel location
    TARGET_KERNEL_SOURCE := kernel/[vendor]/[device]
    TARGET_KERNEL_CONFIG := [device]_defconfig
    
    # Kernel options
    BOARD_KERNEL_BASE := 0x80000000      # Kernel load address
    BOARD_KERNEL_PAGESIZE := 2048        # Memory page size
    BOARD_KERNEL_CMDLINE += console=tty0 # Required for Ubuntu Touch

Partition layout::

    # System image
    BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648  # 2GB
    BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
    
    # Data partition
    BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
    BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

device.mk Configuration
^^^^^^^^^^^^^^^^^^^^^^^
Basic device setup::

    # Inherit base configuration
    $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
    
    # Device identifier
    PRODUCT_DEVICE := [device]
    PRODUCT_NAME := halium_[device]
    PRODUCT_BRAND := [vendor]
    PRODUCT_MODEL := [model]
    PRODUCT_MANUFACTURER := [vendor]

Hardware permissions::

    # Copy permission files
    PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml

Include packages::

    # Basic packages
    PRODUCT_PACKAGES += \
        libion \
        lights.$(TARGET_BOARD_PLATFORM) \
        audio.primary.$(TARGET_BOARD_PLATFORM)

System Properties
^^^^^^^^^^^^^^^^^
Create system.prop::

    # Hardware
    ro.hardware=halium
    
    # Radio
    ro.telephony.default_network=9
    ro.radio.noril=false
    
    # Display
    ro.sf.lcd_density=320

Common Configurations
---------------------

1. **Display Settings**::

    # In BoardConfig.mk
    TARGET_USES_HWC2 := true
    TARGET_USES_GRALLOC1 := true
    
    # In system.prop
    debug.sf.hw=1
    debug.egl.hw=1

2. **Audio Configuration**::

    # In device.mk
    PRODUCT_PACKAGES += \
        audio.primary.$(TARGET_BOARD_PLATFORM) \
        audio.a2dp.default \
        audio.usb.default

3. **WiFi Setup**::

    # In BoardConfig.mk
    BOARD_HOSTAPD_DRIVER := NL80211
    BOARD_WPA_SUPPLICANT_DRIVER := NL80211
    
    # In device.mk
    PRODUCT_PACKAGES += \
        hostapd \
        wpa_supplicant

Common Issues
-------------

1. **Missing Hardware Support**

   - Check permission files
   - Verify hardware features
   - Review vendor blobs

2. **System Property Errors**

   - Validate property names
   - Check value formats
   - Verify property locations

3. **Package Problems**

   - Check package names
   - Verify dependencies
   - Review build errors

Testing Configuration
---------------------
Verify your configuration::

    # Check properties
    getprop | grep <property>
    
    # Test hardware
    ls -l /dev/
    ls -l /sys/class/
    
    # Review permissions
    ls -l /system/etc/permissions/

Next Steps
----------
After configuration:

- :doc:`build-system` - Build your port
- :doc:`../../debugging/hardware-debug/index` - Hardware debugging
- :doc:`../../debugging/system-debug/index` - System debugging

See Also
--------
* :ref:`hardware-abstraction` - Hardware layer details
* :ref:`android-integration` - Android system structure
* :doc:`../../debugging/overlay-method` - Configuration overlays