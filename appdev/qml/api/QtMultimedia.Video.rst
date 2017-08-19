QtMultimedia.Video
==================

.. raw:: html

   <p>

A convenience type for showing a specified video. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Video -->

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

audioRole : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

autoLoad : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

autoPlay : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

availability : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bufferProgress : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

duration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorString : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fillMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hasAudio : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hasVideo : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

metaData : object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

muted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

orientation : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

playbackRate : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

playbackState : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

playlist : Playlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

position : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

seekable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

volume : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

paused()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

playing()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stopped()

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

pause()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

seek(offset)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stop()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

supportedAudioRoles()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Video-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Video is a convenience type combining the functionality of a MediaPlayer
and a VideoOutput into one. It provides simple video playback
functionality without having to declare multiple types.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type"><a href="index.html">Video</a></span> {
   <span class="name">id</span>: <span class="name">video</span>
   <span class="name">width</span> : <span class="number">800</span>
   <span class="name">height</span> : <span class="number">600</span>
   <span class="name">source</span>: <span class="string">&quot;video.avi&quot;</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">video</span>.<span class="name">play</span>()
   }
   }
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onSpacePressed: <span class="name">video</span>.<span class="name">playbackState</span> <span class="operator">==</span> <span class="name">MediaPlayer</span>.<span class="name">PlayingState</span> ? <span class="name">video</span>.<span class="name">pause</span>() : <span class="name">video</span>.<span class="name">play</span>()
   <span class="name">Keys</span>.onLeftPressed: <span class="name">video</span>.<span class="name">seek</span>(<span class="name">video</span>.<span class="name">position</span> <span class="operator">-</span> <span class="number">5000</span>)
   <span class="name">Keys</span>.onRightPressed: <span class="name">video</span>.<span class="name">seek</span>(<span class="name">video</span>.<span class="name">position</span> <span class="operator">+</span> <span class="number">5000</span>)
   }</pre>

.. raw:: html

   <p>

Video supports untransformed, stretched, and uniformly scaled video
presentation. For a description of stretched uniformly scaled
presentation, see the fillMode property description.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also MediaPlayer and VideoOutput.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Video -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$audioRole -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="audioRole-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

audioRole : enumeration

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

This property holds the role of the audio stream. It can be set to
specify the type of audio being played, allowing the system to make
appropriate decisions when it comes to volume, routing or
post-processing.

.. raw:: html

   </p>

.. raw:: html

   <p>

The audio role must be set before setting the source property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Supported values can be retrieved with supportedAudioRoles().

.. raw:: html

   </p>

.. raw:: html

   <p>

The value can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

MediaPlayer.UnknownRole - the role is unknown or undefined.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.MusicRole - music.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.VideoRole - soundtrack from a movie or a video.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.VoiceCommunicationRole - voice communications, such as
telephony.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.AlarmRole - alarm.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.NotificationRole - notification, such as an incoming e-mail
or a chat request.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.RingtoneRole - ringtone.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.AccessibilityRole - for accessibility, such as with a screen
reader.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.SonificationRole - sonification, such as with user interface
sounds.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.GameRole - game audio.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.6.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@audioRole -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoLoad-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoLoad : bool

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

This property indicates if loading of media should begin immediately.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defaults to true, if false media will not be loaded until playback is
started.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoLoad -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoPlay-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoPlay : bool

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

This property determines whether the media should begin playback
automatically.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting to true also sets autoLoad to true. The default is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoPlay -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="availability-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

availability : enumeration

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

Returns the availability state of the video instance.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is one of:

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

MediaPlayer.Available

.. raw:: html

   </td>

.. raw:: html

   <td>

The video player is available to use.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MediaPlayer.Busy

.. raw:: html

   </td>

.. raw:: html

   <td>

The video player is usually available, but some other process is
utilizing the hardware necessary to play media.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MediaPlayer.Unavailable

.. raw:: html

   </td>

.. raw:: html

   <td>

There are no supported video playback facilities.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MediaPlayer.ResourceMissing

.. raw:: html

   </td>

.. raw:: html

   <td>

There is one or more resources missing, so the video player cannot be
used. It may be possible to try again at a later time.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@availability -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="bufferProgress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

bufferProgress : real

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

This property holds how much of the data buffer is currently filled,
from 0.0 (empty) to 1.0 (full).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bufferProgress -->

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

This property holds the duration of the media in milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the media doesn't have a fixed duration (a live stream for example)
this will be 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

