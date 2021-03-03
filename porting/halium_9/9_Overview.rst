Halium 9 Porting - Overview
===========================

Which devices are compatible with Halium 9?
-------------------------------------------

As mentioned in the section :ref:`Android-and-Halium-versions`, Halium 9.0 corresponds to Android 9.0. Thus, only devices currently running Android 9.0 can be made to work with Halium 9.0.

What is a GSI?
--------------

With Android 9.0 there came a significant change of architecture. The device-specific vendor blobs now reside on a separate partition instead of sharing a partition with the rest of the system image. This separation of device-specific code from generic code is what made the GSI possible.

A GSI (Generic System Image) is a system image that is built to be able to function with a wide range of devices. Android devices, as of version 9.0, use a GSI. For more information, see the `Android Developer pages <https://developer.android.com/topic/generic-system-image/>`_

The development of the Android GSI architecture also cleared the way for the now available Halium 9.0 Ubuntu Touch GSI.

How does this change the porting process?
-----------------------------------------

Since the GSI is a prebuilt, device-independent component, it effectively simplifies the task of building a viable port by removing much of the meticulous and time consuming task of getting the hardware-specific vendor blobs compiled into the system image and configured to function properly.

There are three main courses of action when porting Ubuntu Touch based on Halium 9. These are:

* Building halium-boot.img and installing this together with the Ubports GSI.
* Building only the kernel and installing this together with the halium ramdisk, the apparmor enabler and the UBports GSI.
* Building both the halium-boot.img and the full system.img from source and installing these.

When writing this section of the guide, a choice was made to provide a guide as quickly as possible that would be useful to the greatest possible number of porters. This precluded describing all three alternatives above. We have therefore selected the first one, which we judge to be the one with the greatest potential for success for the average porter. In time, we hope to expand the guide to encompass the other two as well. In the meantime, the more experienced (or more adventurous) porters can find information on the other two in the UBports Wiki - `porting notes page <https://github.com/ubports/porting-notes/wiki/Halium-9>`_ and `Generic System Image page <https://github.com/ubports/porting-notes/wiki/Generic-system-image-(GSI)>`_.

Overview of the porting process:
--------------------------------

    * Preparations
        After choosing a target device and ensuring that it is compatible with Halium 9, gather information about it and choose a suitable workstation (PC or laptop) on which to do your work.
    * Set up your Halium build environment
        Download the required source code for Halium as well as your device specific source code.
    * Build halium-boot.img for Ubuntu Touch
        This requires certain modifications to your source tree, after which you will proceed to build the halium-boot.img to be used in your port.
    * Install and debug the boot process
        The goal of this stage is to successfully boot into Ubuntu Touch and establish a remote connection to your device. You will be working from the command line.
    * Bring up Lomiri, the Ubuntu Touch graphical user interface
        After completion of this stage you will be able to successfully login to the graphical user interface.
    * Check and enable remaining device features
        This stage involves applying apparmor kernel patches (and rebuilding halium-boot.img) as well as checking and debugging a wide variety of features such as WiFi, sensors, camera, video, voice calls, etc. When you complete this stage you will have a fully functional port, but it will not yet be capable of accepting OTA (Over The Air) updates.
    * Build Ubuntu Touch recovery.img
        The Ubuntu Touch recovery image is a slightly modified recovery image that is tailored to working with the UBports installer
    * Set up the UBports installer for your device
        When you have completed this stage you will have made it possible for anyone owning the device in question to install and run Ubuntu Touch on it, including the ability to receive OTA updates as they are made available.
