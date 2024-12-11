Bluetooth Configuration
=======================

Quick Reference
---------------
Essential configurations::

    # Kernel config for modern devices
    CONFIG_BT=y
    CONFIG_BT_BREDR=y      # Classic Bluetooth support 
    CONFIG_BT_LE=y         # Bluetooth Low Energy
    CONFIG_BT_HCIUART=y    # UART transport layer
    
    # Service verification
    systemctl status bluetooth
    hciconfig -a
    bluetoothctl show

Understanding Bluetooth Architecture
------------------------------------

Bluetooth Stack Components
^^^^^^^^^^^^^^^^^^^^^^^^^^
The Bluetooth subsystem consists of multiple layers:

1. **Hardware Layer**
   
   * Bluetooth controller
   * Firmware
   * Host interface (UART/USB)

2. **Host Stack**
   
   * BlueZ Linux stack
   * Android Bluetooth HAL
   * Hardware abstraction

3. **User Space**
   
   * Bluetooth service
   * Audio routing
   * Profile support

Configuration Steps
-------------------

1. Kernel Configuration
^^^^^^^^^^^^^^^^^^^^^^^
Modern devices (kernel 4.2+)::

    # Core Bluetooth support
    CONFIG_BT=y
    CONFIG_BT_BREDR=y
    CONFIG_BT_LE=y
    
    # Transport layers
    CONFIG_BT_HCIUART=y
    CONFIG_BT_HCIUART_H4=y    # H4 protocol
    CONFIG_BT_HCIUART_BCM=y   # Broadcom protocol
    CONFIG_BT_HCIUART_QCA=y   # Qualcomm protocol

Legacy devices (pre-4.2)::

    # Requires backporting from newer kernel
    # See backporting guide in vendor-specific section
    CONFIG_BT_BACKPORT=y

2. Firmware Setup
^^^^^^^^^^^^^^^^^
Configure firmware loading::

    # /lib/firmware/
    ├── qca/           # Qualcomm firmware
    │   ├── nvm.bin
    │   └── rampatch.bin
    ├── brcm/          # Broadcom firmware
    │   ├── BCM4345C0.hcd
    │   └── bcm4339.hcd
    └── rtl/           # Realtek firmware
        └── rtl8723b_fw.bin

3. Service Configuration
^^^^^^^^^^^^^^^^^^^^^^^^
Configure bluetooth service::

    # /etc/bluetooth/main.conf
    [General]
    Name = %h
    Class = 0x000100
    DiscoverableTimeout = 0
    PairableTimeout = 0
    Privacy = off
    
    [Policy]
    AutoEnable=true
    ReconnectAttempts=7
    ReconnectIntervals=1,2,4,8,16,32,64

4. Audio Profile Setup
^^^^^^^^^^^^^^^^^^^^^^
Configure Bluetooth audio::

    # /etc/pulse/touch.pa
    .ifexists module-bluetooth-policy.so
    load-module module-bluetooth-policy
    .endif
    
    .ifexists module-bluetooth-discover.so
    load-module module-bluetooth-discover
    .endif

Implementation Steps
--------------------

1. **Verify Hardware Support**
   
   * Check controller type
   * Identify firmware requirements
   * Verify kernel support

2. **Basic Configuration**
   
   * Enable kernel support
   * Configure firmware
   * Set up basic service

3. **Profile Setup**
   
   * Configure audio profiles
   * Enable BLE support
   * Set up pairing handling

4. **Integration Test**
   
   * Verify controller detection
   * Test basic functionality
   * Check audio routing

Common Configurations
---------------------

Qualcomm Devices
^^^^^^^^^^^^^^^^
Common settings for Qualcomm platforms::

    # Kernel config
    CONFIG_BT_HCIUART_QCA=y
    CONFIG_QCA_BT_ROME=y
    
    # Firmware paths
    /lib/firmware/qca/nvm.bin
    /lib/firmware/qca/rampatch.bin

Broadcom Devices
^^^^^^^^^^^^^^^^
Typical Broadcom configuration::

    # Kernel config
    CONFIG_BT_HCIUART_BCM=y
    CONFIG_BT_BCM43XX=y
    
    # Firmware path
    /lib/firmware/brcm/BCM4345C0.hcd

MediaTek Devices
^^^^^^^^^^^^^^^^
MediaTek specific settings::

    # Kernel config
    CONFIG_MTK_COMBO_BT=y
    CONFIG_MTK_BTIF=y
    
    # Firmware handling
    /lib/firmware/mt76xx/mt7668_patch_e1_hdr.bin

For debugging and troubleshooting guidance, see :doc:`../hardware-debug/connectivity`.