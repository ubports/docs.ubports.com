Building the images
===================

A Halium 7.1 - Ubuntu Touch port consists of the following parts:
    
    * The boot image, halium-boot.img
    * The system image, system.img
    * The UBports - Ubuntu Touch - root file system (hereafter referred to as the *rootfs*)

The boot image contains the Linux kernel, the heart of the operating system, which needs to be built from source code for each specific device. The system image is also specific to the device and is similarly built from source code. The rootfs, on the other hand, is maintained by the UBports project and is downloadable in the form of a prebuilt .tar.gz bundle which is then installed together with the system.img.

.. _Build-the-Halium-system-image:

Build the Halium system image
-----------------------------

First you need to build the Halium system image according to the Halium porting guide. This is not a build you need to install. It is simply a preparation for the actual build for your port. In other words it a test to confirm that you have set up a viable source tree that can be used to do the final build.

Head over to `the Halium porting guide <http://docs.halium.org/en/latest/porting/first-steps.html#set-up-your-build-device>`_ and follow the steps described there remembering that you are building Halium 7.1.

Once the system image has been successfully built (without errors), you then know that your source tree is correctly set up to proceed. You then return here and proceed.

.. _Build-the-images-for-Ubuntu-Touch:

Build the images for Ubuntu Touch
---------------------------------

Fix mount points
^^^^^^^^^^^^^^^^

Halium-boot's ``mount`` is not aware of SELinux contexts. If your device's file system table (``fstab`` file) includes any contexts, the partition that they are on will fail to mount and your port will not work correctly.

Start by locating your fstab file. This will commonly be inside ``BUILDDIR/device/MANUFACTUER/CODENAME/rootdir/etc`` (e.g. for the Samsung S7 - codename *herolte*: ``halium/device/samsung/herolte/rootdir/etc``) and it is named either ``fstab.qcom`` or ``fstab.devicename``. Open the file for editing.

If the type of the 'data' or 'userdata' partition is ``f2fs``, you need to change it to ``ext4``.

With the file open, remove all ``context=`` options from all block devices in the file. The option will start at the text ``context=`` and end at the comma following it.

For example, the line ``ro,nosuid,nodev,context=u:object_r:firmware_file:s0,barrier=0`` should become ``ro,nosuid,nodev,barrier=0``

Save and exit.

.. _Edit-kernel-config:

Edit kernel config
^^^^^^^^^^^^^^^^^^

Ubuntu Touch requires a slightly different kernel config than Halium, including enabling Apparmor. This is done using a script, ``check-kernel-config``, which is included in the halium-boot repository. Simply run it on your config as follows::

    ./halium/halium-boot/check-kernel-config path/to/my/defconfig -w

You may have to do this twice. It will likely fix things both times. Then, run the script without the ``-w`` flag to see if there are any more errors. If there are, fix them manually. Once finished, run the script without the ``-w`` flag one more time to make sure everything is correct.

.. _Ubuntu-Touch-requires-setting-console_tty0:

Ubuntu Touch requires setting console=tty0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The halium-boot initramfs expects ``/dev/console`` to be a console device and will not start init if it is not available. This is commonly the case on recent devices, because they either have UART disabled or ``console=`` is not specified (null) by default. This can be fixed by supplying ``console=tty0`` as the last argument in the kernel cmdline. To achieve this, proceed as follows:

It should be done in the makefile named ``BoardConfig.mk`` (or ``BoardConfigCommon.mk``) located in the root directory of your device tree, e.g. ``~/halium/device/<vendor>/<model_codename>/BoardConfig.mk``

Add the following line::

    BOARD_KERNEL_CMDLINE += console=tty0

If your makefile already includes a line beginning with ``BOARD_KERNEL_CMDLINE``, you may add it just below that to keep things tidy.

In rare cases the bootloader overwrites the kernel command line argument, rendering the setting above useless. This is the case for the Google Pixel 3a (sargo). To deal with this issue, replicate `this commit <https://github.com/fredldotme/android_kernel_google_bonito/commit/d0741dded3907f2cf4ecdc02bfcb74fc252763ff>`_. 

Build halium-boot.img and system.img
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You are now ready to build the two image files to incorporate the changes you have made. These changes have an impact on both the boot image and the system image, so you will need to rebuild both. The procedure is a simple and straight forward one. Run the sequence of commands below, where BUILDDIR is the root of your halium source tree (e.g. ``~/halium``):

1. ``cd BUILDDIR``
2. ``source build/envsetup.sh``
3. ``breakfast devicename``
4. ``mka halium-boot``
5. ``mka systemimage``

Troubleshooting the build process
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Refer to the `Halium porting guide <http://docs.halium.org/en/latest/porting/build-sources.html#documented-errors>`_