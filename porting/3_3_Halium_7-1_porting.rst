The graphical UI (7.1)
======================

.. _Bring-up-Unity-8:

Bring up Unity 8 (the graphical UI)
-----------------------------------

Now that you're logged in, there remain a number of things to be configured before Ubuntu Touch will be fully functional on your device. The correct way to do this is by storing these settings in overlay files (:ref:`Configure-and-enable-remaining-device-functionality`), and not by making the root directory writeable, as described below. However, in order to quickly set up udev rules which are necessary to complete subsequent steps, you can use this method for first time setup.

Make / writable
^^^^^^^^^^^^^^^

Before you make any changes to the rootfs (which will be required for the next steps), you'll need to remount it with write permissions. To do that, run the following command::

    sudo mount -o remount,rw /

Add udev rules
^^^^^^^^^^^^^^

You must create some udev rules to allow Ubuntu Touch software to access your hardware. Run the following command, replacing [codename] with your device's codename::

    sudo -i # And enter your password
    cat /var/lib/lxc/android/rootfs/ueventd*.rc|grep ^/dev|sed -e 's/^\/dev\///'|awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' >/usr/lib/lxc-android-config/70-[codename].rules

Now, reboot the device. If all has gone well, you will eventually see the Ubuntu Touch spinner followed by Unity 8. Your lock password is the same as you set for SSH.

Problems when bringing up Unity 8
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Refer to :ref:`Known-issues-when-bringing-up-Unity-8`.
