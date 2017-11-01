

Qt Multimedia is an essential module that provides a rich set of QML
types and C++ classes to handle multimedia content. It also provides
necessary APIs to access the camera and radio functionality. The
included Qt Audio Engine provides types for 3D positional audio playback
and management.

The Qt Multimedia Widgets module provides widget based multimedia
classes.

.. rubric:: Getting Started
   :name: getting-started

The QML types can be imported into your applciation using the following
import statement in your ``.qml`` file.

.. code:: cpp

    import QtMultimedia 5.4

If you intend to use the C++ classes in your application, include the
C++ definitions using the following directive:

.. code:: cpp

     #include <QtMultimedia>

**Note:** If you are using a few classes from this module, we recommend
including those specific classes only instead of the module.

To link against the corresponding C++ libraries, add the following to
your ``qmake`` project file:

.. code:: cpp

    QT += multimedia

.. rubric:: QML Types and C++ Classes
   :name: qml-types-and-c-classes

The following is a list of important QML types and C++ classes provided
by this module:

+-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                        | Description                                                                                                                                                                                                                   |
+=============================================================+===============================================================================================================================================================================================================================+
| `Audio </sdk/apps/qml/QtMultimedia/Audio/>`__               | Add audio playback functionality to a scene                                                                                                                                                                                   |
+-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Playlist </sdk/apps/qml/QtMultimedia/Playlist/>`__         | Add playlist functionality                                                                                                                                                                                                    |
+-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Camera </sdk/apps/qml/QtMultimedia/Camera/>`__             | Access camera viewfinder frames                                                                                                                                                                                               |
+-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__   | Add media playback functionality to a scene. It is same as Audio type, but can be used for video playback with the `VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__ type.                                            |
+-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Radio </sdk/apps/qml/QtMultimedia/Radio/>`__               | Access radio functionality                                                                                                                                                                                                    |
+-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Video </sdk/apps/qml/QtMultimedia/Video/>`__               | Add Video playback functionality to a scene. It uses `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__ and `VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__ types to provide video playback functionality.   |
+-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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

.. rubric:: Related Information
   :name: related-information

.. rubric:: Guides
   :name: guides

-  `Multimedia </sdk/apps/qml/QtMultimedia/multimediaoverview/>`__ -
   overview of multimedia support in Qt
-  `Audio Overview </sdk/apps/qml/QtMultimedia/audiooverview/>`__
-  `Video Overview </sdk/apps/qml/QtMultimedia/videooverview/>`__
-  `Camera Overview </sdk/apps/qml/QtMultimedia/cameraoverview/>`__
-  `Radio Overview </sdk/apps/qml/QtMultimedia/radiooverview/>`__

.. rubric:: Platform Notes
   :name: platform-notes

-  `BlackBerry </sdk/apps/qml/QtMultimedia/blackberry/>`__
-  `Windows </sdk/apps/qml/QtMultimedia/qtmultimedia-windows/>`__

.. rubric:: Reference
   :name: reference

-  Qt Multimedia

   -  QML Types
   -  C++ Classes

-  Qt Audio Engine

   -  QML Types

.. rubric:: Examples
   :name: examples

-  Qt Multimedia Examples

