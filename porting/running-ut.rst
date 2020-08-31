Running Ubuntu Touch
====================

Now that you're logged in, there are a few more steps before Ubuntu Touch will be fully functional on your device. Below we explain 
    * how to create the necessary udev rules that will allow Ubuntu Touch software to access your hardware
    * how to adjust the display settings to fit your device

When you have successfully completed the steps on this page you are ready to incorporate these (and other necessary settings) into your build. This is explained in the section on Additional device configuration.

Make / writable
----------------

Before we make any changes to the rootfs (which will be required for the next steps), you'll need to remount it with write permissions. To do that, run the following command::

    sudo mount -o remount,rw /

Add udev rules
--------------

Run the following command, replacing [codename] with your device's codename::

    sudo -i # And enter your password
    cat /var/lib/lxc/android/rootfs/ueventd*.rc|grep ^/dev|sed -e 's/^\/dev\///'|awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' >/usr/lib/lxc-android-config/70-[codename].rules

Now, reboot the device. If all has gone well, you will eventually see the Ubuntu Touch spinner followed by Unity 8. Your lock password is the same as you set for SSH.

Display settings
----------------

When the device boots, you'll probably notice that everything is very small. There are two variables that set the content scaling for Unity 8 and Ubuntu Touch applications: ``GRID_UNIT_PX`` and ``QTWEBKIT_DPR``.

There are also some other options available that may be useful for you depending on your device's form factor. These are discussed below.

All of these settings are guessed by Unity 8 if none are set. There are many cases, however, where the guess is wrong (for example, very high resolution phone displays will be identified as desktop computers). To manually set a value for these variables, simply create a file at ``etc/ubuntu-touch-session.d/android.conf`` specifying them. For example, this is the file for the Nexus 7 tablet::

    $ cat /etc/ubuntu-touch-session.d/flo.conf
    GRID_UNIT_PX=18
    QTWEBKIT_DPR=2.0
    NATIVE_ORIENTATION=landscape
    FORM_FACTOR=tablet

Methods for deriving values for these variables are below.

Display scaling
^^^^^^^^^^^^^^^

``GRID_UNIT_PX`` (Pixels per Grid Unit or Px/GU) is specific to each device. Its goal is to make the user interface of the system and its applications the same *perceived* size regardless of the device they are displayed on. It is primarily dependent on the pixel density of the device’s screen and the distance to the screen the user is at. The latter value cannot be automatically detected and is based on heuristics. We assume that tablets and laptops are the same distance and that they are held at 1.235 times the distance phones tend to be held at.

``QTWEBKIT_DPR`` sets the display scaling for the Oxide web engine, so changes to this value will affect the scale of the browser and webapps.

A reference device has been chosen from which we derive the values for all other devices. The reference device is a laptop with a 120ppi screen. However, there is no exact formula since these options are set for *perceived* size rather than *physical* size. Here are some values for other devices so you may derive the correct one for yours:

==============================  ==========  ============  =======  =====  ============
Device                          Resolution  Display Size  PPI      Px/GU  QtWebKit DPR
==============================  ==========  ============  =======  =====  ============
'Normal' density laptop         N/A         N/A           96-150   8      1.0
ASUS Nexus 7                    1280x800    7"            216      12     2.0
'High' density laptop           N/A         N/A           150-250  16     1.5
Samsung Galaxy Nexus            1280x720    4.65"         316      18     2.0
LG Nexus 4                      1280x768    4.7"          320      18     2.0
Samsung Nexus 10                2560x1600   10.1"         299      20     2.0
Fairphone 2                     1080x1920   5"            440      23     2.5
LG Nexus 5                      1080x1920   4.95"         445      23     2.5
==============================  ==========  ============  =======  =====  ============

Experiment with a few values to find one that feels good when compared to the Ubuntu Touch experience on other devices. If you are unsure of which is the best, share some pictures (including some object for scale) along with the device specs with us.

Form factor
^^^^^^^^^^^

There are two other settings that may be of interest to you.

``FORM_FACTOR`` specifies the device's form factor. This value is set as the device's Chassis, which you can find by running ``hostnamectl``. The acceptable values are ``handset``, ``tablet``, ``laptop`` and ``desktop``. Apps such as the gallery use this information to change their functionality. For more information on the Chassis, see `the freedesktop.org hostnamed specification`_.

``NATIVE_ORIENTATION`` sets the display orientation for the device's built-in screen. This value is used whenever autorotation isn't working correctly or when an app wishes to be locked to the device's native orientation. Acceptable values are ``landscape``, which is normally used for tablets, laptops, and desktops; and ``portrait``, which is usually used for phone handsets.

Common Problems
---------------

If you have any errors while performing these steps, check to see if any of the following suggestions match what you are seeing. If you have completed these steps successfully, congratulations! You are ready to start testing and tweaking your build. Check the functionality of your device by following the Smoke Testing information in :doc:`/contribute/quality-assurance`.

.. toctree::
   :maxdepth: 1

   common-problems-run

Additional device configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When you have successfully created udev rules and adjusted the display settings of your device you are ready to incorporate these and further configuration settings into your port. The next section describes the necessary steps.

.. toctree::
   :maxdepth: 1

   device-configuration

.. _the freedesktop.org hostnamed specification: https://www.freedesktop.org/wiki/Software/systemd/hostnamed/
