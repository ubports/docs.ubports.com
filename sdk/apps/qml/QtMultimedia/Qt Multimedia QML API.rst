

.. rubric:: Overview
   :name: overview

The Qt Multimedia module gives developers a simplified way to use audio
and video playback, and access camera functionality. The Multimedia QML
API provides a QML friendly interface to these features.

.. rubric:: Types
   :name: types

.. rubric:: Audio
   :name: audio

`Audio </sdk/apps/qml/QtMultimedia/qml-multimedia#audio>`__ is an easy
way to add audio playback to a Qt Quick scene. Qt Multimedia provides
properties for control, methods (functions) and signals.

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

The snippet above shows how the inclusion of *playMusic* enables audio
features on the type that contains it. So that when the parent's
MouseArea is clicked the
`play() </sdk/apps/qml/QtMultimedia/Audio#play-method>`__ method of
Audio is run. Other typical audio control methods are available such as
`pause() </sdk/apps/qml/QtMultimedia/Audio#pause-method>`__ and
`stop() </sdk/apps/qml/QtMultimedia/Audio#stop-method>`__.

Much of the getting / setting of
`Audio </sdk/apps/qml/QtMultimedia/qml-multimedia#audio>`__ parameters
is done through properties. These include

+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| Property                                                                    | Description                                                              |
+=============================================================================+==========================================================================+
| `source </sdk/apps/qml/QtMultimedia/Audio#source-prop>`__                   | The source URL of the media.                                             |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `autoLoad </sdk/apps/qml/QtMultimedia/Audio#autoLoad-prop>`__               | Indicates if loading of media should begin immediately.                  |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `playing </sdk/apps/qml/QtMultimedia/Audio#playing-signal>`__               | Indicates that the media is playing.                                     |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `paused </sdk/apps/qml/QtMultimedia/Audio#paused-signal>`__                 | The media is paused.                                                     |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `status </sdk/apps/qml/QtMultimedia/Audio#status-prop>`__                   | The status of media loading.                                             |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `duration </sdk/apps/qml/QtMultimedia/Audio#duration-prop>`__               | Amount of time in milliseconds the media will play.                      |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `position </sdk/apps/qml/QtMultimedia/Audio#position-prop>`__               | Current position in the media in milliseconds of play.                   |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `volume </sdk/apps/qml/QtMultimedia/Audio#volume-prop>`__                   | Audio output volume: from 0.0 (silent) to 1.0 (maximum)                  |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `muted </sdk/apps/qml/QtMultimedia/Audio#muted-prop>`__                     | Indicates audio is muted.                                                |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `bufferProgress </sdk/apps/qml/QtMultimedia/Audio#bufferProgress-prop>`__   | Indicates how full the data buffer is: 0.0 (empty) to 1.0 (full).        |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `seekable </sdk/apps/qml/QtMultimedia/Audio#seekable-prop>`__               | Indicates whether the audio position can be changed.                     |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `playbackRate </sdk/apps/qml/QtMultimedia/Audio#playbackRate-prop>`__       | The rate at which audio is played at as a multiple of the normal rate.   |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `error </sdk/apps/qml/QtMultimedia/Audio#error-signal>`__                   | An error code for the error state including NoError                      |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+
| `errorString </sdk/apps/qml/QtMultimedia/Audio#errorString-prop>`__         | A description of the current error condition.                            |
+-----------------------------------------------------------------------------+--------------------------------------------------------------------------+

The set of signals available allow the developer to create custom
behavior when the following events occur,

+-----------------------------------------------------------------+-----------------------------------------------------------------------+
| Signal                                                          | Description                                                           |
+=================================================================+=======================================================================+
| `playing </sdk/apps/qml/QtMultimedia/Audio#playing-signal>`__   | Called when playback is started, or when resumed from paused state.   |
+-----------------------------------------------------------------+-----------------------------------------------------------------------+
| `paused </sdk/apps/qml/QtMultimedia/Audio#paused-signal>`__     | Called when playback is paused.                                       |
+-----------------------------------------------------------------+-----------------------------------------------------------------------+
| `stopped </sdk/apps/qml/QtMultimedia/Audio#stopped-signal>`__   | Called when playback is stopped.                                      |
+-----------------------------------------------------------------+-----------------------------------------------------------------------+
| `error </sdk/apps/qml/QtMultimedia/Audio#error-signal>`__       | Called when the specified error occurs.                               |
+-----------------------------------------------------------------+-----------------------------------------------------------------------+

.. rubric:: Camera
   :name: camera

`Camera </sdk/apps/qml/QtMultimedia/qml-multimedia#camera>`__ enables
still image and video capture using QML. It has a number of properties
that help setting it up.

The details of using a
`Camera </sdk/apps/qml/QtMultimedia/qml-multimedia#camera>`__ are
described in further depth in the `Camera
Overview </sdk/apps/qml/QtMultimedia/cameraoverview/>`__ and in the
corresponding reference documentation.

.. rubric:: Video
   :name: video

