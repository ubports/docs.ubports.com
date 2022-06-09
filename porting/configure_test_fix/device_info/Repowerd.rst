.. _DeviceInfo_Repowerd:

Repowerd
========

Overview of all repowerd keys::

    <devicename>:
      BacklightSysfsPath: </path/to/the/device>

Device quirks
-------------

==================  =============================  =========
Key                 Description                    Value(s)
==================  =============================  =========
BacklightSysfsPath  File path to backlight device  File path
==================  =============================  =========

Examples
--------

Device `sample` using with:

- Custom backlight sysfs path to disable autodetection of the path controlling the backlight

Config file::

    $ cat /etc/deviceinfo/devices/sample.yaml
    sample:
      BacklightSysfsPath: /sys/class/backlight/panel0-backlight