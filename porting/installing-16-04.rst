Installing Ubuntu Touch 16.04 images on Halium
==============================================

.. warning::

    These steps  will wipe all of the data on your device. If there is anything that you would like to keep, ensure it is backed up and copied off of the device before continuing. It is not a good idea to port Ubuntu Touch using the device you rely on every day as a testing device. You will lose data. I speak from personal experience.

Now that you've :doc:`built ubports-boot <building-ubports-boot>`, we'll use a script called ``rootstock-touch-install`` to install an Ubuntu Touch rootfs on your device.

In order to install Ubuntu Touch, you will need a recovery with Busybox, such as TWRP, installed on your phone. You will also need ensure the /data partition is formatted with ext4 and does not have any encryption on it.

Install ubports-boot
--------------------

We'll need to install the ubports-boot image before installing an image. Reboot your phone into fastboot mode, then do the following from your Halium tree::

    cout
    fastboot flash boot ubports-boot.img

Download the rootfs
-------------------

Next we'll need to download the rootfs (root filesystem) that's appropriate for your device. Right now, we only have one available. Simply download ``ubports-touch.rootfs-xenial-armhf.tar.gz`` from `our CI server <https://ci.ubports.com/job/xenial-rootfs-armhf/>`__. If you have a 64-bit ARM (aarch64) device, this same rootfs should work for you. If you have an x86 device, let us know. We do not have a rootfs available for these yet.


Install system.img and rootfs
-------------------------------

.. todo::

    Change the rootstock link to point to UBports once the actuallyfixit PR is merged.

Download the rootstock-touch-install script from `universalsuperbox/rootstock-ng <https://github.com/universalsuperbox/rootstock-ng/tree/xenial-actuallyfixit>`_. Boot your device into recovery and run the script as follows::

    rootstock-touch-install path/to/rootfs.tar.gz path/to/system.img

The script will copy and extract the files to their proper places, then allow you to set the phablet user's password. If it gets all the way to ``rebooting device`` and doesn't seem to produce any errors, it's time to continue to the next step. If something goes wrong, please get in touch with us. If your device doesn't reboot automatically, reboot it using your recovery's interface.

If you get errors similar to ``broken pipe`` or ``out of memory``, use the ``-b`` option to push the busybox or toybox build that came from your tree. These may have fewer bugs than your recovery's busybox.


Get SSH access
--------------

When your device boots, it will likely stay at the bootloader screen. However, you should also get a new network connection on the computer you have it plugged in to. We will use this to debug the system.

To confirm that your device has booted correctly, run ``dmesg -w`` and watch for "GNU/Linux device" in the output. If you instead get something similar to "ubports initrd i hit a nail", please get in contact with us so we can find out why. You may also choose to run ``watch ip link`` and look for changes in network devices.

Similar to the Halium reference rootfs, you should set your computer's IP on the newly connected RNDIS interface to ``10.15.19.100`` if you don't get one automatically. Then, run the following to access your device::

    ssh phablet@10.15.19.82

The password will be the one that you set while running rootstock.


Make / writeable
----------------

Before we make any changes to the rootfs (which is in the next step), you'll need to remount it with write permissions. To do that, run the following command::

    sudo mount -o remount,rw /


Add udev rules
--------------

Now that you're logged in, you must create some udev rules to allow Ubuntu Touch software to access your hardware. Run the following command, replacing [codename] with your device's codename.::

    sudo -i # And enter your password
    cat /var/lib/lxc/android/rootfs/ueventd*.rc|grep ^/dev|sed -e 's/^\/dev\///'|awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' >/usr/lib/lxc-android-config/70-[codename].rules

Now, reboot the device. If all has gone well, you will eventually see the Ubuntu Touch spinner followed by Unity 8. Your lock password is the same as you set for SSH.

.. todo::

    This should be a little heavier on "What to do when something goes wrong" content.