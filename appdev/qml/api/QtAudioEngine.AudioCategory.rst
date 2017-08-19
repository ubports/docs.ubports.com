QtAudioEngine.AudioCategory
===========================

.. raw:: html

   <p>

Control all active sound instances by group. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AudioCategory -->

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

name : string

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

pause()

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

   <!-- $$$AudioCategory-description -->

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

An instance of AudioCategory can be accessed through
AudioEngine.categories with its unique name and must be defined inside
AudioEngine.

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
   <span class="type"><a href="index.html">AudioCategory</a></span> {
   <span class="name">name</span>: <span class="string">&quot;sfx&quot;</span>
   <span class="name">volume</span>: <span class="number">0.8</span>
   }
   <span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;explosion-02.wav&quot;</span>
   }
   <span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
   <span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
   <span class="name">category</span>: <span class="string">&quot;sfx&quot;</span>
   <span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
   <span class="name">sample</span>:<span class="string">&quot;explosion&quot;</span>
   }
   }
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: {
   <span class="name">audioengine</span>.<span class="name">categories</span>[<span class="string">&quot;sfx&quot;</span>].<span class="name">volume</span> <span class="operator">=</span> <span class="number">0.5</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

Sound instances can be grouped together by specifying the category
property. When you change the volume of a category, all audio output
from related instances will be affected as well.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: there will always be an AudioCategory named default whether you
explicitly define it or not. If you do not specify any category for a
Sound, it will be grouped into the default category.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AudioCategory -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$name -->

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

This property holds the name of AudioCategory. The name must be unique
among all categories and only defined once. The name cannot be changed
after the instance has been initialized.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

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

This property holds the volume of the category and will modulate all
audio output from the instances which belong to this category.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@volume -->

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

   <tr valign="top" id="pause-method-2">

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

Resumes all active sound instances from paused state which belong to
this category.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pause -->

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

Pauses all active sound instances which belong to this category.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pause -->

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

Stops all active sound instances which belong to this category.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->


