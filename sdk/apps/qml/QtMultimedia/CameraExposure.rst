.. _sdk_qtmultimedia_cameraexposure:

QtMultimedia CameraExposure
===========================

An interface for exposure related camera settings.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`aperture <sdk_qtmultimedia_cameraexposure_aperture>` : real
-  :ref:`exposureCompensation <sdk_qtmultimedia_cameraexposure_exposureCompensation>` : real
-  :ref:`exposureMode <sdk_qtmultimedia_cameraexposure_exposureMode>` : enumeration
-  :ref:`iso <sdk_qtmultimedia_cameraexposure_iso>` : int
-  :ref:`manualAperture <sdk_qtmultimedia_cameraexposure_manualAperture>` : real
-  :ref:`manualIso <sdk_qtmultimedia_cameraexposure_manualIso>` : real
-  :ref:`manualShutterSpeed <sdk_qtmultimedia_cameraexposure_manualShutterSpeed>` : real
-  :ref:`meteringMode <sdk_qtmultimedia_cameraexposure_meteringMode>` : enumeration
-  :ref:`shutterSpeed <sdk_qtmultimedia_cameraexposure_shutterSpeed>` : real
-  :ref:`spotMeteringPoint <sdk_qtmultimedia_cameraexposure_spotMeteringPoint>` : QPointF

Methods
-------

-  :ref:`setAutoAperture <sdk_qtmultimedia_cameraexposure_setAutoAperture>`\ ()
-  :ref:`setAutoIsoSensitivity <sdk_qtmultimedia_cameraexposure_setAutoIsoSensitivity>`\ ()
-  :ref:`setAutoShutterSpeed <sdk_qtmultimedia_cameraexposure_setAutoShutterSpeed>`\ ()

Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

:ref:`CameraExposure <sdk_qtmultimedia_cameraexposure>` allows you to adjust exposure related settings like aperture and shutter speed, metering and ISO speed.

It should not be constructed separately, instead the ``exposure`` property of the a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  should be used.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Camera {
        id: camera
        exposure.exposureCompensation: -1.0
        exposure.exposureMode: Camera.ExposurePortrait
    }

Several settings have both an automatic and a manual mode. In the automatic modes the camera software itself will decide what a reasonable setting is, but in most cases these settings can be overridden with a specific manual setting.

For example, to select automatic shutter speed selection:

.. code:: cpp

        camera.exposure.setAutoShutterSpeed()

Or for a specific shutter speed:

.. code:: cpp

        camera.exposure.manualShutterSpeed = 0.01 // 10ms

You can only choose one or the other mode.

Property Documentation
----------------------

.. _sdk_qtmultimedia_cameraexposure_aperture:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| aperture : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current lens aperture as an F number (the ratio of the focal length to effective aperture diameter).

**See also** :ref:`manualAperture <sdk_qtmultimedia_cameraexposure_manualAperture>` and :ref:`setAutoAperture() <sdk_qtmultimedia_cameraexposure_setAutoAperture>`.

.. _sdk_qtmultimedia_cameraexposure_exposureCompensation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| exposureCompensation : real                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the adjustment value for the automatically calculated exposure. The value is in EV units.

.. _sdk_qtmultimedia_cameraexposure_exposureMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| exposureMode : enumeration                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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

.. _sdk_qtmultimedia_cameraexposure_iso:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| iso : int                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the sensor's ISO sensitivity value.

.. _sdk_qtmultimedia_cameraexposure_manualAperture:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| manualAperture : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the aperture (F number) value for capturing photos.

If the value is less than zero, the camera automatically determines an appropriate aperture value.

:ref:`aperture <sdk_qtmultimedia_cameraexposure_aperture>`, :ref:`setAutoAperture() <sdk_qtmultimedia_cameraexposure_setAutoAperture>`

.. _sdk_qtmultimedia_cameraexposure_manualIso:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| manualIso : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the ISO settings for capturing photos.

If a negative value is specified, the camera will automatically determine an appropriate value.

**See also** :ref:`iso <sdk_qtmultimedia_cameraexposure_iso>` and :ref:`setAutoIsoSensitivity() <sdk_qtmultimedia_cameraexposure_setAutoIsoSensitivity>`.

.. _sdk_qtmultimedia_cameraexposure_manualShutterSpeed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| manualShutterSpeed : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the shutter speed value (in seconds). If the value is less than zero, the camera automatically determines an appropriate shutter speed.

:ref:`shutterSpeed <sdk_qtmultimedia_cameraexposure_shutterSpeed>`, :ref:`setAutoShutterSpeed() <sdk_qtmultimedia_cameraexposure_setAutoShutterSpeed>`

.. _sdk_qtmultimedia_cameraexposure_meteringMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| meteringMode : enumeration                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the camera metering mode (how exposure is balanced).

The mode can be one of the following:

+--------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Value                    | Description                                                                                                                         |
+==========================+=====================================================================================================================================+
| Camera.MeteringMatrix    | A matrix of sample points is used to measure exposure.                                                                              |
+--------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Camera.MeteringAverage   | An average is used to measure exposure.                                                                                             |
+--------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Camera.MeteringSpot      | A specific location (:ref:`spotMeteringPoint <sdk_qtmultimedia_cameraexposure_spotMeteringPoint>`) is used to measure exposure.     |
+--------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_cameraexposure_shutterSpeed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| shutterSpeed : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the camera's current shutter speed value in seconds. To affect the shutter speed you can use the :ref:`manualShutterSpeed <sdk_qtmultimedia_cameraexposure_manualShutterSpeed>` property and :ref:`setAutoShutterSpeed() <sdk_qtmultimedia_cameraexposure_setAutoShutterSpeed>`.

.. _sdk_qtmultimedia_cameraexposure_spotMeteringPoint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| spotMeteringPoint : QPointF                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the frame coordinates of the point to use for exposure metering. This point is only used in spot metering mode, and it typically defaults to the center ``(0.5, 0.5)``.

Method Documentation
--------------------

.. _sdk_qtmultimedia_cameraexposure_setAutoAperture:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| setAutoAperture()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Turn on auto aperture selection. The manual aperture value is reset to -1.0

.. _sdk_qtmultimedia_cameraexposure_setAutoIsoSensitivity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| setAutoIsoSensitivity()                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Turn on auto ISO sensitivity selection. The manual ISO value is reset to -1.

.. _sdk_qtmultimedia_cameraexposure_setAutoShutterSpeed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| setAutoShutterSpeed()                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Turn on auto shutter speed selection. The manual shutter speed value is reset to -1.0

