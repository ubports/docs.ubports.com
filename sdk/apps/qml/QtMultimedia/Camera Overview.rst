.. _sdk_qtmultimedia_camera_overview:

QtMultimedia Camera Overview
============================


The Qt Multimedia API provides a number of camera related classes, so you can access images and videos from mobile device cameras or webcameras. There are both C++ and QML APIs for common tasks.

In order to use the camera classes a quick overview of the way a camera works is needed. If you're already familiar with this, you can skip ahead to `Camera implementation details </sdk/apps/qml/QtMultimedia/cameraoverview/#camera-tldr>`_ .

At one end of the camera assembly is the lens assembly (one or more lenses, arranged to focus light onto the sensor). The lenses themselves can sometimes be moved to adjust things like focus and zoom, or they might be fixed in an arrangement to give a good balance between objects in focus, and cost.

Some lens assemblies can automatically be adjusted so that an object at different distances from the camera can be kept in focus. This is usually done by measuring how sharp a particular area of the frame is, and by adjusting the lens assembly until it is maximally sharp. In some cases the camera will always use the center of the frame for this. Other cameras may also allow the region to focus to be specified (for "touch to zoom", or "face zoom" features).

Once light arrives at the sensor, it gets converted into digital pixels. This process can depend on a number of things but ultimately comes down to two things - how long the conversion is allowed to take, and how bright the light is. The longer a conversion can take, the better the quality. Using a flash can assist with letting more light hit the sensor, allowing it to convert pixels faster, giving better quality for the same amount of time. Conversely, allowing a longer conversion time can let you take photos in darker environments, as long as the camera is steady.

After the image has been captured by the sensor, the camera firmware performs various image processing tasks on it to compensate for various sensor characteristics, current lighting, and desired image properties. Faster sensor pixel conversion times tend to introduce digital noise, so some amount of image processing can be done to remove this based on the camera sensor settings.

The color of the image can also be adjusted at this stage to compensate for different light sources - fluorescent lights and sunlight give very different appearances to the same object, so the image can be adjusted based on the white balance of the picture (due to the different color temperatures of the light sources).

Some forms of "special effects" can also be performed at this stage. Black and white, sepia, or "negative" style images can be produced.

Finally, once a perfectly focused, exposed and processed image has been created, it can be put to good use. Camera images can be further processed by application code (for example, to detect barcodes, or to stitch together a panoramic image), or saved to a common format like JPEG, or used to create a movie. Many of these tasks have classes to assist them.

Before using the camera APIs, you should check that a camera is available at runtime. If there is none, you could for example disable camera related features in your application. To perform this check in C++, use the QCameraInfo::availableCameras() function, as shown in the example below:

.. code:: cpp

    bool checkCameraAvailability()
    {
        if (QCameraInfo::availableCameras().count() > 0)
            return true;
        else
            return false;
    }

In QML, use the :ref:`QtMultimedia.availableCameras <sdk_qtmultimedia_qtmultimedia_availableCameras>` property:

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.4
    Item {
        property bool isCameraAvailable: QtMultimedia.availableCameras.length > 0
    }

After determining whether a camera is available, access it using the QCamera class in C++ or the Camera type in QML.

When multiple cameras are available, you can specify which one to use.

In C++:

.. code:: cpp

    QList<QCameraInfo> cameras = QCameraInfo::availableCameras();
    foreach (const QCameraInfo &cameraInfo, cameras) {
        if (cameraInfo.deviceName() == "mycamera")
            camera = new QCamera(cameraInfo);
    }

In QML, you can set the ``Camera`` :ref:`deviceId <sdk_qtmultimedia_camera_deviceId>` property. All available IDs can be retrieved from :ref:`QtMultimedia.availableCameras <sdk_qtmultimedia_qtmultimedia_availableCameras>`:

.. code:: qml

    Camera {
        deviceId: QtMultimedia.availableCameras[0].deviceId
    }

You can also select the camera by its physical position on the system rather than its device ID. This is useful on mobile devices, which often have a front-facing and a back-facing camera.

In C++:

.. code:: cpp

    camera = new QCamera(QCamera::FrontFace);

In QML:

.. code:: qml

    Camera {
        position: Camera.FrontFace
    }

