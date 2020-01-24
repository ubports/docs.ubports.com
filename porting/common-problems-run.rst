Common problems when running Ubuntu Touch
-----------------------------------------

This page details problems commonly faced while following the :doc:`running-ut` page.

Nothing shows on screen
-----------------------

If nothing is showing on screen even after adding udev rules to your port, it is likely that you have a problem with graphical applications crashing. See `Mir servers crash`_ for more information.

Mir servers crash
-----------------

Mir servers crashing can be caused by many different problems with the port. To troubleshoot more, you can try the following:

Is the Android container running?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If the Android container is not running, many parts of Ubuntu Touch will not work. Run this command to check on the container's status::

    sudo lxc-info -n android

If you get output similar to the following, the Android container is running and you can move on to the next troubleshooting step::

    Name:           android
    State:          RUNNING
    PID:            1194
    IP:             10.15.19.82

If you do not get ``State: RUNNING``, the container is stopped. You can run ``sudo start lxc-android-config`` to attempt to start it. If the container does not start after that, you can run ``sudo lxc-start -n android -F`` to get a more detailed log of why it has failed.


Are all of the Android partitions mounted?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If some partitions used for Android drivers are not mounted, the container may start but not work correctly.

To check the mounted Android partitions, run ``ls /android``. At least the following folders should be contained within::

    data
    system
    firmware
    persist

If any of these are missing, run ``dmesg`` to get the kernel log. Mounting Android partitions will start after the following line::

    initrd: checking fstab [...] for additional mount points

Try to diagnose and fix any mounting errors that you find in the log for the partitions listed above.

.. note::

    Some devices have a ``vendor`` partition that contains proprietary libraries and executables required to run Android. If your device has this partition, make sure that it is mounted in addition to the others listed above.

Mali video acselerator and no gui
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
On devices with mali video acselerator, moste not qcom devices, test_hwcomposer will work only if you run it as root. Due to wrong premission on ``/dev/mali0`` and ``/dev/mtk_disp_mgr``. For fixing that you need to create ``etc/udev/rules.d/998-droid-system.rules`` with this content:
``KERNEL=="ashmem", MODE="0666"
KERNEL=="binder", MODE="0666"
KERNEL=="fb0", MODE="0666"
KERNEL=="ion", MODE="0666"
KERNEL=="mtk_disp_mgr", MODE="0666"
KERNEL=="pmsg0", MODE="0666"
KERNEL=="mali0", MODE="0666"
KERNEL=="swsync", MODE="0666"``

Getting more Mir logs
^^^^^^^^^^^^^^^^^^^^^

If the Android container is running and all of its partitions seem to be mounted, you will need to get a few more logs before enlisting community help.

First, stop the display manager if it is not already::

    sudo stop lightdm

If you have Wi-Fi working (See `the Halium docs for Wi-Fi`_), install the ``libc6-dbg`` package first::

    sudo apt update
    sudo apt install libc6-dbg

Then, run the following commands to get all of the needed logs::

    sudo unity-system-compositor --debug-without-dm &> ~/usc.log
    sudo gdb -ex 'set confirm off' -ex 'run' -ex 'bt full' -ex quit --args unity-system-compositor --debug-without-dm &> ~/usc-gdb.log
    sudo /system/bin/logcat -d &> ~/usc-logcat.log

Use ``scp`` or a similar program to copy the ``usc.log``, ``usc-gdb.log``, and ``usc-logcat.log`` files from phablet's home folder to your computer. Then, post the content of these files to `paste.ubuntu.com`_, Pastebin, GitHub Gists, or a similar service so the people helping you can view them easily.

Programs hang before crashing
-----------------------------

Sometimes processes will hang for a very long time and then abort or segfault. The reason for the hang is apport, which attempts to collect useful information about the crash before allowing the program to stop.

If you don't need apport's information and would rather have the programs crash faster while troubleshooting, issue the following commands::

    sudo stop apport
    sudo stop whoopsie

Enable /var/log/syslog
----------------------

Normally the writing to the syslog is disabled. During porting it can be useful to enable this::

    sudo touch /var/log/syslog
    sudo chown syslog:syslog /var/log/syslog
    sudo initctl stop rsyslog
    sudo initctl start rsyslog

Now rsyslogd will write to the file and you can use it as usual. For example ``less /var/log/syslog`` or ``tail -f /var/log/syslog``.

.. _the halium docs for wi-fi: http://docs.halium.org/en/latest/porting/debug-build/wifi.html
.. _paste.ubuntu.com: https://paste.ubuntu.com
