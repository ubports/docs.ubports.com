.. _sdk_qtmultimedia_cameraflash:
QtMultimedia CameraFlash
========================

An interface for flash related camera settings.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`mode <sdk_qtmultimedia_cameraflash_mode-prop>` :
   enumeration
-  :ref:`ready <sdk_qtmultimedia_cameraflash_ready-prop>` : bool

Signals
-------

-  :ref:`flashModeChanged <sdk_qtmultimedia_cameraflash_flashModeChanged-signal>`\ (int)
-  :ref:`flashReady <sdk_qtmultimedia_cameraflash_flashReady-signal>`\ (bool)

Detailed Description
--------------------

CameraFlash is part of the **QtMultimedia 5.0** module.

This type allows you to operate the camera flash hardware and control
the flash mode used. Not all cameras have flash hardware (and in some
cases it is shared with the :ref:`torch <sdk_qtmultimedia_torch>`
hardware).

It should not be constructed separately, instead the ``flash`` property
of a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_ 
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

.. _sdk_qtmultimedia_cameraflash_mode-prop:

+--------------------------------------------------------------------------+
|        \ mode : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the camera flash mode.

The mode can be one of the following:

.. _sdk_qtmultimedia_cameraflash_Value                               Description-prop:

+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Value                              | Description                                                                                                                              |
+====================================+==========================================================================================================================================+
.. _sdk_qtmultimedia_cameraflash_Camera.FlashOn                      Flash is On.-prop:
| Camera.FlashOff                    | Flash is Off.                                                                                                                            |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_cameraflash_Camera.FlashAuto                    Automatic flash.-prop:
| Camera.FlashOn                     | Flash is On.                                                                                                                             |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_cameraflash_Camera.FlashRedEyeReduction         Red eye reduction flash.-prop:
| Camera.FlashAuto                   | Automatic flash.                                                                                                                         |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_cameraflash_Camera.FlashFill                    Use flash to fillin shadows.-prop:
| Camera.FlashRedEyeReduction        | Red eye reduction flash.                                                                                                                 |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_cameraflash_Camera.FlashTorch                   Constant light source, useful for focusing and video capture.-prop:
| Camera.FlashFill                   | Use flash to fillin shadows.                                                                                                             |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_cameraflash_Camera.FlashSlowSyncFrontCurtain    Use the flash in conjunction with a slow shutter speed. This mode allows better exposure of distant objects and/or motion blur effect.-prop:
| Camera.FlashTorch                  | Constant light source, useful for focusing and video capture.                                                                            |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_cameraflash_Camera.FlashSlowSyncRearCurtain     The similar mode to FlashSlowSyncFrontCurtain but flash is fired at the end of exposure.-prop:
| Camera.FlashSlowSyncFrontCurtain   | Use the flash in conjunction with a slow shutter speed. This mode allows better exposure of distant objects and/or motion blur effect.   |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_cameraflash_Camera.FlashManual                  Flash power is manually set.-prop:
| Camera.FlashSlowSyncRearCurtain    | The similar mode to FlashSlowSyncFrontCurtain but flash is fired at the end of exposure.                                                 |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Camera.FlashManual                 | Flash power is manually set.                                                                                                             |
+------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_qtmultimedia_cameraflash_ready-prop:

+--------------------------------------------------------------------------+
|        \ ready : bool                                                    |
+--------------------------------------------------------------------------+

This property indicates whether the flash is charged.

| 

Signal Documentation
--------------------

.. _sdk_qtmultimedia_cameraflash_flashModeChanged(int)-prop:

+--------------------------------------------------------------------------+
|        \ flashModeChanged(int)                                           |
+--------------------------------------------------------------------------+

This signal is emitted when the ``flashMode`` property is changed. The
corresponding handler is ``onFlashModeChanged``.

| 

.. _sdk_qtmultimedia_cameraflash_flashReady(bool)-prop:

+--------------------------------------------------------------------------+
|        \ flashReady(bool)                                                |
+--------------------------------------------------------------------------+

This signal is emitted when QCameraExposure indicates that the flash is
ready to use. The corresponding handler is ``onFlashReadyChanged``.

| 