If neither device ID nor position is specified, the default camera will be used. On desktop platforms, the default camera is set by the user in the system settings. On a mobile device, the back-facing camera is usually the default camera. You can get information about the default camera using QCameraInfo::defaultCamera() in C++ or QtMultimedia.defaultCamera in QML.

While not strictly necessary, it's often useful to be able to see what the camera is pointing at. Most digital cameras allow an image feed from the camera sensor at a lower resolution (usually up to the size of the display of the camera) so you can compose a photo or video, and then switch to a slower but higher resolution mode for capturing the image.

Depending on whether you're using QML or C++, you can do this in multiple ways. In QML, you can use `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  and :ref:`VideoOutput <sdk_qtmultimedia_videooutput>` together to show a simple viewfinder:

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.4
    VideoOutput {
        source: camera
        Camera {
            id: camera
            // You can adjust various settings in here
        }
    }

In C++, your choice depends on whether you are using widgets, or QGraphicsView. The QCameraViewfinder class is used in the widgets case, and QGraphicsVideoItem is useful for QGraphicsView.

.. code:: cpp

    camera = new QCamera;
    viewfinder = new QCameraViewfinder;
    camera->setViewfinder(viewfinder);
    viewfinder->show();
    camera->start(); // to start the viewfinder

For advanced usage (like processing viewfinder frames as they come, to detect objects or patterns), you can also derive from QAbstractVideoSurface and set that as the viewfinder for the QCamera object. In this case you will need to render the viewfinder image yourself.

.. code:: cpp

    camera = new QCamera;
    mySurface = new MyVideoSurface;
    camera->setViewfinder(mySurface);
    camera->start();
    // MyVideoSurface::present(..) will be called with viewfinder frames

On mobile devices, the viewfinder image might not always be in the orientation you would expect. The camera sensors on these devices are often mounted in landscape while the natural orientation of the screen is portrait. This results in the image appearing sideways or inverted depending on the device orientation. In order to reflect on screen what the user actually sees, you should make sure the viewfinder frames are always rotated to the correct orientation, taking into account the camera sensor orientation and the current display orientation.

.. code:: cpp

    // Assuming a QImage has been created from the QVideoFrame that needs to be presented
    QImage videoFrame;
    QCameraInfo cameraInfo(camera); // needed to get the camera sensor position and orientation
    // Get the current display orientation
    const QScreen *screen = QGuiApplication::primaryScreen();
    const int screenAngle = screen->angleBetween(screen->nativeOrientation(), screen->orientation());
    int rotation;
    if (cameraInfo.position() == QCamera::BackFace) {
        rotation = (cameraInfo.orientation() - screenAngle) % 360;
    } else {
        // Front position, compensate the mirror
        rotation = (360 - cameraInfo.orientation() + screenAngle) % 360;
    }
    // Rotate the frame so it always shows in the correct orientation
    videoFrame = videoFrame.transformed(QTransform().rotate(rotation));

After setting up a viewfinder and finding something photogenic, to capture an image we need to initialize a new QCameraImageCapture object. All that is then needed is to start the camera, lock it so that things are in focus and the settings are not different from the viewfinder while the image capture occurs, capture the image, and finally unlock the camera ready for the next photo.

.. code:: cpp

    imageCapture = new QCameraImageCapture(camera);
    camera->setCaptureMode(QCamera::CaptureStillImage);
    camera->start(); // Viewfinder frames start flowing
    //on half pressed shutter button
    camera->searchAndLock();
    //on shutter button pressed
    imageCapture->capture();
    //on shutter button released
    camera->unlock();

Previously we saw code that allowed the capture of a still image. Recording video requires the use of a QMediaRecorder object.

To record video we need to create a camera object as before but this time as well as creating a viewfinder, we will also initialize a media recorder object.

.. code:: cpp

    camera = new QCamera;
    recorder = new QMediaRecorder(camera);
    camera->setCaptureMode(QCamera::CaptureVideo);
    camera->start();
    //on shutter button pressed
    recorder->record();
    // sometime later, or on another press
    recorder->stop();

Signals from the *mediaRecorder* can be connected to slots to react to changes in the state of the recorder or error events. Recording itself starts with the record() function of mediaRecorder being called, this causes the signal stateChanged() to be emitted. The recording process can be changed with the record(), stop() and setMuted() slots in QMediaRecorder.

