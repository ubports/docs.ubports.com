.. _DeviceInfo_Repowerd:

Repowerd
========

Overview of all repowerd keys::

    <devicename>:
      BacklightSysfsPath: </path/to/the/device>
      DoubleTapToWake:
        - </path/to/node>|<enable>|<disable>
        - ...

Device quirks
-------------

==================  ===============================  ========================================================
Key                 Description                      Value(s)
==================  ===============================  ========================================================
BacklightSysfsPath  File path to backlight device    File path
DoubleTapToWake     Configuration for toggling DT2W  List of formatted strings: ``<path>|<enable>|<disable>``
==================  ===============================  ========================================================

Examples
--------

Device `sample` using:

- Custom backlight sysfs path to disable autodetection of the path controlling the backlight
- Double Tap to Wake (DT2W) configuration to allow double tapping to wake the device, specifing two potential paths
    - It is allowed to specify multiple entries, invalid or non-existant paths will be removed

Config file::

    $ cat /etc/deviceinfo/devices/sample.yaml
    sample:
      BacklightSysfsPath: /sys/class/backlight/panel0-backlight
      DoubleTapToWake:
        - /proc/touchpanel/double_tap_enable|1|0
        - /sys/devices/platform/soc/a84000.i2c/i2c-2/2-0020/input/input1/wake_gesture|on|off
