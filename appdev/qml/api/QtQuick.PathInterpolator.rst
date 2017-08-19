QtQuick.PathInterpolator
========================

.. raw:: html

   <p>

Specifies how to manually animate along a path More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathInterpolator -->

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

import QtQuick 2.4

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

angle : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

path : Path

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

progress : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

x : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

y : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PathInterpolator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

PathInterpolator provides x, y, and angle information for a particular
progress along a path.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example, we animate a green rectangle along a bezier
path.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">400</span>
   <span class="name">height</span>: <span class="number">400</span>
   <span class="type"><a href="index.html">PathInterpolator</a></span> {
   <span class="name">id</span>: <span class="name">motionPath</span>
   <span class="name">path</span>: <span class="name">Path</span> {
   <span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">0</span>
   <span class="type"><a href="QtQuick.PathCubic.md">PathCubic</a></span> {
   <span class="name">x</span>: <span class="number">350</span>; <span class="name">y</span>: <span class="number">350</span>
   <span class="name">control1X</span>: <span class="number">350</span>; <span class="name">control1Y</span>: <span class="number">0</span>
   <span class="name">control2X</span>: <span class="number">0</span>; <span class="name">control2Y</span>: <span class="number">350</span>
   }
   }
   NumberAnimation on <span class="name">progress</span> { <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1</span>; <span class="name">duration</span>: <span class="number">2000</span> }
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="comment">//bind our attributes to follow the path as progress changes</span>
   <span class="name">x</span>: <span class="name">motionPath</span>.<span class="name">x</span>
   <span class="name">y</span>: <span class="name">motionPath</span>.<span class="name">y</span>
   <span class="name">rotation</span>: <span class="name">motionPath</span>.<span class="name">angle</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@PathInterpolator -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$angle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="angle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

angle : real

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

This property holds the angle of the path tangent at progress.

.. raw:: html

   </p>

.. raw:: html

   <p>

Angles are reported clockwise, with zero degrees at the 3 o'clock
position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@angle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="path-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

path : Path

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

This property holds the path to interpolate.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on defining a path see the Path documentation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@path -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="progress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

progress : real

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

This property holds the current progress along the path.

.. raw:: html

   </p>

.. raw:: html

   <p>

Typical usage of PathInterpolator is to set the progress (often via a
NumberAnimation), and read the corresponding values for x, y, and angle
(often via bindings to these values).

.. raw:: html

   </p>

.. raw:: html

   <p>

Progress ranges from 0.0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@progress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="x-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

x : real

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

These properties hold the position of the path at progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@x -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

y : real

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

These properties hold the position of the path at progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->


