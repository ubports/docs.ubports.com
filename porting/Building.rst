Building
========

*Work in progress*

A Halium 9.0 - GSI port consists of the following parts:
    
    * The boot image, obtained by building the full halium-boot.img, or by compiling only the kernel and assembling the boot image based on this.
    * The system image, either a device specific one or the GSI (see :ref:`explanation of GSI <What-is-a-GSI>`)
    * The UBports - Ubuntu Touch - root file system (hereafter referred to as the *rootfs*)

Which of the above you need to build for your port depends on the porting method you have selected, as described in previous sections and pointed out below.

Building the boot image (halium-boot.img)
-----------------------------------------

.. Tip::
    Applies to:
        * Method 1
        * Method 2

        (See :ref:`porting methods <Porting-methods>`.)

*Work in progress*


Initializing the build environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

First you need to initialize the environment using the envsetup.sh tool included in your source tree. Enter your BUILDDIR and issue the command::

   source build/envsetup.sh

The output will look like this::

    including device/lge/bullhead/vendorsetup.sh
    including vendor/cm/vendorsetup.sh
    including sdk/bash_completion/adb.bash
    including vendor/cm/bash_completion/git.bash
    including vendor/cm/bash_completion/repo.bash

The ``breakfast`` command is used to set up the build environment for a specific device. From the root of your BUILDDIR run the following::

    breakfast [codename]

Breakfast will attempt to find your device, set up all of the environment variables needed for building, and give you a summary at the end.

Modify the kernel configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The default LineageOS/Halium kernel configuration file needs modifications as Ubuntu Touch requires a slightly different kernel config than Halium, including enabling Apparmor. A script that does this job is provided in your Halium source tree: ``BUILDDIR/halium/halium-boot/check-kernel-config``. 

Locate your configuration file. It should be at ``arch/arm/configs/<CONFIG>`` or ``arch/arm64/configs/<CONFIG>`` depending on the architecture of your device. If you have trouble finding it, run ``grep "TARGET_KERNEL_CONFIG" device/<VENDOR>/<CODENAME>/BoardConfig.mk`` to determine the location.

Then, from the root of your BUILDDIR, run::

    ./halium/halium-boot/check-kernel-config path/to/my/defconfig -w

You may have to do this twice. It will likely fix things both times. Then, run the script without the ``-w`` flag to see if there are any more errors. If there are, fix them manually. Once finished, run the script without the ``-w`` flag one more time to make sure everything is correct.

Include your device in fixup-mountpoints
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Fixup-mountpoints replaces the aliases of block device nodes in ``/dev/block/by-name`` with their literal nodes under ``/dev/block``. This prevents issues caused by ``by-name`` not being populated by systemd.

First check if the codename of your device is already included in the ``<BUILDDIR>/halium/hybris-boot/fixup-mountpoints`` script.

If it's not already included, you will need to add it. Your device should be running LineageOS or another ROM where you can get root access over ADB.

1. Find the fstab file for your device. For my Moto G5 Plus, this was ``fstab.qcom`` in ``device/motorola/potter/rootdir/etc``
2. Enable adb root access
3. Create the skeleton for your device in fixup-mountpoints, right befHalium-boot's ``mount`` is not aware of SELinux contexts. If your device's file system table (``fstab`` file) includes any contexts, the partition that they are on will fail to mount and your port will not work correctly.

Start by locating your fstab file. This will commonly be inside ``<BUILDDIR>/device/MANUFACTUER/CODENAME/rootdir/etc`` (e.g. for the Samsung S7 - codename *herolte*: ``halium/device/samsung/herolte/rootdir/etc``) and it is named either ``fstab.qcom`` or ``fstab.devicename``. Open the file for editing.

If the type of the 'data' or 'userdata' partition is ``f2fs``, you need to change it to ``ext4``.

With the file open, remove all ``context=`` options from all block devices in the file. The option will start at the text ``context=`` and end at the comma following it.

For example, the line ``ro,nosuid,nodev,context=u:object_r:firmware_file:s0,barrier=0`` should become ``ro,nosuid,nodev,barrier=0``

Save and exit.

Build
^^^^^

Halium will use the mkbootimg tool for creating the boot image. In most cases it is not on the local harddisk, so it can be built by issuing::

   mka mkbootimg

Now build the ``halium-boot.img`` using the commands::

   export USE_HOST_LEX=yes
   mka halium-boot

.. note::

    If you use ``make`` and not ``mka`` it is recommended to set ``-j[num]`` to do parallel building, which reduces build time. Replace ``[num]`` with the number of threads in your system plus 2.

Building the system image (system.img)
--------------------------------------

.. Tip::
    Applies to:
        * Method 1

        (See :ref:`porting methods <Porting-methods>`.)


*Work in progress*

Building the kernel
-------------------

.. Tip::
    Applies to:
        * Method 3

        (See :ref:`porting methods <Porting-methods>`.)


*Work in progress*