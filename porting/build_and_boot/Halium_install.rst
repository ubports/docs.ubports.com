Installing Halium-based builds
==============================

With the necessary compontents built, you are now ready to install them on your device and check whether they function as intended. There are only minor differences between Halium versions when it comes to the installation process. In all cases, the system image and rootfs are installed together on the userdata partition of the device. This is done for practical reasons, as it makes the installation process simpler to manage during the first phases of the porting process. Once the port reaches the level of maturity required for it to be offered through the UBports installer (see :ref:`Finalize`), this must be changed in order to reserve a maximum of possible space for userdata.

In brief:

    * **Halium-7.1** requires installing the boot image and system image you have built, together with the UBports rootfs, which you need to download.
    * **Halium-9.0 and newer** require installing the boot image you have built together with the GSI and the UBports rootfs. Both the GSI and the rootfs are available for download. Note: If you chose to build your own system.img, then you must use this instead of the GSI when installing.

In order to install Ubuntu Touch, you need a recovery image with Busybox, such as TWRP, installed on your phone. If you have not done so yet, refer to section :ref:`Install-TWRP-recovery` and install it now.

You will also need to ensure the ``/data`` partition is formatted with ``ext4`` and is not encrypted. Boot into recovery, check and adjust as necessary.

.. _Flash-boot:

Flashing halium-boot.img
------------------------

To install halium-boot, reboot your phone into fastboot mode. Then do the following from the root of your ``BUILDDIR``::

    cout
    fastboot flash boot halium-boot.img

If you have trouble accessing your device in fastboot mode, but are able to access it in TWRP recovery mode using adb, then boot into recovery mode and try the following alternative method::

    cout
    adb push halium-boot.img /tmp/

On your device, choose *Install* in the TWRP menu, navigate to the ``/tmp`` directory, choose *Image*, select your image file, select *Boot* and swipe to flash.

.. Note::
    Samsung devices: Flashing halium-boot.img on Samsung devices is done using the Heimdall flashing utility (on Linux) or the Odin utility (on Windows) after first bringing the device into 'download mode'. See more information on these utilities `here <http://docs.halium.org/en/latest/porting/install-build/reference-rootfs.html#install-hybris-boot-img-on-samsung-devices>`_. Follow the instructions for the utility you choose, including the specific flashing command for flashing the boot partition. Install system.img and rootfs (below) with the device in recovery mode.

.. _Inst-sys:

Installing system image and rootfs
----------------------------------

**Read carefully** and perform only the steps which apply to your Halium version and the files you will be flashing!

Download the appropriate rootfs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Start by downloading the appropriate rootfs for your device. You need a rootfs corresponding to your device's architecture and the Halium version you have built. At the moment there are two available versions for Halium 7.1, an armhf (32 bit) version and an arm64 (64 bit) version. For Halium 9.0 there is only an arm64 rootfs available. Follow the appropriate link below to download the one you need.

    * Halium 7.1, armhf (32 bit): `ubports-touch.rootfs-xenial-armhf.tar.gz <https://ci.ubports.com/job/xenial-rootfs-armhf/>`_
    * Halium 7.1, arm64 (64 bit): `ubuntu-touch-hybris-xenial-arm64-rootfs.tar.gz <https://ci.ubports.com/job/xenial-hybris-rootfs-arm64/>`_
    * Halium 9.0, armhf (32 bit): `ubuntu-touch-android9-armhf.tar.gz <https://ci.ubports.com/job/xenial-hybris-android9-rootfs-armhf/>`_
    * Halium 9.0, arm64 (64 bit): `ubuntu-touch-android9-arm64.tar.gz <https://ci.ubports.com/job/xenial-hybris-android9-rootfs-arm64/>`_

Download the halium-install script
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Clone or download the `halium-install repository <https://gitlab.com/JBBgameich/halium-install>`_. This repository contains tools that can be used to install a Halium system image and distribution rootfs.
Reboot your device to recovery (e.g. TWRP), to get adb access again. Now use the ``halium-install`` script to install Ubuntu Touch on your device.

Perform the installation
^^^^^^^^^^^^^^^^^^^^^^^^

For **Halium 7.1 ports** use the following command::

    path/to/halium-install -p ut path/to/rootfs.tar.gz path/to/system.img

For **Halium 9.0 ports**, use this command::

    path/to/halium-install -p ut -s path/to/ubuntu-touch-android9-arm64.tar.gz path/to/[SYSTEM_IMAGE]

where [SYSTEM_IMAGE] will be the file ``android-rootfs.img`` you downloaded and extracted, or alternatively the file ``system.img`` you built yourself.

The script will copy and extract the files to their proper places, then allow you to set the user password for your device (the *phablet* user's password).

.. Note::
    halium-install might fail due to unconfigured bintfmt-support for qemu throwing errors such as 'chroot: failed to run command ‘passwd’: Exec format error'.    To fix this, ``/proc/sys/fs/binfmt_misc/register`` should be updated. `binfmt-manager <https://github.com/mikkeloscar/binfmt-manager>`_ by `@mikkeloscar <https://github.com/mikkeloscar/>`_ can provide quickfix.
