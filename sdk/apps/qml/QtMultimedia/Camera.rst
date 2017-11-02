.. _sdk_qtmultimedia_camera:
QtMultimedia Camera
===================

Access viewfinder frames, and take photos and movies.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`availability <sdk_qtmultimedia_camera_availability-prop>`
   : enumeration
-  :ref:`cameraState <sdk_qtmultimedia_camera_cameraState-prop>` :
   enumeration
-  :ref:`cameraStatus <sdk_qtmultimedia_camera_cameraStatus-prop>`
   : enumeration
-  :ref:`captureMode <sdk_qtmultimedia_camera_captureMode-prop>` :
   enumeration
-  :ref:`deviceId <sdk_qtmultimedia_camera_deviceId-prop>` : string
-  :ref:`digitalZoom <sdk_qtmultimedia_camera_digitalZoom-prop>` :
   real
-  :ref:`displayName <sdk_qtmultimedia_camera_displayName-prop>` :
   string
-  :ref:`errorCode <sdk_qtmultimedia_camera_errorCode-prop>` :
   enumeration
-  :ref:`errorString <sdk_qtmultimedia_camera_errorString-prop>` :
   string
-  :ref:`lockStatus <sdk_qtmultimedia_camera_lockStatus-prop>` :
   enumeration
-  :ref:`maximumDigitalZoom <sdk_qtmultimedia_camera_maximumDigitalZoom-prop>`
   : real
-  :ref:`maximumOpticalZoom <sdk_qtmultimedia_camera_maximumOpticalZoom-prop>`
   : real
-  :ref:`mediaObject <sdk_qtmultimedia_camera_mediaObject-prop>` :
   variant
-  :ref:`metaData <sdk_qtmultimedia_camera_metaData-prop>`

   -  :ref:`metaData.gpsLatitude <sdk_qtmultimedia_camera_metaData.gpsLatitude-prop>`
      : variant
   -  :ref:`metaData.gpsLongitude <sdk_qtmultimedia_camera_metaData.gpsLongitude-prop>`
      : variant
   -  :ref:`metaData.gpsAltitude <sdk_qtmultimedia_camera_metaData.gpsAltitude-prop>`
      : variant

-  :ref:`metaData.cameraManufacturer <sdk_qtmultimedia_camera_metaData.cameraManufacturer-prop>`
   : variant
-  :ref:`metaData.cameraModel <sdk_qtmultimedia_camera_metaData.cameraModel-prop>`
   : variant
-  :ref:`metaData.dateTimeOriginal <sdk_qtmultimedia_camera_metaData.dateTimeOriginal-prop>`
   : variant
-  :ref:`metaData.event <sdk_qtmultimedia_camera_metaData.event-prop>`
   : variant
-  :ref:`metaData.gpsImgDirection <sdk_qtmultimedia_camera_metaData.gpsImgDirection-prop>`
   : variant
-  :ref:`metaData.gpsProcessingMethod <sdk_qtmultimedia_camera_metaData.gpsProcessingMethod-prop>`
   : variant
-  :ref:`metaData.gpsSpeed <sdk_qtmultimedia_camera_metaData.gpsSpeed-prop>`
   : variant
-  :ref:`metaData.gpsTimestamp <sdk_qtmultimedia_camera_metaData.gpsTimestamp-prop>`
   : variant
-  :ref:`metaData.gpsTrack <sdk_qtmultimedia_camera_metaData.gpsTrack-prop>`
   : variant
-  :ref:`metaData.orientation <sdk_qtmultimedia_camera_metaData.orientation-prop>`
   : variant
-  :ref:`metaData.subject <sdk_qtmultimedia_camera_metaData.subject-prop>`
   : variant
-  :ref:`opticalZoom <sdk_qtmultimedia_camera_opticalZoom-prop>` :
   real
-  :ref:`orientation <sdk_qtmultimedia_camera_orientation-prop>` :
   int
-  :ref:`position <sdk_qtmultimedia_camera_position-prop>` :
   enumeration
-  :ref:`viewfinder <sdk_qtmultimedia_camera_viewfinder-prop>`

   -  :ref:`viewfinder.minimumFrameRate <sdk_qtmultimedia_camera_viewfinder.minimumFrameRate-prop>`
      : real
   -  :ref:`viewfinder.maximumFrameRate <sdk_qtmultimedia_camera_viewfinder.maximumFrameRate-prop>`
      : real

