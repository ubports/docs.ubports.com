QtMultimedia.CameraRecorder
===========================

.. raw:: html

   <p>

Controls video recording with the Camera. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CameraRecorder -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtMultimedia 5.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

actualLocation : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

audioBitRate : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

audioChannels : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

audioCodec : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

audioEncodingMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

audioSampleRate : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

duration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorCode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorString : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameRate : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mediaContainer : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

muted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

outputLocation : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

recorderState : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

recorderStatus : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

resolution : size

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

videoBitRate : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

videoCodec : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

videoEncodingMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

record()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

setMetadata(key, value)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stop()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CameraRecorder-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

CameraRecorder allows recording camera streams to files, and adjusting
recording settings and metadata for videos.

.. raw:: html

   </p>

.. raw:: html

   <p>

It should not be constructed separately, instead the videoRecorder
property of a Camera should be used.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">videoRecorder</span>.audioEncodingMode: <span class="name">CameraRecorder</span>.<span class="name">ConstantBitrateEncoding</span>;
   <span class="name">videoRecorder</span>.audioBitRate: <span class="number">128000</span>
   <span class="name">videoRecorder</span>.mediaContainer: <span class="string">&quot;mp4&quot;</span>
   <span class="comment">// ...</span>
   }</pre>

.. raw:: html

   <p>

There are many different settings for each part of the recording process
(audio, video, and output formats), as well as control over muting and
where to store the output file.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QAudioEncoderSettings and QVideoEncoderSettings.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CameraRecorder -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$actualLocation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="actualLocation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

actualLocation : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the actual location of the last saved media content.
The actual location is usually available after the recording starts, and
reset when new location is set or the new recording starts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actualLocation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="audioBitRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

audioBitRate : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the audio bit rate (in bits per second) to be used
for recording video.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@audioBitRate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="audioChannels-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

audioChannels : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property indicates the number of audio channels to be encoded while
recording video (1 is mono, 2 is stereo).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@audioChannels -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="audioCodec-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

audioCodec : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the audio codec to be used for recording video.
Typically this is aac or amr-wb.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also whileBalanceMode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@audioCodec -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="audioEncodingMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

audioEncodingMode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The type of encoding method to use when recording audio.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ConstantQualityEncoding

.. raw:: html

   </td>

.. raw:: html

   <td>

Encoding will aim to have a constant quality, adjusting bitrate to fit.
This is the default. The bitrate setting will be ignored.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ConstantBitRateEncoding

.. raw:: html

   </td>

.. raw:: html

   <td>

Encoding will use a constant bit rate, adjust quality to fit. This is
appropriate if you are trying to optimize for space.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

AverageBitRateEncoding

.. raw:: html

   </td>

.. raw:: html

   <td>

Encoding will try to keep an average bitrate setting, but will use more
or less as needed.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@audioEncodingMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="audioSampleRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

audioSampleRate : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the sample rate to be used to encode audio while
recording video.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@audioSampleRate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="duration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

duration : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the duration (in miliseconds) of the last recording.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorCode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

errorCode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the last error code.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

NoError

.. raw:: html

   </td>

.. raw:: html

   <td>

No Errors

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ResourceError

.. raw:: html

   </td>

.. raw:: html

   <td>

Device is not ready or not available.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FormatError

.. raw:: html

   </td>

.. raw:: html

   <td>

Current format is not supported.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

OutOfSpaceError

.. raw:: html

   </td>

.. raw:: html

   <td>

No space left on device.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@errorCode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

errorString : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the description of the last error.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameRate : qreal

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the framerate (in frames per second) to be used for
recording video.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameRate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mediaContainer-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mediaContainer : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the media container to be used for recording video.
Typically this is mp4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mediaContainer -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="muted-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

muted : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property indicates whether the audio input is muted during
recording.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@muted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="outputLocation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

outputLocation : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the destination location of the media content. If
the location is empty, the recorder uses the system-specific place and
file naming scheme.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@outputLocation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="recorderState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

recorderState : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the current state of the camera recorder object.

.. raw:: html

   </p>

.. raw:: html

   <p>

The state can be one of these two:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

StoppedState

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is not recording video.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

RecordingState

.. raw:: html

   </td>

.. raw:: html

   <td>

The camera is recording video.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@recorderState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="recorderStatus-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

recorderStatus : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the current status of media recording.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

UnavailableStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

Recording is not supported by the camera.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

UnloadedStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The recorder is available but not loaded.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

LoadingStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The recorder is initializing.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

LoadedStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

The recorder is initialized and ready to record media.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

StartingStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

Recording is requested but not active yet.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

RecordingStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

Recording is active.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PausedStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

Recording is paused.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FinalizingStatus

.. raw:: html

   </td>

.. raw:: html

   <td>

Recording is stopped with media being finalized.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@recorderStatus -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resolution-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

resolution : size

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the video frame dimensions to be used for video
capture.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resolution -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="videoBitRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

videoBitRate : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the bit rate (in bits per second) to be used for
recording video.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@videoBitRate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="videoCodec-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

videoCodec : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the video codec to be used for recording video.
Typically this is h264.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@videoCodec -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="videoEncodingMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

videoEncodingMode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the type of encoding method to be used for recording
video.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following are the different encoding methods used:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ConstantQualityEncoding

.. raw:: html

   </td>

.. raw:: html

   <td>

Encoding will aim to have a constant quality, adjusting bitrate to fit.
This is the default. The bitrate setting will be ignored.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ConstantBitRateEncoding

.. raw:: html

   </td>

.. raw:: html

   <td>

Encoding will use a constant bit rate, adjust quality to fit. This is
appropriate if you are trying to optimize for space.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

AverageBitRateEncoding

.. raw:: html

   </td>

.. raw:: html

   <td>

Encoding will try to keep an average bitrate setting, but will use more
or less as needed.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@videoEncodingMode -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$record -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="record-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

record()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Starts recording.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@record -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setMetadata-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setMetadata(key, value)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Sets metadata for the next video to be recorder, with the given key
being associated with value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setMetadata -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stop()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Stops recording.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->


