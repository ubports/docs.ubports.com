3   Halium 7.1 Porting
======================


3.1 Introduction
----------------

A Halium 7.1 - Ubuntu Touch port consists of the following parts:
    
    * The boot image, halium-boot.img
    * The system image, system.img
    * The UBports - Ubuntu Touch - root file system (hereafter referred to as the *rootfs*)

The boot image contains the Linux kernel, the heart of the operative system, which needs to be built from source code for each specific device. The system image is also specific to the device and is similarly built from source code. The rootfs, on the other hand, is maintained by the UBports Foundation and is downloadable in the form of a prebuilt .tar.gz bundle which is then installed together with the system.img.

3.2 Build the Halium system image
---------------------------------

First you need to build the Halium system image according to the the Halium porting guide. This is not a build you will install. It is simply a preparation for the actual build for your port. In other words it a test to confirm that you have set up a viable source tree that can be used to do the final build.

Head over to `the Halium porting guide <http://docs.halium.org/en/latest/porting/first-steps.html>`_ and follow the steps described there remembering that you are building Halium 7.1.

Once the system image has been successfully built (without errors), you then know that your source tree is correctly set up to proceed. You then return here and proceed with subsection 3.2 below.

3.2 Build halium-boot.img and system.img for Ubuntu Touch
---------------------------------------------------------

3.2.1   Fix mounts
^^^^^^^^^^^^^^^^^^

Halium-boot's ``mount`` is not aware of SELinux contexts. If your device's ``fstab`` file (file system table) includes any contexts, the partition that they are on will fail to mount and your port will not work correctly.

Start by locating your fstab file. This will commonly be inside ``BUILDDIR/device/MANUFACTUER/CODENAME/rootdir/etc`` (e.g. for the Samsung S7 - codename *herolte*: ``halium/device/samsung/herolte/rootdir/etc``) and it is named either ``fstab.qcom`` or ``fstab.devicename``. Open the file for editing.

If the type of the 'data' or 'userdata' partition is ``f2fs``, you need to change it to ``ext4``.

With the file open, remove all ``context=`` options from all block devices in the file. The option will start at the text ``context=`` and end at the comma following it.

For example, the line ``ro,nosuid,nodev,context=u:object_r:firmware_file:s0,barrier=0`` should become ``ro,nosuid,nodev,barrier=0``

Save and exit.

3.2.2   Edit kernel config
^^^^^^^^^^^^^^^^^^^^^^^^^^

Ubuntu Touch requires a slightly different kernel config than Halium, including enabling Apparmor. This is done using a script, ``check-kernel-config``, which is included in the halium-boot repository. Simply run it on your config as follows::

    ./halium/halium-boot/check-kernel-config path/to/my/defconfig -w

You may have to do this twice. It will likely fix things both times. Then, run the script without the ``-w`` flag to see if there are any more errors. If there are, fix them manually. Once finished, run the script without the ``-w`` flag one more time to make sure everything is correct.

3.2.3   Build halium-boot.img and system.img
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You are now ready to build the two image files to incorporate the changes you have made. These changes have an impact on both the boot image and the system image, so you will need to rebuild both. The procedure is a simple and straight forward one. Run the sequence of commands below, where BUILDDIR is the root of your halium source tree (e.g. ``~/halium``):

1. ``cd BUILDDIR``
2. ``source build/envsetup.sh``
3. ``breakfast devicename``
4. ``mka halium-boot``
5. ``mka systemimage``

3.3 Install and debug initial boot
----------------------------------

.. warning::

    These steps  will wipe **all** of the data on your device. If there is anything that you would like to keep, ensure it is backed up and copied to a safe location before continuing.

Now that you have built halium-boot, you are ready to install Ubuntu Touch on your device.

In order to install Ubuntu Touch, you will need a recovery with Busybox, such as TWRP, installed on your phone. If you have not done so yet, refer to section `2.4 Install TWRP recovery <2.4 Install TWRP recovery>`_ and install it now. 

You will also need to ensure the ``/data`` partition is formatted with ``ext4`` and does not have any encryption on it. Boot into the recovery image you just installed, check and adjust as necessary.

