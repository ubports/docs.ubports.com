.. _sdk_qtmultimedia_camera:

QtMultimedia Camera
===================

Access viewfinder frames, and take photos and movies.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`availability <sdk_qtmultimedia_camera_availability>` : enumeration
-  :ref:`cameraState <sdk_qtmultimedia_camera_cameraState>` : enumeration
-  :ref:`cameraStatus <sdk_qtmultimedia_camera_cameraStatus>` : enumeration
-  :ref:`captureMode <sdk_qtmultimedia_camera_captureMode>` : enumeration
-  :ref:`deviceId <sdk_qtmultimedia_camera_deviceId>` : string
-  :ref:`digitalZoom <sdk_qtmultimedia_camera_digitalZoom>` : real
-  :ref:`displayName <sdk_qtmultimedia_camera_displayName>` : string
-  :ref:`errorCode <sdk_qtmultimedia_camera_errorCode>` : enumeration
-  :ref:`errorString <sdk_qtmultimedia_camera_errorString>` : string
-  :ref:`lockStatus <sdk_qtmultimedia_camera_lockStatus>` : enumeration
-  :ref:`maximumDigitalZoom <sdk_qtmultimedia_camera_maximumDigitalZoom>` : real
-  :ref:`maximumOpticalZoom <sdk_qtmultimedia_camera_maximumOpticalZoom>` : real
-  :ref:`mediaObject <sdk_qtmultimedia_camera_mediaObject>` : variant
-  :ref:`metaData <sdk_qtmultimedia_camera_metaData>`

   -  :ref:`metaData.gpsLatitude <sdk_qtmultimedia_camera_metaData_gpsLatitude>` : variant
   -  :ref:`metaData.gpsLongitude <sdk_qtmultimedia_camera_metaData_gpsLongitude>` : variant
   -  :ref:`metaData.gpsAltitude <sdk_qtmultimedia_camera_metaData_gpsAltitude>` : variant

-  :ref:`metaData.cameraManufacturer <sdk_qtmultimedia_camera_metaData_cameraManufacturer>` : variant
-  :ref:`metaData.cameraModel <sdk_qtmultimedia_camera_metaData_cameraModel>` : variant
-  :ref:`metaData.dateTimeOriginal <sdk_qtmultimedia_camera_metaData_dateTimeOriginal>` : variant
-  :ref:`metaData.event <sdk_qtmultimedia_camera_metaData_event>` : variant
-  :ref:`metaData.gpsImgDirection <sdk_qtmultimedia_camera_metaData_gpsImgDirection>` : variant
-  :ref:`metaData.gpsProcessingMethod <sdk_qtmultimedia_camera_metaData_gpsProcessingMethod>` : variant
-  :ref:`metaData.gpsSpeed <sdk_qtmultimedia_camera_metaData_gpsSpeed>` : variant
-  :ref:`metaData.gpsTimestamp <sdk_qtmultimedia_camera_metaData_gpsTimestamp>` : variant
-  :ref:`metaData.gpsTrack <sdk_qtmultimedia_camera_metaData_gpsTrack>` : variant
-  :ref:`metaData.orientation <sdk_qtmultimedia_camera_metaData_orientation>` : variant
-  :ref:`metaData.subject <sdk_qtmultimedia_camera_metaData_subject>` : variant
-  :ref:`opticalZoom <sdk_qtmultimedia_camera_opticalZoom>` : real
-  :ref:`orientation <sdk_qtmultimedia_camera_orientation>` : int
-  :ref:`position <sdk_qtmultimedia_camera_position>` : enumeration
-  :ref:`viewfinder <sdk_qtmultimedia_camera_viewfinder>`

   -  :ref:`viewfinder.minimumFrameRate <sdk_qtmultimedia_camera_viewfinder_minimumFrameRate>` : real
   -  :ref:`viewfinder.maximumFrameRate <sdk_qtmultimedia_camera_viewfinder_maximumFrameRate>` : real

-  :ref:`viewfinder.resolution <sdk_qtmultimedia_camera_viewfinder_resolution>` : size

Signals
-------

