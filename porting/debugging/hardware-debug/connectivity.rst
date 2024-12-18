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

Cellular/Modem
--------------
Debug methods::

    # Check modem status
    dmesg | grep -i modem
    
    # Verify RIL status
    journalctl -u ofono
    
    # Check SIM status
    list_modems          # ofono tool
    dbus-send --system --print-reply --dest=org.ofono /[modem] \
        org.ofono.Modem.GetProperties

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