Access viewfinder frames, and take photos and movies.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`availability </sdk/apps/qml/QtMultimedia/Camera#availability-prop>`__****
   : enumeration
-  ****`cameraState </sdk/apps/qml/QtMultimedia/Camera#cameraState-prop>`__****
   : enumeration
-  ****`cameraStatus </sdk/apps/qml/QtMultimedia/Camera#cameraStatus-prop>`__****
   : enumeration
-  ****`captureMode </sdk/apps/qml/QtMultimedia/Camera#captureMode-prop>`__****
   : enumeration
-  ****`deviceId </sdk/apps/qml/QtMultimedia/Camera#deviceId-prop>`__****
   : string
-  ****`digitalZoom </sdk/apps/qml/QtMultimedia/Camera#digitalZoom-prop>`__****
   : real
-  ****`displayName </sdk/apps/qml/QtMultimedia/Camera#displayName-prop>`__****
   : string
-  ****`errorCode </sdk/apps/qml/QtMultimedia/Camera#errorCode-prop>`__****
   : enumeration
-  ****`errorString </sdk/apps/qml/QtMultimedia/Camera#errorString-prop>`__****
   : string
-  ****`lockStatus </sdk/apps/qml/QtMultimedia/Camera#lockStatus-prop>`__****
   : enumeration
-  ****`maximumDigitalZoom </sdk/apps/qml/QtMultimedia/Camera#maximumDigitalZoom-prop>`__****
   : real
-  ****`maximumOpticalZoom </sdk/apps/qml/QtMultimedia/Camera#maximumOpticalZoom-prop>`__****
   : real
-  ****`mediaObject </sdk/apps/qml/QtMultimedia/Camera#mediaObject-prop>`__****
   : variant
-  ****`metaData </sdk/apps/qml/QtMultimedia/Camera#metaData-prop>`__****

   -  ****`metaData.gpsLatitude </sdk/apps/qml/QtMultimedia/Camera#metaData.gpsLatitude-prop>`__****
      : variant
   -  ****`metaData.gpsLongitude </sdk/apps/qml/QtMultimedia/Camera#metaData.gpsLongitude-prop>`__****
      : variant
   -  ****`metaData.gpsAltitude </sdk/apps/qml/QtMultimedia/Camera#metaData.gpsAltitude-prop>`__****
      : variant

-  ****`metaData.cameraManufacturer </sdk/apps/qml/QtMultimedia/Camera#metaData.cameraManufacturer-prop>`__****
   : variant
-  ****`metaData.cameraModel </sdk/apps/qml/QtMultimedia/Camera#metaData.cameraModel-prop>`__****
   : variant
-  ****`metaData.dateTimeOriginal </sdk/apps/qml/QtMultimedia/Camera#metaData.dateTimeOriginal-prop>`__****
   : variant
-  ****`metaData.event </sdk/apps/qml/QtMultimedia/Camera#metaData.event-prop>`__****
   : variant
-  ****`metaData.gpsImgDirection </sdk/apps/qml/QtMultimedia/Camera#metaData.gpsImgDirection-prop>`__****
   : variant
-  ****`metaData.gpsProcessingMethod </sdk/apps/qml/QtMultimedia/Camera#metaData.gpsProcessingMethod-prop>`__****
   : variant
-  ****`metaData.gpsSpeed </sdk/apps/qml/QtMultimedia/Camera#metaData.gpsSpeed-prop>`__****
   : variant
-  ****`metaData.gpsTimestamp </sdk/apps/qml/QtMultimedia/Camera#metaData.gpsTimestamp-prop>`__****
   : variant
-  ****`metaData.gpsTrack </sdk/apps/qml/QtMultimedia/Camera#metaData.gpsTrack-prop>`__****
   : variant
-  ****`metaData.orientation </sdk/apps/qml/QtMultimedia/Camera#metaData.orientation-prop>`__****
   : variant