-  :ref:`cameraStateChanged <sdk_qtmultimedia_camera_cameraStateChanged>`\ (state)
-  :ref:`digitalZoomChanged <sdk_qtmultimedia_camera_digitalZoomChanged>`\ (zoom)
-  :ref:`error <sdk_qtmultimedia_camera_error>`\ (errorCode, errorString)
-  :ref:`lockStatusChanged <sdk_qtmultimedia_camera_lockStatusChanged>`\ ()
-  :ref:`manualWhiteBalanceChanged <sdk_qtmultimedia_camera_manualWhiteBalanceChanged>`\ (qreal)
-  :ref:`maximumDigitalZoomChanged <sdk_qtmultimedia_camera_maximumDigitalZoomChanged>`\ (zoom)
-  :ref:`maximumOpticalZoomChanged <sdk_qtmultimedia_camera_maximumOpticalZoomChanged>`\ (zoom)
-  :ref:`opticalZoomChanged <sdk_qtmultimedia_camera_opticalZoomChanged>`\ (zoom)
-  :ref:`whiteBalanceModeChanged <sdk_qtmultimedia_camera_whiteBalanceModeChanged>`\ (Camera::WhiteBalanceMode)

Methods
-------

-  :ref:`searchAndLock <sdk_qtmultimedia_camera_searchAndLock>`\ ()
-  :ref:`start <sdk_qtmultimedia_camera_start>`\ ()
-  :ref:`stop <sdk_qtmultimedia_camera_stop>`\ ()
-  :ref:`unlock <sdk_qtmultimedia_camera_unlock>`\ ()

Detailed Description
--------------------

You can use ``Camera`` to capture images and movies from a camera, and manipulate the capture and processing settings that get applied to the images. To display the viewfinder you can use :ref:`VideoOutput <sdk_qtmultimedia_videooutput>` with the Camera set as the source.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.4
    Item {
        width: 640
        height: 360
        Camera {
            id: camera
            imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash
            exposure {
                exposureCompensation: -1.0
                exposureMode: Camera.ExposurePortrait
            }
            flash.mode: Camera.FlashRedEyeReduction
            imageCapture {
                onImageCaptured: {
                    photoPreview.source = preview  // Show the preview in an Image
                }
            }
        }
        VideoOutput {
            source: camera
            anchors.fill: parent
            focus : visible // to receive focus and capture key events when visible
        }
        Image {
            id: photoPreview
        }
    }

If multiple cameras are available, you can select which one to use by setting the :ref:`deviceId <sdk_qtmultimedia_camera_deviceId>` property to a value from :ref:`QtMultimedia.availableCameras <sdk_qtmultimedia_qtmultimedia_availableCameras>`. On a mobile device, you can conveniently switch between front-facing and back-facing cameras by setting the :ref:`position <sdk_qtmultimedia_camera_position>` property.

The various settings and functionality of the Camera stack is spread across a few different child properties of Camera.

+----------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| Property                                                       | Description                                                                                   |
+================================================================+===============================================================================================+
| :ref:`imageCapture <sdk_qtmultimedia_cameracapture>`              | Methods and properties for capturing still images.                                         |
+----------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| :ref:`videoRecording <sdk_qtmultimedia_camerarecorder>`           | Methods and properties for capturing movies.                                               |
+----------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| :ref:`exposure <sdk_qtmultimedia_cameraexposure>`                 | Methods and properties for adjusting exposure (aperture, shutter speed etc).               |
+----------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| :ref:`focus <sdk_qtmultimedia_camerafocus>`                       | Methods and properties for adjusting focus and providing feedback on autofocus progress.   |
+----------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| :ref:`flash <sdk_qtmultimedia_cameraflash>`                       | Methods and properties for controlling the camera flash.                                   |
+----------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| :ref:`imageProcessing <sdk_qtmultimedia_cameraimageprocessing>`   | Methods and properties for adjusting camera image processing parameters.                   |
+----------------------------------------------------------------+-----------------------------------------------------------------------------------------------+

Basic camera state management, error reporting, and simple zoom properties are available in the Camera itself. For integration with C++ code, the :ref:`mediaObject <sdk_qtmultimedia_camera_mediaObject>` property allows you to access the standard Qt Multimedia camera controls.

