.. _sdk_qtmultimedia_camerarecorder:
QtMultimedia CameraRecorder
===========================

Controls video recording with the Camera.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`actualLocation <sdk_qtmultimedia_camerarecorder_actualLocation-prop>`
   : string
-  :ref:`audioBitRate <sdk_qtmultimedia_camerarecorder_audioBitRate-prop>`
   : int
-  :ref:`audioChannels <sdk_qtmultimedia_camerarecorder_audioChannels-prop>`
   : int
-  :ref:`audioCodec <sdk_qtmultimedia_camerarecorder_audioCodec-prop>`
   : string
-  :ref:`audioEncodingMode <sdk_qtmultimedia_camerarecorder_audioEncodingMode-prop>`
   : enumeration
-  :ref:`audioSampleRate <sdk_qtmultimedia_camerarecorder_audioSampleRate-prop>`
   : int
-  :ref:`duration <sdk_qtmultimedia_camerarecorder_duration-prop>`
   : int
-  :ref:`errorCode <sdk_qtmultimedia_camerarecorder_errorCode-prop>`
   : enumeration
-  :ref:`errorString <sdk_qtmultimedia_camerarecorder_errorString-prop>`
   : string
-  :ref:`frameRate <sdk_qtmultimedia_camerarecorder_frameRate-prop>`
   : qreal
-  :ref:`mediaContainer <sdk_qtmultimedia_camerarecorder_mediaContainer-prop>`
   : string
-  :ref:`muted <sdk_qtmultimedia_camerarecorder_muted-prop>` : bool
-  :ref:`outputLocation <sdk_qtmultimedia_camerarecorder_outputLocation-prop>`
   : string
-  :ref:`recorderState <sdk_qtmultimedia_camerarecorder_recorderState-prop>`
   : enumeration
-  :ref:`recorderStatus <sdk_qtmultimedia_camerarecorder_recorderStatus-prop>`
   : enumeration
-  :ref:`resolution <sdk_qtmultimedia_camerarecorder_resolution-prop>`
   : size
-  :ref:`videoBitRate <sdk_qtmultimedia_camerarecorder_videoBitRate-prop>`
   : int
-  :ref:`videoCodec <sdk_qtmultimedia_camerarecorder_videoCodec-prop>`
   : string
-  :ref:`videoEncodingMode <sdk_qtmultimedia_camerarecorder_videoEncodingMode-prop>`
   : enumeration

Methods
-------

-  :ref:`record <sdk_qtmultimedia_camerarecorder_record-method>`\ ()
-  :ref:`setMetadata <sdk_qtmultimedia_camerarecorder_setMetadata-method>`\ (key,
   value)
-  :ref:`stop <sdk_qtmultimedia_camerarecorder_stop-method>`\ ()

Detailed Description
--------------------

:ref:`CameraRecorder <sdk_qtmultimedia_camerarecorder>` allows recording
camera streams to files, and adjusting recording settings and metadata
for videos.

It should not be constructed separately, instead the ``videoRecorder``
property of a
`Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  should be
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

.. _sdk_qtmultimedia_camerarecorder_actualLocation-prop:

+--------------------------------------------------------------------------+
|        \ actualLocation : string                                         |
+--------------------------------------------------------------------------+

This property holds the actual location of the last saved media content.
The actual location is usually available after the recording starts, and
reset when new location is set or the new recording starts.

| 

.. _sdk_qtmultimedia_camerarecorder_audioBitRate-prop:

+--------------------------------------------------------------------------+
|        \ audioBitRate : int                                              |
+--------------------------------------------------------------------------+

This property holds the audio bit rate (in bits per second) to be used
for recording video.

| 

.. _sdk_qtmultimedia_camerarecorder_audioChannels-prop:

+--------------------------------------------------------------------------+
|        \ audioChannels : int                                             |
+--------------------------------------------------------------------------+

This property indicates the number of audio channels to be encoded while
recording video (1 is mono, 2 is stereo).

| 

.. _sdk_qtmultimedia_camerarecorder_audioCodec-prop:

+--------------------------------------------------------------------------+
|        \ audioCodec : string                                             |
+--------------------------------------------------------------------------+

This property holds the audio codec to be used for recording video.
Typically this is ``aac`` or ``amr-wb``.

**See also**
:ref:`whileBalanceMode <sdk_qtmultimedia_cameraimageprocessing#whiteBalanceMode-prop>`.

