Controls video recording with the Camera.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`actualLocation </sdk/apps/qml/QtMultimedia/CameraRecorder#actualLocation-prop>`__****
   : string
-  ****`audioBitRate </sdk/apps/qml/QtMultimedia/CameraRecorder#audioBitRate-prop>`__****
   : int
-  ****`audioChannels </sdk/apps/qml/QtMultimedia/CameraRecorder#audioChannels-prop>`__****
   : int
-  ****`audioCodec </sdk/apps/qml/QtMultimedia/CameraRecorder#audioCodec-prop>`__****
   : string
-  ****`audioEncodingMode </sdk/apps/qml/QtMultimedia/CameraRecorder#audioEncodingMode-prop>`__****
   : enumeration
-  ****`audioSampleRate </sdk/apps/qml/QtMultimedia/CameraRecorder#audioSampleRate-prop>`__****
   : int
-  ****`duration </sdk/apps/qml/QtMultimedia/CameraRecorder#duration-prop>`__****
   : int
-  ****`errorCode </sdk/apps/qml/QtMultimedia/CameraRecorder#errorCode-prop>`__****
   : enumeration
-  ****`errorString </sdk/apps/qml/QtMultimedia/CameraRecorder#errorString-prop>`__****
   : string
-  ****`frameRate </sdk/apps/qml/QtMultimedia/CameraRecorder#frameRate-prop>`__****
   : qreal
-  ****`mediaContainer </sdk/apps/qml/QtMultimedia/CameraRecorder#mediaContainer-prop>`__****
   : string
-  ****`muted </sdk/apps/qml/QtMultimedia/CameraRecorder#muted-prop>`__****
   : bool
-  ****`outputLocation </sdk/apps/qml/QtMultimedia/CameraRecorder#outputLocation-prop>`__****
   : string
-  ****`recorderState </sdk/apps/qml/QtMultimedia/CameraRecorder#recorderState-prop>`__****
   : enumeration
-  ****`recorderStatus </sdk/apps/qml/QtMultimedia/CameraRecorder#recorderStatus-prop>`__****
   : enumeration
-  ****`resolution </sdk/apps/qml/QtMultimedia/CameraRecorder#resolution-prop>`__****
   : size
-  ****`videoBitRate </sdk/apps/qml/QtMultimedia/CameraRecorder#videoBitRate-prop>`__****
   : int
-  ****`videoCodec </sdk/apps/qml/QtMultimedia/CameraRecorder#videoCodec-prop>`__****
   : string
-  ****`videoEncodingMode </sdk/apps/qml/QtMultimedia/CameraRecorder#videoEncodingMode-prop>`__****
   : enumeration

Methods
-------

-  ****`record </sdk/apps/qml/QtMultimedia/CameraRecorder#record-method>`__****\ ()
-  ****`setMetadata </sdk/apps/qml/QtMultimedia/CameraRecorder#setMetadata-method>`__****\ (key,
   value)
-  ****`stop </sdk/apps/qml/QtMultimedia/CameraRecorder#stop-method>`__****\ ()

Detailed Description
--------------------

`CameraRecorder </sdk/apps/qml/QtMultimedia/CameraRecorder/>`__ allows
recording camera streams to files, and adjusting recording settings and
metadata for videos.

It should not be constructed separately, instead the ``videoRecorder``
property of a
`Camera </sdk/apps/qml/QtMultimedia/qml-multimedia#camera>`__ should be
used.

.. code:: qml

    Camera {
        videoRecorder.audioEncodingMode: CameraRecorder.ConstantBitrateEncoding;
        videoRecorder.audioBitRate: 128000
        videoRecorder.mediaContainer: "mp4"
        // ...
    }

There are many different settings for each part of the recording process
(audio, video, and output formats), as well as control over muting and
where to store the output file.

**See also** QAudioEncoderSettings and QVideoEncoderSettings.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ actualLocation : string                                         |
+--------------------------------------------------------------------------+

This property holds the actual location of the last saved media content.
The actual location is usually available after the recording starts, and
reset when new location is set or the new recording starts.

| 

+--------------------------------------------------------------------------+
|        \ audioBitRate : int                                              |
+--------------------------------------------------------------------------+

This property holds the audio bit rate (in bits per second) to be used
for recording video.

| 

+--------------------------------------------------------------------------+
|        \ audioChannels : int                                             |
+--------------------------------------------------------------------------+

This property indicates the number of audio channels to be encoded while
recording video (1 is mono, 2 is stereo).

| 

+--------------------------------------------------------------------------+
|        \ audioCodec : string                                             |
+--------------------------------------------------------------------------+

This property holds the audio codec to be used for recording video.
Typically this is ``aac`` or ``amr-wb``.

