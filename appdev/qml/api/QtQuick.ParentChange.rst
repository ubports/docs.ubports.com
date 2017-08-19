QtQuick.ParentChange
====================

.. raw:: html

   <p>

Specifies how to reparent an Item in a state change More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ParentChange -->

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

height : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

parent : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rotation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

scale : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

width : real

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

   <!-- $$$ParentChange-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ParentChange reparents an item while preserving its visual appearance
(position, size, rotation, and scale) on screen. You can then specify a
transition to move/resize/rotate/scale the item to its final intended
appearance.

.. raw:: html

   </p>

.. raw:: html

   <p>

ParentChange can only preserve visual appearance if no complex
transforms are involved. More specifically, it will not work if the
transform property has been set for any items involved in the
reparenting (i.e. items in the common ancestor tree for the original and
new parent).

.. raw:: html

   </p>

.. raw:: html

   <p>

The example below displays a large red rectangle and a small blue
rectangle, side by side. When the blueRect is clicked, it changes to the
"reparented" state: its parent is changed to redRect and it is
positioned at (10, 10) within the red rectangle, as specified in the
ParentChange.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">redRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">blueRect</span>
   <span class="name">x</span>: <span class="name">redRect</span>.<span class="name">width</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;reparented&quot;</span>
   <span class="type"><a href="index.html">ParentChange</a></span> { <span class="name">target</span>: <span class="name">blueRect</span>; <span class="name">parent</span>: <span class="name">redRect</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span> }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">blueRect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;reparented&quot;</span> }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

You can specify at which point in a transition you want a ParentChange
to occur by using a ParentAnimation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that unlike PropertyChanges, ParentChange expects an Item-based
target; it will not work with arbitrary objects (for example, you
couldn't use it to reparent a Timer).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ParentChange -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$height -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="height-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

height : real

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

These properties hold the new position, size, scale, and rotation for
the item in this state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@height -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="parent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

parent : Item

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

This property holds the new parent for the item in this state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@parent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rotation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rotation : real

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

These properties hold the new position, size, scale, and rotation for
the item in this state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="scale-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

scale : real

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

These properties hold the new position, size, scale, and rotation for
the item in this state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@scale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : Item

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

This property holds the item to be reparented

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="width-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

width : real

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

These properties hold the new position, size, scale, and rotation for
the item in this state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@width -->

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

These properties hold the new position, size, scale, and rotation for
the item in this state.

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

These properties hold the new position, size, scale, and rotation for
the item in this state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->