-  :ref:`viewfinder.resolution <sdk_qtmultimedia_camera_viewfinder.resolution-prop>`
   : size

Signals
-------

-  :ref:`cameraStateChanged <sdk_qtmultimedia_camera_cameraStateChanged-signal>`\ (state)
-  :ref:`digitalZoomChanged <sdk_qtmultimedia_camera_digitalZoomChanged-signal>`\ (zoom)
-  :ref:`error <sdk_qtmultimedia_camera_error-signal>`\ (errorCode,
   errorString)
-  :ref:`lockStatusChanged <sdk_qtmultimedia_camera_lockStatusChanged-signal>`\ ()
-  :ref:`manualWhiteBalanceChanged <sdk_qtmultimedia_camera_manualWhiteBalanceChanged-signal>`\ (qreal)
-  :ref:`maximumDigitalZoomChanged <sdk_qtmultimedia_camera_maximumDigitalZoomChanged-signal>`\ (zoom)
-  :ref:`maximumOpticalZoomChanged <sdk_qtmultimedia_camera_maximumOpticalZoomChanged-signal>`\ (zoom)
-  :ref:`opticalZoomChanged <sdk_qtmultimedia_camera_opticalZoomChanged-signal>`\ (zoom)
-  :ref:`whiteBalanceModeChanged <sdk_qtmultimedia_camera_whiteBalanceModeChanged-signal>`\ (Camera::WhiteBalanceMode)

Methods
-------

-  :ref:`searchAndLock <sdk_qtmultimedia_camera_searchAndLock-method>`\ ()
-  :ref:`start <sdk_qtmultimedia_camera_start-method>`\ ()
-  :ref:`stop <sdk_qtmultimedia_camera_stop-method>`\ ()
-  :ref:`unlock <sdk_qtmultimedia_camera_unlock-method>`\ ()

Detailed Description
--------------------

You can use ``Camera`` to capture images and movies from a camera, and
manipulate the capture and processing settings that get applied to the
images. To display the viewfinder you can use
:ref:`VideoOutput <sdk_qtmultimedia_videooutput>` with the Camera set as
the source.

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

If multiple cameras are available, you can select which one to use by
setting the :ref:`deviceId <sdk_qtmultimedia_camera#deviceId-prop>`
property to a value from
:ref:`QtMultimedia.availableCameras <sdk_qtmultimedia_qtmultimedia#availableCameras-prop>`.
On a mobile device, you can conveniently switch between front-facing and
back-facing cameras by setting the
:ref:`position <sdk_qtmultimedia_camera#position-prop>` property.

The various settings and functionality of the Camera stack is spread
across a few different child properties of Camera.

+----------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Property                                                       | Description                                                                                |
+================================================================+============================================================================================+
| :ref:`imageCapture <sdk_qtmultimedia_cameracapture>`              | Methods and properties for capturing still images.                                         |
+----------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| :ref:`videoRecording <sdk_qtmultimedia_camerarecorder>`        | Methods and properties for capturing movies.                                               |
+----------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| :ref:`exposure <sdk_qtmultimedia_cameraexposure>`              | Methods and properties for adjusting exposure (aperture, shutter speed etc).               |
+----------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| :ref:`focus <sdk_qtmultimedia_camerafocus>`                    | Methods and properties for adjusting focus and providing feedback on autofocus progress.   |
+----------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| :ref:`flash <sdk_qtmultimedia_cameraflash>`                    | Methods and properties for controlling the camera flash.                                   |
+----------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| :ref:`imageProcessing <sdk_qtmultimedia_cameraimageprocessing>`| Methods and properties for adjusting camera image processing parameters.                   |
+----------------------------------------------------------------+--------------------------------------------------------------------------------------------+

Basic camera state management, error reporting, and simple zoom
properties are available in the Camera itself. For integration with C++
code, the :ref:`mediaObject <sdk_qtmultimedia_camera#mediaObject-prop>`
property allows you to access the standard Qt Multimedia camera
controls.

Many of the camera settings may take some time to apply, and might be
limited to certain supported values depending on the hardware. Some
camera settings may be set manually or automatically. These settings
properties contain the current set value. For example, when autofocus is
enabled the focus zones are exposed in the
:ref:`focus <sdk_qtmultimedia_camerafocus>` property.

