

Multimedia support in Qt is provided by the `Qt
Multimedia </sdk/apps/qml/QtMultimedia/qtmultimedia-index/>`__ module.
The Qt Multimedia module provides a rich feature set that enables you to
easily take advantage of a platform's multimedia capabilities such as
media playback and the use of camera and radio devices.

.. rubric:: Features
   :name: features

Here are some examples of what can be done with Qt Multimedia APIs:

-  Access raw audio devices for input and output
-  Play low latency sound effects
-  Play media files in playlists (such as compressed audio or video
   files)
-  Record audio and compress it
-  Tune and listen to radio stations
-  Use a camera, including viewfinder, image capture, and movie
   recording
-  Play 3D positional audio with Qt Audio Engine
-  Decode audio media files into memory for processing
-  Accessing video frames or audio buffers as they are played or
   recorded

.. rubric:: Multimedia Components
   :name: multimedia-components

Qt's multimedia APIs are categorized into four main components. More
information (including background information and class references) is
available here:

-  `Audio Overview </sdk/apps/qml/QtMultimedia/audiooverview/>`__
-  `Video Overview </sdk/apps/qml/QtMultimedia/videooverview/>`__
-  `Camera Overview </sdk/apps/qml/QtMultimedia/cameraoverview/>`__
-  `Radio Overview </sdk/apps/qml/QtMultimedia/radiooverview/>`__

.. rubric:: Multimedia Recipes
   :name: multimedia-recipes

For some quick recipes, look at the overviews above and consult this
table:

Use case
Examples
QML Types
C++ Classes
Playing a sound effect
QSoundEffect
Playing low latency audio
audioinput, spectrum
QAudioOutput
Playing encoded audio (MP3, AAC etc)
player
Audio, MediaPlayer
QMediaPlayer
Accessing raw audio input data
spectrum, audioinput
QAudioInput
Recording encoded audio data
audiorecorder
QAudioRecorder
Discovering raw audio devices
audiodevices
QAudioDeviceInfo
Video Playback
player, qmlvideo, qmlvideofx
MediaPlayer, VideoOutput, Video
QMediaPlayer, QVideoWidget, QGraphicsVideoItem
Video Processing
qmlvideofx
MediaPlayer, VideoOutput
QMediaPlayer, QAbstractVideoSurface, QVideoFrame
Listening to the radio
declarative-radio
Radio, RadioData
QRadioTuner, QRadioData
Accessing camera viewfinder
camera, declarative-camera
Camera, VideoOutput
QCamera, QVideoWidget, QGraphicsVideoItem
Viewfinder processing
Camera, VideoOutput
QCamera, QAbstractVideoSurface, QVideoFrame
Capturing photos
camera, declarative-camera
Camera
QCamera, QCameraImageCapture
Capturing movies
camera, declarative-camera
Camera
QCamera, QMediaRecorder
3D sound sources
`Audio Engine </sdk/apps/qml/QtMultimedia/audioengine/>`__
`AudioEngine </sdk/apps/qml/QtAudioEngine/AudioEngine/>`__,
`Sound </sdk/apps/qml/QtAudioEngine/Sound/>`__

.. rubric:: Limitations
   :name: limitations

The Qt Multimedia APIs build upon the multimedia framework of the
underlying platform. This can mean that support for various codecs or
containers can vary between machines, depending on what the end user has
installed.

.. rubric:: Advanced Usage
   :name: advanced-usage

For developers wishing to access some platform specific settings, or to
port the Qt Multimedia APIs to a new platform or technology, see
`Multimedia Backend
Development </sdk/apps/qml/QtMultimedia/multimediabackend/>`__.

.. rubric:: Changes from Previous Versions
   :name: changes-from-previous-versions

If you previously used Qt Multimedia in Qt 4, or used Qt Multimedia Kit
in Qt Mobility, please see `Changes in Qt
Multimedia </sdk/apps/qml/QtMultimedia/changes/>`__ for more information
on what changed, and what you might need to change when porting code.

.. rubric:: Reference Documentation
   :name: reference-documentation

.. rubric:: QML Types
   :name: qml-types

The QML types are accessed by using:

.. code:: cpp

    import QtMultimedia 5.4

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

The following types are accessed by using Qt Audio Engine:

.. code:: cpp

    import QtAudioEngine 1.0

