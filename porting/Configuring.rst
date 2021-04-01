Configuring device features
===========================

.. _Apparmor:

AppArmor
--------

.. Tip::
    Applies to:
        * Method 1

        (See :ref:`porting methods <Porting-methods>`.)

`What is AppArmor? <https://wiki.ubuntu.com/AppArmor>`_

Start by downloading the backported `AppArmor patch <https://github.com/ubports/AppArmor-backports-ut>`_ corresponding to your device's kernel version. Your kernel version is specified at the beginning of your kernel defconfig file, i.e. the one you edited in section :ref:`Edit-kernel-config` above. (For more information on backporting, see the :ref:`bluetooth <Bluetooth>` section below.)

You now need to delete your entire BUILDDIR/kernel/VENDOR/MODEL/security/apparmor subdirectory and replace it with the one you downloaded. Then rebuild halium-boot. 

If you get errors when building, resolve them one at a time, modifying your source code as needed. Note that you should only modify the code in the AppArmor subdirectory if at all possible. Modifying code elsewhere will more than likely just compound your problems.

Seek help as needed from one of the sources mentioned in the subsection on :ref:`getting community help <Getting-community-help>`.

.. _Bluetooth:

Bluetooth
---------

.. Tip::
    Applies to:
        * Method 1
        * Method 2 (depending on kernel version)
        * Method 3 (depending on kernel version)

        (See :ref:`porting methods <Porting-methods>`.)

When porting to devices running older kernel versions (mostly 3.x) which were in use with older versions of Ubuntu (mainly pre 16.04), it is necessary to replace the kernel bluetooth stack with a newer one. This is because the newer bluetooth hardware in today's bluetooth peripheral devices often has trouble talking to the older bluetooth drivers. This can be fixed by bringing in driver code from newer Linux kernel versions. The process is called *backporting*.

.. _Backports:

Backporting has been greatly fascilitated by the `Linux Backports Project <https://backports.wiki.kernel.org/index.php/Main_Page>`_ which has existed for some time. This project is aimed at mainline Linux kernels. Consequently, the tools (scripts) therein are not specifically tailored to Ubuntu Touch, and they will therefore abort at some point during the process. However, they are the best option available, and can provide significant help all the same. The method below is based on the use of a version of these scripts which has been specially prepared by Canonical.

Bluetooth backporting steps
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The steps are as follows::

    1. Clone/download the backports scripts.
    2. Clone/download the kernel source from the newer kernel version you wish to backport from.
    3. Run the script to integrate the newer sources into your kernel source tree.
    4. Fix errors that *will* occur when the script is run.
    5. Make necessary changes to your kernel defconfig file.
    6. Rebuild the full halium-boot.img (methods 1 and 2) or just the kernel (method 3)
    7. Reflash, check and debug.

Download the backport scripts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Clone the backport scripts into a directory outside your halium source tree by issuing this command from your home (~) directory::

    git clone https://github.com/ubuntu-phonedations/backports.git -b for-ubuntu backport-scripts

This downloads the backport scripts prepared by Canonical based on the :ref:`original Backports Project <Backports>` mentioned above, and places them in the directory ``~/backport-scripts``. The scripts are specifically written to backport from kernel version 4.2.

Download kernel source to backport from
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Create a directory (outside your halium source tree) for the kernel source from which you will pull the newer drivers::

    mkdir ~/kernel-backports

Now clone the kernel source for the version and branch you need (v4.2 in the example below) into this directory::

    cd ~/kernel-backports
    git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next -b v4.2

.. Note::

    Choosing kernel version 4.2 should be sufficient. Other available version tags can be seen by visiting `the webpage <https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next>`_. Remember that the backporting scripts were set up specifically for version 4.2. Your choice is therefore limited to the different branches in this main kernel version.

Run script and fix errors
^^^^^^^^^^^^^^^^^^^^^^^^^

Go to the backport scripts directory and issue the command::

    ./gentree.py --copy-list ./copy-list --integrate --clean --git-revision v4.2 ~/kernel-backports/linux-next ~/halium/kernel/[VENDOR]/[VERSION??]

<'VERSION' is the wrong term above. What is the correct one?>

Edit kernel defconfig
^^^^^^^^^^^^^^^^^^^^^

Your kernel config file (defconfig) needs to be modified in order for the backported driver and protocol code to be activated.

Start by locating all lines beginning with ``CONFIG_BT_`` and move these to the end of the file. Collecting them there makes the subsequent steps somewhat easier by helping to keep track of the changes you make.

