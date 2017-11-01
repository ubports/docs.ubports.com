An interface for capturing camera images

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`capturedImagePath </sdk/apps/qml/QtMultimedia/CameraCapture#capturedImagePath-prop>`__****
   : string
-  ****`errorString </sdk/apps/qml/QtMultimedia/CameraCapture#errorString-prop>`__****
   : string
-  ****`ready </sdk/apps/qml/QtMultimedia/CameraCapture#ready-prop>`__****
   : bool
-  ****`resolution </sdk/apps/qml/QtMultimedia/CameraCapture#resolution-prop>`__****
   : size

Signals
-------

-  ****`captureFailed </sdk/apps/qml/QtMultimedia/CameraCapture#captureFailed-signal>`__****\ (requestId,
   message)
-  ****`imageCaptured </sdk/apps/qml/QtMultimedia/CameraCapture#imageCaptured-signal>`__****\ (requestId,
   preview)
-  ****`imageMetadataAvailable </sdk/apps/qml/QtMultimedia/CameraCapture#imageMetadataAvailable-signal>`__****\ (requestId,
   key, value)
-  ****`imageSaved </sdk/apps/qml/QtMultimedia/CameraCapture#imageSaved-signal>`__****\ (requestId,
   path)

Methods
-------

-  ****`cancelCapture </sdk/apps/qml/QtMultimedia/CameraCapture#cancelCapture-method>`__****\ ()
-  ****`capture </sdk/apps/qml/QtMultimedia/CameraCapture#capture-method>`__****\ ()
-  ****`captureToLocation </sdk/apps/qml/QtMultimedia/CameraCapture#captureToLocation-method>`__****\ (location)
-  ****`setMetadata </sdk/apps/qml/QtMultimedia/CameraCapture#setMetadata-method>`__****\ (key,
   value)

Detailed Description
--------------------

This type allows you to capture still images and be notified when they
are available or saved to disk. You can adjust the resolution of the
captured image and where the saved image should go.

`CameraCapture </sdk/apps/qml/QtMultimedia/CameraCapture/>`__ is a child
of a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia#camera>`__ (as
the ``imageCapture`` property) and cannot be created directly.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Item {
        width: 640
        height: 360
        Camera {
            id: camera
            imageCapture {
                onImageCaptured: {
                    // Show the preview in an Image
                    photoPreview.source = preview
                }
            }
        }
        VideoOutput {
            source: camera
            focus : visible // to receive focus and capture key events when visible
            anchors.fill: parent
            MouseArea {
                anchors.fill: parent;
                onClicked: camera.imageCapture.capture();
            }
        }
        Image {
            id: photoPreview
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ capturedImagePath : string                                      |
+--------------------------------------------------------------------------+

This property holds the location of the last captured image.

| 

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This property holds the error message related to the last capture.

| 

+--------------------------------------------------------------------------+
|        \ ready : bool                                                    |
+--------------------------------------------------------------------------+

This property holds a bool value indicating whether the camera is ready
to capture photos or not.

It's permissible to call
`capture() </sdk/apps/qml/QtMultimedia/CameraCapture#capture-method>`__
while the camera is active regardless of the *ready* property value. If
camera is not ready to capture image immediately, the capture request is
queued with all the related camera settings, and the request will be
executed as soon as possible.

| 

+--------------------------------------------------------------------------+
|        \ resolution : size                                               |
+--------------------------------------------------------------------------+

This property holds the resolution/size of the image to be captured. If
empty, the system chooses the appropriate resolution.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ captureFailed(requestId, message)                               |
+--------------------------------------------------------------------------+

This signal is emitted when an error occurs during capture with
*requestId*. A descriptive message is available in *message*.

The corresponding handler is ``onCaptureFailed``.

| 

+--------------------------------------------------------------------------+
|        \ imageCaptured(requestId, preview)                               |
+--------------------------------------------------------------------------+

This signal is emitted when an image with *requestId* has been captured
but not yet saved to the filesystem. The *preview* parameter can be used
as the URL supplied to an Image.

The corresponding handler is ``onImageCaptured``.

**See also**
`imageSaved </sdk/apps/qml/QtMultimedia/CameraCapture#imageSaved-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ imageMetadataAvailable(requestId, key, value)                   |
+--------------------------------------------------------------------------+

This signal is emitted when the image with *requestId* has new metadata
available with the key *key* and value *value*.

The corresponding handler is ``onImageMetadataAvailable``.

**See also**
`imageCaptured </sdk/apps/qml/QtMultimedia/CameraCapture#imageCaptured-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ imageSaved(requestId, path)                                     |
+--------------------------------------------------------------------------+

This signal is emitted after the image with *requestId* has been written
to the filesystem. The *path* is a local file path, not a URL.

The corresponding handler is ``onImageSaved``.

**See also**
`imageCaptured </sdk/apps/qml/QtMultimedia/CameraCapture#imageCaptured-signal>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancelCapture()                                                 |
+--------------------------------------------------------------------------+

Cancel pending image capture requests.

| 

+--------------------------------------------------------------------------+
|        \ capture()                                                       |
+--------------------------------------------------------------------------+

Start image capture. The
`imageCaptured </sdk/apps/qml/QtMultimedia/CameraCapture#imageCaptured-signal>`__
and
`imageSaved </sdk/apps/qml/QtMultimedia/CameraCapture#imageSaved-signal>`__
signals will be emitted when the capture is complete.

The image will be captured to the default system location, typically
QStandardPaths::writableLocation(QStandardPaths::PicturesLocation) for
still imaged or
QStandardPaths::writableLocation(QStandardPaths::MoviesLocation) for
video.

Camera saves all the capture parameters like exposure settings or image
processing parameters, so changes to camera paramaters after capture()
is called do not affect previous capture requests.

CameraCapture::capture returns the capture requestId parameter, used
with imageExposed(), imageCaptured(), imageMetadataAvailable() and
imageSaved() signals.

| 

+--------------------------------------------------------------------------+
|        \ captureToLocation(location)                                     |
+--------------------------------------------------------------------------+

Start image capture to specified *location*. The
`imageCaptured </sdk/apps/qml/QtMultimedia/CameraCapture#imageCaptured-signal>`__
and
`imageSaved </sdk/apps/qml/QtMultimedia/CameraCapture#imageSaved-signal>`__
signals will be emitted when the capture is complete.

CameraCapture::captureToLocation returns the capture requestId
parameter, used with imageExposed(), imageCaptured(),
imageMetadataAvailable() and imageSaved() signals.

If the application is unable to write to the location specified by
``location`` the
`CameraCapture </sdk/apps/qml/QtMultimedia/CameraCapture/>`__ will emit
an error. The most likely reasons for the application to be unable to
write to a location is that the path is wrong and the location does not
exists, or the application does not have write permission for that
location.

| 

+--------------------------------------------------------------------------+
|        \ setMetadata(key, value)                                         |
+--------------------------------------------------------------------------+

Sets a particular metadata *key* to *value* for the subsequent image
captures.

**See also** QMediaMetaData.

| 