Adding video playback, with sound, to a Qt Quick scene is also easy. The
process is very similar to that of Audio above, in fact
`Video </sdk/apps/qml/QtMultimedia/qml-multimedia#video>`__ shares many
of the property names, methods and signals. Here is the equivalent
sample code to implement video playback in a scene

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

There are similar features like
`play() </sdk/apps/qml/QtMultimedia/Video#play-method>`__ with new
features specific to video.

In the above sample when the parent of MouseArea is clicked, an area of
800x600 pixels with an id of 'video', the source "video.avi" will play
in that area. Notice also that signals for the Keys have been defined so
that a spacebar will toggle the pause button; the left arrow will move
the current position in the video to 5 seconds previously; and the right
arrow will advance the current position in the video by 5 seconds.

Most of the differences will obviously be about video control and
information. There are many properties associated with
`Video </sdk/apps/qml/QtMultimedia/qml-multimedia#video>`__, most of
them deal with meta-data, control of the video media and aspects of
presentation.

.. rubric:: SoundEffect
   :name: soundeffect

`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__
provides a way to play short sound effects, like in video games.
Multiple sound effect instances can be played simultaneously. You should
use `Audio </sdk/apps/qml/QtMultimedia/qml-multimedia#audio>`__ for
music playback.

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

In the above sample the sound effect will be played when the MouseArea
is clicked.

For a complete description of this type, see
`SoundEffect </sdk/apps/qml/QtMultimedia/qml-multimedia#soundeffect>`__

.. rubric:: Multimedia QML Types
   :name: multimedia-qml-types

+--------------------------------------+--------------------------------------+
| `Audio </sdk/apps/qml/QtMultimedia/A | Add audio playback to a scene        |
| udio/>`__                            |                                      |
+--------------------------------------+--------------------------------------+
| `Camera </sdk/apps/qml/QtMultimedia/ | Access viewfinder frames, and take   |
| Camera/>`__                          | photos and movies                    |
+--------------------------------------+--------------------------------------+
| `CameraCapture </sdk/apps/qml/QtMult | An interface for capturing camera    |
| imedia/CameraCapture/>`__            | images                               |
+--------------------------------------+--------------------------------------+
| `CameraExposure </sdk/apps/qml/QtMul | An interface for exposure related    |
| timedia/CameraExposure/>`__          | camera settings                      |
+--------------------------------------+--------------------------------------+
| `CameraFlash </sdk/apps/qml/QtMultim | An interface for flash related       |
| edia/CameraFlash/>`__                | camera settings                      |
+--------------------------------------+--------------------------------------+
| `CameraFocus </sdk/apps/qml/QtMultim | An interface for focus related       |
| edia/CameraFocus/>`__                | camera settings                      |
+--------------------------------------+--------------------------------------+
| `CameraImageProcessing </sdk/apps/qm | An interface for camera capture      |
| l/QtMultimedia/CameraImageProcessing | related settings                     |
| />`__                                |                                      |
+--------------------------------------+--------------------------------------+
| `CameraRecorder </sdk/apps/qml/QtMul | Controls video recording with the    |
| timedia/CameraRecorder/>`__          | Camera                               |
+--------------------------------------+--------------------------------------+
| `MediaPlayer </sdk/apps/qml/QtMultim | Add media playback to a scene        |
| edia/MediaPlayer/>`__                |                                      |
+--------------------------------------+--------------------------------------+
| `Playlist </sdk/apps/qml/QtMultimedi | For specifying a list of media to be |
| a/Playlist/>`__                      | played                               |
+--------------------------------------+--------------------------------------+
| `PlaylistItem </sdk/apps/qml/QtMulti | Defines an item in a Playlist        |
| media/PlaylistItem/>`__              |                                      |
+--------------------------------------+--------------------------------------+
| `QtMultimedia </sdk/apps/qml/QtMulti | Provides a global object with useful |
| media/QtMultimedia/>`__              | functions from Qt Multimedia         |
+--------------------------------------+--------------------------------------+
| `Radio </sdk/apps/qml/QtMultimedia/R | Access radio functionality from a    |
| adio/>`__                            | QML application                      |
+--------------------------------------+--------------------------------------+
| `RadioData </sdk/apps/qml/QtMultimed | Access RDS data from a QML           |
| ia/RadioData/>`__                    | application                          |
+--------------------------------------+--------------------------------------+
| `SoundEffect </sdk/apps/qml/QtMultim | Type provides a way to play sound    |
| edia/SoundEffect/>`__                | effects in QML                       |
+--------------------------------------+--------------------------------------+
| `Torch </sdk/apps/qml/QtMultimedia/T | Simple control over torch            |
| orch/>`__                            | functionality                        |
+--------------------------------------+--------------------------------------+
| `Video </sdk/apps/qml/QtMultimedia/V | A convenience type for showing a     |
| ideo/>`__                            | specified video                      |
+--------------------------------------+--------------------------------------+
| `VideoOutput </sdk/apps/qml/QtMultim | Render video or camera viewfinder    |
| edia/VideoOutput/>`__                |                                      |
+--------------------------------------+--------------------------------------+