Next, deactivate all that are activated, *i.e.* do not have a leading ``#``, by inserting this leading ``#``. At the same time, for each one add a corresponding one beginning with ``CONFIG_BACKPORT_BT_``, *e.g.*::

    CONFIG_BT=y

becomes::

    #CONFIG_BT=y

and then insert the corresponding line for backports::

    CONFIG_BACKPORT_BT=y

Some additional configuration settings are necessary, depending on your device. You will likely need the settings listed here, but additional ones can also be necessary::

    #Depending options for new stuff from backports
    #CONFIG_CRC16=y
    CONFIG_CRYPTO=y
    CONFIG_CRYPTO_BLKCIPHER=y
    CONFIG_CRYPTO_AES=y
    CONFIG_CRYPTO_CMAC=y
    CONFIG_CRYPTO_HMAC=y
    CONFIG_CRYPTO_ECB=y
    CONFIG_CRYPTO_SHA256=y
    CONFIG_CRYPTO_USER_API=y
    CONFIG_CRYPTO_USER_API_HASH=y
    CONFIG_CRYPTO_USER_API_SKCIPHER=y
    #CONFIG_TTY=y

To find out exactly which settings are necessary for your device, go to your kernel's ``backports/drivers`` directory, locate the Kconfig file and check the necessary settings specified therein. Example::

    config BACKPORT_BT_BCM
        tristate
        depends on !BT_BCM
        depends on FW_LOADER

