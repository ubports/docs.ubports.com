Network Configuration 
=====================

Quick Reference
---------------
Essential kernel configurations::

    # WiFi support
    CONFIG_WIRELESS=y
    CONFIG_CFG80211=y
    CONFIG_MAC80211=y
    CONFIG_WLAN=y
    
    # Mobile data
    CONFIG_USB_NET_RNDIS_HOST=y
    CONFIG_USB_CONFIGFS_RNDIS=y

Key service configurations::

    # RIL (Radio Interface Layer)
    systemctl status ofono
    systemctl status urfkill
    
    # WiFi services
    systemctl status wpa_supplicant
    systemctl status network-manager

Understanding Network Architecture
----------------------------------

Network Subsystems
^^^^^^^^^^^^^^^^^^
Ubuntu Touch networking consists of three main subsystems:

1. **WiFi Stack**
   
   * Kernel WiFi drivers
   * wpa_supplicant (authentication)
   * NetworkManager (connection management)
   * Firmware blobs

2. **Mobile Data**
   
   * RIL (Radio Interface Layer)
   * oFono (telephony framework)
   * RNDIS (USB networking)
   * Modem firmware

3. **Network Management**
   
   * NetworkManager
   * DNS resolution
   * Network routing 
   * Interface configuration

Configuration Steps
-------------------

1. WiFi Configuration
^^^^^^^^^^^^^^^^^^^^^
Set up WiFi support in your kernel configuration::

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

Firmware setup::

    # Common firmware locations
    /vendor/firmware/              # Vendor firmware directory
    └── wifi/
        ├── firmware.bin          # Main firmware
        ├── nvram.txt            # Radio parameters
        └── board.bin            # Board-specific data

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

RIL configuration::

    # /etc/ofono/ril_subscription.conf
    [Settings]
    Subscribe=false
    
    [ril_0]
    transport=binder
    socket=/dev/socket/rild
    name=slot1

    [ril_1]                        # For dual-SIM devices
    transport=binder
    socket=/dev/socket/rild2
    name=slot2

3. Network Management Setup
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Configure NetworkManager for interface handling::

    # /etc/NetworkManager/NetworkManager.conf
    [main]
    plugins=ifupdown,keyfile
    
    [ifupdown]
    managed=true
    
    [device]
    wifi.scan-rand-mac-address=no

DNS configuration::

    # /etc/systemd/resolved.conf
    [Resolve]
    DNS=1.1.1.1 8.8.8.8
    FallbackDNS=9.9.9.9
    DNSSEC=allow-downgrade
    
Implementation Steps
--------------------

1. **Verify Hardware Support**
   
   * Check kernel config options
   * Verify firmware availability
   * Confirm driver loading

2. **Configure Basic Networking**
   
   * Set up WiFi support
   * Configure mobile data
   * Enable USB networking

3. **Setup Network Management**
   
   * Configure NetworkManager
   * Set up DNS resolution
   * Configure interface management

4. **Implement RIL Support**
   
   * Configure oFono
   * Set up RIL sockets
   * Enable modem support

For debugging and troubleshooting guidance, see :doc:`../hardware-debug/connectivity`.

Common Configurations
---------------------

Qualcomm Devices
^^^^^^^^^^^^^^^^
Common settings for Qualcomm platforms::

    # WiFi driver
    CONFIG_QCA_CLD_WLAN=y
    CONFIG_QCACLD_WLAN_LFR3=y
    
    # RIL configuration
    [ril_0]
    transport=binder
    socket=/dev/socket/qrtr_socket

MediaTek Devices
^^^^^^^^^^^^^^^^
Typical MediaTek configuration::

    # WiFi support
    CONFIG_MTK_COMBO=y
    CONFIG_MTK_COMBO_WIFI=y
    
    # RIL setup
    [ril_0]
    transport=binder
    socket=/dev/socket/rild
    name=slot1

Samsung Devices
^^^^^^^^^^^^^^^
Samsung-specific settings::

    # WiFi configuration
    CONFIG_BCM4339=y
    CONFIG_BCM4354=y
    
    # RIL configuration
    [ril_0]
    transport=binder
    socket=/dev/socket/rild
    name=slot1