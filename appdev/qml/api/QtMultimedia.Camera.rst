QtMultimedia.Camera
===================

.. raw:: html

   <p>

Access viewfinder frames, and take photos and movies. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Camera -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtMultimedia 5.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

availability : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cameraState : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cameraStatus : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

captureMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

deviceId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digitalZoom : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

displayName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorCode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorString : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lockStatus : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumDigitalZoom : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumOpticalZoom : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mediaObject : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

metaData.gpsLatitude : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.gpsLongitude : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.gpsAltitude : variant

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.cameraManufacturer : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.cameraModel : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.dateTimeOriginal : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.event : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.gpsImgDirection : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.gpsProcessingMethod : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.gpsSpeed : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.gpsTimestamp : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.gpsTrack : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.orientation : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData.subject : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

opticalZoom : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

orientation : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

position : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

viewfinder

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

viewfinder.minimumFrameRate : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

viewfinder.maximumFrameRate : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

viewfinder.resolution : size

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

cameraStateChanged(state)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

digitalZoomChanged(zoom)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error(errorCode, errorString)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lockStatusChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

manualWhiteBalanceChanged(qreal)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumDigitalZoomChanged(zoom)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumOpticalZoomChanged(zoom)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

opticalZoomChanged(zoom)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

whiteBalanceModeChanged(Camera::WhiteBalanceMode)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

searchAndLock()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

start()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stop()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

unlock()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Camera-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

You can use Camera to capture images and movies from a camera, and
manipulate the capture and processing settings that get applied to the
images. To display the viewfinder you can use VideoOutput with the
Camera set as the source.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.4
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">640</span>
   <span class="name">height</span>: <span class="number">360</span>
   <span class="type"><a href="index.html">Camera</a></span> {
   <span class="name">id</span>: <span class="name">camera</span>
   <span class="name">imageProcessing</span>.whiteBalanceMode: <span class="name">CameraImageProcessing</span>.<span class="name">WhiteBalanceFlash</span>
   <span class="type">exposure</span> {
   <span class="name">exposureCompensation</span>: -<span class="number">1.0</span>
   <span class="name">exposureMode</span>: <span class="name">Camera</span>.<span class="name">ExposurePortrait</span>
   }
   <span class="name">flash</span>.mode: <span class="name">Camera</span>.<span class="name">FlashRedEyeReduction</span>
   <span class="type">imageCapture</span> {
   <span class="name">onImageCaptured</span>: {
   <span class="name">photoPreview</span>.<span class="name">source</span> <span class="operator">=</span> <span class="name">preview</span>  <span class="comment">// Show the preview in an Image</span>
   }
   }
   }
   <span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
   <span class="name">source</span>: <span class="name">camera</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">focus</span> : <span class="name">visible</span> <span class="comment">// to receive focus and capture key events when visible</span>
   }
   <span class="type">Image</span> {
   <span class="name">id</span>: <span class="name">photoPreview</span>
   }
   }</pre>

.. raw:: html

   <p>

If multiple cameras are available, you can select which one to use by
setting the deviceId property to a value from
QtMultimedia.availableCameras. On a mobile device, you can conveniently
switch between front-facing and back-facing cameras by setting the
position property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The various settings and functionality of the Camera stack is spread
across a few different child properties of Camera.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Property

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

imageCapture

.. raw:: html

   </td>

.. raw:: html

   <td>

Methods and properties for capturing still images.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

videoRecording

.. raw:: html

   </td>

.. raw:: html

   <td>

Methods and properties for capturing movies.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

exposure

.. raw:: html

   </td>

.. raw:: html

   <td>

Methods and properties for adjusting exposure (aperture, shutter speed
etc).

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

focus

.. raw:: html

   </td>

.. raw:: html

   <td>

Methods and properties for adjusting focus and providing feedback on
autofocus progress.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

flash

.. raw:: html

   </td>

.. raw:: html

   <td>

Methods and properties for controlling the camera flash.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

imageProcessing

.. raw:: html

   </td>

.. raw:: html

   <td>

Methods and properties for adjusting camera image processing parameters.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Basic camera state management, error reporting, and simple zoom
properties are available in the Camera itself. For integration with C++
code, the mediaObject property allows you to access the standard Qt
Multimedia camera controls.

