2   Preparations
================

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

2.2 Locate relevant guides and other information
------------------------------------------------

If your desired target device complies to the above, the next thing to do is to locate the available guides and other documentation. This step will help you later on when you run into issues developing your port. For now, the main thing to look for is how to unlock your bootloader. (See 2.3, below).

Head over to the `LineageOS Wiki <https://wiki.lineageos.org/>`_. Look up your device and read and bookmark the guides that are listed there. Try a web search for additional information, specifying both its retail name and the code name you found on the LineageOS site. Be careful to check that the information you gather applies to your specific device, keeping in mind that many devices are sold in a number of different variants with different hardware specifications.

Another rich source of information is the `XDA Developer Forum <https://www.xda-developers.com/>`_.

2.3 Unlock the bootloader
-------------------------

Vendors provide their devices in a locked bootloader state. This is a kind of software "seal" intended to prevent you from making modifications directly to the operative system and system software. If you unlock the bootloader, you will be able to make such modifications, but in this state your device's warranty will be void. The choice is yours, but this step is mandatory if you wish to install Ubuntu Touch on the device.

Check the aforementioned guides for how to unlock the bootloader of your particular device. 

Having completed these steps, you are now ready to set up your build environment and start the porting process per se (next section).

2.4 Install TWRP recovery
-------------------------

    * Why this is needed
    * Why only TWRP built for the specific target device can be used
    * Link to TWRP site

2.4 Recommendations for the host/build PC: 
------------------------------------------

    * Hardware and system requirements