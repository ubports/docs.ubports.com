Connectivity Debugging
======================

WiFi
----
Debug steps::

    # Driver status
    lsmod | grep wifi
    dmesg | grep wifi
    iw list
    
    # Connection
    iw dev wlan0 scan
    iw event
    wpa_cli status

Cellular
--------
Debug methods::

    # Modem
    mmcli -m 0
    ofono-phonesim-cli
    
    # RIL
    logcat -s RIL
    rild -l debug
    
    # SIM
    at+cpin?
    at+cops?

Bluetooth
---------
Debug commands::

    # Stack
    btmon
    bluetoothctl show
    hcidump
    
    # Firmware
    dmesg | grep -i blue
    hexdump -C /sys/firmware/acpi/tables/SSDT*
    
    # Audio
    pactl list short | grep blue