.. _Preparations:

Preparations
============

Not all devices can be made to run Ubuntu Touch.
Research your specific target device before starting.

Find the specifications of your device by searching for it on `GSMArena <https://www.gsmarena.com>`_ and/or `DeviceSpecification <https://www.devicespecifications.com/en>`_.
`Pick an Android target device<http://docs.halium.org/en/latest/porting/first-steps.html#pick-an-android-target-device>`_ in the Halium Porting Guide helps you find out if it meets the requirements.

.. _Locate-relevant-guides-and-other-information:

Locate relevant guides and other info
-------------------------------------

Locateing the available guides and other documentation helps you later when running into issues developing your port.
The first thing to find out is how to unlock your bootloader to be ready for the next step.

Head over to the `LineageOS Wiki <https://wiki.lineageos.org/>`_.
Find your device and read and bookmark the guides listed there.
Do a web search specifying both its retail name and the codename you found on the LineageOS site.
Ensure the info gathered actually applies to your specific device,
keeping in mind many devices are sold in a number of different variants with differing specifications.

Another source of info is the `XDA Developers Forum <https://www.xda-developers.com/>`_.

.. _Unlock-the-bootloader:

Unlock the bootloader
---------------------

Vendors usually ship their devices in a locked bootloader state.
This leaves you with the recovery mode shipped with the device.
This is a lock to prevent modifying central operating system and system software parts.
Unlocking the bootloader allows such modifications, but in this state your device's warranty might be void.
The choice is yours, but (if need be) mandatory to get Ubuntu Touch installed on your device.

Devices differ and there is no general method covering all makes and models.
Check the aforementioned guides for instructions on unlocking the bootloader of your particular device.

.. _Install-TWRP-recovery:

Install TWRP recovery
---------------------

A custom recovery image on your device is almost always needed to handle formatting and flashing operating system image files onto it.
Download the `Team Win Recovery Project <https://twrp.me/Devices/>`_ files for your device.
Follow the installation instructions provided on the website.
Asking for help about your device that won't start on the XDA forum if you didn't do your research is not going to go well.

.. _Recommendations-for-the-build-PC:

Recommendations for the host/build PC
-------------------------------------

This guide presumes you are using a PC running Linux|GNU.
High performance is nice, but stability, sufficient RAM and storage space are the main concerns.
It is not uncommon to run into issues with the very newest release of any Linux distribution,
as some of the required software may not yet have been built for it yet.
There is for example a Ubuntu release every april and october, but your best bet is using the latest long term support release (LTS).
