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

Start by downloading the backported `AppArmor patch <https://github.com/ubports/AppArmor-backports-ut>`_ corresponding to your device's kernel version. Your kernel version is specified at the beginning of your kernel defconfig file, i.e. the one you edited in section :ref:`H7_edit-kernel-config` above. (For more information on backporting, see the :ref:`bluetooth <Bluetooth>` section below.)

You now need to delete your entire BUILDDIR/kernel/VENDOR/MODEL/security/apparmor subdirectory and replace it with the one you downloaded. Then rebuild halium-boot. 

If you get errors when building, resolve them one at a time, modifying your source code as needed. Note that you should only modify the code in the AppArmor subdirectory if at all possible. Modifying code elsewhere will more than likely just compound your problems.

Seek help as needed from one of the sources mentioned in the subsection on :ref:`getting community help <Getting-community-help>`.

.. _Configuring:

Configuring features with overlay files
---------------------------------------

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

.. _Bluetooth:

Bluetooth backporting to older kernel versions
----------------------------------------------

When porting to devices running older kernel versions (mainly version 3.x found in Android 7/ Halium-7.1 devices), it is necessary to replace the kernel bluetooth stack with a newer one. This is because the newer bluetooth hardware in today's bluetooth peripheral devices often has trouble talking to the older bluetooth drivers. This can be fixed by bringing in driver code from newer Linux kernel versions. The process is called *backporting*.

.. _Backports:

Backporting has been greatly facilitated by the `Linux Backports Project <https://backports.wiki.kernel.org/index.php/Main_Page>`_ which has existed for some time. This project is aimed at mainline Linux kernels and the tools (scripts) therein are not specifically tailored to Ubuntu Touch. They will consequently abort at some point during the process. However, they are the best option available, and can provide significant help all the same. The method below is based on the use of a version of these scripts which has been specially prepared by Canonical.

.. Note::

    Although there are `other kernel versions besides v4.2 available <https://www.kernel.org/>`_, the backports script is specifically tailored to backporting from version 4.2 and thus effectively limits you to this option.

Bluetooth backporting steps
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The steps are as follows:

#.  Record bluetooth driver and settings
#.  Download backports script
#.  Download 4.2 kernel source
#.  Run backports script and fix errors
#.  Apply security patch
#.  Apply new settings
#.  Build and flash halium-boot.img
#.  Build and flash system.img

These steps will bring in bluetooth driver source from the mainline 4.2 kernel and place it in a directory named ``backports`` in your device's kernel source tree. It will also modify Makefiles and Kconfigs as necessary, thereby disabling the original ``drivers/bluetooth`` directory of your kernel source. The mainline kernel may not contain all bluetooth drivers required for the device being ported. For this reason it is important to make sure to first record all necessary drivers, as any ones missing in the mainline kernel will have to be migrated from their original location (``drivers/bluetooth``) into the ``backports/drivers/bluetooth`` directory as described :ref:`later in this section <Missing-drivers>` before rebuilding halium-boot.img.

.. _BT-driver:

Record bluetooth driver and settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

By the time you reach this point in the porting process, you will have completed building halium-boot (probably a number of times). Your kernel defconfig will contain bluetooth settings including one that designates the driver used by your device. These must be recorded before proceeding.

The experienced developer will likely be able to determine the relevant settings manually by searching through the defconfig file. Many of them will appear next to each other in one place in the file. Some may be spread elsewhere making them difficult to locate. When searching manually, help can be found by consulting the `Kconfig` files in relevant subdirectories of your kernel source tree. 

If you do not have extensive experience, use the ``menuconfig`` tool instead, taking care to use it ONLY for reference, *i.e.* without making any changes.

.. Important::

    Modifications done with ``menuconfig`` will not affect your kernel defconfig file, but may still corrupt your build.

After completing a build of halium-boot.img::

    cd out/target/product/[DEVICE]/obj/KERN_OBJ
    ARCH=arm64 make menuconfig

(If your device is armhf, use ``ARCH=arm`` instead.)

Navigate to the bluetooth drivers submenu and note down all activated settings and what they do. Also note which other settings they depend on (found under Help).

Example:
""""""""

    For the Samsung Galaxy S7 (herolte) the original defconfig file contains a number of CONFIG_BT settings, none of which actually designate the bluetooth driver used by this device. The setting for the driver itself is CONFIG_BCM4359=y. This was not one of the drivers brought in by the backporting steps below. It therefore had to be :ref:`added afterwards <Missing-drivers>`.

Download backports script
^^^^^^^^^^^^^^^^^^^^^^^^^

Clone the backports scripts into a directory outside your halium source tree by issuing this command from your home (~) directory::

    git clone https://github.com/ubuntu-phonedations/backports.git -b for-ubuntu backport-scripts

This downloads the backports scripts prepared by Canonical based on the `Backports Project <https://backports.wiki.kernel.org/index.php/Main_Page>`_ mentioned above, and places them in the directory ``~/backport-scripts``. The scripts are specifically written to backport from kernel version 4.2.

Download 4.2 kernel sources
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Create a directory (outside your halium source tree) for the kernel source from which you will pull the newer drivers::

    mkdir ~/kernel-backports

Now clone the kernel source for v4.2::

    cd ~/kernel-backports
    git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next -b v4.2

Run backports script and fix errors
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Navigate to your backports scripts directory and issue the command below (using Python2 as shown)::

    python2 ./gentree.py --copy-list ./copy-list --integrate --clean --git-revision v4.2 ~/kernel-backports/linux-next ~/halium/kernel/[VENDOR]/[MODEL_NAME]