| 

.. _sdk_qtmultimedia_camerarecorder_audioEncodingMode-prop:

+--------------------------------------------------------------------------+
|        \ audioEncodingMode : enumeration                                 |
+--------------------------------------------------------------------------+

The type of encoding method to use when recording audio.

.. _sdk_qtmultimedia_camerarecorder_Value                      Description-prop:

+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Value                     | Description                                                                                                                         |
+===========================+=====================================================================================================================================+
.. _sdk_qtmultimedia_camerarecorder_ConstantBitRateEncoding    Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.-prop:
| ConstantQualityEncoding   | Encoding will aim to have a constant quality, adjusting bitrate to fit. This is the default. The bitrate setting will be ignored.   |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_AverageBitRateEncoding     Encoding will try to keep an average bitrate setting, but will use more or less as needed.-prop:
| ConstantBitRateEncoding   | Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.          |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| AverageBitRateEncoding    | Encoding will try to keep an average bitrate setting, but will use more or less as needed.                                          |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

| 

.. _sdk_qtmultimedia_camerarecorder_audioSampleRate-prop:

+--------------------------------------------------------------------------+
|        \ audioSampleRate : int                                           |
+--------------------------------------------------------------------------+

This property holds the sample rate to be used to encode audio while
recording video.

| 

.. _sdk_qtmultimedia_camerarecorder_duration-prop:

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

This property holds the duration (in miliseconds) of the last recording.

| 

.. _sdk_qtmultimedia_camerarecorder_errorCode-prop:

+--------------------------------------------------------------------------+
|        \ errorCode : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the last error code.

.. _sdk_qtmultimedia_camerarecorder_Value              Description-prop:

+-------------------+-----------------------------------------+
| Value             | Description                             |
+===================+=========================================+
.. _sdk_qtmultimedia_camerarecorder_ResourceError      Device is not ready or not available.-prop:
| NoError           | No Errors                               |
+-------------------+-----------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_FormatError        Current format is not supported.-prop:
| ResourceError     | Device is not ready or not available.   |
+-------------------+-----------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_OutOfSpaceError    No space left on device.-prop:
| FormatError       | Current format is not supported.        |
+-------------------+-----------------------------------------+
| OutOfSpaceError   | No space left on device.                |
+-------------------+-----------------------------------------+

| 

.. _sdk_qtmultimedia_camerarecorder_errorString-prop:

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This property holds the description of the last error.

| 

.. _sdk_qtmultimedia_camerarecorder_frameRate-prop:

+--------------------------------------------------------------------------+
|        \ frameRate : qreal                                               |
+--------------------------------------------------------------------------+

This property holds the framerate (in frames per second) to be used for
recording video.

| 

.. _sdk_qtmultimedia_camerarecorder_mediaContainer-prop:

+--------------------------------------------------------------------------+
|        \ mediaContainer : string                                         |
+--------------------------------------------------------------------------+

This property holds the media container to be used for recording video.
Typically this is ``mp4``.

| 

.. _sdk_qtmultimedia_camerarecorder_muted-prop:

+--------------------------------------------------------------------------+
|        \ muted : bool                                                    |
+--------------------------------------------------------------------------+

This property indicates whether the audio input is muted during
recording.

| 

.. _sdk_qtmultimedia_camerarecorder_outputLocation-prop:

+--------------------------------------------------------------------------+
|        \ outputLocation : string                                         |
+--------------------------------------------------------------------------+

This property holds the destination location of the media content. If
the location is empty, the recorder uses the system-specific place and
file naming scheme.

| 

.. _sdk_qtmultimedia_camerarecorder_recorderState-prop:

+--------------------------------------------------------------------------+
|        \ recorderState : enumeration                                     |
+--------------------------------------------------------------------------+

This property holds the current state of the camera recorder object.

The state can be one of these two:

.. _sdk_qtmultimedia_camerarecorder_Value             Description-prop:

+------------------+--------------------------------------+
| Value            | Description                          |
+==================+======================================+
.. _sdk_qtmultimedia_camerarecorder_RecordingState    The camera is recording video.-prop:
| StoppedState     | The camera is not recording video.   |
+------------------+--------------------------------------+
| RecordingState   | The camera is recording video.       |
+------------------+--------------------------------------+

