Hardware Debugging
==================

Debug Interfaces
----------------
Serial console::

    screen /dev/ttyUSB0 115200
    minicom -D /dev/ttyUSB0
    dmesg | grep ttyUSB

JTAG/SWD::

    openocd -f interface.cfg
    gdb -ex "target remote :3333"
    load-firmware.sh

Testing Tools
-------------
Hardware probes::

    evtest                     # Input events
    v4l2-ctl                   # Camera/video
    rtcwake                    # Power management

Bus analysis::

    i2cdetect -l               # I2C devices
    lsusb -v                   # USB devices
    udevadm monitor            # Device events

Debug Hardware
--------------
Required equipment:

- USB-serial adapter
- JTAG debugger
- Logic analyzer
- Multimeter