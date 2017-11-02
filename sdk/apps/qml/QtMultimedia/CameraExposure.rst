.. _sdk_qtmultimedia_cameraexposure:
QtMultimedia CameraExposure
===========================

An interface for exposure related camera settings.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`aperture <sdk_qtmultimedia_cameraexposure_aperture-prop>`
   : real
-  :ref:`exposureCompensation <sdk_qtmultimedia_cameraexposure_exposureCompensation-prop>`
   : real
-  :ref:`exposureMode <sdk_qtmultimedia_cameraexposure_exposureMode-prop>`
   : enumeration
-  :ref:`iso <sdk_qtmultimedia_cameraexposure_iso-prop>` : int
-  :ref:`manualAperture <sdk_qtmultimedia_cameraexposure_manualAperture-prop>`
   : real
-  :ref:`manualIso <sdk_qtmultimedia_cameraexposure_manualIso-prop>`
   : real
-  :ref:`manualShutterSpeed <sdk_qtmultimedia_cameraexposure_manualShutterSpeed-prop>`
   : real
-  :ref:`meteringMode <sdk_qtmultimedia_cameraexposure_meteringMode-prop>`
   : enumeration
-  :ref:`shutterSpeed <sdk_qtmultimedia_cameraexposure_shutterSpeed-prop>`
   : real
-  :ref:`spotMeteringPoint <sdk_qtmultimedia_cameraexposure_spotMeteringPoint-prop>`
   : QPointF

Methods
-------

-  :ref:`setAutoAperture <sdk_qtmultimedia_cameraexposure_setAutoAperture-method>`\ ()
-  :ref:`setAutoIsoSensitivity <sdk_qtmultimedia_cameraexposure_setAutoIsoSensitivity-method>`\ ()
-  :ref:`setAutoShutterSpeed <sdk_qtmultimedia_cameraexposure_setAutoShutterSpeed-method>`\ ()

Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

:ref:`CameraExposure <sdk_qtmultimedia_cameraexposure>` allows you to
adjust exposure related settings like aperture and shutter speed,
metering and ISO speed.

It should not be constructed separately, instead the ``exposure``
property of the a
`Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  should be
used.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Camera {
        id: camera
        exposure.exposureCompensation: -1.0
        exposure.exposureMode: Camera.ExposurePortrait
    }

Several settings have both an automatic and a manual mode. In the
automatic modes the camera software itself will decide what a reasonable
setting is, but in most cases these settings can be overridden with a
specific manual setting.

For example, to select automatic shutter speed selection:

.. code:: cpp

        camera.exposure.setAutoShutterSpeed()

Or for a specific shutter speed:

.. code:: cpp

        camera.exposure.manualShutterSpeed = 0.01 // 10ms

You can only choose one or the other mode.

Property Documentation
----------------------

.. _sdk_qtmultimedia_cameraexposure_aperture-prop:

+--------------------------------------------------------------------------+
|        \ aperture : real                                                 |
+--------------------------------------------------------------------------+

This property holds the current lens aperture as an F number (the ratio
of the focal length to effective aperture diameter).

**See also**
:ref:`manualAperture <sdk_qtmultimedia_cameraexposure#manualAperture-prop>`
and
:ref:`setAutoAperture() <sdk_qtmultimedia_cameraexposure#setAutoAperture-method>`.

| 

.. _sdk_qtmultimedia_cameraexposure_exposureCompensation-prop:

+--------------------------------------------------------------------------+
|        \ exposureCompensation : real                                     |
+--------------------------------------------------------------------------+

This property holds the adjustment value for the automatically
calculated exposure. The value is in EV units.

| 

.. _sdk_qtmultimedia_cameraexposure_exposureMode-prop:

+--------------------------------------------------------------------------+
|        \ exposureMode : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the camera exposure mode.

The mode can be one of the following:

.. _sdk_qtmultimedia_cameraexposure_Value                           Description-prop:

+--------------------------------+------------------------------------------------------+
| Value                          | Description                                          |
+================================+======================================================+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureAuto             Automatic mode.-prop:
| Camera.ExposureManual          | Manual mode.                                         |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureNight            Night mode.-prop:
| Camera.ExposureAuto            | Automatic mode.                                      |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureBacklight        Backlight exposure mode.-prop:
| Camera.ExposureNight           | Night mode.                                          |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureSpotlight        Spotlight exposure mode.-prop:
| Camera.ExposureBacklight       | Backlight exposure mode.                             |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureSports           Spots exposure mode.-prop:
| Camera.ExposureSpotlight       | Spotlight exposure mode.                             |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureSnow             Snow exposure mode.-prop:
| Camera.ExposureSports          | Spots exposure mode.                                 |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureBeach            Beach exposure mode.-prop:
| Camera.ExposureSnow            | Snow exposure mode.                                  |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureLargeAperture    Use larger aperture with small depth of field.-prop:
| Camera.ExposureBeach           | Beach exposure mode.                                 |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureSmallAperture    Use smaller aperture.-prop:
| Camera.ExposureLargeAperture   | Use larger aperture with small depth of field.       |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposurePortrait         Portrait exposure mode.-prop:
| Camera.ExposureSmallAperture   | Use smaller aperture.                                |
+--------------------------------+------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.ExposureModeVendor       The base value for device specific exposure modes.-prop:
| Camera.ExposurePortrait        | Portrait exposure mode.                              |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureModeVendor      | The base value for device specific exposure modes.   |
+--------------------------------+------------------------------------------------------+