| 

.. _sdk_qtmultimedia_camerarecorder_recorderStatus-prop:

+--------------------------------------------------------------------------+
|        \ recorderStatus : enumeration                                    |
+--------------------------------------------------------------------------+

This property holds the current status of media recording.

.. _sdk_qtmultimedia_camerarecorder_Value                Description-prop:

+---------------------+----------------------------------------------------------+
| Value               | Description                                              |
+=====================+==========================================================+
.. _sdk_qtmultimedia_camerarecorder_UnloadedStatus       The recorder is available but not loaded.-prop:
| UnavailableStatus   | Recording is not supported by the camera.                |
+---------------------+----------------------------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_LoadingStatus        The recorder is initializing.-prop:
| UnloadedStatus      | The recorder is available but not loaded.                |
+---------------------+----------------------------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_LoadedStatus         The recorder is initialized and ready to record media.-prop:
| LoadingStatus       | The recorder is initializing.                            |
+---------------------+----------------------------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_StartingStatus       Recording is requested but not active yet.-prop:
| LoadedStatus        | The recorder is initialized and ready to record media.   |
+---------------------+----------------------------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_RecordingStatus      Recording is active.-prop:
| StartingStatus      | Recording is requested but not active yet.               |
+---------------------+----------------------------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_PausedStatus         Recording is paused.-prop:
| RecordingStatus     | Recording is active.                                     |
+---------------------+----------------------------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_FinalizingStatus     Recording is stopped with media being finalized.-prop:
| PausedStatus        | Recording is paused.                                     |
+---------------------+----------------------------------------------------------+
| FinalizingStatus    | Recording is stopped with media being finalized.         |
+---------------------+----------------------------------------------------------+

| 

.. _sdk_qtmultimedia_camerarecorder_resolution-prop:

+--------------------------------------------------------------------------+
|        \ resolution : size                                               |
+--------------------------------------------------------------------------+

This property holds the video frame dimensions to be used for video
capture.

| 

.. _sdk_qtmultimedia_camerarecorder_videoBitRate-prop:

+--------------------------------------------------------------------------+
|        \ videoBitRate : int                                              |
+--------------------------------------------------------------------------+

This property holds the bit rate (in bits per second) to be used for
recording video.

| 

.. _sdk_qtmultimedia_camerarecorder_videoCodec-prop:

+--------------------------------------------------------------------------+
|        \ videoCodec : string                                             |
+--------------------------------------------------------------------------+

This property holds the video codec to be used for recording video.
Typically this is ``h264``.

| 

.. _sdk_qtmultimedia_camerarecorder_videoEncodingMode-method:

+--------------------------------------------------------------------------+
|        \ videoEncodingMode : enumeration                                 |
+--------------------------------------------------------------------------+

This property holds the type of encoding method to be used for recording
video.

The following are the different encoding methods used:

.. _sdk_qtmultimedia_camerarecorder_Value                      Description-method:

+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| Value                     | Description                                                                                                                         |
+===========================+=====================================================================================================================================+
.. _sdk_qtmultimedia_camerarecorder_ConstantBitRateEncoding    Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.-method:
| ConstantQualityEncoding   | Encoding will aim to have a constant quality, adjusting bitrate to fit. This is the default. The bitrate setting will be ignored.   |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
.. _sdk_qtmultimedia_camerarecorder_AverageBitRateEncoding     Encoding will try to keep an average bitrate setting, but will use more or less as needed.-method:
| ConstantBitRateEncoding   | Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.          |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
| AverageBitRateEncoding    | Encoding will try to keep an average bitrate setting, but will use more or less as needed.                                          |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

| 

Method Documentation
--------------------

.. _sdk_qtmultimedia_camerarecorder_record-method:

+--------------------------------------------------------------------------+
|        \ record()                                                        |
+--------------------------------------------------------------------------+

Starts recording.

| 

.. _sdk_qtmultimedia_camerarecorder_setMetadata-method:

+--------------------------------------------------------------------------+
|        \ setMetadata(key, value)                                         |
+--------------------------------------------------------------------------+

Sets metadata for the next video to be recorder, with the given *key*
being associated with *value*.

| 

.. _sdk_qtmultimedia_camerarecorder_stop-method:

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops recording.

| 
