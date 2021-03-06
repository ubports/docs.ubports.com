Install and debug the boot process
==================================

This step involves flashing the halium-boot.img you built in the previous section, and subsequently downloading and installing the GSI and rootfs on your device. You will then boot your device and establish remote access to confirm that it boots correctly.

Flash halium-boot
-----------------

To install halium-boot, reboot your phone into fastboot mode. Then do the following from your Halium tree::

    cout
    fastboot flash boot halium-boot.img

If you have trouble accessing your device in fastboot mode, but are able to access it in TWRP recovery mode using adb, then boot into recovery mode and try the following alternative method::

    cout
    adb push halium-boot.img /sdcard

On your device, choose *Install* in the TWRP menu, navigate to the sdcard directory, choose *Image*, select your image file, select *Boot* and swipe to flash.
    
.. Note::
    Samsung devices: Flashing halium-boot.img on Samsung devices is done using the Heimdall flashing utility (on Linux) or the Odin utility (on Windows) after first bringing the device into 'download mode'. See more information on these utilities `here <http://docs.halium.org/en/latest/porting/install-build/reference-rootfs.html#install-hybris-boot-img-on-samsung-devices>`_. Follow the instructions for the utility you choose, including the specific flashing command for flashing the boot partition. Install system.img and rootfs (below) with the device in recovery mode. 

Download and prepare the GSI and rootfs
---------------------------------------

Download the latest version of `the UBports GSI <https://ci.ubports.com/job/UBportsCommunityPortsJenkinsCI/job/ubports%252Fcommunity-ports%252Fjenkins-ci%252Fgeneric_arm64/job/main/>`_.

Extract the downloaded file and locate the file ``android_rootfs.img`` in the directory ``system/var/lib/lxc/android``. This is the GSI file you will be transferring to the device.

Next, download `the rootfs <https://ci.ubports.com/job/xenial-hybris-android9-rootfs-arm64/>`_. Do not extract this file.

Installation
------------

The files above need to be installed using the ``halium-install`` script. 

Clone or download the `halium-install repository <https://gitlab.com/JBBgameich/halium-install>`_. 

This repository contains tools that are used to install a Halium system image and a distribution rootfs.

Reboot your device to recovery (e.g. TWRP), to get adb access again. Now use the ``halium-install`` script to install Ubuntu Touch on your device by issuing the following command::

    path/to/halium-install -p ut -s path/to/ubuntu-touch-android9-arm64.tar.gz path/to/android-rootfs.img

The script will copy and extract the files to their proper places, then allow you to set the user password for your device (the *phablet* user's password).

Boot and gain remote access
---------------------------
