Power Management Debug
======================

Power States
------------
Components::

    Battery -> Charging -> Suspend
    Thermal -> CPU freq -> GPU freq

Battery Monitor
---------------
Debug commands::

    upower -i /org/freedesktop/UPower/devices/battery_0
    cat /sys/class/power_supply/*/status
    dmesg | grep -i battery

Suspend/Resume
--------------
Test methods::

    # Manual suspend
    systemctl suspend
    pm-suspend
    
    # Monitor
    journalctl -u systemd-sleep
    cat /sys/power/state
    dmesg | grep -i suspend

Thermal Control
---------------
Debug interfaces::

    # Zones
    cat /sys/class/thermal/thermal_zone*/temp
    
    # Cooling
    cat /sys/class/thermal/cooling_device*/cur_state
    
    # CPU freq
    cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_cur_freq