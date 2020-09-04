Installing Ubuntu Touch 16.04 images on Halium
==============================================

.. warning::

    These steps  will wipe **all** of the data on your device. If there is anything that you would like to keep, ensure it is backed up and copied off of the device before continuing.

Now that you've :doc:`built halium-boot <building-halium-boot>`, we're ready to install Ubuntu Touch on your device.

In order to install Ubuntu Touch, you will need a recovery with Busybox, such as `TWRP <https://twrp.me/Devices/>`_, installed on your phone. You will also need to ensure the /data partition is formatted with ext4 and does not have any encryption on it. Boot into the recovery image you just installed, check and adjust as necessary.

Install halium-boot
--------------------

We'll need to install the halium-boot image before installing an image. Reboot your phone into fastboot mode, then do the following from your Halium tree::

    cout
    fastboot flash boot halium-boot.img
    
.. Note::
    Samsung devices: Flashing halium-boot.img on Samsung devices is done using the Heimdall flashing utility (on Linux) or the Odin utility (on Windows) after first bringing the device into 'download mode'. Follow the instructions for the utility you are using, including the specific flashing command for flashing the boot partition. The device should boot directly into recovery once halium-boot.img has been flashed. Install system.img and rootfs (below) with the device in recovery mode.

Download the rootfs
-------------------

Next we'll need to download the rootfs (root filesystem) that's appropriate for your device. Right now, we only have one available. Simply download ``ubports-touch.rootfs-xenial-armhf.tar.gz`` from `our CI server <https://ci.ubports.com/job/xenial-rootfs-armhf/>`__. If you have a 64-bit ARM (aarch64) device, this same rootfs should work for you. If you have an x86 device, let us know. We do not have a rootfs available for these yet.

Install system.img and rootfs
-------------------------------

Clone or download the `halium-install repository <https://gitlab.com/JBBgameich/halium-install>`_. This repository contains tools that can be used to install a Halium system image and distribution rootfs.
Reboot your device to recovery (e.g. TWRP), to get adb access again. We'll use the ``halium-install`` script to install Ubuntu Touch on your device::

    path/to/halium-install -p ut path/to/rootfs.tar.gz path/to/system.img

The script will copy and extract the files to their proper places, then allow you to set the phablet user's password.

Get SSH access
--------------

When your device boots, it will likely stay at the bootloader screen. However, you should also get a new network connection on the computer you have it plugged in to. We will use this to debug the system.

To confirm that your device has booted correctly, run ``dmesg -w`` and watch for "GNU/Linux device" in the output. If you instead get something similar to "Halium initrd Failed to boot", please get in contact with us so we can find out why.

Similar to the Halium reference rootfs, you should `set your computer's IP on the newly connected RNDIS interface <http://docs.halium.org/en/latest/porting/debug-build/logging-in.html>`__ to ``10.15.19.100`` if you don't get one automatically. Then, run the following to access your device::

    ssh phablet@10.15.19.82

The password will be the one that you set while running halium-install.

Common Problems
---------------

If you have any errors while performing these steps, check to see if any of the following suggestions match what you are seeing. If you have installed successfully, skip down to `The Next Steps`_.

.. toctree::
   :maxdepth: 1

   common-problems-install

The Next Steps
--------------

Congratulations! Ubuntu Touch has now booted on your device. However, your port is still not complete. Move on to :doc:`running-ut` to learn about the remaining steps to make your port complete.

.. toctree::
   :maxdepth: 1

   device-configuration
   