.. raw:: html

   </p>

.. raw:: html

   <p>

Many of the camera settings may take some time to apply, and might be
limited to certain supported values depending on the hardware. Some
camera settings may be set manually or automatically. These settings
properties contain the current set value. For example, when autofocus is
enabled the focus zones are exposed in the focus property.

.. raw:: html

   </p>

.. raw:: html

   <p>

For additional information, read also the camera overview.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Camera -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$availability -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="availability-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

availability : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the availability state of the camera.

.. raw:: html

   </p>

.. raw:: html

   <p>

The availability states can be one of the following:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Available

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is available to use

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Busy

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is busy at the moment as it is being used by another process.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Unavailable

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is not available to use (there may be no camera hardware)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ResourceMissing

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera cannot be used because of missing resources. It may be
possible to try again at a later time.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@availability -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cameraState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cameraState : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the camera object's current state, which can be one
of the following:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

UnloadedState

.. raw:: html

   </td>

.. raw:: html

   <td>

The initial camera state, with the camera not loaded. The camera
capabilities (with the exception of supported capture modes) are
unknown. This state saves the most power, but takes the longest time to
be ready for capture.

.. raw:: html

   <p>

While the supported settings are unknown in this state, you can still
set the camera capture settings like codec, resolution, or frame rate.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

LoadedState

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is loaded and ready to be configured.

.. raw:: html

   <p>

In the Idle state you can query camera capabilities, set capture
resolution, codecs, and so on.

.. raw:: html

   </p>

.. raw:: html

   <p>

The viewfinder is not active in the loaded state.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ActiveState

.. raw:: html

   </td>

.. raw:: html

   <td>

In the active state the viewfinder frames are available and the camera
is ready for capture.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The default camera state is ActiveState.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cameraState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cameraStatus-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cameraStatus : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the camera object's current status, which can be one
of the following:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ActiveStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera has been started and can produce data, viewfinder displays
video frames.

.. raw:: html

   <p>

Depending on backend, changing camera settings such as capture mode,
codecs, or resolution in ActiveState may lead to changing the status to
LoadedStatus and StartingStatus while the settings are applied, and back
to ActiveStatus when the camera is ready.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

StartingStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is starting as a result of state transition to
Camera.ActiveState. The camera service is not ready to capture yet.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

StoppingStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is stopping as a result of state transition from
Camera.ActiveState to Camera.LoadedState or Camera.UnloadedState.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

StandbyStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is in the power saving standby mode. The camera may enter
standby mode after some time of inactivity in the Camera.LoadedState
state.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

LoadedStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is loaded and ready to be configured. This status indicates
the camera device is opened and it's possible to query for supported
image and video capture settings such as resolution, frame rate, and
codecs.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

LoadingStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera device loading as a result of state transition from
Camera.UnloadedState to Camera.LoadedState or Camera.ActiveState.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

UnloadingStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera device is unloading as a result of state transition from
Camera.LoadedState or Camera.ActiveState to Camera.UnloadedState.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

UnloadedStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The initial camera status, with camera not loaded. The camera
capabilities including supported capture settings may be unknown.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

UnavailableStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera or camera backend is not available.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@cameraStatus -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="captureMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

captureMode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the camera capture mode, which can be one of the
following:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CaptureViewfinder

.. raw:: html

   </td>

.. raw:: html

   <td>

Camera is only configured to display viewfinder.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CaptureStillImage

.. raw:: html

   </td>

.. raw:: html

   <td>

Prepares the Camera for capturing still images.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CaptureVideo

.. raw:: html

   </td>

.. raw:: html

   <td>

Prepares the Camera for capturing video.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The default capture mode is CaptureStillImage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@captureMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="deviceId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

deviceId : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the unique identifier for the camera device being
used. It may not be human-readable.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can get all available device IDs from QtMultimedia.availableCameras.
If no value is provided or if set to an empty string, the system's
default camera will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If possible, cameraState, captureMode, digitalZoom and other camera
parameters are preserved when changing the camera device.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtMultimedia 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also displayName and position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@deviceId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digitalZoom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

