Building
========

*Work in progress*

A Halium 9.0 - GSI port consists of the following parts:
    
    * The boot image, obtained by building the full halium-boot.img, or by compiling only the kernel and assembling the boot image based on this.
    * The system image, either a device specific one or the GSI (see :ref:`explanation of GSI <What-is-a-GSI>`)
    * The UBports - Ubuntu Touch - root file system (hereafter referred to as the *rootfs*)

Which of the above you need to build for your port depends on the porting method you have selected, as described in previous sections and pointed out below.

.. _Boot-img:

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

Ubuntu Touch requires setting console=tty0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The halium-boot initramfs expects ``/dev/console`` to be a console device and will not start init if it is not available. This is commonly the case on recent devices, because they either have UART disabled or ``console=`` is not specified (null) by default. This can be fixed by supplying ``console=tty0`` as the last argument in the kernel cmdline. To achieve this, proceed as follows:

It should be done in the makefile named ``BoardConfig.mk`` (or ``BoardConfigCommon.mk``) located in the root directory of your device tree, e.g. ``~/halium/device/<vendor>/<model_codename>/BoardConfig.mk``

Add the following line::

    BOARD_KERNEL_CMDLINE += console=tty0

If your makefile already includes a line beginning with ``BOARD_KERNEL_CMDLINE``, you may add it just below that to keep things tidy.

.. Note::
    The above method, although the preferred one, may not work for some Samsung devices. The result will be that you cannot get access to the device through ssh after boot, and Unity 8 will not be able to start. If you run into this problem, you can specify the setting in your device's kernel config file instead. Add the following lines::

        CONFIG_CMDLINE="console=tty0"
        CONFIG_CMDLINE_EXTEND=y

.. Note::
    In rare cases the bootloader overwrites the kernel command line argument, rendering the setting above useless. This is the case for the Google Pixel 3a (sargo). To deal with this issue, replicate `this commit <https://github.com/fredldotme/android_kernel_google_bonito/commit/d0741dded3907f2cf4ecdc02bfcb74fc252763ff>`_. 

Build
^^^^^

Halium will use the mkbootimg tool for creating the boot image. In most cases it is not on the local harddisk, so it can be built by issuing::

   mka mkbootimg

Now build the ``halium-boot.img`` using the commands::

   export USE_HOST_LEX=yes
   mka halium-boot

.. Note::

    If you prefer ``make`` instead of ``mka`` you should set ``-j[num]`` for parallel building, which reduces build time. Replace ``[num]`` with the number of threads in your system plus 2.

Build errors
^^^^^^^^^^^^

There are a number of known build errors which you might encounter, depending first of all upon how rigorous you have been in following the steps outlined, but you may also run into unforeseen issues. If your build fails at first, make sure you have done exactly as described, then go through the list of known errors in `the Halium guide <https://docs.halium.org/en/latest/porting/common-kernel-build-errors.html#common-kernel-build-errors>`_. 

I your particular error is not listed, you will need to do some research of your own. If you end up here, know that there is a community of porters, developers and enthusiasts who might be able to help you. Refer to :ref:`Getting-community-help`.

.. _System:

Building the system image (system.img)
--------------------------------------

.. Tip::
    Applies to:
        * Method 1

        (See :ref:`porting methods <Porting-methods>`.)


Once you have successfully built halium-boot.img you can proceed to directly to building system.img::

    mka systemimage

Likelier than not, you will run into one or more errors along the way when building the system image. A number of possible errors are documented in `the Halium guide <https://docs.halium.org/en/latest/porting/common-system-build-errors.html#common-system-build-errors>`_. If yours is not listed, :ref:`seek community help <Getting-community-help>`.

.. _Kernel:

Building the kernel
-------------------

.. Tip::
    Applies to:
        * Method 3

        (See :ref:`porting methods <Porting-methods>`.)


*Work in progress*