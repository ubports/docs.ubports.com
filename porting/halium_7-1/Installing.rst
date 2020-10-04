Installing
==========

.. _Install-and-debug-initial-boot:

Install and debug initial boot
------------------------------

.. warning::

    These steps  will wipe **all** of the data on your device. If there is anything that you would like to keep, ensure it is backed up and copied to a safe location before continuing.

Now that you have built halium-boot, you are ready to install Ubuntu Touch on your device.

In order to install Ubuntu Touch, you will need a recovery with Busybox, such as TWRP, installed on your phone. If you have not done so yet, refer to section :ref:`Install-TWRP-recovery` and install it now. 

You will also need to ensure the ``/data`` partition is formatted with ``ext4`` and does not have any encryption on it. Boot into the recovery image you just installed, check and adjust as necessary.

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
    Samsung devices: Flashing halium-boot.img on Samsung devices is done using the Heimdall flashing utility (on Linux) or the Odin utility (on Windows) after first bringing the device into 'download mode'. See more information on these utilities `here <https://www.getdroidtips.com/download-heimdall-flash-tool-to-flash-firmware-on-samsung-galaxy-devices/>`_ Follow the instructions for the utility you choose, including the specific flashing command for flashing the boot partition. Install system.img and rootfs (below) with the device in recovery mode.

Install system.img and rootfs
-----------------------------

Next you need to download the appropriate rootfs for your device. At the moment there are two available versions, a 32 bit and a 64 bit one. 

Simply download ``ubports-touch.rootfs-xenial-armhf.tar.gz`` (32 bit) from `our CI server <https://ci.ubports.com/job/xenial-rootfs-armhf/>`__. 

If you have a 64-bit ARM (aarch64) device, this same rootfs should work for you. You can also try the 64 bit version keeping in mind that you may possibly run into more issues with this owing to the current state of development of this rootfs. (If you have an x86 device, let us know. There is no rootfs available for these yet.)

Clone or download the `halium-install repository <https://gitlab.com/JBBgameich/halium-install>`_. This repository contains tools that can be used to install a Halium system image and distribution rootfs.
Reboot your device to recovery (e.g. TWRP), to get adb access again. Now use the ``halium-install`` script to install Ubuntu Touch on your device::

    path/to/halium-install -p ut path/to/rootfs.tar.gz path/to/system.img

The script will copy and extract the files to their proper places, then allow you to set the user password for your device (the *phablet* user's password).

Get SSH access
--------------

When your device boots, it will likely stay at the bootloader screen. However, you should also get a new network connection on the computer you have it plugged in to. You will need to use this to debug the system.

To confirm that your device has booted correctly, on your host computer, run ``dmesg -w`` and watch for "GNU/Linux device" in the output. If you instead get something similar to "Halium initrd Failed to boot", please get in contact with us so we can find out why.

Similar to the Halium reference rootfs, you should `set your computer's IP on the newly connected RNDIS interface <http://docs.halium.org/en/latest/porting/debug-build/logging-in.html>`__ to ``10.15.19.100`` if you don't get one automatically. Then, run the following to access your device::

    ssh phablet@10.15.19.82

The password will be the one that you set while running halium-install.

Troubleshooting initial boot
----------------------------

Refer to :ref:`Known-issues-with-initial-boot`.