-  ****`metaData.subject </sdk/apps/qml/QtMultimedia/Camera#metaData.subject-prop>`__****
   : variant
-  ****`opticalZoom </sdk/apps/qml/QtMultimedia/Camera#opticalZoom-prop>`__****
   : real
-  ****`orientation </sdk/apps/qml/QtMultimedia/Camera#orientation-prop>`__****
   : int
-  ****`position </sdk/apps/qml/QtMultimedia/Camera#position-prop>`__****
   : enumeration
-  ****`viewfinder </sdk/apps/qml/QtMultimedia/Camera#viewfinder-prop>`__****

   -  ****`viewfinder.minimumFrameRate </sdk/apps/qml/QtMultimedia/Camera#viewfinder.minimumFrameRate-prop>`__****
      : real
   -  ****`viewfinder.maximumFrameRate </sdk/apps/qml/QtMultimedia/Camera#viewfinder.maximumFrameRate-prop>`__****
      : real

-  ****`viewfinder.resolution </sdk/apps/qml/QtMultimedia/Camera#viewfinder.resolution-prop>`__****
   : size

Signals
-------

-  ****`cameraStateChanged </sdk/apps/qml/QtMultimedia/Camera#cameraStateChanged-signal>`__****\ (state)
-  ****`digitalZoomChanged </sdk/apps/qml/QtMultimedia/Camera#digitalZoomChanged-signal>`__****\ (zoom)
-  ****`error </sdk/apps/qml/QtMultimedia/Camera#error-signal>`__****\ (errorCode,
   errorString)
-  ****`lockStatusChanged </sdk/apps/qml/QtMultimedia/Camera#lockStatusChanged-signal>`__****\ ()
-  ****`manualWhiteBalanceChanged </sdk/apps/qml/QtMultimedia/Camera#manualWhiteBalanceChanged-signal>`__****\ (qreal)
-  ****`maximumDigitalZoomChanged </sdk/apps/qml/QtMultimedia/Camera#maximumDigitalZoomChanged-signal>`__****\ (zoom)
-  ****`maximumOpticalZoomChanged </sdk/apps/qml/QtMultimedia/Camera#maximumOpticalZoomChanged-signal>`__****\ (zoom)
-  ****`opticalZoomChanged </sdk/apps/qml/QtMultimedia/Camera#opticalZoomChanged-signal>`__****\ (zoom)
-  ****`whiteBalanceModeChanged </sdk/apps/qml/QtMultimedia/Camera#whiteBalanceModeChanged-signal>`__****\ (Camera::WhiteBalanceMode)

Methods
-------

-  ****`searchAndLock </sdk/apps/qml/QtMultimedia/Camera#searchAndLock-method>`__****\ ()
-  ****`start </sdk/apps/qml/QtMultimedia/Camera#start-method>`__****\ ()
-  ****`stop </sdk/apps/qml/QtMultimedia/Camera#stop-method>`__****\ ()
-  ****`unlock </sdk/apps/qml/QtMultimedia/Camera#unlock-method>`__****\ ()

Detailed Description
--------------------

You can use ``Camera`` to capture images and movies from a camera, and
manipulate the capture and processing settings that get applied to the
images. To display the viewfinder you can use
`VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__ with the
Camera set as the source.

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
setting the
`deviceId </sdk/apps/qml/QtMultimedia/Camera#deviceId-prop>`__ property
to a value from
`QtMultimedia.availableCameras </sdk/apps/qml/QtMultimedia/QtMultimedia#availableCameras-prop>`__.
On a mobile device, you can conveniently switch between front-facing and
back-facing cameras by setting the
`position </sdk/apps/qml/QtMultimedia/Camera#position-prop>`__ property.

The various settings and functionality of the Camera stack is spread
across a few different child properties of Camera.

