
Building ubports-boot
=====================

Ubuntu Touch uses Upstart rather than Systemd for its init daemon. Because of this, it is not fully Halium-compatible and is not able to use the vanilla hybris-boot that Halium produces. For this reason, we need to build ubports-boot.


Add source to Halium tree
-------------------------

The first thing that needs to be done is adding the ubports-boot source to your Halium tree. You may choose to do this by adding it to your local manifests (recommended) or simply cloning it in place.


Add to local manifest
^^^^^^^^^^^^^^^^^^^^^

Create a new file in ``.repo/local_manifests`` called ``ubports-boot.xml``. Add the following to the file:

.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
        <project name="ubports/ubports-boot" path="halium/ubports-boot" remote="hal" revision="master" />
    </manifest>

Now, just do a ``repo sync`` to download the new source.


Manual clone
^^^^^^^^^^^^

You may also choose to clone the `ubports-boot repository <https://github.com/ubports/ubports-boot>`_ into your tree manually. It should be placed into ``BUILDDIR/halium/ubports-boot``.

If you share your code and build instructions, please note that you've done this.

Include in build system
-----------------------

The android build system won't know where to find ubports-boot normally. To fix this, open the file ``BUILDDIR/build/core/main.mk`` in a text editor. Find the comment ``# Specific projects for Halium`` and change the text directly under it to match this::

    subdirs += \
	    halium/hybris-boot \
	    halium/ubports-boot

Fix mounts
----------

.. todo::

    This is a workaround for `ubports/ubports-boot #1 <https://github.com/ubports/ubports-boot/issues/1>`_ and `ubports/ubports-boot #2 <https://github.com/ubports/ubports-boot/issues/2>`_. It should not be considered a permanent fix. Be prepared to revert this later when these bugs have been fixed.

The initramfs of the ubports-boot image takes a commandline parameter, ``datapart=``, which points it to the block device that is normally mounted at ``/data`` in Android. This parameter is automatically embedded into the image at build time by finding ``/data`` in your device's default fstab and using its source. Unfortunately, this source is generally a node in ``/dev/block/bootdevice/by-name`` or something else strange, which is only available in an Android initramfs. To fix this, Halium uses the fixup-mountpoints script, which you are probably familiar with by now.

The ubports-boot initramfs does not use the fixup-mountpoints script, nor does it put block devices in the proper place for mounting without modification. For this reason, we are going to have to edit your device's fstab.

The first step to this process is figuring out where your fstab actually is. For most, this is inside ``BUILDDIR/device/MANUFACTUER/CODENAME/rootdir/etc`` and it is named either ``fstab.qcom`` or ``fstab.devicename``. Open the file for editing.

With the file open, change the ``src``, or first attribute, of the ``/data`` mountpoint to what you put in fixup-mountpoints for ``/data``, but without the ``/block`` folder. For example, on the Moto G5 Plus, the block device is ``/dev/block/mmcblk0p54``, so I put ``/dev/mmcblk0p54`` in this place. Also change the type to ext4, if it is not already.

Now, remove all ``context=`` options from all block devices in the file. Save and exit.

For an example of this, see `this commit on universalsuperbox/android_device_motorola_potter <https://github.com/UniversalSuperBox/android_device_motorola_potter/commit/9b574967e3a6f07884760b418befe731ccfcb924>`__. Removing the ``wait`` flag is not required and was an accident.


Edit init.rc
------------

Some Android services conflict with ofono in 16.04 and will cause your device to reboot without warning, about 30-60 seconds after it boots. We will need to disable these services until the issue is resolved.

To do this, open up your device's default ``init.rc`` (this is likely init.qcom.rc or init.[codename].rc), comment out any ``import`` statements, and add ``disabled`` to services like rild, qti, and others that interface with the radio. Most of them have a ``user radio`` line. For an example, see `commit 7875b48b on UniversalSuperBox/android_device_motorola_potter <https://github.com/UniversalSuperBox/android_device_motorola_potter/commit/7875b48b5b6f240935d7f327d33128e952a3589b>`__


Edit kernel config
------------------

Ubuntu Touch requires a slightly different kernel config than Halium, including enabling Apparmor. Luckily, we have a nice script for this purpose, ``check-kernel-config``. It's included in the ubports-boot repository. Simply run it on your config as follows::

    check-kernel-config path/to/my/defconfig -w

You may have to do this twice. It will likely fix things both times. Then, run the script without the ``-w`` flag to see if there are any more errors. If there are, fix them manually. Once finished, run the script without the ``-w`` flag one more time to make sure everything is correct.


Build the image
---------------

Once ubports-boot is in place, you can build it quite simply. You will also need to rebuild system.img due to our changes.

1. ``cd`` to your Halium BUILDDIR
2. ``source build/envsetup.sh``
3. Run ``breakfast`` or ``lunch``, whichever you use for your device
4. ``mka ubports-boot``
5. ``mka systemimage``



Continue on
-----------

Now that you have ubports-boot built, you can move on to :doc:`installing-16-04`.
