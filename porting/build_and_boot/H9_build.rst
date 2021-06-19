Halium-9.0 - Building
=====================

When doing a Halium 9.0 port, you first need to build halium-boot.img. This boot image can then either be combined with the GSI, or you can build your own, device-specific system.img as well.

Building the boot image (halium-boot.img)
-----------------------------------------

Initializing the build environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

First you need to initialize the environment using the envsetup.sh tool included in your source tree. Enter your BUILDDIR and issue the command::

   source build/envsetup.sh

The output should resemble this::

    including device/lge/bullhead/vendorsetup.sh
    including vendor/cm/vendorsetup.sh
    including sdk/bash_completion/adb.bash
    including vendor/cm/bash_completion/git.bash
    including vendor/cm/bash_completion/repo.bash

The ``breakfast`` command is used to set up the build environment for a specific device. From the root of your BUILDDIR run the following command, replacing [CODENAME] with your device's specific codename::

    breakfast [CODENAME]

Breakfast will attempt to find your device, set up all of the environment variables needed for building, and give you a summary at the end.

.. _H9_edit-kernel-config:

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

Build errors
^^^^^^^^^^^^

There are a number of known build errors which you might encounter, depending first of all upon how rigorous you have been in following the steps outlined, but you may also run into unforeseen issues. If your build fails at first, make sure you have done exactly as described, then go through the list of `known errors in the Halium guide <https://docs.halium.org/en/latest/porting/common-kernel-build-errors.html#common-kernel-build-errors>`_. 

I your particular error is not listed, you will need to do some research of your own. If you end up here, know that there is a community of porters, developers and enthusiasts who might be able to help you. Refer to :ref:`Getting-community-help`.

.. _H9_system:

Building the system image (system.img)
--------------------------------------

Skip this step if you are going to base your port on the GSI. 

If on the other hand your goal is to build both halium-boot.img and a device specific system.img, you can now proceed directly to building the latter::

    mka systemimage

Likelier than not, you will run into one or more errors along the way when building the system image. A number of possible errors are documented in `the Halium guide <https://docs.halium.org/en/latest/porting/common-system-build-errors.html#common-system-build-errors>`_. If yours is not listed, :ref:`seek community help <Getting-community-help>`.