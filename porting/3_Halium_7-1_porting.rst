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

3.2.4   Apply apparmor kernel patches
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

At this point you can also skip to section 3.2 and test installing your build. However, you will have to come back and complete the step in this section in order to complete a functional port.

`What is apparmor? <https://wiki.ubuntu.com/AppArmor>`_

Start by downloading the backported `apparmor patch <https://github.com/ubports/apparmor-backports-ut>`_ corresponding to your device's kernel version.

You now need to delete your entire BUILDDIR/kernel/VENDOR/MODEL/security/apparmor directory and replace it with the one you downloaded. Now rebuild halium-boot. 

If get errors when building, you will need to resolve them one by one, modifying your source code as needed. Note that you should only modify the code in the apparmor directory if at all possible. Modifying code elsewhere will more than likely just compound your problems.

Seek help as needed from one of the sources mentioned in section 1.4.

Once you complete an error-free build, proceed to the next section.

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

Simply download ``ubports-touch.rootfs-xenial-armhf.tar.gz`` (32 bit) from `our CI server <https://ci.ubports.com/job/xenial-rootfs-armhf/>`__. 

If you have a 64-bit ARM (aarch64) device, this same rootfs should work for you. You can also try the 64 bit version keeping in mind that you may possibly run into more issues with this owing to the current state of development of this rootfs. (If you have an x86 device, let us know. There is no rootfs available for these yet.)

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

Now that you're logged in, there are a few more steps before Ubuntu Touch will be fully functional on your device.

3.4.1   Make / writable
^^^^^^^^^^^^^^^^^^^^^^^

Before you make any changes to the rootfs (which will be required for the next steps), you'll need to remount it with write permissions. To do that, run the following command::

    sudo mount -o remount,rw /

3.4.2   Add udev rules
^^^^^^^^^^^^^^^^^^^^^^

You must create some udev rules to allow Ubuntu Touch software to access your hardware. Run the following command, replacing [codename] with your device's codename::

    sudo -i # And enter your password
    cat /var/lib/lxc/android/rootfs/ueventd*.rc|grep ^/dev|sed -e 's/^\/dev\///'|awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' >/usr/lib/lxc-android-config/70-[codename].rules

Now, reboot the device. If all has gone well, you will eventually see the Ubuntu Touch spinner followed by Unity 8. Your lock password is the same as you set for SSH.

3.4.3   Adjust display settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When the device boots, you'll probably notice that everything is very small. There are two variables that set the content scaling for Unity 8 and Ubuntu Touch applications: ``GRID_UNIT_PX`` and ``QTWEBKIT_DPR``.

There are also some other options available that may be useful for you depending on your device's form factor. These are discussed below.

All of these settings are guessed by Unity 8 if none are set. There are many cases, however, where the guess is wrong (for example, very high resolution phone displays will be identified as desktop computers). To manually set a value for these variables, simply edit the file at ``etc/ubuntu-touch-session.d/android.conf`` specifying them. For example, this is the file for the Nexus 7 tablet::

    $ cat /etc/ubuntu-touch-session.d/flo.conf
    GRID_UNIT_PX=18
    QTWEBKIT_DPR=2.0
    NATIVE_ORIENTATION=landscape
    FORM_FACTOR=tablet

Methods for deriving values for these variables are below.

Once you have adjusted the ``android.conf`` file to the display settings needed for your device, this file should be incorporated into your build. This is explained in section 3.5.

Display scaling
""""""""""""""""

``GRID_UNIT_PX`` (Pixels per Grid Unit or Px/GU) is specific to each device. Its goal is to make the user interface of the system and its applications the same *perceived* size regardless of the device they are displayed on. It is primarily dependent on the pixel density of the device’s screen and the distance to the screen the user is at. The latter value cannot be automatically detected and is based on heuristics. We assume that tablets and laptops are the same distance and that they are held at 1.235 times the distance phones tend to be held at.

``QTWEBKIT_DPR`` sets the display scaling for the Oxide web engine, so changes to this value will affect the scale of the browser and webapps.

A reference device has been chosen from which we derive the values for all other devices. The reference device is a laptop with a 120ppi screen. However, there is no exact formula since these options are set for *perceived* size rather than *physical* size. Here are some values for other devices so you may derive the correct one for yours:

==============================  ==========  ============  =======  =====  ============
Device                          Resolution  Display Size  PPI      Px/GU  QtWebKit DPR
==============================  ==========  ============  =======  =====  ============
'Normal' density laptop         N/A         N/A           96-150   8      1.0
ASUS Nexus 7                    1280x800    7"            216      12     2.0
'High' density laptop           N/A         N/A           150-250  16     1.5
Samsung Galaxy Nexus            1280x720    4.65"         316      18     2.0
LG Nexus 4                      1280x768    4.7"          320      18     2.0
Samsung Nexus 10                2560x1600   10.1"         299      20     2.0
Fairphone 2                     1080x1920   5"            440      23     2.5
LG Nexus 5                      1080x1920   4.95"         445      23     2.5
==============================  ==========  ============  =======  =====  ============

Experiment with a few values to find one that feels good when compared to the Ubuntu Touch experience on other devices. If you are unsure of which is the best, share some pictures (including some object for scale) along with the device specs with us.

Form factor
"""""""""""

