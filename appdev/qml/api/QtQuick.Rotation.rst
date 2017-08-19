QtQuick.Rotation
================

.. raw:: html

   <p>

Provides a way to rotate an Item More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Rotation -->

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

axis

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

axis.x : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

axis.y : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

axis.z : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

origin

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

origin.x : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

origin.y : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Rotation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Rotation type provides a way to rotate an Item through a
rotation-type transform.

.. raw:: html

   </p>

.. raw:: html

   <p>

It allows (z axis) rotation to be relative to an arbitrary point, and
also provides a way to specify 3D-like rotations for Items. This gives
more control over item rotation than the rotation property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example rotates a Rectangle around its interior point (25,
25):

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">25</span>; <span class="name">origin</span>.y: <span class="number">25</span>; <span class="name">angle</span>: <span class="number">45</span>}
   }</pre>

.. raw:: html

   <p>

For 3D-like item rotations, you must specify the axis of rotation in
addition to the origin point. The following example shows various
3D-like rotations applied to an Image.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>
   <span class="name">spacing</span>: <span class="number">10</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span> }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span>
   <span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">30</span>; <span class="name">origin</span>.y: <span class="number">30</span>; <span class="type">axis</span> { <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">1</span>; <span class="name">z</span>: <span class="number">0</span> } <span class="name">angle</span>: <span class="number">18</span> }
   }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span>
   <span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">30</span>; <span class="name">origin</span>.y: <span class="number">30</span>; <span class="type">axis</span> { <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">1</span>; <span class="name">z</span>: <span class="number">0</span> } <span class="name">angle</span>: <span class="number">36</span> }
   }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span>
   <span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">30</span>; <span class="name">origin</span>.y: <span class="number">30</span>; <span class="type">axis</span> { <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">1</span>; <span class="name">z</span>: <span class="number">0</span> } <span class="name">angle</span>: <span class="number">54</span> }
   }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;pics/qt.png&quot;</span>
   <span class="name">transform</span>: <span class="name">Rotation</span> { <span class="name">origin</span>.x: <span class="number">30</span>; <span class="name">origin</span>.y: <span class="number">30</span>; <span class="type">axis</span> { <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">1</span>; <span class="name">z</span>: <span class="number">0</span> } <span class="name">angle</span>: <span class="number">72</span> }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Dial Control example and Qt Quick Demo - Clocks.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Rotation -->

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

The angle to rotate, in degrees clockwise.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@angle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="axis-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

axis group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="axis.x-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

axis.x : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="axis.y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

axis.y : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="axis.z-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

axis.z : real

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

The axis to rotate around. For simple (2D) rotation around a point, you
do not need to specify an axis, as the default axis is the z axis (axis
{ x: 0; y: 0; z: 1 }).

.. raw:: html

   </p>

.. raw:: html

   <p>

For a typical 3D-like rotation you will usually specify both the origin
and the axis.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@axis -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="origin-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

origin group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="origin.x-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

origin.x : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="origin.y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

origin.y : real

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

The origin point of the rotation (i.e., the point that stays fixed
relative to the parent as the rest of the item rotates). By default the
origin is (0, 0).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@origin -->


