2   Preparations
----------------

Not all devices can be made to run Ubuntu Touch. Research your target device before you start.

2.1 Hardware and system requirements
------------------------------------

In order to be a viable choice, a device has to satisfy certain minimum hardware specifications, and the necessary source code for the build must be available.

The minimum hardware specifications are:

=============================     ================
RAM                               Internal Storage
=============================     ================
1GB minimum (2GB recommended)     16 GB minimum
=============================     ================

To determine your device's specifications, search for it on `GSM Arena <https://www.gsmarena.com>`_ and/or `Device Specification <https://www.devicespecifications.com/en>`_.

Refer to the `Halium Porting Guide <http://docs.halium.org/en/latest/porting/first-steps.html#pick-an-android-target-device>`_ for further information on requirements and how to check if your device qualifies.

2.2 Locate relevant guides
----------------------

If your desired target device complies to the above, the next thing to do is to locate the necessary guides. Head over to the `LineageOS Wiki <https://wiki.lineageos.org/>`_. Look up your device and refer to the guides that are listed there.

2.3 Unlock the bootloader
---------------------

Vendors provide their devices in a locked bootloader state. This is a kind of software "seal" intended to prevent you from making modifications directly to the operative system and system software. If you unlock the bootloader, you will be able to do so, but in this state your device's warranty will be void. The choice is yours, but this step is mandatory if you wish to install Ubuntu Touch on the device.

Check the aforementioned guides for how to unlock the bootloader of your particular device. 

Having completed these steps, you are now ready to set up your build environment and start the porting process per se (next section).