+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Property                                                                  | Description                                                                                |
+===========================================================================+============================================================================================+
| `imageCapture </sdk/apps/qml/QtMultimedia/CameraCapture/>`__              | Methods and properties for capturing still images.                                         |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| `videoRecording </sdk/apps/qml/QtMultimedia/CameraRecorder/>`__           | Methods and properties for capturing movies.                                               |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| `exposure </sdk/apps/qml/QtMultimedia/CameraExposure/>`__                 | Methods and properties for adjusting exposure (aperture, shutter speed etc).               |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| `focus </sdk/apps/qml/QtMultimedia/CameraFocus/>`__                       | Methods and properties for adjusting focus and providing feedback on autofocus progress.   |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| `flash </sdk/apps/qml/QtMultimedia/CameraFlash/>`__                       | Methods and properties for controlling the camera flash.                                   |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| `imageProcessing </sdk/apps/qml/QtMultimedia/CameraImageProcessing/>`__   | Methods and properties for adjusting camera image processing parameters.                   |
+---------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+

Basic camera state management, error reporting, and simple zoom
properties are available in the Camera itself. For integration with C++
code, the
`mediaObject </sdk/apps/qml/QtMultimedia/Camera#mediaObject-prop>`__
property allows you to access the standard Qt Multimedia camera
controls.

Many of the camera settings may take some time to apply, and might be
limited to certain supported values depending on the hardware. Some
camera settings may be set manually or automatically. These settings
properties contain the current set value. For example, when autofocus is
enabled the focus zones are exposed in the
`focus </sdk/apps/qml/QtMultimedia/CameraFocus/>`__ property.

For additional information, read also the `camera
overview </sdk/apps/qml/QtMultimedia/cameraoverview/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ availability : enumeration                                      |
+--------------------------------------------------------------------------+

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

| 

+--------------------------------------------------------------------------+
|        \ cameraState : enumeration                                       |
+--------------------------------------------------------------------------+

This property holds the camera object's current state, which can be one
of the following:

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
|                                      | codec, resolution, or frame rate.    |
+--------------------------------------+--------------------------------------+
| LoadedState                          | The camera is loaded and ready to be |
|                                      | configured.                          |
|                                      | In the Idle state you can query      |
|                                      | camera capabilities, set capture     |
|                                      | resolution, codecs, and so on.       |
|                                      |                                      |
|                                      | The viewfinder is not active in the  |
|                                      | loaded state.                        |
+--------------------------------------+--------------------------------------+
| ActiveState                          | In the active state the viewfinder   |
|                                      | frames are available and the camera  |
|                                      | is ready for capture.                |
+--------------------------------------+--------------------------------------+

The default camera state is ActiveState.

| 

+--------------------------------------------------------------------------+
|        \ cameraStatus : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the camera object's current status, which can be one
of the following:

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
|                                      | ready.                               |
+--------------------------------------+--------------------------------------+
| StartingStatus                       | The camera is starting as a result   |
|                                      | of state transition to               |
|                                      | Camera.ActiveState. The camera       |
|                                      | service is not ready to capture yet. |
+--------------------------------------+--------------------------------------+
| StoppingStatus                       | The camera is stopping as a result   |
|                                      | of state transition from             |
|                                      | Camera.ActiveState to                |
|                                      | Camera.LoadedState or                |
|                                      | Camera.UnloadedState.                |
+--------------------------------------+--------------------------------------+
| StandbyStatus                        | The camera is in the power saving    |
|                                      | standby mode. The camera may enter   |
|                                      | standby mode after some time of      |
|                                      | inactivity in the Camera.LoadedState |
|                                      | state.                               |
+--------------------------------------+--------------------------------------+
| LoadedStatus                         | The camera is loaded and ready to be |
|                                      | configured. This status indicates    |
|                                      | the camera device is opened and it's |
|                                      | possible to query for supported      |
|                                      | image and video capture settings     |
|                                      | such as resolution, frame rate, and  |
|                                      | codecs.                              |
+--------------------------------------+--------------------------------------+
| LoadingStatus                        | The camera device loading as a       |
|                                      | result of state transition from      |
|                                      | Camera.UnloadedState to              |
|                                      | Camera.LoadedState or                |
|                                      | Camera.ActiveState.                  |
+--------------------------------------+--------------------------------------+
| UnloadingStatus                      | The camera device is unloading as a  |
|                                      | result of state transition from      |
|                                      | Camera.LoadedState or                |
|                                      | Camera.ActiveState to                |
|                                      | Camera.UnloadedState.                |
+--------------------------------------+--------------------------------------+
| UnloadedStatus                       | The initial camera status, with      |
|                                      | camera not loaded. The camera        |
|                                      | capabilities including supported     |
|                                      | capture settings may be unknown.     |
+--------------------------------------+--------------------------------------+
| UnavailableStatus                    | The camera or camera backend is not  |
|                                      | available.                           |
+--------------------------------------+--------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ captureMode : enumeration                                       |
+--------------------------------------------------------------------------+

This property holds the camera capture mode, which can be one of the
following:

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

| 

+--------------------------------------------------------------------------+
|        \ deviceId : string                                               |
+--------------------------------------------------------------------------+

This property holds the unique identifier for the camera device being
used. It may not be human-readable.

You can get all available device IDs from
`QtMultimedia.availableCameras </sdk/apps/qml/QtMultimedia/QtMultimedia#availableCameras-prop>`__.
If no value is provided or if set to an empty string, the system's
default camera will be used.