There are two other settings that may be of interest to you.

``FORM_FACTOR`` specifies the device's form factor. This value is set as the device's Chassis, which you can find by running ``hostnamectl``. The acceptable values are ``handset``, ``tablet``, ``laptop`` and ``desktop``. Apps such as the gallery use this information to change their functionality. For more information on the Chassis, see `the freedesktop.org hostnamed specification`_.

``NATIVE_ORIENTATION`` sets the display orientation for the device's built-in screen. This value is used whenever autorotation isn't working correctly or when an app wishes to be locked to the device's native orientation. Acceptable values are ``landscape``, which is normally used for tablets, laptops, and desktops; and ``portrait``, which is usually used for phone handsets.

3.5 Configure and enable remaining device functionality
-------------------------------------------------------

In section 3.4 you adjusted the display settings for your device by modifying one of the configuration files included in the UBports rootfs. Similarlyl, the rootfs contains a number of other configuration files with some standard settings that do not necessarily conform to your device. These must be modified to fit your device. The rootfs itself is read only and identical for all devices. You cannot modify the rootfs itself. Instead, the correct way to adjust the configuration is with overlay files, as described below.

Note that as a rule of thumb, the method described below applies if the file you need to edit can be found in the /etc directory (or a subdirectory of this) on your device. You should not attempt to overwrite files located elsewhere with overlay files using this method.

In your device directory, create a subdirectory named 'ubuntu'. Collect the files you wish to inject into your build in this directory. Relevant files are for example (but this list is incomplete):
    * 70-android.rules (the udev rules for your device, see section 3.4)
    * android.conf (for display scaling, see section 3.4)
    * touch.pa (for pulseaudio sound configuration/initialization)

These files are then injected by adding a code block to the file ``device.mk`` in your device directory. For the three files above add the following code::

    ### Ubuntu Touch ###
    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
        $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
        $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa 
    ### End Ubuntu Touch ###

Explanation:

The string before the colon '$(LOCAL_PATH)/ubuntu/70-android.rules' specifies the path to the source file to be injected. The string after the colon 'system/halium/lib/udev/rules.d/70-android.rules' specifies where you want it placed on the device.

The general steps to follow are thus:
    1. Copy the file you wish to modify to the 'ubuntu' directory you have created in your device source tree.
    2. Edit the file as needed.
    3. Add a line to the PRODUCT_COPY_FILES section of your device.mk file as shown above.
    4. Rebuild your system.img and reflash together with the ubports rootfs.

.. note::

    The target paths for the files mentioned above are *not* randomly chosen. You must use the specified paths. 

.. note::

    When you specify target path 'system/halium/etc/myfilename' your file 'myfilename' will end up in the '/etc' directory of your device (i.e. without the leading 'system/halium')

When you have made the adjustments you need and prepared your source as described above, you have to rebuild your system.img: ``mka systemimage``. When rebuilding the system image after small changes like these, you need not ``mka clean`` first. However, changes to PRODUCT_PROPERTY_OVERRIDES might not get detected by the build system. Go to your output folder, enter the system folder and delete build.prop in order to get it regenerated.

3.5.1   Udev rules
^^^^^^^^^^^^^^^^^^

Extract the file 70-android.rules which you created in the previous section using ``adb pull`` or ``scp`` and copy it to the 'ubuntu' directory of your device source tree. Complete steps 3 and 4 above.

3.5.2   Display scaling
^^^^^^^^^^^^^^^^^^^^^^^

Create the file android.conf in your 'ubuntu' directory and enter the settings you determined and tested in the previous section. Complete steps 3 and 4.

3.5.3   Sound configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

Now complete steps 3 and 4.

TODO: Add more from the `porting faq <https://pad.ubports.com/p/porting-faq>`_ and `porting check list <https://pad.ubports.com/p/PortChecklist>`_.



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