For additional information, read also the `camera
overview </sdk/apps/qml/QtMultimedia/cameraoverview/>`_ .

Property Documentation
----------------------

.. _sdk_qtmultimedia_camera_availability-prop:

+--------------------------------------------------------------------------+
|        \ availability : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the availability state of the camera.

The availability states can be one of the following:

.. _sdk_qtmultimedia_camera_Value              Description-prop:

+-------------------+------------------------------------------------------------------------------------------------------------+
| Value             | Description                                                                                                |
+===================+============================================================================================================+
.. _sdk_qtmultimedia_camera_Busy               The camera is busy at the moment as it is being used by another process.-prop:
| Available         | The camera is available to use                                                                             |
+-------------------+------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_camera_Unavailable        The camera is not available to use (there may be no camera hardware)-prop:
| Busy              | The camera is busy at the moment as it is being used by another process.                                   |
+-------------------+------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_camera_ResourceMissing    The camera cannot be used because of missing resources. It may be possible to try again at a later time.-prop:
| Unavailable       | The camera is not available to use (there may be no camera hardware)                                       |
+-------------------+------------------------------------------------------------------------------------------------------------+
| ResourceMissing   | The camera cannot be used because of missing resources. It may be possible to try again at a later time.   |
+-------------------+------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_qtmultimedia_camera_cameraState-prop:

+--------------------------------------------------------------------------+
|        \ cameraState : enumeration                                       |
+--------------------------------------------------------------------------+

This property holds the camera object's current state, which can be one
of the following:

.. _sdk_qtmultimedia_camera_Value                                 Description-prop:

+--------------------------------------+--------------------------------------+
| Value                                | Description                          |
+======================================+======================================+
| UnloadedState                        | The initial camera state, with the   |
|                                      | camera not loaded. The camera        |
|                                      | capabilities (with the exception of  |
|                                      | supported capture modes) are         |
|                                      | unknown. This state saves the most   |
|                                      | power, but takes the longest time to |
|                                      | be ready for capture.                |
|                                      | While the supported settings are     |
|                                      | unknown in this state, you can still |
|                                      | set the camera capture settings like |
.. _sdk_qtmultimedia_camera_LoadedState                           The camera is loaded and ready to be-prop:
|                                      | codec, resolution, or frame rate.    |
+--------------------------------------+--------------------------------------+
| LoadedState                          | The camera is loaded and ready to be |
|                                      | configured.                          |
|                                      | In the Idle state you can query      |
|                                      | camera capabilities, set capture     |
|                                      | resolution, codecs, and so on.       |
|                                      |                                      |
|                                      | The viewfinder is not active in the  |
.. _sdk_qtmultimedia_camera_ActiveState                           In the active state the viewfinder-prop:
|                                      | loaded state.                        |
+--------------------------------------+--------------------------------------+
| ActiveState                          | In the active state the viewfinder   |
|                                      | frames are available and the camera  |
|                                      | is ready for capture.                |
+--------------------------------------+--------------------------------------+

The default camera state is ActiveState.

| 

.. _sdk_qtmultimedia_camera_cameraStatus-prop:

+--------------------------------------------------------------------------+
|        \ cameraStatus : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the camera object's current status, which can be one
of the following:

.. _sdk_qtmultimedia_camera_Value                                 Description-prop:

+--------------------------------------+--------------------------------------+
| Value                                | Description                          |
+======================================+======================================+
| ActiveStatus                         | The camera has been started and can  |
|                                      | produce data, viewfinder displays    |
|                                      | video frames.                        |
|                                      | Depending on backend, changing       |
|                                      | camera settings such as capture      |
|                                      | mode, codecs, or resolution in       |
|                                      | ActiveState may lead to changing the |
|                                      | status to LoadedStatus and           |
|                                      | StartingStatus while the settings    |
|                                      | are applied, and back to             |
|                                      | ActiveStatus when the camera is      |
.. _sdk_qtmultimedia_camera_StartingStatus                        The camera is starting as a result-prop:
|                                      | ready.                               |
+--------------------------------------+--------------------------------------+
| StartingStatus                       | The camera is starting as a result   |
|                                      | of state transition to               |
|                                      | Camera.ActiveState. The camera       |
.. _sdk_qtmultimedia_camera_StoppingStatus                        The camera is stopping as a result-prop:
|                                      | service is not ready to capture yet. |
+--------------------------------------+--------------------------------------+
| StoppingStatus                       | The camera is stopping as a result   |
|                                      | of state transition from             |
|                                      | Camera.ActiveState to                |
|                                      | Camera.LoadedState or                |
.. _sdk_qtmultimedia_camera_StandbyStatus                         The camera is in the power saving-prop:
|                                      | Camera.UnloadedState.                |
+--------------------------------------+--------------------------------------+
| StandbyStatus                        | The camera is in the power saving    |
|                                      | standby mode. The camera may enter   |
|                                      | standby mode after some time of      |
|                                      | inactivity in the Camera.LoadedState |
.. _sdk_qtmultimedia_camera_LoadedStatus                          The camera is loaded and ready to be-prop:
|                                      | state.                               |
+--------------------------------------+--------------------------------------+
| LoadedStatus                         | The camera is loaded and ready to be |
|                                      | configured. This status indicates    |
|                                      | the camera device is opened and it's |
|                                      | possible to query for supported      |
|                                      | image and video capture settings     |
|                                      | such as resolution, frame rate, and  |
.. _sdk_qtmultimedia_camera_LoadingStatus                         The camera device loading as a-prop:
|                                      | codecs.                              |
+--------------------------------------+--------------------------------------+
| LoadingStatus                        | The camera device loading as a       |
|                                      | result of state transition from      |
|                                      | Camera.UnloadedState to              |
|                                      | Camera.LoadedState or                |
.. _sdk_qtmultimedia_camera_UnloadingStatus                       The camera device is unloading as a-prop:
|                                      | Camera.ActiveState.                  |
+--------------------------------------+--------------------------------------+
| UnloadingStatus                      | The camera device is unloading as a  |
|                                      | result of state transition from      |
|                                      | Camera.LoadedState or                |
|                                      | Camera.ActiveState to                |
.. _sdk_qtmultimedia_camera_UnloadedStatus                        The initial camera status, with-prop:
|                                      | Camera.UnloadedState.                |
+--------------------------------------+--------------------------------------+
| UnloadedStatus                       | The initial camera status, with      |
|                                      | camera not loaded. The camera        |
|                                      | capabilities including supported     |
.. _sdk_qtmultimedia_camera_UnavailableStatus                     The camera or camera backend is not-prop:
|                                      | capture settings may be unknown.     |
+--------------------------------------+--------------------------------------+
| UnavailableStatus                    | The camera or camera backend is not  |
|                                      | available.                           |
+--------------------------------------+--------------------------------------+

| 

.. _sdk_qtmultimedia_camera_captureMode-prop:

+--------------------------------------------------------------------------+
|        \ captureMode : enumeration                                       |
+--------------------------------------------------------------------------+

This property holds the camera capture mode, which can be one of the
following:

.. _sdk_qtmultimedia_camera_Value                Description-prop:

+---------------------+----------------------------------------------------+
| Value               | Description                                        |
+=====================+====================================================+
.. _sdk_qtmultimedia_camera_CaptureStillImage    Prepares the Camera for capturing still images.-prop:
| CaptureViewfinder   | Camera is only configured to display viewfinder.   |
+---------------------+----------------------------------------------------+
.. _sdk_qtmultimedia_camera_CaptureVideo         Prepares the Camera for capturing video.-prop:
| CaptureStillImage   | Prepares the Camera for capturing still images.    |
+---------------------+----------------------------------------------------+
| CaptureVideo        | Prepares the Camera for capturing video.           |
+---------------------+----------------------------------------------------+

The default capture mode is ``CaptureStillImage``.

| 

.. _sdk_qtmultimedia_camera_deviceId-prop:

+--------------------------------------------------------------------------+
|        \ deviceId : string                                               |
+--------------------------------------------------------------------------+

This property holds the unique identifier for the camera device being
used. It may not be human-readable.

You can get all available device IDs from
:ref:`QtMultimedia.availableCameras <sdk_qtmultimedia_qtmultimedia#availableCameras-prop>`.
If no value is provided or if set to an empty string, the system's
default camera will be used.

If possible, :ref:`cameraState <sdk_qtmultimedia_camera#cameraState-prop>`,
:ref:`captureMode <sdk_qtmultimedia_camera#captureMode-prop>`,
:ref:`digitalZoom <sdk_qtmultimedia_camera#digitalZoom-prop>` and other
camera parameters are preserved when changing the camera device.

