An interface for flash related camera settings.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`mode </sdk/apps/qml/QtMultimedia/CameraFlash#mode-prop>`__**** :
   enumeration
-  ****`ready </sdk/apps/qml/QtMultimedia/CameraFlash#ready-prop>`__****
   : bool

Signals
-------

-  ****`flashModeChanged </sdk/apps/qml/QtMultimedia/CameraFlash#flashModeChanged-signal>`__****\ (int)
-  ****`flashReady </sdk/apps/qml/QtMultimedia/CameraFlash#flashReady-signal>`__****\ (bool)

Detailed Description
--------------------

CameraFlash is part of the **QtMultimedia 5.0** module.

This type allows you to operate the camera flash hardware and control
the flash mode used. Not all cameras have flash hardware (and in some
cases it is shared with the
`torch </sdk/apps/qml/QtMultimedia/Torch/>`__ hardware).

It should not be constructed separately, instead the ``flash`` property
of a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia#camera>`__
should be used.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Camera {
        id: camera
        exposure.exposureCompensation: -1.0
        flash.mode: Camera.FlashRedEyeReduction
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ mode : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the camera flash mode.

The mode can be one of the following:

+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Value                              | Description                                                                                                                              |
+====================================+==========================================================================================================================================+
| Camera.FlashOff                    | Flash is Off.                                                                                                                            |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.FlashOn                     | Flash is On.                                                                                                                             |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.FlashAuto                   | Automatic flash.                                                                                                                         |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.FlashRedEyeReduction        | Red eye reduction flash.                                                                                                                 |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.FlashFill                   | Use flash to fillin shadows.                                                                                                             |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.FlashTorch                  | Constant light source, useful for focusing and video capture.                                                                            |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.FlashSlowSyncFrontCurtain   | Use the flash in conjunction with a slow shutter speed. This mode allows better exposure of distant objects and/or motion blur effect.   |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.FlashSlowSyncRearCurtain    | The similar mode to FlashSlowSyncFrontCurtain but flash is fired at the end of exposure.                                                 |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.FlashManual                 | Flash power is manually set.                                                                                                             |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ ready : bool                                                    |
+--------------------------------------------------------------------------+

This property indicates whether the flash is charged.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ flashModeChanged(int)                                           |
+--------------------------------------------------------------------------+

This signal is emitted when the ``flashMode`` property is changed. The
corresponding handler is ``onFlashModeChanged``.

| 

+--------------------------------------------------------------------------+
|        \ flashReady(bool)                                                |
+--------------------------------------------------------------------------+

This signal is emitted when QCameraExposure indicates that the flash is
ready to use. The corresponding handler is ``onFlashReadyChanged``.

| 
