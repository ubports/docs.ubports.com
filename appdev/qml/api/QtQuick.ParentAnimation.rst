QtQuick.ParentAnimation
=======================

.. raw:: html

   <p>

Animates changes in parent values More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ParentAnimation -->

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

Animation

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

newParent : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

via : Item

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ParentAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ParentAnimation is used to animate a parent change for an Item.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following ParentChange changes blueRect to become a
child of redRect when it is clicked. The inclusion of the
ParentAnimation, which defines a NumberAnimation to be applied during
the transition, ensures the item animates smoothly as it moves to its
new parent:

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
   <span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> { <span class="name">target</span>: <span class="name">blueRect</span>; <span class="name">parent</span>: <span class="name">redRect</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="index.html">ParentAnimation</a></span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">blueRect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;reparented&quot;</span> }
   }
   }</pre>

.. raw:: html

   <p>

A ParentAnimation can contain any number of animations. These animations
will be run in parallel; to run them sequentially, define them within a
SequentialAnimation.

.. raw:: html

   </p>

.. raw:: html

   <p>

In some cases, such as when reparenting between items with clipping
enabled, it is useful to animate the parent change via another item that
does not have clipping enabled. Such an item can be set using the via
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

ParentAnimation is typically used within a Transition in conjunction
with a ParentChange. When used in this manner, it animates any
ParentChange that has occurred during the state change. This can be
overridden by setting a specific target item using the target property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick and Qt Quick Examples -
Animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ParentAnimation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$newParent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="newParent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

newParent : Item

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

The new parent to animate to.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the ParentAnimation is defined within a Transition, this value
defaults to the value defined in the end state of the Transition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@newParent -->

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

The item to reparent.

.. raw:: html

   </p>

.. raw:: html

   <p>

When used in a transition, if no target is specified, all ParentChange
occurrences are animated by the ParentAnimation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="via-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

via : Item

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

The item to reparent via. This provides a way to do an unclipped
animation when both the old parent and new parent are clipped.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ParentAnimation</a></span> {
   <span class="name">target</span>: <span class="name">myItem</span>
   <span class="name">via</span>: <span class="name">topLevelItem</span>
   <span class="comment">// ...</span>
   }</pre>

.. raw:: html

   <p>

Note: This only works when the ParentAnimation is used in a Transition
in conjunction with a ParentChange.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@via -->