Here you are instructed to add ``CONFIG_BACKPORT_BT_BCM=y`` while deactivating ``CONFIG_BT_BCM=y`` (by commenting it out, like this ``#CONFIG_BT_BCM=y``) but also add ``CONFIG_FW_LOADER=y``.

Once the above is complete, add the following lines, and then edit as described below::

    CONFIG_BACKPORT_DIR="backports/"
    CONFIG_BACKPORT_INTEGRATE=y
    # CONFIG_BACKPORT_KERNEL_3_5=y #disable for kernel > 3.4
    # CONFIG_BACKPORT_KERNEL_3_6=y #disable for kernel > 3.4
    # CONFIG_BACKPORT_KERNEL_3_7=y #disable for kernel > 3.4
    # CONFIG_BACKPORT_KERNEL_3_8=y #disable for kernel > 3.4
    # CONFIG_BACKPORT_KERNEL_3_9=y #disable for kernel > 3.4
    # CONFIG_BACKPORT_KERNEL_3_10=y #disable for kernel > 3.10
    # CONFIG_BACKPORT_KERNEL_3_11=y #disable for kernel > 3.10
    # CONFIG_BACKPORT_KERNEL_3_12=y #disable for kernel > 3.10
    # CONFIG_BACKPORT_KERNEL_3_13=y #disable for kernel > 3.10
    # CONFIG_BACKPORT_KERNEL_3_14=y #disable for kernel > 3.10
    # CONFIG_BACKPORT_KERNEL_3_15=y #disable for kernel > 3.10
    # CONFIG_BACKPORT_KERNEL_3_16=y #disable for kernel > 3.10
    # CONFIG_BACKPORT_KERNEL_3_17=y #disable for kernel > 3.10
    # CONFIG_BACKPORT_KERNEL_3_18=y #disable for kernel = 3.18
    CONFIG_BACKPORT_KERNEL_3_19=y
    CONFIG_BACKPORT_KERNEL_4_0=y
    CONFIG_BACKPORT_KERNEL_4_1=y
    CONFIG_BACKPORT_KERNEL_4_2=y
    CONFIG_BACKPORT_KERNEL_NAME="Linux"
    CONFIG_BACKPORT_KERNEL_VERSION="v4.2"
    CONFIG_BACKPORT_LINUX=y
    CONFIG_BACKPORT_VERSION="v4.2"
    CONFIG_BACKPORT_BPAUTO_USERSEL_BUILD_ALL=y

As an example, the lines above have been edited to conform with backporting from kernel 4.2 to a device with kernel version 3.18. 

For devices running lower kernel versions enable each line specifying a version above the device's kernel version by removing the leading ``#`` on these lines. Edit the lines ``CONFIG_BACKPORT_KERNEL_VERSION="v4.2"`` and ``CONFIG_BACKPORT_VERSION="v4.2"`` to correspond to the kernel version you are backporting from. (Check the file backports/Kconfig for details)

Build
^^^^^

Return to the root of your BUILDDIR and build::

    mka halium-boot

Build errors are liable to occur and will vary depending on device. Handle them one at a time, :ref:`seeking help <Getting-community-help>` as necessary.

.. _Configuring:

Configuring features with overlay files
---------------------------------------

.. Tip::
    The remainder of this section applies only to:
        * Method 1

        (See :ref:`porting methods <Porting-methods>`.)

Note that as a rule of thumb, the method described below applies if the file you need to edit can be found in the /etc directory (or a subdirectory of this) on your device. You should not attempt to overwrite files located elsewhere using the method described here.

Method
^^^^^^

In your device directory, create a subdirectory named 'ubuntu'. Collect the files you wish to inject into your build in this directory. 

Relevant files are for example (but this list is incomplete):
    * 70-android.rules (the udev rules for your device, see previous section)
    * android.conf (for display scaling, see below)
    * touch.pa (for pulseaudio sound configuration/initialization, see below)

These files are then injected by adding a code block to the file ``device.mk`` in your device directory. For the three files above add the following code::

    ### Ubuntu Touch ###
    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
        $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
        $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa 
    ### End Ubuntu Touch ###

Explanation:

The string before the colon '$(LOCAL_PATH)/ubuntu/70-android.rules' specifies the path to the source file to be injected. The string after the colon 'system/halium/lib/udev/rules.d/70-android.rules' specifies the target location on your device.

.. _Overlay:

The general steps to follow are thus:
    1. Copy the file you wish to modify to the 'ubuntu' directory you have created in your device source tree.
    2. Edit the file as needed.
    3. Add a line to the PRODUCT_COPY_FILES section of your device.mk file as shown above.
    4. Rebuild your system.img and reflash together with the ubports rootfs.

.. Note::

    The target paths for the files mentioned above are *not* randomly chosen. You must use the specified paths. 

.. Note::

    When you specify target path 'system/halium/etc/myfilename' your file 'myfilename' will end up in the '/etc' directory of your device (i.e. without the leading 'system/halium')

.. _Rebuild-system.img:

Rebuild system.img
""""""""""""""""""

When you have made the adjustments you need and prepared your source as described above, you have to rebuild your system.img: ``mka systemimage``. When rebuilding the system image after small changes like these, you need not ``mka clean`` first. However, changes to PRODUCT_PROPERTY_OVERRIDES might not get detected by the build system. Go to your output folder, enter the system folder and delete ``build.prop`` in order to get it regenerated.

Udev rules
^^^^^^^^^^

Extract the file 70-android.rules which you created in the previous section using ``adb pull`` or ``scp`` and copy it to the 'ubuntu' directory of your device source tree. Complete :ref:`steps 3 and 4 above <Overlay>`.

.. _Display-scaling:

Display scaling
^^^^^^^^^^^^^^^

There are two variables that set the content scaling for Unity 8 and Ubuntu Touch applications: ``GRID_UNIT_PX`` and ``QTWEBKIT_DPR``.

There are also other options available that may be useful for you depending on your device's form factor. These are mentioned below and all of these settings are explained in depth in the reference section on :ref:`Display-settings`.

All of these settings are guessed by Unity 8 if none are set. There are many cases, however, where the guess is wrong (for example, very high resolution phone displays will be identified as desktop computers). To manually set a value for these variables, simply edit the file at ``etc/ubuntu-touch-session.d/android.conf`` specifying them. For example, this is the file for the Nexus 7 tablet::

    $ cat /etc/ubuntu-touch-session.d/flo.conf
    GRID_UNIT_PX=18
    QTWEBKIT_DPR=2.0
    NATIVE_ORIENTATION=landscape
    FORM_FACTOR=tablet

The :ref:`Display-settings` section details methods for deriving values for these variables.

Once you have adjusted the ``android.conf`` file to the display settings needed for your device, this file should be incorporated into your build.

Create the file android.conf in your 'ubuntu' directory and enter the settings you determined and tested in the previous section. Complete :ref:`steps 3 and 4 above <Overlay>`, taking care to remember how to correctly :ref:`rebuild the system image <Rebuild-system.img>`.

Sound
^^^^^
The supplied touch.pa file located in the /etc/pulse directory of your device needs adjustment. Extract the file and copy it to your 'ubuntu' directory. 

Locate the line::

    load-module module-droid-discover voice_virtual_stream=true

and replace it with this::

    load-module module-droid-discover rate=48000 quirks=+unload_call_exit

At the end of the file, append this::

    ### Automatically load the audioflinger glue
    .ifexists module-droid-glue-24.so
    load-module module-droid-glue-24
    .endif

Now complete :ref:`steps 3 and 4 above <Overlay>`, taking care to remember the note on how to :ref:`Rebuild-system.img`.

GPS
^^^

*Work in progress*

Camera
^^^^^^

*Work in progress*

Video
^^^^^

*Work in progress*
