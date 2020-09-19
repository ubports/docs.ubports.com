4   Common errors when building Halium 7.1 - Ubuntu Touch
=========================================================

4.1 Known issues when building halium-boot.img and system.img for UT
--------------------------------------------------------------------

Some known issues you may encounter when performing the steps in section 3.2 are described in the `Halium porting guide <http://docs.halium.org/en/latest/porting/build-sources.html#documented-errors>`_.

4.2 Known issues when installing and booting UT for the first time
------------------------------------------------------------------

These are some of the known issues you may encounter when performing the steps in section 3.3

4.2.1   SSH hangs when trying to connect
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The SSH connection may hang indefinitely when trying to connect. Attempts to stop the connection with Control-C may or may not return you to a shell prompt. If you run ``ssh -vvvv phablet@10.15.19.82``, you only get the following output before the program stops::

    debug1: Connecting to 10.15.19.82 [10.15.19.82] port 22.
    debug1: Connection established.
    [...]
    debug1: Enabling compatibility mode for protocol 2.0
    debug1: Local version string SSH[...]

This seems to be a common error on arm64 devices with kernel 3.10 when rsyslogd is enabled. If you have this error, please add your voice to `ubports/ubuntu-touch#560`_ and then try the following workaround:

#. Reboot the device to recovery and connect with ``adb shell``
#. Run the following commands to disable rsyslogd::

    mkdir /a
    mount /data/rootfs.img /a
    echo manual |tee /a/etc/init/rsyslog.override
    umount /a
    sync

You may now reboot the device. You should be able to connect to SSH once it comes back online.

4.2.2   Device reboots after a minute
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The device may reboot cleanly after about a minute of uptime. If you are logged in when the reboot occurs, you will see the following message::

    Broadcast message from root@ubuntu-phablet
        (unknown) at 16:00 ...

    The system is going down for reboot NOW!

This happens because ``lightdm``, the Ubuntu Touch display manager, is crashing repeatedly. The system watchdog process sees this and reboots the device.

To fix this problem, log in before the reboot occurs and run the following command::

    sudo stop lightdm

.. _ubports/ubuntu-touch#560: https://github.com/ubports/ubuntu-touch/issues/560

4.3 Known issues when bringing up Unity 8
-----------------------------------------

These are some of the known issues you may encounter when performing the steps in section 3.4

4.3.1   Nothing shows on screen
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If nothing shows on screen even after adding udev rules to your port, you likely have a problem with graphical applications crashing. This can be caused by Mir servers crashing.

Mir servers crashing can be caused by many different problems with the port. To troubleshoot more, you can try the following:

Is the Android container running?
"""""""""""""""""""""""""""""""""

If the Android container is not running, many parts of Ubuntu Touch will not work. Run this command to check on the container's status::

    sudo lxc-info -n android

If you get output similar to the following, the Android container is running and you can move on to the next troubleshooting step::

    Name:           android
    State:          RUNNING
    PID:            1194
    IP:             10.15.19.82

If you do not get ``State: RUNNING``, the container is stopped. You can run ``sudo start lxc-android-config`` to attempt to start it. If the container does not start after that, you can run ``sudo lxc-start -n android -F`` to get a more detailed log to determine why it failed.

Are all of the Android partitions mounted?
""""""""""""""""""""""""""""""""""""""""""

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

Getting more Mir logs
"""""""""""""""""""""

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

4.3.2   Programs hang before crashing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Sometimes processes will hang for a very long time and then abort or segfault. The reason for the hang is apport, which attempts to collect useful information about the crash before allowing the program to stop.

If you don't need apport's information and would rather have the programs crash faster while troubleshooting, issue the following commands::

    sudo stop apport
    sudo stop whoopsie

Enable /var/log/syslog
""""""""""""""""""""""

Normally the writing to the syslog is disabled. During porting it can be useful to enable this::

    sudo touch /var/log/syslog
    sudo chown syslog:syslog /var/log/syslog
    sudo initctl stop rsyslog
    sudo initctl start rsyslog

Now rsyslogd will write to the file and you can use it as usual. For example ``less /var/log/syslog`` or ``tail -f /var/log/syslog``.

.. _the halium docs for wi-fi: http://docs.halium.org/en/latest/porting/debug-build/wifi.html
.. _paste.ubuntu.com: https://paste.ubuntu.com

4.4 Known issues when configuring the device
--------------------------------------------

These are some of the known issues you may encounter when performing the steps in section 3.5

*To be completed*