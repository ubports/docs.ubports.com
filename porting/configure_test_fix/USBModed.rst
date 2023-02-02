.. _USBModed:

Configuring usb-moded
=====================

.. note::
    Information on this page is applicable for ports supporting Ubuntu Touch 20.04. To make your port support Ubuntu Touch 20.04, see :ref:`UpdatePortsFor2004`.

usb-moded is a new daemon in Ubuntu Touch 20.04 which handles transitions between USB modes e.g. MTP and developer mode. It replaces a number of ad-hoc Upstart jobs on 16.04, and ``setupusb`` script used by recent ports.

The system can detects most of the important settings. But for usb-moded to work best, we encouraged porters to give some configurations to ensure best experience for porters.

History of the USB mode handling
--------------------------------

In Ubuntu Touch 16.04, we used Android properties to store and set the phone's USB configuration. This worked well in the past, but today it doesn't work anymore:

- From Halium 7.1, the component in the Android side which sends signal to Upstart to drive state transition is not going in. Besides, the signal concept doesn't seem to exist in Systemd.
- From Android 8, USB mode configuration code moved into a vendor-controlled HAL process which talks over HIDL.

This has led to porters resorting to an ad-hoc script like ``setupusb`` which runs at boot to configure the USB mode once. And when a basic things like this gets pushed to porters, inevitably it leads to fragmentation.

On Ubuntu Touch 20.04, we transition to usb-moded which is a daemon originating from SailfishOS. The daemon doesn't rely on Android properties, but requires configuration. We've created a "configurator" which auto-detect many of those settings, but it cannot detect everything. So, some configuration from the porters is still required.

The basic configurations
------------------------

The main configuration is at ``/etc/default/usb-moded.d/device-specific-config.conf`` which porters can use the overlay system to place the file. The file is in a simple ``<key>=<value>`` format. An example of it is as below:

.. code-block:: text

    IDVENDOR=0E8D
    IDPRODUCT_MTP=2008
    IDPRODUCT_MTP_ADB=201D
    IDPRODUCT_RNDIS=2004
    IDPRODUCT_RNDIS_ADB=2005
    USB_MODED_ARGS=

The following can be configure:

USB vendor & product IDs
^^^^^^^^^^^^^^^^^^^^^^^^

The following configurations are highly-recommended to be set. Without it, the system will fallback to the test code from `pid.codes project <https://pid.codes/pids/>`_.

- IDVENDOR
- IDPRODUCT_MTP
- IDPRODUCT_MTP_ADB
- IDPRODUCT_RNDIS
- IDPRODUCT_RNDIS_ADB

It accepts the IDs in hexadecimal without ``0x`` prefix. The IDs could be found in:

- Your device's ``init.<device>.rc`` or ``init.<chipset>.rc``.
- Your device's USB HAL source code, if it happens to ship one.
- Your device's ``setupusb`` script, if available.

Failing that, you might have to probe how your device shows up when booted on Android.

.. note::
    We're aware that some device use different vendor IDs for different modes. If your device are one of those, please upvote `this issue on GitLab <https://gitlab.com/ubports/development/core/packaging/usb-moded/-/issues/5>`_.

Devices' pretty name
^^^^^^^^^^^^^^^^^^^^

This is the name that will show up when plugged into a computer. Most of the time, we can detect this from Android properties, but if the detection is not correct or you would like the device to display differently, it can be configured here.

- MANUFACTURER
- PRODUCT

usb-moded's arguments
^^^^^^^^^^^^^^^^^^^^^

This config controls the launching flag of the usb-moded daemon itself. Most of the time, usb-moded should work without any flag. However, the rootfs ships a default with ``-r`` which enables the rescue mode upon boot (see below). The behavior of the rescue mode can be confusing for end users, so it's recommended that porters config this value to the blank value to disable the rescue mode.

- USB_MODED_ARGS

About usb-moded's rescue mode
-----------------------------

usb-moded's rescue mode is similar to hybris-usb's usb-tethering mode. It enables the phone's USB to function as a network interface, and starts a DHCP server. The phone will be available at 10.15.19.82, and an emergency SSH server will be available on port 8022. This is intended for porters to debug issues during the development, and thus it will stay in that mode until the cable is re-plugged.

This behavior is helpful for the porters. However, this can be confusing to end-users when the port is shipped. So I recommended disabling this mode before making the port available to users by overriding ``USB_MODED_ARGS`` as discussed above.

Another rescue feature available is the ability to force usb-moded to go to "rescue mode" or to enable ADB on every boot. This can be done by placing an empty file at ``/userdata/.force-ssh`` or ``/userdata/.force-adb`` (which translate to ``/data/.force-ssh`` or ``/data/.force-adb`` in the recovery), and the system will make sure the correct mode is enabled.

Configuring usb-moded directly
------------------------------

Besides tweaking options for the configurator script, porters can also set usb-moded options directly via ``/etc/usb-moded/90-device-specific-config.ini``. However, this is intended as an escape hatch in case the automatic detection fails, and if you found yourself need to use this file, consider filing issue over usb-moded's packaging repository. See `usb-moded's docs <https://github.com/sailfishos/usb-moded/blob/master/docs/usb_moded-doc.txt>` for the syntax.
