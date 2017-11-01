An interface for exposure related camera settings.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`aperture </sdk/apps/qml/QtMultimedia/CameraExposure#aperture-prop>`__****
   : real
-  ****`exposureCompensation </sdk/apps/qml/QtMultimedia/CameraExposure#exposureCompensation-prop>`__****
   : real
-  ****`exposureMode </sdk/apps/qml/QtMultimedia/CameraExposure#exposureMode-prop>`__****
   : enumeration
-  ****`iso </sdk/apps/qml/QtMultimedia/CameraExposure#iso-prop>`__****
   : int
-  ****`manualAperture </sdk/apps/qml/QtMultimedia/CameraExposure#manualAperture-prop>`__****
   : real
-  ****`manualIso </sdk/apps/qml/QtMultimedia/CameraExposure#manualIso-prop>`__****
   : real
-  ****`manualShutterSpeed </sdk/apps/qml/QtMultimedia/CameraExposure#manualShutterSpeed-prop>`__****
   : real
-  ****`meteringMode </sdk/apps/qml/QtMultimedia/CameraExposure#meteringMode-prop>`__****
   : enumeration
-  ****`shutterSpeed </sdk/apps/qml/QtMultimedia/CameraExposure#shutterSpeed-prop>`__****
   : real
-  ****`spotMeteringPoint </sdk/apps/qml/QtMultimedia/CameraExposure#spotMeteringPoint-prop>`__****
   : QPointF

Methods
-------

-  ****`setAutoAperture </sdk/apps/qml/QtMultimedia/CameraExposure#setAutoAperture-method>`__****\ ()
-  ****`setAutoIsoSensitivity </sdk/apps/qml/QtMultimedia/CameraExposure#setAutoIsoSensitivity-method>`__****\ ()
-  ****`setAutoShutterSpeed </sdk/apps/qml/QtMultimedia/CameraExposure#setAutoShutterSpeed-method>`__****\ ()

Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

`CameraExposure </sdk/apps/qml/QtMultimedia/CameraExposure/>`__ allows
you to adjust exposure related settings like aperture and shutter speed,
metering and ISO speed.

It should not be constructed separately, instead the ``exposure``
property of the a
`Camera </sdk/apps/qml/QtMultimedia/qml-multimedia#camera>`__ should be
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

+--------------------------------------------------------------------------+
|        \ aperture : real                                                 |
+--------------------------------------------------------------------------+

This property holds the current lens aperture as an F number (the ratio
of the focal length to effective aperture diameter).

**See also**
`manualAperture </sdk/apps/qml/QtMultimedia/CameraExposure#manualAperture-prop>`__
and
`setAutoAperture() </sdk/apps/qml/QtMultimedia/CameraExposure#setAutoAperture-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ exposureCompensation : real                                     |
+--------------------------------------------------------------------------+

This property holds the adjustment value for the automatically
calculated exposure. The value is in EV units.

| 

+--------------------------------------------------------------------------+
|        \ exposureMode : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the camera exposure mode.

The mode can be one of the following:

+--------------------------------+------------------------------------------------------+
| Value                          | Description                                          |
+================================+======================================================+
| Camera.ExposureManual          | Manual mode.                                         |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureAuto            | Automatic mode.                                      |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureNight           | Night mode.                                          |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureBacklight       | Backlight exposure mode.                             |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureSpotlight       | Spotlight exposure mode.                             |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureSports          | Spots exposure mode.                                 |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureSnow            | Snow exposure mode.                                  |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureBeach           | Beach exposure mode.                                 |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureLargeAperture   | Use larger aperture with small depth of field.       |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureSmallAperture   | Use smaller aperture.                                |
+--------------------------------+------------------------------------------------------+
| Camera.ExposurePortrait        | Portrait exposure mode.                              |
+--------------------------------+------------------------------------------------------+
| Camera.ExposureModeVendor      | The base value for device specific exposure modes.   |
+--------------------------------+------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ iso : int                                                       |
+--------------------------------------------------------------------------+

This property holds the sensor's ISO sensitivity value.

| 

+--------------------------------------------------------------------------+
|        \ manualAperture : real                                           |
+--------------------------------------------------------------------------+

This property holds the aperture (F number) value for capturing photos.

If the value is less than zero, the camera automatically determines an
appropriate aperture value.

`aperture </sdk/apps/qml/QtMultimedia/CameraExposure#aperture-prop>`__,
`setAutoAperture() </sdk/apps/qml/QtMultimedia/CameraExposure#setAutoAperture-method>`__

| 

+--------------------------------------------------------------------------+
|        \ manualIso : real                                                |
+--------------------------------------------------------------------------+

This property holds the ISO settings for capturing photos.

If a negative value is specified, the camera will automatically
determine an appropriate value.

**See also**
`iso </sdk/apps/qml/QtMultimedia/CameraExposure#iso-prop>`__ and
`setAutoIsoSensitivity() </sdk/apps/qml/QtMultimedia/CameraExposure#setAutoIsoSensitivity-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ manualShutterSpeed : real                                       |
+--------------------------------------------------------------------------+

This property holds the shutter speed value (in seconds). If the value
is less than zero, the camera automatically determines an appropriate
shutter speed.

`shutterSpeed </sdk/apps/qml/QtMultimedia/CameraExposure#shutterSpeed-prop>`__,
`setAutoShutterSpeed() </sdk/apps/qml/QtMultimedia/CameraExposure#setAutoShutterSpeed-method>`__

| 

+--------------------------------------------------------------------------+
|        \ meteringMode : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the camera metering mode (how exposure is balanced).

The mode can be one of the following:

+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Value                    | Description                                                                                                                                   |
+==========================+===============================================================================================================================================+
| Camera.MeteringMatrix    | A matrix of sample points is used to measure exposure.                                                                                        |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.MeteringAverage   | An average is used to measure exposure.                                                                                                       |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.MeteringSpot      | A specific location (`spotMeteringPoint </sdk/apps/qml/QtMultimedia/CameraExposure#spotMeteringPoint-prop>`__) is used to measure exposure.   |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ shutterSpeed : real                                             |
+--------------------------------------------------------------------------+

This property holds the camera's current shutter speed value in seconds.
To affect the shutter speed you can use the
`manualShutterSpeed </sdk/apps/qml/QtMultimedia/CameraExposure#manualShutterSpeed-prop>`__
property and
`setAutoShutterSpeed() </sdk/apps/qml/QtMultimedia/CameraExposure#setAutoShutterSpeed-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ spotMeteringPoint : QPointF                                     |
+--------------------------------------------------------------------------+

The property holds the frame coordinates of the point to use for
exposure metering. This point is only used in spot metering mode, and it
typically defaults to the center ``(0.5, 0.5)``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ setAutoAperture()                                               |
+--------------------------------------------------------------------------+

Turn on auto aperture selection. The manual aperture value is reset to
-1.0

| 

+--------------------------------------------------------------------------+
|        \ setAutoIsoSensitivity()                                         |
+--------------------------------------------------------------------------+

Turn on auto ISO sensitivity selection. The manual ISO value is reset to
-1.

| 

+--------------------------------------------------------------------------+
|        \ setAutoShutterSpeed()                                           |
+--------------------------------------------------------------------------+

Turn on auto shutter speed selection. The manual shutter speed value is
reset to -1.0

| 