If possible,
`cameraState </sdk/apps/qml/QtMultimedia/Camera#cameraState-prop>`__,
`captureMode </sdk/apps/qml/QtMultimedia/Camera#captureMode-prop>`__,
`digitalZoom </sdk/apps/qml/QtMultimedia/Camera#digitalZoom-prop>`__ and
other camera parameters are preserved when changing the camera device.

This QML property was introduced in QtMultimedia 5.4.

**See also**
`displayName </sdk/apps/qml/QtMultimedia/Camera#displayName-prop>`__ and
`position </sdk/apps/qml/QtMultimedia/Camera#position-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ digitalZoom : real                                              |
+--------------------------------------------------------------------------+

This property holds the current digital zoom factor.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] displayName : string                                |
+--------------------------------------------------------------------------+

This property holds the human-readable name of the camera.

You can use this property to display the name of the camera in a user
interface.

This QML property was introduced in QtMultimedia 5.4.

**See also**
`deviceId </sdk/apps/qml/QtMultimedia/Camera#deviceId-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ errorCode : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the last error code.

**See also** `error </sdk/apps/qml/QtMultimedia/Camera#error-signal>`__
and
`errorString </sdk/apps/qml/QtMultimedia/Camera#errorString-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This property holds the last error string, if any.

**See also** `error </sdk/apps/qml/QtMultimedia/Camera#error-signal>`__
and `errorCode </sdk/apps/qml/QtMultimedia/Camera#errorCode-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ lockStatus : enumeration                                        |
+--------------------------------------------------------------------------+

This property holds the status of all the requested camera locks.

The status can be one of the following values:

+--------------------------------------+--------------------------------------+
| Value                                | Description                          |
+======================================+======================================+
| Unlocked                             | The application is not interested in |
|                                      | camera settings value. The camera    |
|                                      | may keep this parameter without      |
|                                      | changes, which is common with camera |
|                                      | focus, or adjust exposure and white  |
|                                      | balance constantly to keep the       |
|                                      | viewfinder image nice.               |
+--------------------------------------+--------------------------------------+
| Searching                            | The application has requested the    |
|                                      | camera focus, exposure, or white     |
|                                      | balance lock with                    |
|                                      | `searchAndLock() </sdk/apps/qml/QtMu |
|                                      | ltimedia/Camera#searchAndLock-method |
|                                      | >`__.                                |
|                                      | This state indicates the camera is   |
|                                      | focusing or calculating exposure and |
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

+--------------------------------------------------------------------------+
|        \ maximumDigitalZoom : real                                       |
+--------------------------------------------------------------------------+

This property holds the maximum digital zoom factor supported, or 1.0 if
digital zoom is not supported.

| 

+--------------------------------------------------------------------------+
|        \ maximumOpticalZoom : real                                       |
+--------------------------------------------------------------------------+

This property holds the maximum optical zoom factor supported, or 1.0 if
optical zoom is not supported.

| 

+--------------------------------------------------------------------------+
|        \ mediaObject : variant                                           |
+--------------------------------------------------------------------------+

This property holds the media object for the camera.

| 

+--------------------------------------------------------------------------+
|        \ **metaData group**                                              |
+==========================================================================+
|        \ metaData.gpsLatitude : variant                                  |
+--------------------------------------------------------------------------+
|        \ metaData.gpsLongitude : variant                                 |
+--------------------------------------------------------------------------+
|        \ metaData.gpsAltitude : variant                                  |
+--------------------------------------------------------------------------+

These properties hold the the geographic position in decimal degrees of
the camera at time of capture.

This property group was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.cameraManufacturer : variant                           |
+--------------------------------------------------------------------------+

This property holds the name of the manufacturer of the camera.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.cameraModel : variant                                  |
+--------------------------------------------------------------------------+

This property holds the name of the model of the camera.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.dateTimeOriginal : variant                             |
+--------------------------------------------------------------------------+

This property holds the initial time at which the photo or video is
captured.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.event : variant                                        |
+--------------------------------------------------------------------------+

This property holds the event during which the photo or video is to be
captured.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.gpsImgDirection : variant                              |
+--------------------------------------------------------------------------+

This property holds direction the camera is facing at the time of
capture. It is measured in degrees clockwise from north.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.gpsProcessingMethod : variant                          |
+--------------------------------------------------------------------------+

This property holds the name of the method for determining the GPS
position data.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.gpsSpeed : variant                                     |
+--------------------------------------------------------------------------+

This property holds the velocity in kilometers per hour of the camera at
time of capture.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.gpsTimestamp : variant                                 |
+--------------------------------------------------------------------------+

This property holds the timestamp of the GPS position data.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.gpsTrack : variant                                     |
+--------------------------------------------------------------------------+

This property holds direction of movement of the camera at the time of
capture. It is measured in degrees clockwise from north.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.orientation : variant                                  |
+--------------------------------------------------------------------------+

This property holds the clockwise rotation of the camera at time of
capture.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ metaData.subject : variant                                      |
+--------------------------------------------------------------------------+

This property holds the name of the subject of the capture or recording.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

| 

+--------------------------------------------------------------------------+
|        \ opticalZoom : real                                              |
+--------------------------------------------------------------------------+

This property holds the current optical zoom factor.

| 

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
`VideoOutput::orientation </sdk/apps/qml/QtMultimedia/VideoOutput#orientation-prop>`__.

