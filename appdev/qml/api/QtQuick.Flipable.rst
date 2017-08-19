QtQuick.Flipable
================

.. raw:: html

   <p>

Provides a surface that can be flipped More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Flipable -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Item

.. raw:: html

   </p>

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

back : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

front : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

side : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Flipable-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Flipable is an item that can be visibly "flipped" between its front and
back sides, like a card. It may used together with Rotation, State and
Transition types to produce a flipping effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

The front and back properties are used to hold the items that are shown
respectively on the front and back sides of the flipable item.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows a Flipable item that flips whenever it is
clicked, rotating about the y-axis.

.. raw:: html

   </p>

.. raw:: html

   <p>

This flipable item has a flipped boolean property that is toggled
whenever the MouseArea within the flipable is clicked. When flipped is
true, the item changes to the "back" state; in this state, the angle of
the Rotation item is changed to 180 degrees to produce the flipping
effect. When flipped is false, the item reverts to the default state, in
which the angle value is 0.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Flipable</a></span> {
   <span class="name">id</span>: <span class="name">flipable</span>
   <span class="name">width</span>: <span class="number">240</span>
   <span class="name">height</span>: <span class="number">240</span>
   property <span class="type">bool</span> <span class="name">flipped</span>: <span class="number">false</span>
   <span class="name">front</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;front.png&quot;</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
   <span class="name">back</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;back.png&quot;</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
   <span class="name">transform</span>: <span class="name">Rotation</span> {
   <span class="name">id</span>: <span class="name">rotation</span>
   <span class="name">origin</span>.x: <span class="name">flipable</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>
   <span class="name">origin</span>.y: <span class="name">flipable</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
   <span class="name">axis</span>.x: <span class="number">0</span>; <span class="name">axis</span>.y: <span class="number">1</span>; <span class="name">axis</span>.z: <span class="number">0</span>     <span class="comment">// set axis.y to 1 to rotate around y-axis</span>
   <span class="name">angle</span>: <span class="number">0</span>    <span class="comment">// the default angle</span>
   }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;back&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rotation</span>; <span class="name">angle</span>: <span class="number">180</span> }
   <span class="name">when</span>: <span class="name">flipable</span>.<span class="name">flipped</span>
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">rotation</span>; <span class="name">property</span>: <span class="string">&quot;angle&quot;</span>; <span class="name">duration</span>: <span class="number">4000</span> }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">flipable</span>.<span class="name">flipped</span> <span class="operator">=</span> !<span class="name">flipable</span>.<span class="name">flipped</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The Transition creates the animation that changes the angle over four
seconds. When the item changes between its "back" and default states,
the NumberAnimation animates the angle between its old and new values.

.. raw:: html

   </p>

.. raw:: html

   <p>

See Qt Quick States for details on state changes and the default state,
and Animation and Transitions in Qt Quick for more information on how
animations work within transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also UI Components: Flipable Example.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Flipable -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$back -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="back-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

back : Item

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

The front and back sides of the flipable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@back -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="front-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

front : Item

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

The front and back sides of the flipable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@front -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="side-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

side : enumeration

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

The side of the Flipable currently visible. Possible values are
Flipable.Front and Flipable.Back.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@side -->