Many of the camera settings may take some time to apply, and might be limited to certain supported values depending on the hardware. Some camera settings may be set manually or automatically. These settings properties contain the current set value. For example, when autofocus is enabled the focus zones are exposed in the :ref:`focus <sdk_qtmultimedia_camerafocus>` property.

For additional information, read also the `camera overview </sdk/apps/qml/QtMultimedia/cameraoverview/>`_ .

Property Documentation
----------------------

.. _sdk_qtmultimedia_camera_availability:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| availability : enumeration                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the availability state of the camera.

The availability states can be one of the following:

+-------------------+------------------------------------------------------------------------------------------------------------+
| Value             | Description                                                                                                |
+===================+============================================================================================================+
| Available         | The camera is available to use                                                                             |
+-------------------+------------------------------------------------------------------------------------------------------------+
| Busy              | The camera is busy at the moment as it is being used by another process.                                   |
+-------------------+------------------------------------------------------------------------------------------------------------+
| Unavailable       | The camera is not available to use (there may be no camera hardware)                                       |
+-------------------+------------------------------------------------------------------------------------------------------------+
| ResourceMissing   | The camera cannot be used because of missing resources. It may be possible to try again at a later time.   |
+-------------------+------------------------------------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_camera_cameraState:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cameraState : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the camera object's current state, which can be one of the following:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value                                                                                                                                                  | Description                                                                                                                                            |
+========================================================================================================================================================+========================================================================================================================================================+
| UnloadedState                                                                                                                                          | The initial camera state, with the camera not loaded. The camera capabilities (with the exception of supported capture modes) are unknown. This state  |
|                                                                                                                                                        | saves the most power, but takes the longest time to be ready for capture.                                                                              |
|                                                                                                                                                        | While the supported settings are unknown in this state, you can still set the camera capture settings like codec, resolution, or frame rate.           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| LoadedState                                                                                                                                            | The camera is loaded and ready to be configured.                                                                                                       |
|                                                                                                                                                        | In the Idle state you can query camera capabilities, set capture resolution, codecs, and so on.                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        | The viewfinder is not active in the loaded state.                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ActiveState                                                                                                                                            | In the active state the viewfinder frames are available and the camera is ready for capture.                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

The default camera state is ActiveState.

.. _sdk_qtmultimedia_camera_cameraStatus:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cameraStatus : enumeration                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the camera object's current status, which can be one of the following:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value                                                                                                                                                  | Description                                                                                                                                            |
+========================================================================================================================================================+========================================================================================================================================================+
| ActiveStatus                                                                                                                                           | The camera has been started and can produce data, viewfinder displays video frames.                                                                    |
|                                                                                                                                                        | Depending on backend, changing camera settings such as capture mode, codecs, or resolution in ActiveState may lead to changing the status to           |
|                                                                                                                                                        | LoadedStatus and StartingStatus while the settings are applied, and back to ActiveStatus when the camera is ready.                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| StartingStatus                                                                                                                                         | The camera is starting as a result of state transition to Camera.ActiveState. The camera service is not ready to capture yet.                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| StoppingStatus                                                                                                                                         | The camera is stopping as a result of state transition from Camera.ActiveState to Camera.LoadedState or Camera.UnloadedState.                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| StandbyStatus                                                                                                                                          | The camera is in the power saving standby mode. The camera may enter standby mode after some time of inactivity in the Camera.LoadedState state.       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| LoadedStatus                                                                                                                                           | The camera is loaded and ready to be configured. This status indicates the camera device is opened and it's possible to query for supported image and  |
|                                                                                                                                                        | video capture settings such as resolution, frame rate, and codecs.                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| LoadingStatus                                                                                                                                          | The camera device loading as a result of state transition from Camera.UnloadedState to Camera.LoadedState or Camera.ActiveState.                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| UnloadingStatus                                                                                                                                        | The camera device is unloading as a result of state transition from Camera.LoadedState or Camera.ActiveState to Camera.UnloadedState.                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| UnloadedStatus                                                                                                                                         | The initial camera status, with camera not loaded. The camera capabilities including supported capture settings may be unknown.                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| UnavailableStatus                                                                                                                                      | The camera or camera backend is not available.                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_camera_captureMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| captureMode : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the camera capture mode, which can be one of the following:

+---------------------+----------------------------------------------------+
| Value               | Description                                        |
+=====================+====================================================+
| CaptureViewfinder   | Camera is only configured to display viewfinder.   |
+---------------------+----------------------------------------------------+
| CaptureStillImage   | Prepares the Camera for capturing still images.    |
+---------------------+----------------------------------------------------+
| CaptureVideo        | Prepares the Camera for capturing video.           |
+---------------------+----------------------------------------------------+

The default capture mode is ``CaptureStillImage``.

.. _sdk_qtmultimedia_camera_deviceId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| deviceId : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the unique identifier for the camera device being used. It may not be human-readable.

You can get all available device IDs from :ref:`QtMultimedia.availableCameras <sdk_qtmultimedia_qtmultimedia_availableCameras>`. If no value is provided or if set to an empty string, the system's default camera will be used.

If possible, :ref:`cameraState <sdk_qtmultimedia_camera_cameraState>`, :ref:`captureMode <sdk_qtmultimedia_camera_captureMode>`, :ref:`digitalZoom <sdk_qtmultimedia_camera_digitalZoom>` and other camera parameters are preserved when changing the camera device.

This QML property was introduced in QtMultimedia 5.4.

**See also** :ref:`displayName <sdk_qtmultimedia_camera_displayName>` and :ref:`position <sdk_qtmultimedia_camera_position>`.

.. _sdk_qtmultimedia_camera_digitalZoom:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digitalZoom : real                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current digital zoom factor.

.. _sdk_qtmultimedia_camera_displayName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] displayName : string                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the human-readable name of the camera.

You can use this property to display the name of the camera in a user interface.

This QML property was introduced in QtMultimedia 5.4.

**See also** :ref:`deviceId <sdk_qtmultimedia_camera_deviceId>`.

.. _sdk_qtmultimedia_camera_errorCode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| errorCode : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the last error code.

**See also** :ref:`error <sdk_qtmultimedia_camera_error>` and :ref:`errorString <sdk_qtmultimedia_camera_errorString>`.

.. _sdk_qtmultimedia_camera_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| errorString : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the last error string, if any.

**See also** :ref:`error <sdk_qtmultimedia_camera_error>` and :ref:`errorCode <sdk_qtmultimedia_camera_errorCode>`.

.. _sdk_qtmultimedia_camera_lockStatus:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lockStatus : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of all the requested camera locks.

The status can be one of the following values:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value                                                                                                                                                  | Description                                                                                                                                            |
+========================================================================================================================================================+========================================================================================================================================================+
| Unlocked                                                                                                                                               | The application is not interested in camera settings value. The camera may keep this parameter without changes, which is common with camera focus, or  |
|                                                                                                                                                        | adjust exposure and white balance constantly to keep the viewfinder image nice.                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Searching                                                                                                                                              | The application has requested the camera focus, exposure, or white balance lock with                                                                   |
|                                                                                                                                                        | :ref:`searchAndLock() <sdk_qtmultimedia_camera_searchAndLock>`. This state indicates the camera is focusing or calculating exposure and white          |
|                                                                                                                                                        | balance.                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Locked                                                                                                                                                 | The camera focus, exposure, or white balance is locked. The camera is ready to capture, and the application may check the exposure parameters.         |
|                                                                                                                                                        | The locked state usually means the requested parameter stays the same, except in cases where the parameter is requested to be updated constantly. For  |
|                                                                                                                                                        | example in continuous focusing mode, the focus is considered locked as long as the object is in focus, even while the actual focusing distance may be  |
|                                                                                                                                                        | constantly changing.                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_camera_maximumDigitalZoom:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumDigitalZoom : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the maximum digital zoom factor supported, or 1.0 if digital zoom is not supported.

.. _sdk_qtmultimedia_camera_maximumOpticalZoom:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumOpticalZoom : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the maximum optical zoom factor supported, or 1.0 if optical zoom is not supported.