**See also**
`whileBalanceMode </sdk/apps/qml/QtMultimedia/CameraImageProcessing#whiteBalanceMode-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ audioEncodingMode : enumeration                                 |
+--------------------------------------------------------------------------+

The type of encoding method to use when recording audio.

+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Value                     | Description                                                                                                                         |
+===========================+=====================================================================================================================================+
| ConstantQualityEncoding   | Encoding will aim to have a constant quality, adjusting bitrate to fit. This is the default. The bitrate setting will be ignored.   |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| ConstantBitRateEncoding   | Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.          |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| AverageBitRateEncoding    | Encoding will try to keep an average bitrate setting, but will use more or less as needed.                                          |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ audioSampleRate : int                                           |
+--------------------------------------------------------------------------+

This property holds the sample rate to be used to encode audio while
recording video.

| 

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

This property holds the duration (in miliseconds) of the last recording.

| 

+--------------------------------------------------------------------------+
|        \ errorCode : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the last error code.

+-------------------+-----------------------------------------+
| Value             | Description                             |
+===================+=========================================+
| NoError           | No Errors                               |
+-------------------+-----------------------------------------+
| ResourceError     | Device is not ready or not available.   |
+-------------------+-----------------------------------------+
| FormatError       | Current format is not supported.        |
+-------------------+-----------------------------------------+
| OutOfSpaceError   | No space left on device.                |
+-------------------+-----------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This property holds the description of the last error.

| 

+--------------------------------------------------------------------------+
|        \ frameRate : qreal                                               |
+--------------------------------------------------------------------------+

This property holds the framerate (in frames per second) to be used for
recording video.

| 

+--------------------------------------------------------------------------+
|        \ mediaContainer : string                                         |
+--------------------------------------------------------------------------+

This property holds the media container to be used for recording video.
Typically this is ``mp4``.

| 

+--------------------------------------------------------------------------+
|        \ muted : bool                                                    |
+--------------------------------------------------------------------------+

This property indicates whether the audio input is muted during
recording.

| 

+--------------------------------------------------------------------------+
|        \ outputLocation : string                                         |
+--------------------------------------------------------------------------+

This property holds the destination location of the media content. If
the location is empty, the recorder uses the system-specific place and
file naming scheme.

| 

+--------------------------------------------------------------------------+
|        \ recorderState : enumeration                                     |
+--------------------------------------------------------------------------+

This property holds the current state of the camera recorder object.

The state can be one of these two:

+------------------+--------------------------------------+
| Value            | Description                          |
+==================+======================================+
| StoppedState     | The camera is not recording video.   |
+------------------+--------------------------------------+
| RecordingState   | The camera is recording video.       |
+------------------+--------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ recorderStatus : enumeration                                    |
+--------------------------------------------------------------------------+

This property holds the current status of media recording.

+---------------------+----------------------------------------------------------+
| Value               | Description                                              |
+=====================+==========================================================+
| UnavailableStatus   | Recording is not supported by the camera.                |
+---------------------+----------------------------------------------------------+
| UnloadedStatus      | The recorder is available but not loaded.                |
+---------------------+----------------------------------------------------------+
| LoadingStatus       | The recorder is initializing.                            |
+---------------------+----------------------------------------------------------+
| LoadedStatus        | The recorder is initialized and ready to record media.   |
+---------------------+----------------------------------------------------------+
| StartingStatus      | Recording is requested but not active yet.               |
+---------------------+----------------------------------------------------------+
| RecordingStatus     | Recording is active.                                     |
+---------------------+----------------------------------------------------------+
| PausedStatus        | Recording is paused.                                     |
+---------------------+----------------------------------------------------------+
| FinalizingStatus    | Recording is stopped with media being finalized.         |
+---------------------+----------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ resolution : size                                               |
+--------------------------------------------------------------------------+

This property holds the video frame dimensions to be used for video
capture.

| 

+--------------------------------------------------------------------------+
|        \ videoBitRate : int                                              |
+--------------------------------------------------------------------------+

This property holds the bit rate (in bits per second) to be used for
recording video.

| 

+--------------------------------------------------------------------------+
|        \ videoCodec : string                                             |
+--------------------------------------------------------------------------+

This property holds the video codec to be used for recording video.
Typically this is ``h264``.

| 

+--------------------------------------------------------------------------+
|        \ videoEncodingMode : enumeration                                 |
+--------------------------------------------------------------------------+

This property holds the type of encoding method to be used for recording
video.

The following are the different encoding methods used:

+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Value                     | Description                                                                                                                         |
+===========================+=====================================================================================================================================+
| ConstantQualityEncoding   | Encoding will aim to have a constant quality, adjusting bitrate to fit. This is the default. The bitrate setting will be ignored.   |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| ConstantBitRateEncoding   | Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.          |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| AverageBitRateEncoding    | Encoding will try to keep an average bitrate setting, but will use more or less as needed.                                          |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ record()                                                        |
+--------------------------------------------------------------------------+

Starts recording.

| 

+--------------------------------------------------------------------------+
|        \ setMetadata(key, value)                                         |
+--------------------------------------------------------------------------+

Sets metadata for the next video to be recorder, with the given *key*
being associated with *value*.

| 

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops recording.

| 