It is to be expected that there are errors during this step. You will then have to determine the cause, fix it and retry. The last error message concerns the Makefile and includes info about having generated a file named ``Makefile.rej``, this means you will find information in this file about changes that did not complete successfully, but which you can apply yourself. These need to be completed before proceeding with the build.

Apply security patch
^^^^^^^^^^^^^^^^^^^^

An additional `generic security patch <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/patch/?id=8a7b081660857a80c3efc463b3da790c4fa0c801>`_ needs to be applied. 

Apply new settings
^^^^^^^^^^^^^^^^^^

Your kernel config file (defconfig) needs to be modified in order for the backported driver and protocol code to be activated.

Start by locating all lines beginning with ``CONFIG_BT_`` and move these to the end of the file. Collecting them there makes the subsequent steps somewhat easier by helping to keep track of the changes you make.

Next, deactivate all that are activated, *i.e.* do not have a leading ``#``, by inserting this leading ``#``. At the same time, for each one, add a corresponding one beginning with ``CONFIG_BACKPORT_BT_``, *e.g.*::

    CONFIG_BT=y

becomes::

    #CONFIG_BT=y

and then insert the corresponding line for backports::

    CONFIG_BACKPORT_BT=y

Now add these settings::

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

.. _Missing-drivers:

At this point, check for any remaining settings you :ref:`recorded from your original defconfig <BT-driver>`, which were dependent upon ``CONFIG_BT=y`` and have not been replaced by a corresponding ``CONFIG_BACKPORT_BT_XXXX=y`` setting, making sure not to forget your device's bluetooth driver. Such settings will no longer have any effect and must be pulled into the build in the following manner:

The corresponding source file(s) will have to be migrated from their original location to the corresponding location under ``backports/drivers/bluetooth/``. The files ``Makefile`` and ``Kconfig`` need to be edited to include this missing setting or else they will not be built. Check the corresponding files in the original location for the necessary settings.

Once the above is complete, add the following lines and edit as necessary, following the directions below::

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

As an example, the lines above have been edited to conform with backporting from kernel 4.2 to a device with kernel version 3.18. For devices running lower kernel versions enable each line specifying a version above the device's kernel version by removing the leading ``#`` on these lines. 

You are now ready to build.

Build and flash halium-boot.img
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Return to the root of your BUILDDIR and build::

    mka halium-boot

Build errors may occur and will vary depending on device. Handle them one at a time, :ref:`seeking help <Getting-community-help>` as necessary.

After building and flashing halium-boot, check the output of ``dmesg`` on the device to see that bluetooth has been enabled::

    dmesg | grep tooth

Your output should resemble the following (from the Samsung Galaxy S7)::

    phablet@ubuntu-phablet:~$ dmesg | grep tooth
    [    2.219667] lucky-audio sound: moon-aif3 <-> lucky-ext bluetooth sco mapping ok
    [    2.252591] Bluetooth: RFCOMM TTY layer initialized
    [    2.252601] Bluetooth: RFCOMM socket layer initialized
    [    2.252613] Bluetooth: RFCOMM ver 1.11
    [    2.252626] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
    [    2.252631] Bluetooth: BNEP filters: protocol multicast
    [    2.252639] Bluetooth: BNEP socket layer initialized
    [    2.252646] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
    [    2.252654] Bluetooth: HIDP socket layer initialized
    [    2.252661] Bluetooth: Virtual HCI driver ver 1.5
    [    2.252736] Bluetooth: HCI UART driver ver 2.3
    [    2.252743] Bluetooth: HCI UART protocol H4 registered
    [    2.252749] Bluetooth: HCI UART protocol BCSP registered
    [    2.252754] Bluetooth: HCI UART protocol LL registered
    [    2.252760] Bluetooth: HCI UART protocol ATH3K registered
    [    2.252765] Bluetooth: HCI UART protocol Three-wire (H5) registered
    [    2.252771] Bluetooth: HCI UART protocol BCM registered
    [    2.252876] Bluetooth: Generic Bluetooth SDIO driver ver 0.1
    [    2.253388] [BT] bcm4359_bluetooth_probe.
    [    2.253630] [BT] bcm4359_bluetooth_probe End 
    [    5.376110] [BT] Bluetooth Power On.
    [    7.499943] [BT] Bluetooth Power On.
    [    8.051620] [BT] Bluetooth Power On.

If you do not get similar output, something has gone wrong. Check that you completed all steps above as described and seek help as needed.

You have now rebuilt your halium-boot.img to include updated bluetooth drivers and only one final step remains.

Build and flash system.img
^^^^^^^^^^^^^^^^^^^^^^^^^^

The system image needs to be rebuilt with a configuration script for bluetooth adapted to your device. On the completed build, this file is located at::

    /etc/init/bluetooth-touch-android.conf

`An example script can be found here <https://github.com/Flohack74/android_device_huawei_angler/blob/halium-7.1/ubuntu/bluetooth/bluetooth-touch-android.conf>`_. Make sure to adapt as necessary.

Place this script in your ``device/[VENDOR]/[DEVICE]/ubuntu`` directory and inject it using the :ref:`overlay file method <Overlay-files>` described above.

Rebuild and flash your ``system.img``.

GPS
^^^

*Work in progress*

Camera
^^^^^^

*Work in progress*

Video
^^^^^

*Work in progress*