.. _sdk_qtmultimedia_camera_mediaObject:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mediaObject : variant                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the media object for the camera.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **metaData group**                                                                                                                                                                                                                                                                                           |
+==============================================================================================================================================================================================================================================================================================================+
| metaData.gpsLatitude : variant                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.gpsLongitude : variant                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.gpsAltitude : variant                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the the geographic position in decimal degrees of the camera at time of capture.

This property group was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_cameraManufacturer:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.cameraManufacturer : variant                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the manufacturer of the camera.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_cameraModel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.cameraModel : variant                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the model of the camera.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_dateTimeOriginal:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.dateTimeOriginal : variant                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the initial time at which the photo or video is captured.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_event:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.event : variant                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the event during which the photo or video is to be captured.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_gpsImgDirection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.gpsImgDirection : variant                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds direction the camera is facing at the time of capture. It is measured in degrees clockwise from north.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_gpsProcessingMethod:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.gpsProcessingMethod : variant                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the method for determining the GPS position data.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_gpsSpeed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.gpsSpeed : variant                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the velocity in kilometers per hour of the camera at time of capture.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_gpsTimestamp:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.gpsTimestamp : variant                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the timestamp of the GPS position data.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_gpsTrack:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.gpsTrack : variant                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds direction of movement of the camera at the time of capture. It is measured in degrees clockwise from north.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_orientation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.orientation : variant                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the clockwise rotation of the camera at time of capture.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_metaData_subject:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| metaData.subject : variant                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the subject of the capture or recording.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

.. _sdk_qtmultimedia_camera_opticalZoom:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| opticalZoom : real                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current optical zoom factor.

.. _sdk_qtmultimedia_camera_orientation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] orientation : int                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the physical orientation of the camera sensor.

The value is the orientation angle (clockwise, in steps of 90 degrees) of the camera sensor in relation to the display in its natural orientation.

For example, suppose a mobile device which is naturally in portrait orientation. The back-facing camera is mounted in landscape. If the top side of the camera sensor is aligned with the right edge of the screen in natural orientation, ``orientation`` returns ``270``. If the top side of a front-facing camera sensor is aligned with the right edge of the screen, ``orientation`` returns ``90``.

This QML property was introduced in QtMultimedia 5.4.

**See also** :ref:`VideoOutput::orientation <sdk_qtmultimedia_videooutput_orientation>`.

.. _sdk_qtmultimedia_camera_position:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| position : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the physical position of the camera on the hardware system.

The position can be one of the following:

-  ``Camera.UnspecifiedPosition`` - the camera position is unspecified or unknown.
-  ``Camera.BackFace`` - the camera is on the back face of the system hardware. For example on a mobile device, it means it is on the opposite side to that of the screem.
-  ``Camera.FrontFace`` - the camera is on the front face of the system hardware. For example on a mobile device, it means it is on the same side as that of the screen. Viewfinder frames of front-facing cameras are mirrored horizontally, so the users can see themselves as looking into a mirror. Captured images or videos are not mirrored.

On a mobile device it can be used to easily choose between front-facing and back-facing cameras. If this property is set to ``Camera.UnspecifiedPosition``, the system's default camera will be used.

If possible, :ref:`cameraState <sdk_qtmultimedia_camera_cameraState>`, :ref:`captureMode <sdk_qtmultimedia_camera_captureMode>`, :ref:`digitalZoom <sdk_qtmultimedia_camera_digitalZoom>` and other camera parameters are preserved when changing the camera device.

This QML property was introduced in QtMultimedia 5.4.

**See also** :ref:`deviceId <sdk_qtmultimedia_camera_deviceId>`.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **viewfinder group**                                                                                                                                                                                                                                                                                         |
+==============================================================================================================================================================================================================================================================================================================+
| viewfinder.minimumFrameRate : real                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| viewfinder.maximumFrameRate : real                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the limits of the preferred frame rate for the viewfinder in frames per second.

This property group was introduced in Qt 5.4.

.. _sdk_qtmultimedia_camera_viewfinder_resolution:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| viewfinder.resolution : size                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the resolution of the camera viewfinder. If no resolution is given the backend will use a default value.