This QML property was introduced in QtMultimedia 5.4.

**See also** :ref:`displayName <sdk_qtmultimedia_camera#displayName-prop>`
and :ref:`position <sdk_qtmultimedia_camera#position-prop>`.

| 

.. _sdk_qtmultimedia_camera_digitalZoom-prop:

+--------------------------------------------------------------------------+
|        \ digitalZoom : real                                              |
+--------------------------------------------------------------------------+

This property holds the current digital zoom factor.

| 

.. _sdk_qtmultimedia_camera_[read-only] displayName-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] displayName : string                                |
+--------------------------------------------------------------------------+

This property holds the human-readable name of the camera.

You can use this property to display the name of the camera in a user
interface.

This QML property was introduced in QtMultimedia 5.4.

**See also** :ref:`deviceId <sdk_qtmultimedia_camera#deviceId-prop>`.

| 

.. _sdk_qtmultimedia_camera_errorCode-prop:

+--------------------------------------------------------------------------+
|        \ errorCode : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the last error code.

**See also** :ref:`error <sdk_qtmultimedia_camera#error-signal>` and
:ref:`errorString <sdk_qtmultimedia_camera#errorString-prop>`.

| 

.. _sdk_qtmultimedia_camera_errorString-prop:

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This property holds the last error string, if any.

**See also** :ref:`error <sdk_qtmultimedia_camera#error-signal>` and
:ref:`errorCode <sdk_qtmultimedia_camera#errorCode-prop>`.

| 

.. _sdk_qtmultimedia_camera_lockStatus-prop:

+--------------------------------------------------------------------------+
|        \ lockStatus : enumeration                                        |
+--------------------------------------------------------------------------+

This property holds the status of all the requested camera locks.

The status can be one of the following values:

.. _sdk_qtmultimedia_camera_Value                                 Description-prop:

+--------------------------------------+--------------------------------------+
| Value                                | Description                          |
+======================================+======================================+
| Unlocked                             | The application is not interested in |
|                                      | camera settings value. The camera    |
|                                      | may keep this parameter without      |
|                                      | changes, which is common with camera |
|                                      | focus, or adjust exposure and white  |
|                                      | balance constantly to keep the       |
.. _sdk_qtmultimedia_camera_Searching                             The application has requested the-prop:
|                                      | viewfinder image nice.               |
+--------------------------------------+--------------------------------------+
| Searching                            | The application has requested the    |
|                                      | camera focus, exposure, or white     |
|                                      | balance lock with                    |
|                                      | :ref:`searchAndLock() <sdk_qtmultimedia_c |
|                                      | amera#searchAndLock-method>`_ .      |
|                                      | This state indicates the camera is   |
|                                      | focusing or calculating exposure and |
.. _sdk_qtmultimedia_camera_Locked                                The camera focus, exposure, or white-prop:
|                                      | white balance.                       |
+--------------------------------------+--------------------------------------+
| Locked                               | The camera focus, exposure, or white |
|                                      | balance is locked. The camera is     |
|                                      | ready to capture, and the            |
|                                      | application may check the exposure   |
|                                      | parameters.                          |
|                                      | The locked state usually means the   |
|                                      | requested parameter stays the same,  |
|                                      | except in cases where the parameter  |
|                                      | is requested to be updated           |
|                                      | constantly. For example in           |
|                                      | continuous focusing mode, the focus  |
|                                      | is considered locked as long as the  |
|                                      | object is in focus, even while the   |
|                                      | actual focusing distance may be      |
|                                      | constantly changing.                 |
+--------------------------------------+--------------------------------------+

| 

.. _sdk_qtmultimedia_camera_maximumDigitalZoom-prop:

+--------------------------------------------------------------------------+
|        \ maximumDigitalZoom : real                                       |
+--------------------------------------------------------------------------+

This property holds the maximum digital zoom factor supported, or 1.0 if
digital zoom is not supported.

| 

.. _sdk_qtmultimedia_camera_maximumOpticalZoom-prop:

+--------------------------------------------------------------------------+
|        \ maximumOpticalZoom : real                                       |
+--------------------------------------------------------------------------+

This property holds the maximum optical zoom factor supported, or 1.0 if
optical zoom is not supported.

| 

