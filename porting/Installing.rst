Installing
==========

*Work in progress*

With the necessary compontents built, you are now ready to install them on your device.

Refer to the section (or sections) below as they apply to your porting method. In brief:

    * **Method 1** requires installing the boot image, system image and rootfs, of which you have built the two first.
    * **Method 2** requires installing the boot image you have built together with the downloaded GSI and rootfs.
    * **Method 3** requires taking the kernel you have built and assembling a complete boot image based on this, then installing the downloaded GSI and rootfs.

In order to install Ubuntu Touch, you need a recovery image with Busybox, such as TWRP, installed on your phone. If you have not done so yet, refer to section :ref:`Install-TWRP-recovery` and install it now. 

You will also need to ensure the ``/data`` partition is formatted with ``ext4`` and does not have any encryption on it. Boot into the recovery image you just installed, check and adjust as necessary.

Flashing halium-boot.img
------------------------

.. Tip::
    Applies to:
        * Method 1
        * Method 2

        (See :ref:`porting methods <Porting-methods>`.)

To install halium-boot, reboot your phone into fastboot mode. Then do the following from the root of your BUILDDIR::

    cout
    fastboot flash boot halium-boot.img

If you have trouble accessing your device in fastboot mode, but are able to access it in TWRP recovery mode using adb, then boot into recovery mode and try the following alternative method::

    cout
    adb push halium-boot.img /sdcard

On your device, choose *Install* in the TWRP menu, navigate to the sdcard directory, choose *Image*, select your image file, select *Boot* and swipe to flash.
    
.. Note::
    Samsung devices: Flashing halium-boot.img on Samsung devices is done using the Heimdall flashing utility (on Linux) or the Odin utility (on Windows) after first bringing the device into 'download mode'. See more information on these utilities `here <http://docs.halium.org/en/latest/porting/install-build/reference-rootfs.html#install-hybris-boot-img-on-samsung-devices>`_. Follow the instructions for the utility you choose, including the specific flashing command for flashing the boot partition. Install system.img and rootfs (below) with the device in recovery mode. 

Installating a kernel-only build
--------------------------------

.. Tip::
    Applies to:
        * Method 3

        (See :ref:`porting methods <Porting-methods>`.)

Installing system image and rootfs
----------------------------------

.. Tip::
    Applies to:
        * Method 1
        * Method 2
        * Method 3

        (See :ref:`porting methods <Porting-methods>`.)

Download the appropriate rootfs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Start by downloading the appropriate rootfs for your device. You need a rootfs corresponding to your device's architecture and the Halium version you have built. At the moment there are two available versions for Halium 7.1, an armhf (32 bit) version and an arm64 (64 bit) version. For Halium 9.0 there is only an arm64 rootfs available. Follow the appropriate link below to download the one you need.

    * Halium 7.1, armhf (32 bit): `ubports-touch.rootfs-xenial-armhf.tar.gz <https://ci.ubports.com/job/xenial-rootfs-armhf/>`_
    * Halium 7.1, arm64 (64 bit): `ubuntu-touch-hybris-xenial-arm64-rootfs.tar.gz <https://ci.ubports.com/job/xenial-hybris-rootfs-arm64/>`_
    * Halium 9.0, armhf (32 bit): `ubuntu-touch-android9-armhf.tar.gz <https://ci.ubports.com/job/xenial-hybris-android9-rootfs-armhf/>`_
    * Halium 9.0, arm64 (64 bit): `ubuntu-touch-android9-arm64.tar.gz <https://ci.ubports.com/job/xenial-hybris-android9-rootfs-arm64/>`_

Download the GSI
^^^^^^^^^^^^^^^^
This step is only relevant if you have not built a device-specific system image yourself, *i.e.* for porting methods 2 and 3.

Download `the Halium 9 LXC container image (GSI) <https://ci.ubports.com/job/UBportsCommunityPortsJenkinsCI/job/ubports%252Fcommunity-ports%252Fjenkins-ci%252Fgeneric_arm64/job/main/>`_.

Extract the downloaded file and locate the file ``android_rootfs.img`` in the directory ``system/var/lib/lxc/android``. This is the GSI file you will be transferring to the device.

Download the halium-install script
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Clone or download the `halium-install repository <https://gitlab.com/JBBgameich/halium-install>`_. This repository contains tools that can be used to install a Halium system image and distribution rootfs.
Reboot your device to recovery (e.g. TWRP), to get adb access again. Now use the ``halium-install`` script to install Ubuntu Touch on your device.

Perform the installation (methods 1 and 2)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For **Halium 7.1 ports (method 1)** use the following command::

    path/to/halium-install -p ut path/to/rootfs.tar.gz path/to/system.img

For **Halium 9.0 ports following method 1 or 2**, use the following command::

    path/to/halium-install -p ut -s path/to/ubuntu-touch-android9-arm64.tar.gz path/to/android-rootfs.img

In both cases, the script will copy and extract the files to their proper places, then allow you to set the user password for your device (the *phablet* user's password).

Perform the installation (method 3)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

*Work in progress*