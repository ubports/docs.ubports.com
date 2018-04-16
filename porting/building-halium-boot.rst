Building halium-boot
=====================

Halium-boot is the new boot image in the Halium project, replacing hybris-boot. We will be building and using it for Ubuntu Touch.


Fix mounts
----------

Halium-boot's ``mount`` is not aware of SELinux contexts. If your device's ``fstab`` file includes any contexts, the partition that they are on will fail to mount and your port will not work correctly.

The first step to this process is figuring out where your fstab actually is. For most, this is inside ``BUILDDIR/device/MANUFACTUER/CODENAME/rootdir/etc`` and it is named either ``fstab.qcom`` or ``fstab.devicename``. Open the file for editing.

If the type of the 'data' or 'userdata' partition is ``f2fs``, it is required to change it to ``ext4``.

With the file open, remove all ``context=`` options from all block devices in the file. The option will start at the text ``context=`` and end at the comma following it.

For example, the line ``ro,nosuid,nodev,context=u:object_r:firmware_file:s0,barrier=0`` should become ``ro,nosuid,nodev,barrier=0``

Save and exit.


Edit kernel config
------------------

Ubuntu Touch requires a slightly different kernel config than Halium, including enabling Apparmor. Luckily, we have a nice script for this purpose, ``check-kernel-config``. It's included in the halium-boot repository. Simply run it on your config as follows::

    ./halium/halium-boot/check-kernel-config path/to/my/defconfig -w

You may have to do this twice. It will likely fix things both times. Then, run the script without the ``-w`` flag to see if there are any more errors. If there are, fix them manually. Once finished, run the script without the ``-w`` flag one more time to make sure everything is correct.


Build the image
---------------

Once halium-boot is in place, you can build it quite simply. You will also need to rebuild system.img due to our changes.

1. ``cd`` to your Halium BUILDDIR
2. ``source build/envsetup.sh``
3. Run ``breakfast`` or ``lunch``, whichever you use for your device
4. ``mka halium-boot``
5. ``mka systemimage``


Continue on
-----------

Now that you have halium-boot built, you can move on to :doc:`installing-16-04`.
