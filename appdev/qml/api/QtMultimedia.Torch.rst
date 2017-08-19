QtMultimedia.Torch
==================

.. raw:: html

   <p>

Simple control over torch functionality More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Torch -->

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

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

power : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Torch-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Torch is part of the QtMultimedia 5.0 module.

.. raw:: html

   </p>

.. raw:: html

   <p>

In many cases the torch hardware is shared with camera flash
functionality, and might be automatically controlled by the device. You
have control over the power level (of course, higher power levels are
brighter but reduce battery life significantly).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type"><a href="index.html">Torch</a></span> {
   <span class="name">power</span>: <span class="number">75</span>       <span class="comment">// 75% of full power</span>
   <span class="name">enabled</span>: <span class="number">true</span>   <span class="comment">// On</span>
   }</pre>

.. raw:: html

   <!-- @@@Torch -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

This property indicates whether the torch is enabled. If the torch
functionality is shared with the camera flash hardware, the camera will
take priority over torch settings and the torch is disabled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="power-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

power : int

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

This property holds the current torch power setting, as a percentage of
full power.

.. raw:: html

   </p>

.. raw:: html

   <p>

In some cases this setting may change automatically as a result of
temperature or battery conditions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@power -->