digitalZoom : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the current digital zoom factor.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digitalZoom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="displayName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] displayName : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the human-readable name of the camera.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can use this property to display the name of the camera in a user
interface.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtMultimedia 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also deviceId.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@displayName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorCode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

errorCode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the last error code.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also error and errorString.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorCode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

errorString : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the last error string, if any.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also error and errorCode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lockStatus-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lockStatus : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the status of all the requested camera locks.

.. raw:: html

   </p>

.. raw:: html

   <p>

The status can be one of the following values:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Unlocked

.. raw:: html

   </td>

.. raw:: html

   <td>

The application is not interested in camera settings value. The camera
may keep this parameter without changes, which is common with camera
focus, or adjust exposure and white balance constantly to keep the
viewfinder image nice.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Searching

.. raw:: html

   </td>

.. raw:: html

   <td>

The application has requested the camera focus, exposure, or white
balance lock with searchAndLock(). This state indicates the camera is
focusing or calculating exposure and white balance.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Locked

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera focus, exposure, or white balance is locked. The camera is
ready to capture, and the application may check the exposure parameters.

.. raw:: html

   <p>

The locked state usually means the requested parameter stays the same,
except in cases where the parameter is requested to be updated
constantly. For example in continuous focusing mode, the focus is
considered locked as long as the object is in focus, even while the
actual focusing distance may be constantly changing.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@lockStatus -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumDigitalZoom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumDigitalZoom : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the maximum digital zoom factor supported, or 1.0 if
digital zoom is not supported.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumDigitalZoom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumOpticalZoom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumOpticalZoom : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the maximum optical zoom factor supported, or 1.0 if
optical zoom is not supported.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumOpticalZoom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mediaObject-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mediaObject : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the media object for the camera.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mediaObject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

metaData group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="metaData.gpsLatitude-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.gpsLatitude : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="metaData.gpsLongitude-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.gpsLongitude : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="metaData.gpsAltitude-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.gpsAltitude : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

These properties hold the the geographic position in decimal degrees of
the camera at time of capture.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property group was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.cameraManufacturer-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.cameraManufacturer : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the name of the manufacturer of the camera.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.cameraManufacturer -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.cameraModel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.cameraModel : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the name of the model of the camera.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.cameraModel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.dateTimeOriginal-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.dateTimeOriginal : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the initial time at which the photo or video is
captured.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.dateTimeOriginal -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.event-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.event : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the event during which the photo or video is to be
captured.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.event -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.gpsImgDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.gpsImgDirection : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds direction the camera is facing at the time of
capture. It is measured in degrees clockwise from north.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.gpsImgDirection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.gpsProcessingMethod-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.gpsProcessingMethod : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the name of the method for determining the GPS
position data.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.gpsProcessingMethod -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.gpsSpeed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.gpsSpeed : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the velocity in kilometers per hour of the camera at
time of capture.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.gpsSpeed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.gpsTimestamp-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.gpsTimestamp : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the timestamp of the GPS position data.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.gpsTimestamp -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.gpsTrack-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.gpsTrack : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds direction of movement of the camera at the time of
capture. It is measured in degrees clockwise from north.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.gpsTrack -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.orientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.orientation : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the clockwise rotation of the camera at time of
capture.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.orientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData.subject-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData.subject : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the name of the subject of the capture or recording.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData.subject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="opticalZoom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

opticalZoom : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the current optical zoom factor.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@opticalZoom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] orientation : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the physical orientation of the camera sensor.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value is the orientation angle (clockwise, in steps of 90 degrees)
of the camera sensor in relation to the display in its natural
orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, suppose a mobile device which is naturally in portrait
orientation. The back-facing camera is mounted in landscape. If the top
side of the camera sensor is aligned with the right edge of the screen
in natural orientation, orientation returns 270. If the top side of a
front-facing camera sensor is aligned with the right edge of the screen,
orientation returns 90.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtMultimedia 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also VideoOutput::orientation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@orientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="position-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

position : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the physical position of the camera on the hardware
system.

.. raw:: html

   </p>

.. raw:: html

   <p>

The position can be one of the following:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Camera.UnspecifiedPosition - the camera position is unspecified or
unknown.

.. raw:: html

   </li>

.. raw:: html

   <li>

Camera.BackFace - the camera is on the back face of the system hardware.
For example on a mobile device, it means it is on the opposite side to
that of the screem.