This QML property was introduced in Qt 5.4.

Signal Documentation
--------------------

.. _sdk_qtmultimedia_camera_cameraStateChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cameraStateChanged(state)                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the camera state has changed to *state*. Since the state changes may take some time to occur this signal may arrive sometime after the state change has been requested.

The corresponding handler is ``onCameraStateChanged``.

.. _sdk_qtmultimedia_camera_digitalZoomChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digitalZoomChanged(zoom)                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digital zoom setting has changed to *zoom*.

The corresponding handler is ``onDigitalZoomChanged``.

.. _sdk_qtmultimedia_camera_error:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| error(:ref:`errorCode <sdk_qtmultimedia_camera_errorCode>`, :ref:`errorString <sdk_qtmultimedia_camera_errorString>`)                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when an error occurs. The enumeration value *errorCode* is one of the values defined below, and a descriptive string value is available in *errorString*.

+----------------------------+------------------------------------------------------------+
| Value                      | Description                                                |
+============================+============================================================+
| NoError                    | No errors have occurred.                                   |
+----------------------------+------------------------------------------------------------+
| CameraError                | An error has occurred.                                     |
+----------------------------+------------------------------------------------------------+
| InvalidRequestError        | System resource doesn't support requested functionality.   |
+----------------------------+------------------------------------------------------------+
| ServiceMissingError        | No camera service available.                               |
+----------------------------+------------------------------------------------------------+
| NotSupportedFeatureError   | The feature is not supported.                              |
+----------------------------+------------------------------------------------------------+

The corresponding handler is ``onError``.

**See also** :ref:`errorCode <sdk_qtmultimedia_camera_errorCode>` and :ref:`errorString <sdk_qtmultimedia_camera_errorString>`.

.. _sdk_qtmultimedia_camera_lockStatusChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lockStatusChanged()                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the lock status (focus, exposure etc) changes. This can happen when locking (e.g. autofocusing) is complete or has failed.

The corresponding handler is ``onLockStatusChanged``.

.. _sdk_qtmultimedia_camera_manualWhiteBalanceChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| manualWhiteBalanceChanged(qreal)                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the ``manualWhiteBalance`` property is changed.

The corresponding handler is ``onManualWhiteBalanceChanged``.

.. _sdk_qtmultimedia_camera_maximumDigitalZoomChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumDigitalZoomChanged(zoom)                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the maximum digital zoom setting has changed to *zoom*. This can occur when you change between video and still image capture modes, or the capture settings are changed.

The corresponding handler is ``onMaximumDigitalZoomChanged``.

.. _sdk_qtmultimedia_camera_maximumOpticalZoomChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumOpticalZoomChanged(zoom)                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the maximum optical zoom setting has changed to *zoom*. This can occur when you change between video and still image capture modes, or the capture settings are changed.

The corresponding handler is ``onMaximumOpticalZoomChanged``.

.. _sdk_qtmultimedia_camera_opticalZoomChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| opticalZoomChanged(zoom)                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the optical zoom setting has changed to *zoom*.

The corresponding handler is ``onOpticalZoomChanged``.

.. _sdk_qtmultimedia_camera_whiteBalanceModeChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| whiteBalanceModeChanged(Camera::WhiteBalanceMode)                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the ``whiteBalanceMode`` property is changed.

The corresponding handler is ``onWhiteBalanceModeChanged``.

Method Documentation
--------------------

.. _sdk_qtmultimedia_camera_searchAndLock:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| searchAndLock()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Start focusing, exposure and white balance calculation.

This is appropriate to call when the camera focus button is pressed (or on a camera capture button half-press). If the camera supports autofocusing, information on the focus zones is available through the :ref:`focus <sdk_qtmultimedia_camerafocus>` property.

.. _sdk_qtmultimedia_camera_start:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| start()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts the camera. Viewfinder frames will be available and image or movie capture will be possible.

.. _sdk_qtmultimedia_camera_stop:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stop()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Stops the camera, but leaves the camera stack loaded.

.. _sdk_qtmultimedia_camera_unlock:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| unlock()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Unlock focus, exposure and white balance locks.

