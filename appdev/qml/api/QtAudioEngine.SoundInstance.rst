QtAudioEngine.SoundInstance
===========================

.. raw:: html

   <p>

Play 3d audio content. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SoundInstance -->

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

import QtAudioEngine 1.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt 5.0

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

direction : vector3d

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

engine : QtAudioEngine::AudioEngine

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

gain : vector3d

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pitch : vector3d

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

position : vector3d

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sound : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

state : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

velocity : vector3d

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

directionChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

gainChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pitchChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positionChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

soundChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stateChanged(state)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

velocityChanged()

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

play()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SoundInstance-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This type is part of the QtAudioEngine 1.0 module.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two ways to create SoundInstance objects. You can obtain it by
calling newInstance method of a Sound:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtAudioEngine 1.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>:<span class="name">root</span>
   <span class="name">color</span>:<span class="string">&quot;white&quot;</span>
   <span class="name">width</span>: <span class="number">300</span>
   <span class="name">height</span>: <span class="number">500</span>
   <span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
   <span class="name">id</span>:<span class="name">audioengine</span>
   <span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion01&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;explosion-01.wav&quot;</span>
   }
   <span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
   <span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
   }
   }
   }
   property <span class="type">variant</span> <span class="name">soundEffect</span>: <span class="name">audioengine</span>.<span class="name">sounds</span>[<span class="string">&quot;explosion&quot;</span>].<span class="name">newInstance</span>();
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: {
   <span class="name">root</span>.<span class="name">soundEffect</span>.<span class="name">play</span>();
   }
   }
   }</pre>

.. raw:: html

   <p>

Or alternatively, you can explicitly define SoundInstance outside of
AudioEngine for easier qml bindings:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtAudioEngine 1.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>:<span class="name">root</span>
   <span class="name">color</span>:<span class="string">&quot;white&quot;</span>
   <span class="name">width</span>: <span class="number">300</span>
   <span class="name">height</span>: <span class="number">500</span>
   <span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
   <span class="name">id</span>:<span class="name">audioengine</span>
   <span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion01&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;explosion-01.wav&quot;</span>
   }
   <span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
   <span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
   }
   }
   }
   <span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">animator</span>
   <span class="name">x</span>: <span class="number">10</span> <span class="operator">+</span> <span class="name">observer</span>.<span class="name">percent</span> <span class="operator">*</span> <span class="number">100</span>
   <span class="name">y</span>: <span class="number">20</span> <span class="operator">+</span> <span class="name">observer</span>.<span class="name">percent</span> <span class="operator">*</span> <span class="number">80</span>
   property <span class="type">real</span> <span class="name">percent</span>: <span class="number">0</span>
   SequentialAnimation on <span class="name">percent</span> {
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type">NumberAnimation</span> {
   <span class="name">duration</span>: <span class="number">8000</span>
   <span class="name">from</span>: <span class="number">0</span>
   <span class="name">to</span>: <span class="number">1</span>
   }
   }
   }
   <span class="type"><a href="index.html">SoundInstance</a></span> {
   <span class="name">id</span>:<span class="name">soundEffect</span>
   <span class="name">engine</span>:<span class="name">audioengine</span>
   <span class="name">sound</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="name">position</span>:<span class="name">Qt</span>.<span class="name">vector3d</span>(<span class="name">animator</span>.<span class="name">x</span>, <span class="name">animator</span>.<span class="name">y</span>, <span class="number">0</span>);
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: {
   <span class="name">soundEffect</span>.<span class="name">play</span>();
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@SoundInstance -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="direction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

direction : vector3d

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

This property holds the current 3d direction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="engine-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

engine : QtAudioEngine::AudioEngine

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

This property holds the reference to AudioEngine, must be set only once.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@engine -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="gain-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

gain : vector3d

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

This property holds the gain adjustment which will be used to modulate
the audio output level from this SoundInstance.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gain -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pitch-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pitch : vector3d

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

This property holds the pitch adjustment which will be used to modulate
the audio pitch from this SoundInstance.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pitch -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="position-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

position : vector3d

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

This property holds the current 3d position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@position -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sound-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sound : string

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

This property specifies which Sound this SoundInstance will use. Unlike
some properties in other types, this property can be changed
dynamically.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sound -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="state-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

state : enumeration

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

This property holds the current playback state. It can be one of:

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

StopppedState

.. raw:: html

   </td>

.. raw:: html

   <td>

The SoundInstance is not playing, and when playback begins next it will
play from position zero.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PlayingState

.. raw:: html

   </td>

.. raw:: html

   <td>

The SoundInstance is playing the media.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PausedState

.. raw:: html

   </td>

.. raw:: html

   <td>

The SoundInstance is not playing, and when playback begins next it will
play from the position that it was paused at.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@state -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="velocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

velocity : vector3d

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

This property holds the current 3d velocity.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@velocity -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$directionChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="directionChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

directionChanged()

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

This signal is emitted when direction is changed

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDirectionChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@directionChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="gainChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

gainChanged()

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

This signal is emitted when gain is changed

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onGainChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gainChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pitchChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

pitchChanged()

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

This signal is emitted when pitch is changed

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPitchChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pitchChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positionChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

positionChanged()

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

This signal is emitted when position is changed

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPositionChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@positionChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="soundChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

soundChanged()

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

This signal is emitted when sound is changed

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onSoundChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@soundChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stateChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

stateChanged(state)

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

This signal is emitted when state is changed

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onStateChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stateChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="velocityChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

velocityChanged()

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

This signal is emitted when velocity is changed

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onVelocityChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@velocityChanged -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-3">

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

Pauses current playback.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-2">

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

Stops current playback.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

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

Starts playback.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->


