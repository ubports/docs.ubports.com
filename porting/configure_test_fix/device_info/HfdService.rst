.. _DeviceInfo_HfdService:

hfd-service
===========

Overview of all hfd-service keys::

    <devicename>:
      VibrateDurationExtraMs: <any integer value>

Device quirks
-------------

======================  =============================================  ==================
Key                     Description                                    Value(s)
======================  =============================================  ==================
VibrateDurationExtraMs  Milliseconds to extend all vibration calls by  Any integer number
======================  =============================================  ==================

Examples
--------

Device ``sample`` using:

- Extend vibrations by 50 milliseconds to feel the on-screen keyboard haptics on devices with simpler on/off vibration motors

Config file::

    $ cat /etc/deviceinfo/devices/sample.yaml
    sample:
      VibrateDurationExtraMs: 50
