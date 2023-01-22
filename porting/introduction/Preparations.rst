.. _Preparations:

Preparations
============

Not all devices can be made to run Ubuntu Touch. Research your target device before you start.

To determine your device's specifications, search for it on `GSM Arena <https://www.gsmarena.com>`_ and/or `Device Specification <https://www.devicespecifications.com/en>`_.
Refer to `Pick an Android target device in the Halium Porting Guide <http://docs.halium.org/en/latest/porting/first-steps.html#pick-an-android-target-device>`_ for further information on requirements and how to check if your device qualifies.

.. _Locate-relevant-guides-and-other-information:

Locate relevant guides and other information
--------------------------------------------

If your desired target device complies to the above, the next thing to do is locate the available guides and other documentation. This step will help you later on when you run into issues developing your port. For now, the main thing to look for is how to unlock your bootloader. (See below).

Head over to the `LineageOS Wiki <https://wiki.lineageos.org/>`_. Look up your device and read and bookmark the guides that are listed there. Try a web search for additional information, specifying both its retail name and the code name you found on the LineageOS site. Be careful to check that the information you gather applies to your specific device, keeping in mind that many devices are sold in a number of different variants with different hardware specifications.

Another rich source of information is the `XDA Developers Forum <https://www.xda-developers.com/>`_.

.. _Unlock-the-bootloader:

Unlock the bootloader
---------------------

Vendors usually provide their devices in a locked bootloader state. This is a kind of software "seal" intended to prevent modifications directly to the operating system and system software. If you unlock the bootloader, you will be able to make such modifications, but in this state your device's warranty might be void. The choice is yours, but this step is mandatory if you wish to install Ubuntu Touch on the device.

Devices differ and there is no general method that covers all makes and models. Therefore, you need to check the aforementioned guides for instructions on how to unlock the bootloader of your particular device.

.. _Install-TWRP-recovery:

Install TWRP recovery
---------------------

You need to install a custom recovery image on your device in order to handle formatting and flashing image files onto it. Head over to the `Team Win Recovery Project <https://twrp.me/Devices/>`_  and locate the image file for your device. Follow the installation instructions provided on the website.

.. _Recommendations-for-the-build-PC:

Recommendations for the host/build PC
-------------------------------------

The remainder of this guide presumes you are using a build PC running Linux. Although high performance always is nice, stability and sufficient RAM and harddisk space are the main concerns here. You do not need the latest and the best hardware, nor do you need the latest distribution release. In fact, it is not uncommon to run into issues when choosing the very newest release, as some of the software needed may not yet have been built for it. For example, as of writing the latest release of Ubuntu Linux is 22.04, but many still recommend using the previous long term support release, 20.04.

Having completed the steps above, you are now ready to set up your build environment and start the porting process per se (next section).
