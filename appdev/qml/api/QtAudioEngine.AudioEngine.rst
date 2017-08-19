QtAudioEngine.AudioEngine
=========================

.. raw:: html

   <p>

Organize all your 3d audio content in one place. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AudioEngine -->

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

categories : map

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dopplerFactor : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

listener : QtAudioEngine::AudioListener

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

liveInstances : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loading : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

samples : map

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sounds : map

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

speedOfSound : real

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

finishedLoading()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isLoadingChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

liveInstanceCountChanged()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ready()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AudioEngine-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

AudioEngine is part of the QtAudioEngine 1.0 module.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtAudioEngine 1.0
   <span class="type">Rectangle</span> {
   <span class="name">color</span>:<span class="string">&quot;white&quot;</span>
   <span class="name">width</span>: <span class="number">300</span>
   <span class="name">height</span>: <span class="number">500</span>
   <span class="type"><a href="index.html">AudioEngine</a></span> {
   <span class="name">id</span>:<span class="name">audioengine</span>
   <span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;explosion-02.wav&quot;</span>
   }
   <span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
   <span class="name">sample</span>:<span class="string">&quot;explosion&quot;</span>
   }
   }
   <span class="name">dopplerFactor</span>: <span class="number">1</span>
   <span class="name">speedOfSound</span>: <span class="number">343.33</span> <span class="comment">// Approximate speed of sound in air at 20 degrees Celsius</span>
   <span class="name">listener</span>.up:<span class="string">&quot;0,0,1&quot;</span>
   <span class="name">listener</span>.position:<span class="string">&quot;0,0,0&quot;</span>
   <span class="name">listener</span>.velocity:<span class="string">&quot;0,0,0&quot;</span>
   <span class="name">listener</span>.direction:<span class="string">&quot;0,1,0&quot;</span>
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: {
   <span class="name">audioengine</span>.<span class="name">sounds</span>[<span class="string">&quot;explosion&quot;</span>].<span class="name">play</span>();
   }
   }
   }</pre>

.. raw:: html

   <p>

AudioEngine acts as a central library for configuring all 3d audio
content in an app, so you should define only one in your app.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is mostly used as a container to access other types such as
AudioCategory, AudioSample and Sound.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also AudioCategory, AudioSample, Sound, SoundInstance,
AttenuationModelLinear, and AttenuationModelInverse.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AudioEngine -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$categories -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="categories-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

categories : map

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

Container of all AudioCategory instances.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@categories -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dopplerFactor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dopplerFactor : real

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

This property holds a simple scaling for the effect of doppler shift.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dopplerFactor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="listener-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

listener : QtAudioEngine::AudioListener

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

This property holds the listener object. You can change various
properties to affect the 3D positioning of sounds.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also AudioListener.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@listener -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="liveInstances-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

liveInstances : int

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

This property indicates how many live sound instances there are at the
moment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@liveInstances -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loading-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

loading : bool

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

This property indicates if the audio engine is loading any audio sample
at the moment. This may be useful if you specified the preloaded
property in AudioSample and would like to show a loading screen to the
user before all audio samples are loaded.

.. raw:: html

   </p>

.. raw:: html

   <p>

/sa finishedLoading, AudioSample::preloaded

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loading -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="samples-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

samples : map

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

Container of all AudioSample instances.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@samples -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sounds-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sounds : map

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

Container of all Sound instances.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sounds -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="speedOfSound-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

speedOfSound : real

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

This property holds the reference value of the sound speed (in meters
per second) which will be used in doppler shift calculation. The doppler
shift calculation is used to emulate the change in frequency in sound
that is perceived by an observer when the sound source is travelling
towards or away from the observer. The speed of sound depends on the
medium the sound is propagating through.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@speedOfSound -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$finishedLoading -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="finishedLoading-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

finishedLoading()

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

This signal is emitted when loading has completed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onFinishedLoading.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@finishedLoading -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isLoadingChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

isLoadingChanged()

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

This signal is emitted when the loading property changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onIsLoadingChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isLoadingChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="liveInstanceCountChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

liveInstanceCountChanged()

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

This signal is emitted when the number of live instances managed by the
AudioEngine is changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onLiveInstanceCountChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@liveInstanceCountChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ready-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

ready()

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

This signal is emitted when the AudioEngine is ready to use.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onReady.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ready -->