| 

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

If possible,
`cameraState </sdk/apps/qml/QtMultimedia/Camera#cameraState-prop>`__,
`captureMode </sdk/apps/qml/QtMultimedia/Camera#captureMode-prop>`__,
`digitalZoom </sdk/apps/qml/QtMultimedia/Camera#digitalZoom-prop>`__ and
other camera parameters are preserved when changing the camera device.

This QML property was introduced in QtMultimedia 5.4.

**See also**
`deviceId </sdk/apps/qml/QtMultimedia/Camera#deviceId-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ **viewfinder group**                                            |
+==========================================================================+
|        \ viewfinder.minimumFrameRate : real                              |
+--------------------------------------------------------------------------+
|        \ viewfinder.maximumFrameRate : real                              |
+--------------------------------------------------------------------------+

These properties hold the limits of the preferred frame rate for the
viewfinder in frames per second.

This property group was introduced in Qt 5.4.

| 

+--------------------------------------------------------------------------+
|        \ viewfinder.resolution : size                                    |
+--------------------------------------------------------------------------+

This property holds the resolution of the camera viewfinder. If no
resolution is given the backend will use a default value.

This QML property was introduced in Qt 5.4.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cameraStateChanged(state)                                       |
+--------------------------------------------------------------------------+

This signal is emitted when the camera state has changed to *state*.
Since the state changes may take some time to occur this signal may
arrive sometime after the state change has been requested.

The corresponding handler is ``onCameraStateChanged``.

| 

+--------------------------------------------------------------------------+
|        \ digitalZoomChanged(zoom)                                        |
+--------------------------------------------------------------------------+

This signal is emitted when the digital zoom setting has changed to
*zoom*.

The corresponding handler is ``onDigitalZoomChanged``.

| 

+--------------------------------------------------------------------------+
|        \ error(`errorCode </sdk/apps/qml/QtMultimedia/Camera#errorCode-p |
| rop>`__,                                                                 |
| `errorString </sdk/apps/qml/QtMultimedia/Camera#errorString-prop>`__)    |
+--------------------------------------------------------------------------+

