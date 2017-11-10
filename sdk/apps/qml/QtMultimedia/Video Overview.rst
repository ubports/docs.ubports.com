.. _sdk_qtmultimedia_video_overview:

QtMultimedia Video Overview
===========================



Qt Multimedia offers both high and low level C++ classes for playing and manipulating video data, and QML types for playback and control. Some of these classes also overlap with both `camera </sdk/apps/qml/QtMultimedia/cameraoverview/>`_  and `audio </sdk/apps/qml/QtMultimedia/audiooverview/>`_  classes, which can be useful.

You can use the QMediaPlayer class to decode a video file, and display it using QVideoWidget, QGraphicsVideoItem, or a custom class.

Here's an example of using QVideoWidget:

.. code:: cpp

    player = new QMediaPlayer;
    playlist = new QMediaPlaylist(player);
    playlist->addMedia(QUrl("http://example.com/myclip1.mp4"));
    playlist->addMedia(QUrl("http://example.com/myclip2.mp4"));
    videoWidget = new QVideoWidget;
    player->setVideoOutput(videoWidget);
    videoWidget->show();
    playlist->setCurrentIndex(1);
    player->play();

And an example with QGraphicsVideoItem:

.. code:: cpp

    player = new QMediaPlayer(this);
    QGraphicsVideoItem *item = new QGraphicsVideoItem;
    player->setVideoOutput(item);
    graphicsView->scene()->addItem(item);
    graphicsView->show();
    player->setMedia(QUrl("http://example.com/myclip4.ogv"));
    player->play();

You can use :ref:`VideoOutput <sdk_qtmultimedia_videooutput>` to render content that is provided by either a :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>` or a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_ . The :ref:`VideoOutput <sdk_qtmultimedia_videooutput>` is a visual component that can be transformed or acted upon by shaders (as the `QML Video Shader Effects Example </sdk/apps/qml/QtMultimedia/video-qmlvideofx/>`_  shows), while all media decoding and playback control is handled by the :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`.

Alternatively there is also a higher level `Video </sdk/apps/qml/QtMultimedia/qml-multimedia/#video>`_  type that acts as a single, visual element to play video and control playback.

Qt Multimedia offers a number of low level classes to make handling video frames a bit easier. These classes are primarily used when writing code that processes video or camera frames (for example, detecting barcodes, or applying a fancy vignette effect), or needs to display video in a special way that is otherwise unsupported.

The QVideoFrame class encapsulates a video frame and allows the contents to be mapped into system memory for manipulation or processing, while deriving a class from QAbstractVideoSurface allows you to receive these frames from QMediaPlayer and QCamera.

.. code:: cpp

    class MyVideoSurface : public QAbstractVideoSurface
    {
        QList<QVideoFrame::PixelFormat> supportedPixelFormats(
                QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle) const
        {
            Q_UNUSED(handleType);
            // Return the formats you will support
            return QList<QVideoFrame::PixelFormat>() << QVideoFrame::Format_RGB565;
        }
        bool present(const QVideoFrame &frame)
        {
            Q_UNUSED(frame);
            // Handle the frame and do your processing
            return true;
        }
    };

and with an instance of this surface, ``myVideoSurface``, you can set the surface as the video output for QMediaPlayer.

.. code:: cpp

    player->setVideoOutput(myVideoSurface);

Several of the built-in Qt classes offer this functionality as well, so if you decode video in your application, you can present it to classes that offer a QVideoRendererControl class, and in QML you can set a custom object for the source of a VideoOutput with either a writable ``videoSurface`` property (that the instance will set it's internal video surface to) or a readable ``mediaObject`` property with a QMediaObject derived class that implements the QVideoRendererControl interface.

The following snippet shows a class that has a writable ``videoSurface`` property and receives frames through a public slot ``onNewVideoContentReceived()``. These frames are then presented on the surface set in ``setVideoSurface()``.

.. code:: cpp

    class MyVideoProducer : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(QAbstractVideoSurface *videoSurface READ videoSurface WRITE setVideoSurface)
    public:
        QAbstractVideoSurface* videoSurface() const { return m_surface; }
        void setVideoSurface(QAbstractVideoSurface *surface)
        {
            if (m_surface != surface && m_surface && m_surface->isActive()) {
                m_surface->stop();
            }
            m_surface = surface;
            if (m_surface)
                m_surface->start(m_format);
        }
        // ...
    public slots:
        void onNewVideoContentReceived(const QVideoFrame &frame)
        {
            if (m_surface)
                m_surface->present(frame);
        }
    private:
        QAbstractVideoSurface *m_surface;
        QVideoSurfaceFormat m_format;
    };

You can use the QMediaRecorder class in conjunction with other classes to record video to disk. Primarily this is used with the camera, so consult the Camera Overview for more information.

You can use the QVideoProbe class to access video frames as they flow through different parts of a media pipeline when using other classes like QMediaPlayer, QMediaRecorder or QCamera. After creating the high level media class, you can set the source of the video probe to that instance. This can be useful for performing some video processing tasks (like barcode recognition, or object detection) while the video is rendered normally. You can not affect the video frames using this class, and they may arrive at a slightly different time than they are being rendered.

Here's an example of installing a video probe while recording the camera:

.. code:: cpp

    camera = new QCamera;
    viewfinder = new QCameraViewfinder();
    camera->setViewfinder(viewfinder);
    camera->setCaptureMode(QCamera::CaptureVideo);
    videoProbe = new QVideoProbe(this);
    if (videoProbe->setSource(camera)) {
        // Probing succeeded, videoProbe->isValid() should be true.
        connect(videoProbe, SIGNAL(videoFrameProbed(QVideoFrame)),
                this, SLOT(detectBarcodes(QVideoFrame)));
    }
    camera->start();
    // Viewfinder frames should now also be emitted by
    // the video probe, even in still image capture mode.
    // Another alternative is to install the probe on a
    // QMediaRecorder connected to the camera to get the
    // recorded frames, if they are different from the
    // viewfinder frames.

There are both C++ and QML examples available.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QAbstractPlanarVideoBuffer                                                                                                                             | Abstraction for planar video data                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QAbstractVideoBuffer                                                                                                                                   | Abstraction for video data                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QAbstractVideoSurface                                                                                                                                  | Base class for video presentation surfaces                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QVideoFrame                                                                                                                                            | Represents a frame of video data                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QVideoProbe                                                                                                                                            | Allows you to monitor video frames being played or recorded                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QVideoSurfaceFormat                                                                                                                                    | Specifies the stream format of a video presentation surface                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`                                                                                                         | Add media playback to a scene                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Playlist <sdk_qtmultimedia_playlist>`                                                                                                               | For specifying a list of media to be played                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Video <sdk_qtmultimedia_video>`                                                                                                                     | A convenience type for showing a specified video                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`VideoOutput <sdk_qtmultimedia_videooutput>`                                                                                                         | Render video or camera viewfinder                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

