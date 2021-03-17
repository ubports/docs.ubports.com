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

Build
^^^^^

Halium will use the mkbootimg tool for creating the boot image. In most cases it is not on the local harddisk, so it can be built by issuing::

   mka mkbootimg

Now build the ``halium-boot.img`` using the commands::

   export USE_HOST_LEX=yes
   mka halium-boot

.. Note::

    If you prefer ``make`` instead of ``mka`` you should set ``-j[num]`` for parallel building, which reduces build time. Replace ``[num]`` with the number of threads in your system plus 2.

.. _System:

Building the system image (system.img)
--------------------------------------

.. Tip::
    Applies to:
        * Method 1

        (See :ref:`porting methods <Porting-methods>`.)


*Work in progress*

.. _Kernel:

Building the kernel
-------------------

.. Tip::
    Applies to:
        * Method 3

        (See :ref:`porting methods <Porting-methods>`.)


*Work in progress*