.. _sdk_qtmultimedia_camera_mediaObject-prop:

+--------------------------------------------------------------------------+
|        \ mediaObject : variant                                           |
+--------------------------------------------------------------------------+

This property holds the media object for the camera.

| 

.. _sdk_qtmultimedia_camera_**metaData group**-prop:

+--------------------------------------------------------------------------+
|        \ **metaData group**                                              |
+==========================================================================+
.. _sdk_qtmultimedia_camera_metaData.gpsLongitude-prop:
|        \ metaData.gpsLatitude : variant                                  |
+--------------------------------------------------------------------------+
.. _sdk_qtmultimedia_camera_metaData.gpsAltitude-prop:
|        \ metaData.gpsLongitude : variant                                 |
+--------------------------------------------------------------------------+
|        \ metaData.gpsAltitude : variant                                  |
+--------------------------------------------------------------------------+

These properties hold the the geographic position in decimal degrees of
the camera at time of capture.

This property group was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.cameraManufacturer-prop:

+--------------------------------------------------------------------------+
|        \ metaData.cameraManufacturer : variant                           |
+--------------------------------------------------------------------------+

This property holds the name of the manufacturer of the camera.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.cameraModel-prop:

+--------------------------------------------------------------------------+
|        \ metaData.cameraModel : variant                                  |
+--------------------------------------------------------------------------+

This property holds the name of the model of the camera.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.dateTimeOriginal-prop:

+--------------------------------------------------------------------------+
|        \ metaData.dateTimeOriginal : variant                             |
+--------------------------------------------------------------------------+

This property holds the initial time at which the photo or video is
captured.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.event-prop:

+--------------------------------------------------------------------------+
|        \ metaData.event : variant                                        |
+--------------------------------------------------------------------------+

This property holds the event during which the photo or video is to be
captured.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.gpsImgDirection-prop:

+--------------------------------------------------------------------------+
|        \ metaData.gpsImgDirection : variant                              |
+--------------------------------------------------------------------------+

This property holds direction the camera is facing at the time of
capture. It is measured in degrees clockwise from north.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.gpsProcessingMethod-prop:

+--------------------------------------------------------------------------+
|        \ metaData.gpsProcessingMethod : variant                          |
+--------------------------------------------------------------------------+

This property holds the name of the method for determining the GPS
position data.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.gpsSpeed-prop:

+--------------------------------------------------------------------------+
|        \ metaData.gpsSpeed : variant                                     |
+--------------------------------------------------------------------------+

This property holds the velocity in kilometers per hour of the camera at
time of capture.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.gpsTimestamp-prop:

+--------------------------------------------------------------------------+
|        \ metaData.gpsTimestamp : variant                                 |
+--------------------------------------------------------------------------+

This property holds the timestamp of the GPS position data.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.gpsTrack-prop:

+--------------------------------------------------------------------------+
|        \ metaData.gpsTrack : variant                                     |
+--------------------------------------------------------------------------+

This property holds direction of movement of the camera at the time of
capture. It is measured in degrees clockwise from north.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.orientation-prop:

+--------------------------------------------------------------------------+
|        \ metaData.orientation : variant                                  |
+--------------------------------------------------------------------------+

This property holds the clockwise rotation of the camera at time of
capture.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_metaData.subject-prop:

+--------------------------------------------------------------------------+
|        \ metaData.subject : variant                                      |
+--------------------------------------------------------------------------+

This property holds the name of the subject of the capture or recording.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

.. _sdk_qtmultimedia_camera_opticalZoom-prop:

+--------------------------------------------------------------------------+
|        \ opticalZoom : real                                              |
+--------------------------------------------------------------------------+

This property holds the current optical zoom factor.

| 

.. _sdk_qtmultimedia_camera_[read-only] orientation-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] orientation : int                                   |
+--------------------------------------------------------------------------+

This property holds the physical orientation of the camera sensor.

The value is the orientation angle (clockwise, in steps of 90 degrees)
of the camera sensor in relation to the display in its natural
orientation.

For example, suppose a mobile device which is naturally in portrait
orientation. The back-facing camera is mounted in landscape. If the top
side of the camera sensor is aligned with the right edge of the screen
in natural orientation, ``orientation`` returns ``270``. If the top side
of a front-facing camera sensor is aligned with the right edge of the
screen, ``orientation`` returns ``90``.