Now that the basics of capturing images or movies are covered, there are a number of ways to control the imaging pipeline to implement some interesting techniques. As explained earlier, several physical and electronic elements combine to determine the final images, and you can control them with different classes.

Focusing (and zoom) is managed primarily by the QCameraFocus class. QCameraFocus allows the developer to set the general policy by means of the enums for the FocusMode and the FocusPointMode. FocusMode deals with settings such as AutoFocus, ContinuousFocus and InfinityFocus, whereas FocusPointMode deals with the various focus zones within the view that are used for autofocus modes. FocusPointMode has support for face recognition (where the camera supports it), center focus and a custom focus where the focus point can be specified.

For camera hardware that supports it, Macro focus allows imaging of things that are close to the sensor. This is useful in applications like barcode recognition, or business card scanning.

In addition to focus, QCameraFocus allows you to control any available optical or digital zoom. In general, optical zoom is higher quality, but more expensive to manufacture, so the available zoom range might be limited (or fixed to unity).

There are a number of settings that affect the amount of light that hits the camera sensor, and hence the quality of the resulting image. The QCameraExposure class allows you to adjust these settings. You can use this class to implement some techniques like High Dynamic Range (HDR) photos by locking the exposure parameters (with QCamera::searchAndLock()), or motion blur by setting slow shutter speeds with small apertures.

The main settings for automatic image taking are the exposure mode and flash mode. Several other settings (aperture, ISO setting, shutter speed) are usually managed automatically but can also be overridden if desired.

You can also adjust the QCameraExposure::meteringMode() to control which parts of the camera frame to measure exposure at. Some camera implementations also allow you to specify a specific point that should be used for exposure metering - this is useful if you can let the user touch or click on an interesting part of the viewfinder, and then use this point so that the image exposure is best at that point.

Finally, you can control the flash hardware (if present) using this class. In some cases the hardware may also double as a torch (typically when the flash is LED based, rather than a xenon or other bulb). See also :ref:`Torch <sdk_qtmultimedia_torch>` for an easy to use API for torch functionality.

The QCameraImageProcessing class lets you adjust the image processing part of the pipeline. This includes the white balance (or color temperature), contrast, saturation, sharpening and denoising. Most cameras support automatic settings for all of these, so you shouldn't need to adjust them unless the user wants a specific setting.

If you're taking a series of images (for example, to stitch them together for a panoramic image), you should lock the image processing settings so that all the images taken appear similar with *QCamera::lock(QCamera::LockWhiteBalance)*/

Various operations such as image capture and auto focusing occur asynchrously. These operations can often be canceled by the start of a new operation as long as this is supported by the camera. For image capture, the operation can be canceled by calling cancelCapture(). For AutoFocus, autoexposure or white balance cancellation can be done by calling *QCamera::unlock(QCamera::LockFocus)*.

There are both C++ and QML examples available.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QCamera                                                                                                                                                | Interface for system camera devices                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QCameraExposure                                                                                                                                        | Interface for exposure related camera settings                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QCameraFocus                                                                                                                                           | Interface for focus and zoom related camera settings                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QCameraFocusZone                                                                                                                                       | Information on zones used for autofocusing a camera                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QCameraImageCapture                                                                                                                                    | Used for the recording of media content                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QCameraImageProcessing                                                                                                                                 | Interface for image processing related camera settings                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QCameraInfo                                                                                                                                            | General information about camera devices                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QImageEncoderSettings                                                                                                                                  | Set of image encoder settings                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Camera <sdk_qtmultimedia_camera>`                                                                                                                   | Access viewfinder frames, and take photos and movies                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`CameraCapture <sdk_qtmultimedia_cameracapture>`                                                                                                     | An interface for capturing camera images                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`CameraExposure <sdk_qtmultimedia_cameraexposure>`                                                                                                   | An interface for exposure related camera settings                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`CameraFlash <sdk_qtmultimedia_cameraflash>`                                                                                                         | An interface for flash related camera settings                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`CameraFocus <sdk_qtmultimedia_camerafocus>`                                                                                                         | An interface for focus related camera settings                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`CameraImageProcessing <sdk_qtmultimedia_cameraimageprocessing>`                                                                                     | An interface for camera capture related settings                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`CameraRecorder <sdk_qtmultimedia_camerarecorder>`                                                                                                   | Controls video recording with the Camera                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