error : enumeration

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

This property holds the error state of the video. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

MediaPlayer.NoError - there is no current error.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.ResourceError - the video cannot be played due to a problem
allocating resources.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.FormatError - the video format is not supported.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.NetworkError - the video cannot be played due to network
issues.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.AccessDenied - the video cannot be played due to
insufficient permissions.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.ServiceMissing - the video cannot be played because the
media service could not be instantiated.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@error -->

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

This property holds a string describing the current error condition in
more detail.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fillMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fillMode : enumeration

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

Set this property to define how the video is scaled to fit the target
area.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

VideoOutput.Stretch - the video is scaled to fit

.. raw:: html

   </li>

.. raw:: html

   <li>

VideoOutput.PreserveAspectFit - the video is scaled uniformly to fit
without cropping

.. raw:: html

   </li>

.. raw:: html

   <li>

VideoOutput.PreserveAspectCrop - the video is scaled uniformly to fill,
cropping if necessary

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Because this type is for convenience in QML, it does not support
enumerations directly, so enumerations from VideoOutput are used to
access the available fill modes.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default fill mode is preserveAspectFit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fillMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hasAudio-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hasAudio : bool

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

This property holds whether the current media has audio content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hasAudio -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hasVideo-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hasVideo : bool

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

This property holds whether the current media has video content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hasVideo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="metaData-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

metaData : object

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

This property holds the meta data for the current media.

.. raw:: html

   </p>

.. raw:: html

   <p>

See MediaPlayer.metaData for details about each meta data key.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QMediaMetaData.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@metaData -->

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

This property holds whether the audio output is muted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@muted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

orientation : int

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

The orientation of the Video in degrees. Only multiples of 90 degrees is
supported, that is 0, 90, 180, 270, 360, etc.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@orientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="playbackRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

playbackRate : real

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

This property holds the rate at which video is played at as a multiple
of the normal rate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@playbackRate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="playbackState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

playbackState : enumeration

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

This read only property indicates the playback state of the media.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

MediaPlayer.PlayingState - the media is playing

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.PausedState - the media is paused

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.StoppedState - the media is stopped

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default state is MediaPlayer.StoppedState.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@playbackState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="playlist-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

playlist : Playlist

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

This property holds the playlist used by the media player.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting the playlist property resets the source to an empty string.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.6.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@playlist -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="position-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

position : int

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

This property holds the current playback position in milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

To change this position, use the seek() method.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also seek().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@position -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="seekable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

seekable : bool

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

This property holds whether the playback position of the video can be
changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

If true, calling the seek() method will cause playback to seek to the
new position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@seekable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : url

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

This property holds the source URL of the media.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting the source property clears the current playlist, if any.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enumeration

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

This property holds the status of media loading. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

MediaPlayer.NoMedia - no media has been set.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.Loading - the media is currently being loaded.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.Loaded - the media has been loaded.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.Buffering - the media is buffering data.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.Stalled - playback has been interrupted while the media is
buffering data.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.Buffered - the media has buffered data.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.EndOfMedia - the media has played to the end.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.InvalidMedia - the media cannot be played.

.. raw:: html

   </li>

.. raw:: html

   <li>

MediaPlayer.UnknownStatus - the status of the media cannot be
determined.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="volume-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

volume : real

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

This property holds the volume of the audio output, from 0.0 (silent) to
1.0 (maximum volume).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@volume -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$paused -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="paused-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

paused()

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

This signal is emitted when playback is paused.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPaused.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@paused -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="playing-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

playing()

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

This signal is emitted when playback is started or continued.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPlaying.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@playing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stopped-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stopped()

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

This signal is emitted when playback is stopped.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onStopped.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stopped -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$pause -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pause-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pause()

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

Pauses playback of the media.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pause -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play()

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

Starts playback of the media.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="seek-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

seek( offset)

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

If the seekable property is true, seeks the current playback position to
offset.

.. raw:: html

   </p>

.. raw:: html

   <p>

Seeking may be asynchronous, so the position property may not be updated
immediately.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also seekable and position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@seek -->

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

Stops playback of the media.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supportedAudioRoles-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

supportedAudioRoles()

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

Returns a list of supported audio roles.

.. raw:: html

   </p>

.. raw:: html

   <p>

If setting the audio role is not supported, an empty list is returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML method was introduced in Qt 5.6.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also audioRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@supportedAudioRoles -->