This QML property was introduced in QtMultimedia 5.4.

**See also**
:ref:`VideoOutput::orientation <sdk_qtmultimedia_videooutput#orientation-prop>`.

| 

.. _sdk_qtmultimedia_camera_position-prop:

+--------------------------------------------------------------------------+
|        \ position : enumeration                                          |
+--------------------------------------------------------------------------+

This property holds the physical position of the camera on the hardware
system.

The position can be one of the following:

-  ``Camera.UnspecifiedPosition`` - the camera position is unspecified
   or unknown.
-  ``Camera.BackFace`` - the camera is on the back face of the system
   hardware. For example on a mobile device, it means it is on the
   opposite side to that of the screem.
-  ``Camera.FrontFace`` - the camera is on the front face of the system
   hardware. For example on a mobile device, it means it is on the same
   side as that of the screen. Viewfinder frames of front-facing cameras
   are mirrored horizontally, so the users can see themselves as looking
   into a mirror. Captured images or videos are not mirrored.

On a mobile device it can be used to easily choose between front-facing
and back-facing cameras. If this property is set to
``Camera.UnspecifiedPosition``, the system's default camera will be
used.

If possible, :ref:`cameraState <sdk_qtmultimedia_camera#cameraState-prop>`,
:ref:`captureMode <sdk_qtmultimedia_camera#captureMode-prop>`,
:ref:`digitalZoom <sdk_qtmultimedia_camera#digitalZoom-prop>` and other
camera parameters are preserved when changing the camera device.

This QML property was introduced in QtMultimedia 5.4.

**See also** :ref:`deviceId <sdk_qtmultimedia_camera#deviceId-prop>`.

| 

.. _sdk_qtmultimedia_camera_**viewfinder group**-prop:

+--------------------------------------------------------------------------+
|        \ **viewfinder group**                                            |
+==========================================================================+
.. _sdk_qtmultimedia_camera_viewfinder.maximumFrameRate-prop:
|        \ viewfinder.minimumFrameRate : real                              |
+--------------------------------------------------------------------------+
|        \ viewfinder.maximumFrameRate : real                              |
+--------------------------------------------------------------------------+

These properties hold the limits of the preferred frame rate for the
viewfinder in frames per second.

This property group was introduced in Qt 5.4.

| 

.. _sdk_qtmultimedia_camera_viewfinder.resolution-prop:

+--------------------------------------------------------------------------+
|        \ viewfinder.resolution : size                                    |
+--------------------------------------------------------------------------+

This property holds the resolution of the camera viewfinder. If no
resolution is given the backend will use a default value.

This QML property was introduced in Qt 5.4.

| 

Signal Documentation
--------------------

.. _sdk_qtmultimedia_camera_cameraStateChanged(state)-prop:

+--------------------------------------------------------------------------+
|        \ cameraStateChanged(state)                                       |
+--------------------------------------------------------------------------+

This signal is emitted when the camera state has changed to *state*.
Since the state changes may take some time to occur this signal may
arrive sometime after the state change has been requested.

The corresponding handler is ``onCameraStateChanged``.

| 

.. _sdk_qtmultimedia_camera_digitalZoomChanged(zoom)-prop:

+--------------------------------------------------------------------------+
|        \ digitalZoomChanged(zoom)                                        |
+--------------------------------------------------------------------------+

This signal is emitted when the digital zoom setting has changed to
*zoom*.

The corresponding handler is ``onDigitalZoomChanged``.

| 

.. _sdk_qtmultimedia_camera_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ error(`errorCode <sdk_qtmultimedia_camera#errorCode-prop>`,   |
| :ref:`errorString <sdk_qtmultimedia_camera#errorString-prop>`)              |
+--------------------------------------------------------------------------+

This signal is emitted when an error occurs. The enumeration value
*errorCode* is one of the values defined below, and a descriptive string
value is available in *errorString*.

.. _sdk_qtmultimedia_camera_Value                       Description-prop:

+----------------------------+------------------------------------------------------------+
| Value                      | Description                                                |
+============================+============================================================+
.. _sdk_qtmultimedia_camera_CameraError                 An error has occurred.-prop:
| NoError                    | No errors have occurred.                                   |
+----------------------------+------------------------------------------------------------+
.. _sdk_qtmultimedia_camera_InvalidRequestError         System resource doesn't support requested functionality.-prop:
| CameraError                | An error has occurred.                                     |
+----------------------------+------------------------------------------------------------+
.. _sdk_qtmultimedia_camera_ServiceMissingError         No camera service available.-prop:
| InvalidRequestError        | System resource doesn't support requested functionality.   |
+----------------------------+------------------------------------------------------------+
.. _sdk_qtmultimedia_camera_NotSupportedFeatureError    The feature is not supported.-prop:
| ServiceMissingError        | No camera service available.                               |
+----------------------------+------------------------------------------------------------+
| NotSupportedFeatureError   | The feature is not supported.                              |
+----------------------------+------------------------------------------------------------+

The corresponding handler is ``onError``.

**See also** :ref:`errorCode <sdk_qtmultimedia_camera#errorCode-prop>` and
:ref:`errorString <sdk_qtmultimedia_camera#errorString-prop>`.

| 

.. _sdk_qtmultimedia_camera_lockStatusChanged()-prop:

+--------------------------------------------------------------------------+
|        \ lockStatusChanged()                                             |
+--------------------------------------------------------------------------+

This signal is emitted when the lock status (focus, exposure etc)
changes. This can happen when locking (e.g. autofocusing) is complete or
has failed.

The corresponding handler is ``onLockStatusChanged``.

| 

.. _sdk_qtmultimedia_camera_manualWhiteBalanceChanged(qreal)-prop:

+--------------------------------------------------------------------------+
|        \ manualWhiteBalanceChanged(qreal)                                |
+--------------------------------------------------------------------------+

This signal is emitted when the ``manualWhiteBalance`` property is
changed.

The corresponding handler is ``onManualWhiteBalanceChanged``.

| 

.. _sdk_qtmultimedia_camera_maximumDigitalZoomChanged(zoom)-prop:

+--------------------------------------------------------------------------+
|        \ maximumDigitalZoomChanged(zoom)                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the maximum digital zoom setting has changed
to *zoom*. This can occur when you change between video and still image
capture modes, or the capture settings are changed.

The corresponding handler is ``onMaximumDigitalZoomChanged``.

| 

.. _sdk_qtmultimedia_camera_maximumOpticalZoomChanged-method:

+--------------------------------------------------------------------------+
|        \ maximumOpticalZoomChanged(zoom)                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the maximum optical zoom setting has changed
to *zoom*. This can occur when you change between video and still image
capture modes, or the capture settings are changed.

The corresponding handler is ``onMaximumOpticalZoomChanged``.

| 

.. _sdk_qtmultimedia_camera_opticalZoomChanged-method:

+--------------------------------------------------------------------------+
|        \ opticalZoomChanged(zoom)                                        |
+--------------------------------------------------------------------------+

This signal is emitted when the optical zoom setting has changed to
*zoom*.

The corresponding handler is ``onOpticalZoomChanged``.

| 

.. _sdk_qtmultimedia_camera_whiteBalanceModeChanged-method:

+--------------------------------------------------------------------------+
|        \ whiteBalanceModeChanged(Camera::WhiteBalanceMode)               |
+--------------------------------------------------------------------------+

This signal is emitted when the ``whiteBalanceMode`` property is
changed.

The corresponding handler is ``onWhiteBalanceModeChanged``.

| 

Method Documentation
--------------------

.. _sdk_qtmultimedia_camera_searchAndLock-method:

+--------------------------------------------------------------------------+
|        \ searchAndLock()                                                 |
+--------------------------------------------------------------------------+

Start focusing, exposure and white balance calculation.

This is appropriate to call when the camera focus button is pressed (or
on a camera capture button half-press). If the camera supports
autofocusing, information on the focus zones is available through the
:ref:`focus <sdk_qtmultimedia_camerafocus>` property.

| 

.. _sdk_qtmultimedia_camera_start-method:

+--------------------------------------------------------------------------+
|        \ start()                                                         |
+--------------------------------------------------------------------------+

Starts the camera. Viewfinder frames will be available and image or
movie capture will be possible.

| 

.. _sdk_qtmultimedia_camera_stop-method:

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops the camera, but leaves the camera stack loaded.

| 

.. _sdk_qtmultimedia_camera_unlock-method:

+--------------------------------------------------------------------------+
|        \ unlock()                                                        |
+--------------------------------------------------------------------------+

Unlock focus, exposure and white balance locks.

| 
