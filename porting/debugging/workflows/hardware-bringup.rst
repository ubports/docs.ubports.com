Hardware Bringup Workflow
=========================

Systematic process for enabling and debugging device hardware components.

Display
-------
1. Check framebuffer::

    ls /dev/fb*
    cat /sys/class/graphics/fb0/modes

2. Verify services::

    systemctl status lightdm
    journalctl -u lightdm

3. Test configuration::

    # /etc/ubuntu-touch-session.d/android.conf
    GRID_UNIT_PX=18
    QTWEBKIT_DPR=2.0

Audio
-----
1. Check detection::

    ls /dev/snd/*
    aplay -l
    pactl list sinks

2. Test paths::

    # UCM configuration
    ls /usr/share/alsa/ucm2/
    amixer
    alsactl init

3. Verify service::

    systemctl status pulseaudio
    pactl info

Sensors
-------
1. Check inputs::

    ls /dev/input/event*
    getevent -l
    evtest

2. Test sensor service::

    systemctl status sensorfwd
    sensorfw-tests

3. Verify permissions::

    ls -l /dev/input/event*
    groups phablet

Network
-------
1. WiFi bring-up::

    iw list
    nmcli radio wifi
    rfkill list

2. Cellular setup::

    mmcli -L
    ofono-phonesim
    dmesg | grep tty

3. Bluetooth config::

    hciconfig -a
    bluetoothctl show
    btmon

Power Management
----------------
1. Battery info::

    upower -i /org/freedesktop/UPower/devices/battery_0
    cat /sys/class/power_supply/*/capacity

2. Suspend/resume::

    systemctl suspend
    journalctl -b -u systemd-sleep

3. Thermal control::

    cat /sys/class/thermal/thermal_zone*/temp
    cat /sys/class/thermal/cooling_device*/cur_state