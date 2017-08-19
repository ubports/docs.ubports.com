QtMultimedia.SoundEffect
========================

.. raw:: html

   <p>

The SoundEffect type provides a way to play sound effects in QML.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SoundEffect -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Instantiates:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

QSoundEffect

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

category : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loops : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loopsRemaining : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

muted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

playing : bool

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

volume : qreal

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

categoryChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loadedChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loopCountChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loopsRemainingChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mutedChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

playingChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

statusChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

volumeChanged()

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

bool isLoaded()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play()

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

   <!-- $$$SoundEffect-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

SoundEffect is part of the QtMultimedia 5.0 module.

.. raw:: html

   </p>

.. raw:: html

   <p>

This type allows you to play uncompressed audio files (typically WAV
files) in a generally lower latency way, and is suitable for "feedback"
type sounds in response to user actions (e.g. virtual keyboard sounds,
positive or negative feedback for popup dialogs, or game sounds). If low
latency is not important, consider using the MediaPlayer or Audio types
instead, since they support a wider variety of media formats and are
less resource intensive.

.. raw:: html

   </p>

.. raw:: html

   <p>

Typically the sound effect should be reused, which allows all the
parsing and preparation to be done ahead of time, and only triggered
when necessary. This is easy to achieve with QML, since you can declare
your SoundEffect instance and refer to it elsewhere.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example plays a WAV file on mouse click.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;Click Me!&quot;</span>;
   <span class="name">font</span>.pointSize: <span class="number">24</span>;
   <span class="name">width</span>: <span class="number">150</span>; <span class="name">height</span>: <span class="number">50</span>;
   <span class="type"><a href="index.html">SoundEffect</a></span> {
   <span class="name">id</span>: <span class="name">playSound</span>
   <span class="name">source</span>: <span class="string">&quot;soundeffect.wav&quot;</span>
   }
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">playArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: { <span class="name">playSound</span>.<span class="name">play</span>() }
   }
   }</pre>

.. raw:: html

   <p>

Since SoundEffect requires slightly more resources to achieve lower
latency playback, the platform may limit the number of simultaneously
playing sound effects.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SoundEffect -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$category -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="category-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

category : string

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

This property contains the category of this sound effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

Some platforms can perform different audio routing for different
categories, or may allow the user to set different volume levels for
different categories.

.. raw:: html

   </p>

.. raw:: html

   <p>

This setting will be ignored on platforms that do not support audio
categories.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@category -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loops-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

loops : int

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

This property holds the number of times the sound is played. A value of
0 or 1 means the sound will be played only once; set to
SoundEffect.Infinite to enable infinite looping.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value can be changed while the sound effect is playing, in which
case it will update the remaining loops to the new value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loops -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loopsRemaining-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

loopsRemaining : int

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

This property contains the number of loops remaining before the sound
effect stops by itself, or SoundEffect.Infinite if that's what has been
set in loops.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loopsRemaining -->

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

This property provides a way to control muting. A value of true will
mute this effect. Otherwise, playback will occur with the currently
specified volume.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@muted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="playing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

playing : bool

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

This property indicates whether the sound effect is playing or not.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@playing -->

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

This property holds the url for the sound to play. For the SoundEffect
to attempt to load the source, the URL must exist and the application
must have read permission in the specified directory. If the desired
source is a local file the URL may be specified using either absolute or
relative (to the file that declared the SoundEffect) pathing.

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

This property indicates the current status of the SoundEffect as
enumerated within SoundEffect. Possible statuses are listed below.

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

SoundEffect.Null

.. raw:: html

   </td>

.. raw:: html

   <td>

No source has been set or the source is null.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SoundEffect.Loading

.. raw:: html

   </td>

.. raw:: html

   <td>

The SoundEffect is trying to load the source.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SoundEffect.Ready

.. raw:: html

   </td>

.. raw:: html

   <td>

The source is loaded and ready for play.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SoundEffect.Error

.. raw:: html

   </td>

.. raw:: html

   <td>

An error occurred during operation, such as failure of loading the
source.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

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

volume : qreal

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

This property holds the volume of the sound effect playback, from 0.0
(silent) to 1.0 (maximum volume).

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

   <!-- $$$categoryChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="categoryChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

categoryChanged()

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

The categoryChanged signal is emitted when the category property has
changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onCategoryChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@categoryChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loadedChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

loadedChanged()

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

The loadedChanged signal is emitted when the loading state has changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onLoadedChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loadedChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loopCountChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

loopCountChanged()

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

The loopCountChanged signal is emitted when the initial number of loops
has changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onLoopCountChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loopCountChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loopsRemainingChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

loopsRemainingChanged()

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

The loopsRemainingChanged signal is emitted when the remaining number of
loops has changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onLoopsRemainingChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loopsRemainingChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mutedChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

mutedChanged()

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

The mutedChanged signal is emitted when the mute state has changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onMutedChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mutedChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="playingChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

playingChanged()

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

The playingChanged signal is emitted when the playing property has
changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPlayingChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@playingChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

sourceChanged()

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

The sourceChanged signal is emitted when the source has been changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onSourceChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="statusChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

statusChanged()

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

The statusChanged signal is emitted when the status property has
changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onStatusChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@statusChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="volumeChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

volumeChanged()

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

The volumeChanged signal is emitted when the volume has changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onVolumeChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@volumeChanged -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$isLoaded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isLoaded-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool isLoaded()

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

Returns whether the sound effect has finished loading the source.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isLoaded -->

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

Start playback of the sound effect, looping the effect for the number of
times as specified in the loops property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is the default method for SoundEffect.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">SoundEffect</a></span> {
   <span class="name">id</span>: <span class="name">playSound</span>
   <span class="name">source</span>: <span class="string">&quot;soundeffect.wav&quot;</span>
   }
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">playArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: { <span class="name">playSound</span>.<span class="name">play</span>() }
   }</pre>

.. raw:: html

   <!-- @@@play -->

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

Stop current playback.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->


