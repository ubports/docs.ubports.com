.. 
    This document does not follow normal style guides. The flat heading 
    structure means that it displays nicely in the toctree on the page that
    links to it, installing-16-04.rst

Common installation problems
----------------------------

This page details problems commonly faced while following the :doc:`installing-16-04` page.

SSH hangs when trying to connect
--------------------------------

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

Device reboots after a minute
-----------------------------

The device may reboot cleanly after about a minute of uptime. If you are logged in when the reboot occurs, you will see the following message::

    Broadcast message from root@ubuntu-phablet
        (unknown) at 16:00 ...

    The system is going down for reboot NOW!

This happens because ``lightdm``, the Ubuntu Touch display manager, is crashing repeatedly. The system watchdog process sees this and reboots the device.

To fix this problem, log in before the reboot occurs and run the following command::

    sudo stop lightdm

.. _ubports/ubuntu-touch#560: https://github.com/ubports/ubuntu-touch/issues/560
