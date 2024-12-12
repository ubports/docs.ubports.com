Network Configuration
=====================

Quick Reference
---------------
Essential kernel configurations::

    # WiFi support
    CONFIG_WIRELESS=y              # Wireless subsystem support
    CONFIG_CFG80211=y             # cfg80211 wireless interface
    CONFIG_MAC80211=y             # IEEE 802.11 support
    CONFIG_WLAN=y                 # Wireless LAN drivers
    
    # Mobile data
    CONFIG_USB_NET_RNDIS_HOST=y   # RNDIS host support
    CONFIG_USB_CONFIGFS_RNDIS=y   # ConfigFS RNDIS gadget

Understanding Network Architecture
----------------------------------

Network Subsystems
^^^^^^^^^^^^^^^^^^
Ubuntu Touch networking consists of three main subsystems:

1. **WiFi Stack**

   * Kernel WiFi drivers
   * Firmware support
   * Hardware interfaces

2. **Mobile Data**

   * RIL (Radio Interface Layer)
   * oFono (telephony framework)
   * Modem firmware

3. **Network Services**

   * Network management
   * Interface handling
   * Connection control

The system handles interface configuration and network management automatically once proper kernel support is enabled.

Configuration Steps
-------------------

1. WiFi Configuration
^^^^^^^^^^^^^^^^^^^^^
Enable WiFi support in your kernel configuration::

    # Required kernel configs
    CONFIG_WIRELESS=y              # Wireless subsystem support
    CONFIG_CFG80211=y             # cfg80211 wireless interface
    CONFIG_MAC80211=y             # IEEE 802.11 support
    CONFIG_WLAN=y                 # Wireless LAN drivers

Common vendor-specific configs::

    # Qualcomm WiFi
    CONFIG_QCA_CLD_WLAN=y
    
    # MediaTek WiFi
    CONFIG_MTK_COMBO_WIFI=y
    
    # Broadcom WiFi
    CONFIG_BCM4339=y

2. Mobile Data Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Configure mobile data support:

Kernel configuration::

    # USB networking
    CONFIG_USB_NET_RNDIS_HOST=y    # RNDIS host support
    CONFIG_USB_CONFIGFS_RNDIS=y    # ConfigFS RNDIS gadget
    
    # Modem support
    CONFIG_USB_SERIAL=y            # USB Serial support
    CONFIG_USB_SERIAL_WWAN=y       # USB Serial WWAN driver
    CONFIG_USB_SERIAL_OPTION=y     # USB Serial Option driver

For debugging and troubleshooting of network activation issues, see :doc:`../hardware-debug/connectivity`.

Common Configurations
---------------------

Qualcomm Devices
^^^^^^^^^^^^^^^^
Common settings for Qualcomm platforms::

    # WiFi driver
    CONFIG_QCA_CLD_WLAN=y
    CONFIG_QCACLD_WLAN_LFR3=y

MediaTek Devices
^^^^^^^^^^^^^^^^
Typical MediaTek configuration::

    # WiFi support
    CONFIG_MTK_COMBO=y
    CONFIG_MTK_COMBO_WIFI=y

Samsung Devices
^^^^^^^^^^^^^^^
Samsung-specific settings::

    # WiFi configuration
    CONFIG_BCM4339=y
    CONFIG_BCM4354=y