.. raw:: html

   </li>

.. raw:: html

   <li>

Camera.FrontFace - the camera is on the front face of the system
hardware. For example on a mobile device, it means it is on the same
side as that of the screen. Viewfinder frames of front-facing cameras
are mirrored horizontally, so the users can see themselves as looking
into a mirror. Captured images or videos are not mirrored.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

On a mobile device it can be used to easily choose between front-facing
and back-facing cameras. If this property is set to
Camera.UnspecifiedPosition, the system's default camera will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

If possible, cameraState, captureMode, digitalZoom and other camera
parameters are preserved when changing the camera device.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtMultimedia 5.4.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also deviceId.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@position -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="viewfinder-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

viewfinder group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="viewfinder.minimumFrameRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

viewfinder.minimumFrameRate : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="viewfinder.maximumFrameRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

viewfinder.maximumFrameRate : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

These properties hold the limits of the preferred frame rate for the
viewfinder in frames per second.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property group was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@viewfinder -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="viewfinder.resolution-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

viewfinder.resolution : size

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the resolution of the camera viewfinder. If no
resolution is given the backend will use a default value.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@viewfinder.resolution -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cameraStateChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cameraStateChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cameraStateChanged(state)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the camera state has changed to state. Since
the state changes may take some time to occur this signal may arrive
sometime after the state change has been requested.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onCameraStateChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cameraStateChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="digitalZoomChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

digitalZoomChanged(zoom)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the digital zoom setting has changed to
zoom.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDigitalZoomChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@digitalZoomChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

error(errorCode, errorString)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when an error occurs. The enumeration value
errorCode is one of the values defined below, and a descriptive string
value is available in errorString.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

NoError

.. raw:: html

   </td>

.. raw:: html

   <td>

No errors have occurred.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

CameraError

.. raw:: html

   </td>

.. raw:: html

   <td>

An error has occurred.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

InvalidRequestError

.. raw:: html

   </td>

.. raw:: html

   <td>

System resource doesn't support requested functionality.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ServiceMissingError

.. raw:: html

   </td>

.. raw:: html

   <td>

No camera service available.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

NotSupportedFeatureError

.. raw:: html

   </td>

.. raw:: html

   <td>

The feature is not supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The corresponding handler is onError.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also errorCode and errorString.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lockStatusChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

lockStatusChanged()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the lock status (focus, exposure etc)
changes. This can happen when locking (e.g. autofocusing) is complete or
has failed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onLockStatusChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lockStatusChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="manualWhiteBalanceChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

manualWhiteBalanceChanged(qreal)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the manualWhiteBalance property is changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onManualWhiteBalanceChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@manualWhiteBalanceChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumDigitalZoomChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

maximumDigitalZoomChanged(zoom)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the maximum digital zoom setting has changed
to zoom. This can occur when you change between video and still image
capture modes, or the capture settings are changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onMaximumDigitalZoomChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumDigitalZoomChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumOpticalZoomChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

maximumOpticalZoomChanged(zoom)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the maximum optical zoom setting has changed
to zoom. This can occur when you change between video and still image
capture modes, or the capture settings are changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onMaximumOpticalZoomChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumOpticalZoomChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="opticalZoomChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

opticalZoomChanged(zoom)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the optical zoom setting has changed to
zoom.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onOpticalZoomChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@opticalZoomChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="whiteBalanceModeChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

whiteBalanceModeChanged(Camera::WhiteBalanceMode)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the whiteBalanceMode property is changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onWhiteBalanceModeChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@whiteBalanceModeChanged -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$searchAndLock -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="searchAndLock-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

searchAndLock()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Start focusing, exposure and white balance calculation.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is appropriate to call when the camera focus button is pressed (or
on a camera capture button half-press). If the camera supports
autofocusing, information on the focus zones is available through the
focus property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@searchAndLock -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="start-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

start()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Starts the camera. Viewfinder frames will be available and image or
movie capture will be possible.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@start -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stop()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Stops the camera, but leaves the camera stack loaded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="unlock-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

unlock()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Unlock focus, exposure and white balance locks.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@unlock -->


