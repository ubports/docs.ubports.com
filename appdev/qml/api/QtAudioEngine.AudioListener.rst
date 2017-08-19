QtAudioEngine.AudioListener
===========================

.. raw:: html

   <p>

Control global listener parameters. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AudioListener -->

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

gain : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

position : vector3d

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

up : vector3d

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

   <!-- $$$AudioListener-description -->

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

AudioListener will have only one global instance and you can either
access it through the listener property of AudioEngine:

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
   <span class="name">listener</span>.up:<span class="string">&quot;0,0,1&quot;</span>
   <span class="name">listener</span>.velocity:<span class="string">&quot;0,0,0&quot;</span>
   <span class="name">listener</span>.direction:<span class="string">&quot;0,1,0&quot;</span>
   <span class="name">listener</span>.position:<span class="name">Qt</span>.<span class="name">vector3d</span>(<span class="name">observer</span>.<span class="name">x</span>, <span class="name">observer</span>.<span class="name">y</span>, <span class="number">0</span>);
   }
   <span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">observer</span>
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
   }</pre>

.. raw:: html

   <p>

or alternatively, by defining an AudioListener outside AudioEngine:

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
   <span class="name">listener</span>.up:<span class="string">&quot;0,0,1&quot;</span>
   <span class="name">listener</span>.velocity:<span class="string">&quot;0,0,0&quot;</span>
   <span class="name">listener</span>.direction:<span class="string">&quot;0,1,0&quot;</span>
   }
   <span class="type"><a href="index.html">AudioListener</a></span> {
   <span class="name">engine</span>:<span class="name">audioengine</span>
   <span class="name">position</span>: <span class="name">Qt</span>.<span class="name">vector3d</span>(<span class="name">observer</span>.<span class="name">x</span>, <span class="name">observer</span>.<span class="name">y</span>, <span class="number">0</span>);
   }
   <span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">observer</span>
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
   }</pre>

.. raw:: html

   <p>

This separate AudioListener definition is allowed to make QML bindings
easier in some cases.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AudioListener -->

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

This property holds the normalized 3D direction vector of the listener.

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

This property holds the reference to AudioEngine, and must only be set
once.

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

gain : real

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

This property will modulate all audio output from audio engine
instances.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gain -->

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

This property holds the 3D position of the listener.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@position -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="up-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

up : vector3d

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

This property holds the normalized 3D up vector of the listener.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@up -->

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

This property holds the 3D velocity vector of the listener.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@velocity -->


