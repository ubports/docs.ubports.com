.. _Configuring:

Configuring device features
===========================

.. Tip::
    Applies to:
        * Method 1

        (See :ref:`porting methods <Porting-methods>`.)

AppArmor
--------

`What is AppArmor? <https://wiki.ubuntu.com/AppArmor>`_

Start by downloading the backported `AppArmor patch <https://github.com/ubports/AppArmor-backports-ut>`_ corresponding to your device's kernel version. Your kernel version is specified at the beginning of your kernel defconfig file, i.e. the one you edited in section :ref:`Edit-kernel-config` above. (For more information on backporting, see the :ref:`bluetooth <Bluetooth>` section below.)

You now need to delete your entire BUILDDIR/kernel/VENDOR/MODEL/security/apparmor subdirectory and replace it with the one you downloaded. Then rebuild halium-boot. 

If you get errors when building, resolve them one at a time, modifying your source code as needed. Note that you should only modify the code in the AppArmor subdirectory if at all possible. Modifying code elsewhere will more than likely just compound your problems.

Seek help as needed from one of the sources mentioned in the subsection on :ref:`getting community help <Getting-community-help>`.

.. _Bluetooth:

Bluetooth
---------

*Work in progress*

When porting to devices running older kernel versions (mostly 3.x) which were in use with older versions of Ubuntu (mainly pre 16.04), it is necessary to replace the kernel bluetooth stack with a newer one. This is because the newer bluetooth hardware in today's bluetooth peripheral devices often has trouble talking to the older bluetooth drivers. This can be fixed by bringing in driver code from newer Linux kernel versions. The process is called *backporting*.

.. _Backports:

Backporting has been greatly fascilitated by the `Linux Backports Project <https://backports.wiki.kernel.org/index.php/Main_Page>`_ which has existed for some time. This project is aimed at mainline Linux kernels. Consequently, the tools (scripts) therein are not specifically tailored to Ubuntu Touch, and they will therefore abort at some point during the process. However, they are the best option available, and can provide significant help all the same.

Bluetooth backporting steps
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The following steps need to be done::

    1. Clone/download the backports scripts.
    2. Clone/download the kernel source from the newer kernel version you wish to backport from.
    3. Run the script to integrate the newer sources into your kernel source tree.
    4. Fix errors that *will* occur when the script is run.
    5. Make necessary changes to your kernel defconfig file.
    6. Rebuild the full halium-boot.img (methods 1 and 2) or just the kernel (method 3)
    7. Reflash, check and debug.

Download the backports scripts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Create a directory (outside your halium source tree) for the backports scripts::

    mkdir ~/backports-scripts

Now clone the scripts into this directory::

    cd ~/backports-scripts
    git clone https://github.com/ubuntu-phonedations/backports.git -b for-ubuntu backport-scripts

This downloads the backports scripts prepared by Canonical based on the :ref:`original Backports Project <Backports>` mentioned above.

Download kernel source to backport from
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Create a directory (outside your halium source tree) for the kernel source you will pull the newer drivers from::

    mkdir ~/kernel-backports

Now clone the kernel source for the version and branch you need (v4.2 in the example below) into this directory::

    cd ~/kernel-backports
    git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next -b v4.2

.. Note::

    Choosing kernel version 4.2 should be sufficient. Other available versions can be seen by visiting `the webpage <https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next>`_ and examining the tags.

Run script and fix errors
^^^^^^^^^^^^^^^^^^^^^^^^^

Edit kernel defconfig
^^^^^^^^^^^^^^^^^^^^^

Build
^^^^^

Return to the root of your BUILDDIR and build::

    croot
    mka halium-boot

Build errors are liable to occur and will vary depending on device. Handle them one at a time, seeking help as necessary.

.. _Overlay-files:

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

GPS
^^^

*Work in progress*

Camera
^^^^^^

*Work in progress*

Video
^^^^^

*Work in progress*
