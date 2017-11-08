.. _sdk_qtmultimedia_qt_multimedia_qml_api:

QtMultimedia Qt Multimedia QML API
==================================



The Qt Multimedia module gives developers a simplified way to use audio and video playback, and access camera functionality. The Multimedia QML API provides a QML friendly interface to these features.

`Audio </sdk/apps/qml/QtMultimedia/qml-multimedia/#audio>`_  is an easy way to add audio playback to a Qt Quick scene. Qt Multimedia provides properties for control, methods (functions) and signals.

The code extract below shows the creation and use of an Audio instance.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    // ...
    Item {
        width: 640
        height: 360
        Audio {
            id: playMusic
            source: "music.wav"
        }
        MouseArea {
            id: playArea
            anchors.fill: parent
            onPressed:  { playMusic.play() }
        }
    }

The snippet above shows how the inclusion of *playMusic* enables audio features on the type that contains it. So that when the parent's MouseArea is clicked the :ref:`play() <sdk_qtmultimedia_audio_play>` method of Audio is run. Other typical audio control methods are available such as :ref:`pause() <sdk_qtmultimedia_audio_pause>` and :ref:`stop() <sdk_qtmultimedia_audio_stop>`.

Much of the getting / setting of `Audio </sdk/apps/qml/QtMultimedia/qml-multimedia/#audio>`_  parameters is done through properties. These include

+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| Property                                                          | Description                                                              |
+===================================================================+==========================================================================+
| :ref:`source <sdk_qtmultimedia_audio_source>`                   | The source URL of the media.                                               |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`autoLoad <sdk_qtmultimedia_audio_autoLoad>`               | Indicates if loading of media should begin immediately.                    |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`playing <sdk_qtmultimedia_audio_playing>`               | Indicates that the media is playing.                                         |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`paused <sdk_qtmultimedia_audio_paused>`                 | The media is paused.                                                         |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`status <sdk_qtmultimedia_audio_status>`                   | The status of media loading.                                               |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`duration <sdk_qtmultimedia_audio_duration>`               | Amount of time in milliseconds the media will play.                        |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`position <sdk_qtmultimedia_audio_position>`               | Current position in the media in milliseconds of play.                     |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`volume <sdk_qtmultimedia_audio_volume>`                   | Audio output volume: from 0.0 (silent) to 1.0 (maximum)                    |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`muted <sdk_qtmultimedia_audio_muted>`                     | Indicates audio is muted.                                                  |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`bufferProgress <sdk_qtmultimedia_audio_bufferProgress>`   | Indicates how full the data buffer is: 0.0 (empty) to 1.0 (full).          |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`seekable <sdk_qtmultimedia_audio_seekable>`               | Indicates whether the audio position can be changed.                       |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`playbackRate <sdk_qtmultimedia_audio_playbackRate>`       | The rate at which audio is played at as a multiple of the normal rate.     |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`error <sdk_qtmultimedia_audio_error>`                   | An error code for the error state including NoError                          |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`errorString <sdk_qtmultimedia_audio_errorString>`         | A description of the current error condition.                              |
+-------------------------------------------------------------------+--------------------------------------------------------------------------+

The set of signals available allow the developer to create custom behavior when the following events occur,

+-------------------------------------------------------+-----------------------------------------------------------------------+
| Signal                                                | Description                                                           |
+=======================================================+=======================================================================+
| :ref:`playing <sdk_qtmultimedia_audio_playing>`   | Called when playback is started, or when resumed from paused state.       |
+-------------------------------------------------------+-----------------------------------------------------------------------+
| :ref:`paused <sdk_qtmultimedia_audio_paused>`     | Called when playback is paused.                                           |
+-------------------------------------------------------+-----------------------------------------------------------------------+
| :ref:`stopped <sdk_qtmultimedia_audio_stopped>`   | Called when playback is stopped.                                          |
+-------------------------------------------------------+-----------------------------------------------------------------------+
| :ref:`error <sdk_qtmultimedia_audio_error>`       | Called when the specified error occurs.                                   |
+-------------------------------------------------------+-----------------------------------------------------------------------+

`Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  enables still image and video capture using QML. It has a number of properties that help setting it up.

The details of using a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  are described in further depth in the `Camera Overview </sdk/apps/qml/QtMultimedia/cameraoverview/>`_  and in the corresponding reference documentation.

Adding video playback, with sound, to a Qt Quick scene is also easy. The process is very similar to that of Audio above, in fact `Video </sdk/apps/qml/QtMultimedia/qml-multimedia/#video>`_  shares many of the property names, methods and signals. Here is the equivalent sample code to implement video playback in a scene

.. code:: qml

    Video {
        id: video
        width : 800
        height : 600
        source: "video.avi"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                video.play()
            }
        }
        focus: true
        Keys.onSpacePressed: video.paused = !video.paused
        Keys.onLeftPressed: video.position -= 5000
        Keys.onRightPressed: video.position += 5000
    }

There are similar features like :ref:`play() <sdk_qtmultimedia_video_play>` with new features specific to video.

In the above sample when the parent of MouseArea is clicked, an area of 800x600 pixels with an id of 'video', the source "video.avi" will play in that area. Notice also that signals for the Keys have been defined so that a spacebar will toggle the pause button; the left arrow will move the current position in the video to 5 seconds previously; and the right arrow will advance the current position in the video by 5 seconds.

Most of the differences will obviously be about video control and information. There are many properties associated with `Video </sdk/apps/qml/QtMultimedia/qml-multimedia/#video>`_ , most of them deal with meta-data, control of the video media and aspects of presentation.

`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_  provides a way to play short sound effects, like in video games. Multiple sound effect instances can be played simultaneously. You should use `Audio </sdk/apps/qml/QtMultimedia/qml-multimedia/#audio>`_  for music playback.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Item {
        width: 640
        height: 360
        SoundEffect {
            id: effect
            source: "test.wav"
        }
        MouseArea {
            id: playArea
            anchors.fill: parent
            onPressed:  { effect.play() }
        }
    }

In the above sample the sound effect will be played when the MouseArea is clicked.

For a complete description of this type, see `SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia/#soundeffect>`_ 

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Audio <sdk_qtmultimedia_audio>`                                                                                                                     | Add audio playback to a scene                                                                                                                          |
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
| :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>`                                                                                                         | Add media playback to a scene                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Playlist <sdk_qtmultimedia_playlist>`                                                                                                               | For specifying a list of media to be played                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`PlaylistItem <sdk_qtmultimedia_playlistitem>`                                                                                                       | Defines an item in a Playlist                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`QtMultimedia <sdk_qtmultimedia_qtmultimedia>`                                                                                                       | Provides a global object with useful functions from Qt Multimedia                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Radio <sdk_qtmultimedia_radio>`                                                                                                                     | Access radio functionality from a QML application                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`RadioData <sdk_qtmultimedia_radiodata>`                                                                                                             | Access RDS data from a QML application                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`SoundEffect <sdk_qtmultimedia_soundeffect>`                                                                                                         | Type provides a way to play sound effects in QML                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Torch <sdk_qtmultimedia_torch>`                                                                                                                     | Simple control over torch functionality                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Video <sdk_qtmultimedia_video>`                                                                                                                     | A convenience type for showing a specified video                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`VideoOutput <sdk_qtmultimedia_videooutput>`                                                                                                         | Render video or camera viewfinder                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