3.3.1   Install halium-boot
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The halium-boot image has to be installed before installing a system image. Reboot your phone into fastboot mode, then do the following from your Halium tree::

    cout
    fastboot flash boot halium-boot.img

If you have trouble accessing your device in fastboot mode, but are able to access it in TWRP recovery mode using adb, then boot into recovery mode and try the following alternative method::

    cout
    adb push halium-boot.img /sdcard

On your device, choose *Install* in the TWRP menu, navigate to the sdcard directory, choose *Image*, select your image file, select *Boot* and swipe to flash.
    
.. Note::
    Samsung devices: Flashing halium-boot.img on Samsung devices is done using the Heimdall flashing utility (on Linux) or the Odin utility (on Windows) after first bringing the device into 'download mode'. See more information on these utilities `here <https://www.getdroidtips.com/download-heimdall-flash-tool-to-flash-firmware-on-samsung-galaxy-devices/>`_ Follow the instructions for the utility you choose, including the specific flashing command for flashing the boot partition. Install system.img and rootfs (below) with the device in recovery mode.

3.3.2   Download the rootfs
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Next you need to download the appropriate rootfs for your device. At the moment there are two available versions, a 32 bit and a 64 bit one. 

Simply download ``ubports-touch.rootfs-xenial-armhf.tar.gz`` (32 bit) from `our CI server <https://ci.ubports.com/job/xenial-rootfs-armhf/>`__. If you have a 64-bit ARM (aarch64) device, this same rootfs should work for you. You can also try the 64 bit version keeping in mind that you may possibly run into more issues with this owing to the current state of development of this rootfs. (If you have an x86 device, let us know. We do not have a rootfs available for these yet.)

3.3.3   Install system.img and rootfs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Clone or download the `halium-install repository <https://gitlab.com/JBBgameich/halium-install>`_. This repository contains tools that can be used to install a Halium system image and distribution rootfs.
Reboot your device to recovery (e.g. TWRP), to get adb access again. Now use the ``halium-install`` script to install Ubuntu Touch on your device::

    path/to/halium-install -p ut path/to/rootfs.tar.gz path/to/system.img

The script will copy and extract the files to their proper places, then allow you to set the user password for your device (the phablet user's password).

3.3.4   Get SSH access
^^^^^^^^^^^^^^^^^^^^^^

When your device boots, it will likely stay at the bootloader screen. However, you should also get a new network connection on the computer you have it plugged in to. You will need to use this to debug the system.

To confirm that your device has booted correctly, on your host computer, run ``dmesg -w`` and watch for "GNU/Linux device" in the output. If you instead get something similar to "Halium initrd Failed to boot", please get in contact with us so we can find out why.

Similar to the Halium reference rootfs, you should `set your computer's IP on the newly connected RNDIS interface <http://docs.halium.org/en/latest/porting/debug-build/logging-in.html>`__ to ``10.15.19.100`` if you don't get one automatically. Then, run the following to access your device::

    ssh phablet@10.15.19.82

The password will be the one that you set while running halium-install.

3.4 Bring up Unity 8 (the graphical UI)
---------------------------------------



3.5 Configure and enable remaining device functionality
-------------------------------------------------------



Draft:
------

- Subsection 1: Introduction
    * Explain the main parts that need to be built, why they are required and how they relate to each other

- Subsection 2: Build Halium according to Halium guide. 
    * Explain this next step (building the Halium system image, including why the first build is not actually for being installed on the device.
    * Redirect to Halium porting guide for details of 
        + acquiring the necessary source, 
        + setting up and executing the initial build
    (Note: In the future, the Halium guide should also be reworked and updated.)

- Subsection 3: Modify source and build halium-boot.img and system.img for UT.

- Subsection 4: Installation and debugging the initial boot.
    * This section should cover only the most common issues (but include a link to further resources in section 5)

- Subsection 5: Bringing up Unity 8 (the graphical user interface)

- Sucsection 6: Configuring the device to enable remaining functionality