This signal is emitted when an error occurs. The enumeration value
*errorCode* is one of the values defined below, and a descriptive string
value is available in *errorString*.

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

**See also**
`errorCode </sdk/apps/qml/QtMultimedia/Camera#errorCode-prop>`__ and
`errorString </sdk/apps/qml/QtMultimedia/Camera#errorString-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ lockStatusChanged()                                             |
+--------------------------------------------------------------------------+

This signal is emitted when the lock status (focus, exposure etc)
changes. This can happen when locking (e.g. autofocusing) is complete or
has failed.

The corresponding handler is ``onLockStatusChanged``.

| 

+--------------------------------------------------------------------------+
|        \ manualWhiteBalanceChanged(qreal)                                |
+--------------------------------------------------------------------------+

This signal is emitted when the ``manualWhiteBalance`` property is
changed.

The corresponding handler is ``onManualWhiteBalanceChanged``.

| 

+--------------------------------------------------------------------------+
|        \ maximumDigitalZoomChanged(zoom)                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the maximum digital zoom setting has changed
to *zoom*. This can occur when you change between video and still image
capture modes, or the capture settings are changed.

The corresponding handler is ``onMaximumDigitalZoomChanged``.

| 

+--------------------------------------------------------------------------+
|        \ maximumOpticalZoomChanged(zoom)                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the maximum optical zoom setting has changed
to *zoom*. This can occur when you change between video and still image
capture modes, or the capture settings are changed.

The corresponding handler is ``onMaximumOpticalZoomChanged``.

| 

+--------------------------------------------------------------------------+
|        \ opticalZoomChanged(zoom)                                        |
+--------------------------------------------------------------------------+

This signal is emitted when the optical zoom setting has changed to
*zoom*.

The corresponding handler is ``onOpticalZoomChanged``.

| 

+--------------------------------------------------------------------------+
|        \ whiteBalanceModeChanged(Camera::WhiteBalanceMode)               |
+--------------------------------------------------------------------------+

This signal is emitted when the ``whiteBalanceMode`` property is
changed.

The corresponding handler is ``onWhiteBalanceModeChanged``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ searchAndLock()                                                 |
+--------------------------------------------------------------------------+

Start focusing, exposure and white balance calculation.

This is appropriate to call when the camera focus button is pressed (or
on a camera capture button half-press). If the camera supports
autofocusing, information on the focus zones is available through the
`focus </sdk/apps/qml/QtMultimedia/CameraFocus/>`__ property.

| 

+--------------------------------------------------------------------------+
|        \ start()                                                         |
+--------------------------------------------------------------------------+

Starts the camera. Viewfinder frames will be available and image or
movie capture will be possible.

| 

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops the camera, but leaves the camera stack loaded.

| 

+--------------------------------------------------------------------------+
|        \ unlock()                                                        |
+--------------------------------------------------------------------------+

Unlock focus, exposure and white balance locks.

| 
