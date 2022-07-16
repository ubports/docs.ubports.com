.. _DeviceInfo:

DeviceInfo
==========

DeviceInfo allows to set device specific configuration, which can be accessed in an uniform way using `libdeviceinfo <https://gitlab.com/ubports/development/core/deviceinfo>`_.

Device specific overrides
-------------------------

Configuration files per device are located at ``/etc/deviceinfo/devices/[device].yaml``.
It will try to autodetect the correct configuration to load based on model of the device,
using android props for halium/android devices and dtb for native linux devices.

.. note::
    This file needs to be all lowercase, as any autodetected device name will be converted to lowercase.

For example, the file for the Nexus 7 tablet (flo) would be located at ``/etc/deviceinfo/devices/flo.yaml`` and needs to start with the device's name::

    $ cat /etc/deviceinfo/devices/flo.yaml
    flo:
      DeviceType: tablet
      GridUnit: 18
      WebkitDpr: 2
      PrimaryOrientation: Landscape
      ...

In case you can not add a new file to the rootfs, you can bind-mount ``/etc/deviceinfo/devices/halium.yaml``.
For a reference, see the `configuration bringup for bonito/sargo <https://github.com/fredldotme/android_device_google_bonito/commit/d0ca48aadcde0b74840c3394ac86042033d7f846>`_.

If no device specific configuration exists or a key is not specified for the device config, DeviceInfo will fallback to ``/etc/deviceinfo/default.yaml``.
Keep your configuration simple and try to not duplicate any entries, which are already defined in ``default.yaml``.

Any key can be added without needing to modify deviceinfo to use it.
This allows for a lot of flexibility, however keys should be properly documented in order to not duplicate keys.

Built-in config keys
--------------------

============================  =========================================================  =====================================================
Key                           Description                                                Value(s)
============================  =========================================================  =====================================================
Name                          Device name / codename                                     Any string
PrettyName                    Pretty name of the device                                  Any string
DeviceType                    Sets device type                                           desktop, tablet, phone
GridUnit                      Sets scale units                                           Any integer
SupportedOrientations         Orientations supported by the device                       Portrait, InvertedPortrait, Landscape, InvertedLandscape
PrimaryOrientation            Primary orientation of the device                          Portrait, InvertedPortrait, Landscape, InvertedLandscape
PortraitOrientation           Orientation of the device when in portrait mode            Portrait, InvertedPortrait, Landscape, InvertedLandscape
InvertedPortraitOrientation   Orientation of the device when in inverted portrait mode   Portrait, InvertedPortrait, Landscape, InvertedLandscape
LandscapeOrientation          Orientation of the device when in landscape mode           Portrait, InvertedPortrait, Landscape, InvertedLandscape
InvertedLandscapeOrientation  Orientation of the device when in inverted landscape mode  Portrait, InvertedPortrait, Landscape, InvertedLandscape
============================  =========================================================  =====================================================

Other keys are documented in the component specific subpages.

.. toctree::
   :maxdepth: 1
   :name: device_info

   Repowerd
