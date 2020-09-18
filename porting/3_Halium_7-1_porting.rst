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

3.2.3   Build the image
^^^^^^^^^^^^^^^^^^^^^^^

Once halium-boot is in place, you can build it quite simply. You will also need to rebuild system.img due to the above changes. Proceed as follows:

1. Enter to your Halium BUILDDIR
2. ``source build/envsetup.sh``
3. Run ``breakfast`` or ``lunch``, whichever you use for your device
4. ``mka halium-boot``
5. ``mka systemimage``

3.3 Install and debug initial boot
----------------------------------



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