| 

.. _sdk_qtmultimedia_cameraexposure_iso-prop:

+--------------------------------------------------------------------------+
|        \ iso : int                                                       |
+--------------------------------------------------------------------------+

This property holds the sensor's ISO sensitivity value.

| 

.. _sdk_qtmultimedia_cameraexposure_manualAperture-prop:

+--------------------------------------------------------------------------+
|        \ manualAperture : real                                           |
+--------------------------------------------------------------------------+

This property holds the aperture (F number) value for capturing photos.

If the value is less than zero, the camera automatically determines an
appropriate aperture value.

:ref:`aperture <sdk_qtmultimedia_cameraexposure#aperture-prop>`,
:ref:`setAutoAperture() <sdk_qtmultimedia_cameraexposure#setAutoAperture-method>`

| 

.. _sdk_qtmultimedia_cameraexposure_manualIso-prop:

+--------------------------------------------------------------------------+
|        \ manualIso : real                                                |
+--------------------------------------------------------------------------+

This property holds the ISO settings for capturing photos.

If a negative value is specified, the camera will automatically
determine an appropriate value.

**See also** :ref:`iso <sdk_qtmultimedia_cameraexposure#iso-prop>` and
:ref:`setAutoIsoSensitivity() <sdk_qtmultimedia_cameraexposure#setAutoIsoSensitivity-method>`.

| 

.. _sdk_qtmultimedia_cameraexposure_manualShutterSpeed-prop:

+--------------------------------------------------------------------------+
|        \ manualShutterSpeed : real                                       |
+--------------------------------------------------------------------------+

This property holds the shutter speed value (in seconds). If the value
is less than zero, the camera automatically determines an appropriate
shutter speed.

:ref:`shutterSpeed <sdk_qtmultimedia_cameraexposure#shutterSpeed-prop>`,
:ref:`setAutoShutterSpeed() <sdk_qtmultimedia_cameraexposure#setAutoShutterSpeed-method>`

| 

.. _sdk_qtmultimedia_cameraexposure_meteringMode-prop:

+--------------------------------------------------------------------------+
|        \ meteringMode : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the camera metering mode (how exposure is balanced).

The mode can be one of the following:

.. _sdk_qtmultimedia_cameraexposure_Value                     Description-prop:

+--------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Value                    | Description                                                                                                                         |
+==========================+=====================================================================================================================================+
.. _sdk_qtmultimedia_cameraexposure_Camera.MeteringAverage    An average is used to measure exposure.-prop:
| Camera.MeteringMatrix    | A matrix of sample points is used to measure exposure.                                                                              |
+--------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_cameraexposure_Camera.MeteringSpot       A specific location (-prop:
| Camera.MeteringAverage   | An average is used to measure exposure.                                                                                             |
+--------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Camera.MeteringSpot      | A specific location (:ref:`spotMeteringPoint <sdk_qtmultimedia_cameraexposure#spotMeteringPoint-prop>`) is used to measure exposure.   |
+--------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_qtmultimedia_cameraexposure_shutterSpeed-prop:

+--------------------------------------------------------------------------+
|        \ shutterSpeed : real                                             |
+--------------------------------------------------------------------------+

This property holds the camera's current shutter speed value in seconds.
To affect the shutter speed you can use the
:ref:`manualShutterSpeed <sdk_qtmultimedia_cameraexposure#manualShutterSpeed-prop>`
property and
:ref:`setAutoShutterSpeed() <sdk_qtmultimedia_cameraexposure#setAutoShutterSpeed-method>`.

| 

.. _sdk_qtmultimedia_cameraexposure_spotMeteringPoint-method:

+--------------------------------------------------------------------------+
|        \ spotMeteringPoint : QPointF                                     |
+--------------------------------------------------------------------------+

The property holds the frame coordinates of the point to use for
exposure metering. This point is only used in spot metering mode, and it
typically defaults to the center ``(0.5, 0.5)``.

| 

Method Documentation
--------------------

.. _sdk_qtmultimedia_cameraexposure_setAutoAperture-method:

+--------------------------------------------------------------------------+
|        \ setAutoAperture()                                               |
+--------------------------------------------------------------------------+

Turn on auto aperture selection. The manual aperture value is reset to
-1.0

| 

.. _sdk_qtmultimedia_cameraexposure_setAutoIsoSensitivity-method:

+--------------------------------------------------------------------------+
|        \ setAutoIsoSensitivity()                                         |
+--------------------------------------------------------------------------+

Turn on auto ISO sensitivity selection. The manual ISO value is reset to
-1.

| 

.. _sdk_qtmultimedia_cameraexposure_setAutoShutterSpeed-method:

+--------------------------------------------------------------------------+
|        \ setAutoShutterSpeed()                                           |
+--------------------------------------------------------------------------+

Turn on auto shutter speed selection. The manual shutter speed value is
reset to -1.0

| 
