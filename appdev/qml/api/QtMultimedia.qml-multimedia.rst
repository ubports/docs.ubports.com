QtMultimedia.qml-multimedia
===========================

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Qt Multimedia module gives developers a simplified way to use audio
and video playback, and access camera functionality. The Multimedia QML
API provides a QML friendly interface to these features.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="types">

Types

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Audio

.. raw:: html

   </h3>

.. raw:: html

   <p>

Audio is an easy way to add audio playback to a Qt Quick scene. Qt
Multimedia provides properties for control, methods (functions) and
signals.

.. raw:: html

   </p>

.. raw:: html

   <p>

The code extract below shows the creation and use of an Audio instance.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="comment">// ...</span>
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">640</span>
   <span class="name">height</span>: <span class="number">360</span>
   <span class="type"><a href="QtMultimedia.Audio.md">Audio</a></span> {
   <span class="name">id</span>: <span class="name">playMusic</span>
   <span class="name">source</span>: <span class="string">&quot;music.wav&quot;</span>
   }
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">playArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>:  { <span class="name">playMusic</span>.<span class="name">play</span>() }
   }
   }</pre>

.. raw:: html

   <p>

The snippet above shows how the inclusion of playMusic enables audio
features on the type that contains it. So that when the parent's
MouseArea is clicked the play() method of Audio is run. Other typical
audio control methods are available such as pause() and stop().

.. raw:: html

   </p>

.. raw:: html

   <p>

Much of the getting / setting of Audio parameters is done through
properties. These include

.. raw:: html

   </p>

.. raw:: html

   <table class="generic" width="70%">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Property

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

source

.. raw:: html

   </td>

.. raw:: html

   <td>

The source URL of the media.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

autoLoad

.. raw:: html

   </td>

.. raw:: html

   <td>

Indicates if loading of media should begin immediately.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

playing

.. raw:: html

   </td>

.. raw:: html

   <td>

Indicates that the media is playing.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

paused

.. raw:: html

   </td>

.. raw:: html

   <td>

The media is paused.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

status

.. raw:: html

   </td>

.. raw:: html

   <td>

The status of media loading.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

duration

.. raw:: html

   </td>

.. raw:: html

   <td>

Amount of time in milliseconds the media will play.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

position

.. raw:: html

   </td>

.. raw:: html

   <td>

Current position in the media in milliseconds of play.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

volume

.. raw:: html

   </td>

.. raw:: html

   <td>

Audio output volume: from 0.0 (silent) to 1.0 (maximum)

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

muted

.. raw:: html

   </td>

.. raw:: html

   <td>

Indicates audio is muted.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

bufferProgress

.. raw:: html

   </td>

.. raw:: html

   <td>

Indicates how full the data buffer is: 0.0 (empty) to 1.0 (full).

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

seekable

.. raw:: html

   </td>

.. raw:: html

   <td>

Indicates whether the audio position can be changed.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

playbackRate

.. raw:: html

   </td>

.. raw:: html

   <td>

The rate at which audio is played at as a multiple of the normal rate.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

error

.. raw:: html

   </td>

.. raw:: html

   <td>

An error code for the error state including NoError

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

errorString

.. raw:: html

   </td>

.. raw:: html

   <td>

A description of the current error condition.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The set of signals available allow the developer to create custom
behavior when the following events occur,

.. raw:: html

   </p>

.. raw:: html

   <table class="generic" width="70%">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Signal

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

playing

.. raw:: html

   </td>

.. raw:: html

   <td>

Called when playback is started, or when resumed from paused state.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

paused

.. raw:: html

   </td>

.. raw:: html

   <td>

Called when playback is paused.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

stopped

.. raw:: html

   </td>

.. raw:: html

   <td>

Called when playback is stopped.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

error

.. raw:: html

   </td>

.. raw:: html

   <td>

Called when the specified error occurs.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Camera

.. raw:: html

   </h3>

.. raw:: html

   <p>

Camera enables still image and video capture using QML. It has a number
of properties that help setting it up.

.. raw:: html

   </p>

.. raw:: html

   <p>

The details of using a Camera are described in further depth in the
Camera Overview and in the corresponding reference documentation.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Video

.. raw:: html

   </h3>

.. raw:: html

   <p>

Adding video playback, with sound, to a Qt Quick scene is also easy. The
process is very similar to that of Audio above, in fact Video shares
many of the property names, methods and signals. Here is the equivalent
sample code to implement video playback in a scene

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtMultimedia.Video.md">Video</a></span> {
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
   <span class="name">Keys</span>.onSpacePressed: <span class="name">video</span>.<span class="name">paused</span> <span class="operator">=</span> !<span class="name">video</span>.<span class="name">paused</span>
   <span class="name">Keys</span>.onLeftPressed: <span class="name">video</span>.<span class="name">position</span> <span class="operator">-=</span> <span class="number">5000</span>
   <span class="name">Keys</span>.onRightPressed: <span class="name">video</span>.<span class="name">position</span> <span class="operator">+=</span> <span class="number">5000</span>
   }</pre>

.. raw:: html

   <p>

There are similar features like play() with new features specific to
video.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the above sample when the parent of MouseArea is clicked, an area of
800x600 pixels with an id of 'video', the source "video.avi" will play
in that area. Notice also that signals for the Keys have been defined so
that a spacebar will toggle the pause button; the left arrow will move
the current position in the video to 5 seconds previously; and the right
arrow will advance the current position in the video by 5 seconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

Most of the differences will obviously be about video control and
information. There are many properties associated with Video, most of
them deal with meta-data, control of the video media and aspects of
presentation.

.. raw:: html

   </p>

.. raw:: html

   <h3>

SoundEffect

.. raw:: html

   </h3>

.. raw:: html

   <p>

SoundEffect provides a way to play short sound effects, like in video
games. Multiple sound effect instances can be played simultaneously. You
should use Audio for music playback.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">640</span>
   <span class="name">height</span>: <span class="number">360</span>
   <span class="type"><a href="QtMultimedia.SoundEffect.md">SoundEffect</a></span> {
   <span class="name">id</span>: <span class="name">effect</span>
   <span class="name">source</span>: <span class="string">&quot;test.wav&quot;</span>
   }
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">playArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>:  { <span class="name">effect</span>.<span class="name">play</span>() }
   }
   }</pre>

.. raw:: html

   <p>

In the above sample the sound effect will be played when the MouseArea
is clicked.

.. raw:: html

   </p>

.. raw:: html

   <p>

For a complete description of this type, see SoundEffect

.. raw:: html

   </p>

.. raw:: html

   <h2 id="multimedia-qml-types">

Multimedia QML Types

.. raw:: html

   </h2>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Audio

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Add audio playback to a scene

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Camera

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Access viewfinder frames, and take photos and movies

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraCapture

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for capturing camera images

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraExposure

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for exposure related camera settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraFlash

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for flash related camera settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraFocus

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for focus related camera settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraImageProcessing

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

An interface for camera capture related settings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CameraRecorder

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Controls video recording with the Camera

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MediaPlayer

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Add media playback to a scene

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Playlist

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

For specifying a list of media to be played

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

PlaylistItem

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Defines an item in a Playlist

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QtMultimedia

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Provides a global object with useful functions from Qt Multimedia

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Radio

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Access radio functionality from a QML application

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

RadioData

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Access RDS data from a QML application

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

SoundEffect

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides a way to play sound effects in QML

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Torch

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Simple control over torch functionality

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Video

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

A convenience type for showing a specified video

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

VideoOutput

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Render video or camera viewfinder

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@qml-multimedia.html -->
