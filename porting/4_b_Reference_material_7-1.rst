Reference material (7.1)
========================

.. _Display-settings:

Display settings
----------------

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

There are two other settings that may be of interest to you:

Form factor
^^^^^^^^^^^

``FORM_FACTOR`` specifies the device's form factor. This value is set as the device's Chassis, which you can find by running ``hostnamectl``. The acceptable values are ``handset``, ``tablet``, ``laptop`` and ``desktop``. Apps such as the gallery use this information to change their functionality. For more information on the Chassis, see the freedesktop.org hostnamed specification.

Native orientation
^^^^^^^^^^^^^^^^^^

``NATIVE_ORIENTATION`` sets the display orientation for the device's built-in screen. This value is used whenever autorotation isn't working correctly or when an app wishes to be locked to the device's native orientation. Acceptable values are ``landscape``, which is normally used for tablets, laptops, and desktops; and ``portrait``, which is usually used for phone handsets.