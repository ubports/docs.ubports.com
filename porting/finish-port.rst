Finishing a port
================

Your port is not complete!
--------------------------

You followed all the guides and asked 100 questions in Telegram, of which 80 are still not answered? Your port somehow works? But still, it is far from being usable as a daily? Several things need to be done in order to get a really shiny device. See below...

Remember: The port only consists of the boot image (kernel and initrd), the system image (Android container) and the recovery image. Everything else is common to all devices and not under your control. In order to make rootfs independent from the device, you are not allowed to mount the rootfs writable and start adding files there! Instead this is done via the device tree and the Halium init scripts. They will take care of injecting configuration files at runtime. It´s magic!

Configuration for all devices
-----------------------------
The following files must be overlaid/injected to the rootfs via a device.mk copy job:

* Inject udev rules to system/halium/lib/udev/rules.d/70-android.rules
* Inject the desktop configuration file to system/halium/etc/ubuntu-touch-session.d/android.conf
* Inject timekeep to store/restore time between reboots
* Inject an override for repowerd, this will enable the automatic brightness option
* <TODO> Inject more necessary files: mixer_paths.xml, acdbdata etc
    
It is a good practice to make a folder ubuntu into your device tree root, and collect thos files there. Then, add a similar block like this to your device.mk:

.. code-block:: bash

 # Ubuntu Touch
 PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/ubuntu/ofono.override:system/halium/etc/init/ofono.override \
     $(LOCAL_PATH)/ubuntu/timekeeper.conf:system/halium/etc/init/timekeeper.conf \
     $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
     $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
     $(LOCAL_PATH)/ubuntu/config-default.xml:system/halium/usr/share/repowerd/device-configs/config-default.xml

Set LTE capability (if available)
---------------------------------
If you have only a 3G radio, you do not need to do this. All others need to:

* Inject the ofono override file to system/halium/etc/init/ofono.override

It should contain:

.. code-block:: bash

 description "oFono Mobile telephony stack"

 start on started dbus and rild-ready
 stop on stopping dbus

 expect fork
 respawn

 env OFONO_RIL_DEVICE=ril
 env OFONO_RIL_NUM_SIM_SLOTS=1
 env OFONO_RIL_RAT_LTE=1

 exec ofonod -P provision,udev*,dun*,smart*,hfp_bluez5,stktest,sap

The important change is ``env OFONO_RIL_RAT_LTE=1``. Still you need to put in all of this stuff to make a correct override.

Audio in calls, SIM slots and ofono plugin selection
----------------------------------------------------
Audio in calls needs some manual work. Add these overrides in device.mk:

.. code-block:: bash

 # telepathy-ofono quirks, ril selection
 PRODUCT_PROPERTY_OVERRIDES += \
     ro.t-o.quirk.forcesink=sink.primary_output \
     ro.t-o.quirk.forcesource=source.primary_input

If you have 2 SIM slots, add ``ril.num_slots=2``

If you have a Samsung or MTK device, you probably need to switch the ril plugin, add this additional override: ``ril.device=<plugin_name>``

You have the choice of the following plugins currently:

* ril (default)
* samsung-ril (works for Samsung MSM-822x and probably others)
* mtk, mtk2 - ATTENTION: It is unlikely that those work for newer devices, that means developing a new one from scratch could be necessary to support all specifics.
