.. _sdk_qtmultimedia_cameracapture:

QtMultimedia CameraCapture
==========================

An interface for capturing camera images

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`capturedImagePath <sdk_qtmultimedia_cameracapture_capturedImagePath>` : string
-  :ref:`errorString <sdk_qtmultimedia_cameracapture_errorString>` : string
-  :ref:`ready <sdk_qtmultimedia_cameracapture_ready>` : bool
-  :ref:`resolution <sdk_qtmultimedia_cameracapture_resolution>` : size

Signals
-------

-  :ref:`captureFailed <sdk_qtmultimedia_cameracapture_captureFailed>`\ (requestId, message)
-  :ref:`imageCaptured <sdk_qtmultimedia_cameracapture_imageCaptured>`\ (requestId, preview)
-  :ref:`imageMetadataAvailable <sdk_qtmultimedia_cameracapture_imageMetadataAvailable>`\ (requestId, key, value)
-  :ref:`imageSaved <sdk_qtmultimedia_cameracapture_imageSaved>`\ (requestId, path)

Methods
-------

-  :ref:`cancelCapture <sdk_qtmultimedia_cameracapture_cancelCapture>`\ ()
-  :ref:`capture <sdk_qtmultimedia_cameracapture_capture>`\ ()
-  :ref:`captureToLocation <sdk_qtmultimedia_cameracapture_captureToLocation>`\ (location)
-  :ref:`setMetadata <sdk_qtmultimedia_cameracapture_setMetadata>`\ (key, value)

Detailed Description
--------------------

This type allows you to capture still images and be notified when they are available or saved to disk. You can adjust the resolution of the captured image and where the saved image should go.

:ref:`CameraCapture <sdk_qtmultimedia_cameracapture>` is a child of a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  (as the ``imageCapture`` property) and cannot be created directly.

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

.. _sdk_qtmultimedia_cameracapture_capturedImagePath:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| capturedImagePath : string                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the location of the last captured image.

.. _sdk_qtmultimedia_cameracapture_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| errorString : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the error message related to the last capture.

.. _sdk_qtmultimedia_cameracapture_ready:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ready : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a bool value indicating whether the camera is ready to capture photos or not.

It's permissible to call :ref:`capture() <sdk_qtmultimedia_cameracapture_capture>` while the camera is active regardless of the *ready* property value. If camera is not ready to capture image immediately, the capture request is queued with all the related camera settings, and the request will be executed as soon as possible.

.. _sdk_qtmultimedia_cameracapture_resolution:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| resolution : size                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the resolution/size of the image to be captured. If empty, the system chooses the appropriate resolution.

Signal Documentation
--------------------

.. _sdk_qtmultimedia_cameracapture_captureFailed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| captureFailed(requestId, message)                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when an error occurs during capture with *requestId*. A descriptive message is available in *message*.

The corresponding handler is ``onCaptureFailed``.

.. _sdk_qtmultimedia_cameracapture_imageCaptured:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| imageCaptured(requestId, preview)                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when an image with *requestId* has been captured but not yet saved to the filesystem. The *preview* parameter can be used as the URL supplied to an Image.

The corresponding handler is ``onImageCaptured``.

**See also** :ref:`imageSaved <sdk_qtmultimedia_cameracapture_imageSaved>`.

.. _sdk_qtmultimedia_cameracapture_imageMetadataAvailable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| imageMetadataAvailable(requestId, key, value)                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the image with *requestId* has new metadata available with the key *key* and value *value*.

The corresponding handler is ``onImageMetadataAvailable``.

**See also** :ref:`imageCaptured <sdk_qtmultimedia_cameracapture_imageCaptured>`.

.. _sdk_qtmultimedia_cameracapture_imageSaved:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| imageSaved(requestId, path)                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted after the image with *requestId* has been written to the filesystem. The *path* is a local file path, not a URL.

The corresponding handler is ``onImageSaved``.

**See also** :ref:`imageCaptured <sdk_qtmultimedia_cameracapture_imageCaptured>`.

Method Documentation
--------------------

.. _sdk_qtmultimedia_cameracapture_cancelCapture:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cancelCapture()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Cancel pending image capture requests.

.. _sdk_qtmultimedia_cameracapture_capture:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| capture()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Start image capture. The :ref:`imageCaptured <sdk_qtmultimedia_cameracapture_imageCaptured>` and :ref:`imageSaved <sdk_qtmultimedia_cameracapture_imageSaved>` signals will be emitted when the capture is complete.

The image will be captured to the default system location, typically QStandardPaths::writableLocation(QStandardPaths::PicturesLocation) for still imaged or QStandardPaths::writableLocation(QStandardPaths::MoviesLocation) for video.

Camera saves all the capture parameters like exposure settings or image processing parameters, so changes to camera paramaters after capture() is called do not affect previous capture requests.

CameraCapture::capture returns the capture requestId parameter, used with imageExposed(), imageCaptured(), imageMetadataAvailable() and imageSaved() signals.

.. _sdk_qtmultimedia_cameracapture_captureToLocation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| captureToLocation(location)                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Start image capture to specified *location*. The :ref:`imageCaptured <sdk_qtmultimedia_cameracapture_imageCaptured>` and :ref:`imageSaved <sdk_qtmultimedia_cameracapture_imageSaved>` signals will be emitted when the capture is complete.

CameraCapture::captureToLocation returns the capture requestId parameter, used with imageExposed(), imageCaptured(), imageMetadataAvailable() and imageSaved() signals.

If the application is unable to write to the location specified by ``location`` the :ref:`CameraCapture <sdk_qtmultimedia_cameracapture>` will emit an error. The most likely reasons for the application to be unable to write to a location is that the path is wrong and the location does not exists, or the application does not have write permission for that location.

.. _sdk_qtmultimedia_cameracapture_setMetadata:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| setMetadata(key, value)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets a particular metadata *key* to *value* for the subsequent image captures.

**See also** QMediaMetaData.

