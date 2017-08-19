QtAudioEngine.PlayVariation
===========================

.. raw:: html

   <p>

Define a playback variation for sounds. So each time the playback of the
same sound can be a slightly different even with the same AudioSample.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PlayVariation -->

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

looping : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maxGain : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maxPitch : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minGain : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minPitch : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sample : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PlayVariation-description -->

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

PlayVariation must be defined inside a Sound.

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
   <span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="type"><a href="index.html">PlayVariation</a></span> {
   <span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
   <span class="name">minPitch</span>: <span class="number">0.8</span>
   <span class="name">maxPitch</span>: <span class="number">1.1</span>
   }
   <span class="type"><a href="index.html">PlayVariation</a></span> {
   <span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
   <span class="name">minGain</span>: <span class="number">1.1</span>
   <span class="name">maxGain</span>: <span class="number">1.5</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@PlayVariation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$looping -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="looping-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

looping : bool

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

This property indicates whether the playback will be looped or not.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@looping -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maxGain-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maxGain : real

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

This property specifies the maximum gain adjustment that can be applied
in any playback.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maxGain -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maxPitch-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maxPitch : real

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

This property specifies the maximum pitch adjustment that can be applied
in any playback.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maxPitch -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minGain-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minGain : real

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

This property specifies the minimum gain adjustment that can be applied
in any playback.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minGain -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minPitch-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minPitch : real

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

This property specifies the minimum pitch adjustment that can be applied
in any playback.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minPitch -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sample-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sample : string

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

This property specifies which AudioSample this variation will use.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sample -->


