.. _Lomiri:

Bringing up Lomiri - the graphical UI
=====================================

Now that you have gained access to your newly booted device, there remain a number of things to be configured before Ubuntu Touch will be fully functional on your device. The first is to add udev rules which are required for the graphical UI to be able to launch.

What are udev rules?
--------------------

On your running system there is a continuously running udev daemon which governs how the system handles events on peripheral devices, *e.g.* connecting the device to a PC via USB cable. This daemon needs a set of rules, *the udev rules*, to tell it what to do for each possible event. These rules must observe a specific format and they are stored in a file which needs to be generated for each specific device.

Add udev rules
--------------

The correct way to do this is by storing these settings in overlay files (:ref:`Overlay`), and not by making the root directory writeable, as described below. However, in order to quickly set up udev rules which are necessary to complete subsequent steps, you can use the method detailed here for first time setup.

Make / (root) writable
^^^^^^^^^^^^^^^^^^^^^^

Before you make any changes to the rootfs (which will be required for the next steps), you'll need to remount your root directory (/) with write permissions. Do this by running the following command::

    sudo mount -o remount,rw /

Create and add udev rules
^^^^^^^^^^^^^^^^^^^^^^^^^

You must create some udev rules to allow Ubuntu Touch software to access your hardware. Run the following command, replacing [CODENAME] with your device's codename::

    sudo -i # And enter your password
    cat /var/lib/lxc/android/rootfs/ueventd*.rc|grep ^/dev|sed -e 's/^\/dev\///'|awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' >/usr/lib/lxc-android-config/70-[CODENAME].rules

Now, reboot the device. If all has gone well, you will eventually see the Ubuntu Touch spinner followed by Unity 8. Your lock password is the same as you set for SSH.

When Unity 8 is first brought up on your device, you will probably notice that everything is very small. The :ref:`Display` section describes how to deal with this.