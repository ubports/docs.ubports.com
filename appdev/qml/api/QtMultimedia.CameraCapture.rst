QtMultimedia.CameraCapture
==========================

.. raw:: html

   <p>

An interface for capturing camera images More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CameraCapture -->

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

capturedImagePath : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorString : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ready : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

resolution : size

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

captureFailed(requestId, message)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

imageCaptured(requestId, preview)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

imageMetadataAvailable(requestId, key, value)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

imageSaved(requestId, path)

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

cancelCapture()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

capture()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

captureToLocation(location)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

setMetadata(key, value)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CameraCapture-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This type allows you to capture still images and be notified when they
are available or saved to disk. You can adjust the resolution of the
captured image and where the saved image should go.

.. raw:: html

   </p>

.. raw:: html

   <p>

CameraCapture is a child of a Camera (as the imageCapture property) and
cannot be created directly.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">640</span>
   <span class="name">height</span>: <span class="number">360</span>
   <span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">id</span>: <span class="name">camera</span>
   <span class="type">imageCapture</span> {
   <span class="name">onImageCaptured</span>: {
   <span class="comment">// Show the preview in an Image</span>
   <span class="name">photoPreview</span>.<span class="name">source</span> <span class="operator">=</span> <span class="name">preview</span>
   }
   }
   }
   <span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
   <span class="name">source</span>: <span class="name">camera</span>
   <span class="name">focus</span> : <span class="name">visible</span> <span class="comment">// to receive focus and capture key events when visible</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>;
   <span class="name">onClicked</span>: <span class="name">camera</span>.<span class="name">imageCapture</span>.<span class="name">capture</span>();
   }
   }
   <span class="type">Image</span> {
   <span class="name">id</span>: <span class="name">photoPreview</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@CameraCapture -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$capturedImagePath -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="capturedImagePath-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

capturedImagePath : string

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

This property holds the location of the last captured image.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@capturedImagePath -->

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

This property holds the error message related to the last capture.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ready-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ready : bool

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

This property holds a bool value indicating whether the camera is ready
to capture photos or not.

.. raw:: html

   </p>

.. raw:: html

   <p>

It's permissible to call capture() while the camera is active regardless
of the ready property value. If camera is not ready to capture image
immediately, the capture request is queued with all the related camera
settings, and the request will be executed as soon as possible.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ready -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resolution-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

resolution : size

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

This property holds the resolution/size of the image to be captured. If
empty, the system chooses the appropriate resolution.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resolution -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$captureFailed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="captureFailed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

captureFailed(requestId, message)

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

This signal is emitted when an error occurs during capture with
requestId. A descriptive message is available in message.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onCaptureFailed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@captureFailed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="imageCaptured-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

imageCaptured(requestId, preview)

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

This signal is emitted when an image with requestId has been captured
but not yet saved to the filesystem. The preview parameter can be used
as the URL supplied to an Image.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onImageCaptured.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also imageSaved.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@imageCaptured -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="imageMetadataAvailable-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

imageMetadataAvailable(requestId, key, value)

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

This signal is emitted when the image with requestId has new metadata
available with the key key and value value.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onImageMetadataAvailable.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also imageCaptured.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@imageMetadataAvailable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="imageSaved-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

imageSaved(requestId, path)

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

This signal is emitted after the image with requestId has been written
to the filesystem. The path is a local file path, not a URL.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onImageSaved.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also imageCaptured.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@imageSaved -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancelCapture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancelCapture-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancelCapture()

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

Cancel pending image capture requests.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancelCapture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="capture-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

capture()

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

Start image capture. The imageCaptured and imageSaved signals will be
emitted when the capture is complete.

.. raw:: html

   </p>

.. raw:: html

   <p>

The image will be captured to the default system location, typically
QStandardPaths::writableLocation(QStandardPaths::PicturesLocation) for
still imaged or
QStandardPaths::writableLocation(QStandardPaths::MoviesLocation) for
video.

.. raw:: html

   </p>

.. raw:: html

   <p>

Camera saves all the capture parameters like exposure settings or image
processing parameters, so changes to camera paramaters after capture()
is called do not affect previous capture requests.

.. raw:: html

   </p>

.. raw:: html

   <p>

CameraCapture::capture returns the capture requestId parameter, used
with imageExposed(), imageCaptured(), imageMetadataAvailable() and
imageSaved() signals.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@capture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="captureToLocation-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

captureToLocation(location)

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

Start image capture to specified location. The imageCaptured and
imageSaved signals will be emitted when the capture is complete.

.. raw:: html

   </p>

.. raw:: html

   <p>

CameraCapture::captureToLocation returns the capture requestId
parameter, used with imageExposed(), imageCaptured(),
imageMetadataAvailable() and imageSaved() signals.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the application is unable to write to the location specified by
location the CameraCapture will emit an error. The most likely reasons
for the application to be unable to write to a location is that the path
is wrong and the location does not exists, or the application does not
have write permission for that location.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@captureToLocation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setMetadata-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setMetadata(key, value)

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

Sets a particular metadata key to value for the subsequent image
captures.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setMetadata -->


