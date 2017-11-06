.. _sdk_qtmultimedia_qt_multimedia:

QtMultimedia Qt Multimedia
==========================


Qt Multimedia is an essential module that provides a rich set of QML types and C++ classes to handle multimedia content. It also provides necessary APIs to access the camera and radio functionality. The included Qt Audio Engine provides types for 3D positional audio playback and management.

The Qt Multimedia Widgets module provides widget based multimedia classes.

The QML types can be imported into your applciation using the following import statement in your ``.qml`` file.

.. code:: cpp

    import QtMultimedia 5.4

If you intend to use the C++ classes in your application, include the C++ definitions using the following directive:

.. code:: cpp

     #include <QtMultimedia>

**Note:** If you are using a few classes from this module, we recommend including those specific classes only instead of the module.

To link against the corresponding C++ libraries, add the following to your ``qmake`` project file:

.. code:: cpp

    QT += multimedia

The following is a list of important QML types and C++ classes provided by this module:

+--------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                             | Description                                                                                                                                                                                                      |
+==================================================+==================================================================================================================================================================================================================+
| :ref:`Audio <sdk_qtmultimedia_audio>`               | Add audio playback functionality to a scene                                                                                                                                                                   |
+--------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Playlist <sdk_qtmultimedia_playlist>`         | Add playlist functionality                                                                                                                                                                                    |
+--------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Camera <sdk_qtmultimedia_camera>`             | Access camera viewfinder frames                                                                                                                                                                               |
+--------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`   | Add media playback functionality to a scene. It is same as Audio type, but can be used for video playback with the :ref:`VideoOutput <sdk_qtmultimedia_videooutput>` type.                                    |
+--------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Radio <sdk_qtmultimedia_radio>`               | Access radio functionality                                                                                                                                                                                    |
+--------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Video <sdk_qtmultimedia_video>`               | Add Video playback functionality to a scene. It uses :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>` and :ref:`VideoOutput <sdk_qtmultimedia_videooutput>` types to provide video playback functionality.   |
+--------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+-------------------------+---------------------------------------------------------------------------+
| Class                   | Description                                                               |
+=========================+===========================================================================+
| QAudioOutput            | Sends audio data to an audio output device                                |
+-------------------------+---------------------------------------------------------------------------+
| QCamera                 | Access camera viewfinder.                                                 |
+-------------------------+---------------------------------------------------------------------------+
| QCameraImageCapture     | Record media content. Intended to be used with QCamera to record media.   |
+-------------------------+---------------------------------------------------------------------------+
| QMediaPlayer            | Playback media from a source.                                             |
+-------------------------+---------------------------------------------------------------------------+
| QMediaPlaylist          | List of media to be played.                                               |
+-------------------------+---------------------------------------------------------------------------+
| QRadioTuner             | Access radio device.                                                      |
+-------------------------+---------------------------------------------------------------------------+
| QVideoRendererControl   | Control video data.                                                       |
+-------------------------+---------------------------------------------------------------------------+

-  `Multimedia </sdk/apps/qml/QtMultimedia/multimediaoverview/>`_  - overview of multimedia support in Qt
-  `Audio Overview </sdk/apps/qml/QtMultimedia/audiooverview/>`_ 
-  `Video Overview </sdk/apps/qml/QtMultimedia/videooverview/>`_ 
-  `Camera Overview </sdk/apps/qml/QtMultimedia/cameraoverview/>`_ 
-  `Radio Overview </sdk/apps/qml/QtMultimedia/radiooverview/>`_ 

-  `BlackBerry </sdk/apps/qml/QtMultimedia/blackberry/>`_ 
-  `Windows </sdk/apps/qml/QtMultimedia/qtmultimedia-windows/>`_ 

-  Qt Multimedia

   -  QML Types
   -  C++ Classes

-  Qt Audio Engine

   -  QML Types

-  Qt Multimedia Examples

