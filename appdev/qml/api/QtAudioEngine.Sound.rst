QtAudioEngine.Sound
===================

.. raw:: html

   <p>

Define a variety of samples and parameters to be used for SoundInstance.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Sound -->

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

attenuationModel : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

category : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

playType : enumeration

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

play(position, velocity, direction, gain, pitch)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(position, velocity, gain, pitch)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(position, gain, pitch)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(position, velocity, direction, gain)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(position, velocity, gain)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(position, gain)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(position, velocity, direction)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(position, velocity)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(position)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(gain, pitch)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

play(gain)

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

   <!-- $$$Sound-description -->

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

Sound can be accessed through QtAudioEngine::AudioEngine::sounds with
its unique name and must be defined inside AudioEngine.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtAudioEngine 1.0
   <span class="type">Rectangle</span> {
   <span class="name">color</span>:<span class="string">&quot;white&quot;</span>
   <span class="name">width</span>: <span class="number">300</span>
   <span class="name">height</span>: <span class="number">500</span>
   <span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
   <span class="name">id</span>:<span class="name">audioengine</span>
   <span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion01&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;explosion-01.wav&quot;</span>
   }
   <span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion02&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;explosion-02.wav&quot;</span>
   }
   <span class="type"><a href="index.html">Sound</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
   <span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
   <span class="name">minPitch</span>: <span class="number">0.8</span>
   <span class="name">maxPitch</span>: <span class="number">1.1</span>
   }
   <span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
   <span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
   <span class="name">minGain</span>: <span class="number">1.1</span>
   <span class="name">maxGain</span>: <span class="number">1.5</span>
   }
   }
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: {
   <span class="name">audioengine</span>.<span class="name">sounds</span>[<span class="string">&quot;explosion&quot;</span>].<span class="name">play</span>();
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@Sound -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$attenuationModel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="attenuationModel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

attenuationModel : string

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

This property specifies which attenuation model this sound will apply.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@attenuationModel -->

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

This property specifies which AudioCategory this sound belongs to.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@category -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

This property holds the name of Sound, must be unique among all sounds
and only defined once.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="playType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

playType : enumeration

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

This property holds the playType. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Random - randomly picks up a play variation when playback is triggered

.. raw:: html

   </li>

.. raw:: html

   <li>

Sequential - plays each variation in sequence when playback is triggered

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default value is Random.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@playType -->

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

   <tr valign="top" id="play-method-12">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(position, velocity, direction, gain, pitch)

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

Creates a new SoundInstance and starts playing with specified position,
velocity, direction, adjusted gain and pitch.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-11">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(position, velocity, gain, pitch)

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

Creates a new SoundInstance and starts playing with specified position,
velocity, adjusted gain and pitch. Direction is set to "0,0,0".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-10">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(position, gain, pitch)

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

Creates a new SoundInstance and starts playing with specified position,
adjusted gain and pitch. Direction and velocity are all set to "0,0,0".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-9">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(position, velocity, direction, gain)

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

Creates a new SoundInstance and starts playing with specified position,
velocity, direction and adjusted gain.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-8">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(position, velocity, gain)

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

Creates a new SoundInstance and starts playing with specified position,
velocity and adjusted gain. Direction is set to "0,0,0".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-7">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(position, gain)

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

Creates a new SoundInstance and starts playing with specified position
and adjusted gain. Direction and velocity are all set to "0,0,0".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-6">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(position, velocity, direction)

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

Creates a new SoundInstance and starts playing with specified position,
velocity and direction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-5">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(position, velocity)

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

Creates a new SoundInstance and starts playing with specified position
and velocity. Direction is set to "0,0,0".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-4">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(position)

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

Creates a new SoundInstance and starts playing with specified position.
Direction and velocity are all set to "0,0,0".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="play-method-3">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

play(gain, pitch)

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

Creates a new SoundInstance and starts playing with the adjusted gain
and pitch. Position, direction and velocity are all set to "0,0,0".

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

play(gain)

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

Creates a new SoundInstance and starts playing with the adjusted gain.
Position, direction and velocity are all set to "0,0,0".

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

Creates a new SoundInstance and starts playing. Position, direction and
velocity are all set to "0,0,0".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@play -->