+--------------------------------------+--------------------------------------+
| `AttenuationModelInverse </sdk/apps/ | Defines a non-linear attenuation     |
| qml/QtAudioEngine/AttenuationModelIn | curve for a Sound                    |
| verse/>`__                           |                                      |
+--------------------------------------+--------------------------------------+
| `AttenuationModelLinear </sdk/apps/q | Defines a linear attenuation curve   |
| ml/QtAudioEngine/AttenuationModelLin | for a Sound                          |
| ear/>`__                             |                                      |
+--------------------------------------+--------------------------------------+
| `AudioCategory </sdk/apps/qml/QtAudi | Control all active sound instances   |
| oEngine/AudioCategory/>`__           | by group                             |
+--------------------------------------+--------------------------------------+
| `AudioEngine </sdk/apps/qml/QtAudioE | Organize all your 3d audio content   |
| ngine/AudioEngine/>`__               | in one place                         |
+--------------------------------------+--------------------------------------+
| `AudioListener </sdk/apps/qml/QtAudi | Control global listener parameters   |
| oEngine/AudioListener/>`__           |                                      |
+--------------------------------------+--------------------------------------+
| `AudioSample </sdk/apps/qml/QtAudioE | Load audio samples, mostly .wav      |
| ngine/AudioSample/>`__               |                                      |
+--------------------------------------+--------------------------------------+
| `PlayVariation </sdk/apps/qml/QtAudi | Define a playback variation for      |
| oEngine/PlayVariation/>`__           | sounds. So each time the playback of |
|                                      | the same sound can be a slightly     |
|                                      | different even with the same         |
|                                      | AudioSample                          |
+--------------------------------------+--------------------------------------+
| `Sound </sdk/apps/qml/QtAudioEngine/ | Define a variety of samples and      |
| Sound/>`__                           | parameters to be used for            |
|                                      | SoundInstance                        |
+--------------------------------------+--------------------------------------+
| `SoundInstance </sdk/apps/qml/QtAudi | Play 3d audio content                |
| oEngine/SoundInstance/>`__           |                                      |
+--------------------------------------+--------------------------------------+

.. rubric:: Multimedia Classes
   :name: multimedia-classes

QAbstractPlanarVideoBuffer

Abstraction for planar video data

QAbstractVideoBuffer

Abstraction for video data

QAbstractVideoSurface

Base class for video presentation surfaces

QAudio

Contains enums used by the audio classes

QAudioBuffer

Represents a collection of audio samples with a specific format and
sample rate

QAudioBuffer::StereoFrame

Simple wrapper for a stereo audio frame

QAudioDecoder

Allows decoding audio

QAudioDeviceInfo

Interface to query audio devices and their functionality

QAudioEncoderSettings

Set of audio encoder settings

QAudioFormat

Stores audio stream parameter information

QAudioInput

Interface for receiving audio data from an audio input device

QAudioOutput

Interface for sending audio data to an audio output device

QAudioProbe

Allows you to monitor audio being played or recorded

QAudioRecorder

Used for the recording of audio

QCamera

Interface for system camera devices

QCameraExposure

Interface for exposure related camera settings

QCameraFocus

Interface for focus and zoom related camera settings

QCameraFocusZone

Information on zones used for autofocusing a camera

QCameraImageCapture

Used for the recording of media content

QCameraImageProcessing

Interface for image processing related camera settings

QCameraInfo

General information about camera devices

QGraphicsEffect

The base class for all graphics effects

QImageEncoderSettings

Set of image encoder settings

QMediaBindableInterface

The base class for objects extending media objects functionality

QMediaContent

Access to the resources relating to a media content

QMediaControl

Base interface for media service controls

QMediaMetaData

QMediaObject

Common base for multimedia objects

QMediaPlayer

Allows the playing of a media source

QMediaPlaylist

List of media content to play

QMediaRecorder

Used for the recording of media content

QMediaResource

Description of a media resource

QMediaService

Common base class for media service implementations

QMediaTimeInterval

Represents a time interval with integer precision

QMediaTimeRange

Represents a set of zero or more disjoint time intervals

QMultimedia

Contains miscellaneous identifiers used throughout the Qt Multimedia
library

QRadioData

Interfaces to the RDS functionality of the system radio

QRadioTuner

Interface to the systems analog radio device

QSound

Method to play .wav sound files

QSoundEffect

Way to play low latency sound effects

QStaticText

Enables optimized drawing of text when the text and its layout is
updated rarely

QVideoEncoderSettings

Set of video encoder settings

QVideoFrame

Represents a frame of video data

QVideoProbe

Allows you to monitor video frames being played or recorded

QVideoSurfaceFormat

Specifies the stream format of a video presentation surface

