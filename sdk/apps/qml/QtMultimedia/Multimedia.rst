.. _sdk_qtmultimedia_multimedia:

QtMultimedia Multimedia
=======================


Multimedia support in Qt is provided by the `Qt Multimedia </sdk/apps/qml/QtMultimedia/qtmultimedia-index/>`_  module. The Qt Multimedia module provides a rich feature set that enables you to easily take advantage of a platform's multimedia capabilities such as media playback and the use of camera and radio devices.

Here are some examples of what can be done with Qt Multimedia APIs:

-  Access raw audio devices for input and output
-  Play low latency sound effects
-  Play media files in playlists (such as compressed audio or video files)
-  Record audio and compress it
-  Tune and listen to radio stations
-  Use a camera, including viewfinder, image capture, and movie recording
-  Play 3D positional audio with Qt Audio Engine
-  Decode audio media files into memory for processing
-  Accessing video frames or audio buffers as they are played or recorded

Qt's multimedia APIs are categorized into four main components. More information (including background information and class references) is available here:

-  `Audio Overview </sdk/apps/qml/QtMultimedia/audiooverview/>`_ 
-  `Video Overview </sdk/apps/qml/QtMultimedia/videooverview/>`_ 
-  `Camera Overview </sdk/apps/qml/QtMultimedia/cameraoverview/>`_ 
-  `Radio Overview </sdk/apps/qml/QtMultimedia/radiooverview/>`_ 

For some quick recipes, look at the overviews above and consult this table:

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
`Audio Engine </sdk/apps/qml/QtMultimedia/audioengine/>`_ 
:ref:`AudioEngine <sdk_qtaudioengine_audioengine>`, :ref:`Sound <sdk_qtaudioengine_sound>`

The Qt Multimedia APIs build upon the multimedia framework of the underlying platform. This can mean that support for various codecs or containers can vary between machines, depending on what the end user has installed.

For developers wishing to access some platform specific settings, or to port the Qt Multimedia APIs to a new platform or technology, see `Multimedia Backend Development </sdk/apps/qml/QtMultimedia/multimediabackend/>`_ .

If you previously used Qt Multimedia in Qt 4, or used Qt Multimedia Kit in Qt Mobility, please see `Changes in Qt Multimedia </sdk/apps/qml/QtMultimedia/changes/>`_  for more information on what changed, and what you might need to change when porting code.

The QML types are accessed by using:

.. code:: cpp

    import QtMultimedia 5.4

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

The following types are accessed by using Qt Audio Engine:

.. code:: cpp

    import QtAudioEngine 1.0

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`AttenuationModelInverse <sdk_qtaudioengine_attenuationmodelinverse>`                                                                                | Defines a non-linear attenuation curve for a Sound                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`AttenuationModelLinear <sdk_qtaudioengine_attenuationmodellinear>`                                                                                  | Defines a linear attenuation curve for a Sound                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`AudioCategory <sdk_qtaudioengine_audiocategory>`                                                                                                    | Control all active sound instances by group                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`AudioEngine <sdk_qtaudioengine_audioengine>`                                                                                                        | Organize all your 3d audio content in one place                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`AudioListener <sdk_qtaudioengine_audiolistener>`                                                                                                    | Control global listener parameters                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`AudioSample <sdk_qtaudioengine_audiosample>`                                                                                                        | Load audio samples, mostly .wav                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`PlayVariation <sdk_qtaudioengine_playvariation>`                                                                                                    | Define a playback variation for sounds. So each time the playback of the same sound can be a slightly different even with the same AudioSample         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Sound <sdk_qtaudioengine_sound>`                                                                                                                    | Define a variety of samples and parameters to be used for SoundInstance                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`SoundInstance <sdk_qtaudioengine_soundinstance>`                                                                                                    | Play 3d audio content                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

QAbstractPlanarVideoBuffer

Abstraction for planar video data

QAbstractVideoBuffer

Abstraction for video data

QAbstractVideoSurface

Base class for video presentation surfaces

QAudio

Contains enums used by the audio classes

QAudioBuffer

Represents a collection of audio samples with a specific format and sample rate

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

Contains miscellaneous identifiers used throughout the Qt Multimedia library

QRadioData

Interfaces to the RDS functionality of the system radio

QRadioTuner

Interface to the systems analog radio device

QSound

Method to play .wav sound files

QSoundEffect

Way to play low latency sound effects

QStaticText

Enables optimized drawing of text when the text and its layout is updated rarely

QVideoEncoderSettings

Set of video encoder settings

QVideoFrame

Represents a frame of video data

QVideoProbe

Allows you to monitor video frames being played or recorded

QVideoSurfaceFormat

Specifies the stream format of a video presentation surface

