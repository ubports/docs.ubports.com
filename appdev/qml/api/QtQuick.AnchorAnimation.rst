QtQuick.AnchorAnimation
=======================

.. raw:: html

   <p>

Animates changes in anchor values More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnchorAnimation -->

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

duration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

easing

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

easing.type : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

easing.amplitude : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

easing.overshoot : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

easing.period : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

targets : list<Item>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AnchorAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

AnchorAnimation is used to animate an anchor change.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following snippet we animate the addition of a right anchor to a
Rectangle:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">myRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;reanchored&quot;</span>
   <span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> { <span class="name">target</span>: <span class="name">myRect</span>; <span class="name">anchors</span>.right: <span class="name">container</span>.<span class="name">right</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="comment">// smoothly reanchor myRect and move into new position</span>
   <span class="type"><a href="index.html">AnchorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
   }
   <span class="name">Component</span>.onCompleted: <span class="name">container</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;reanchored&quot;</span>
   }</pre>

.. raw:: html

   <p>

When an AnchorAnimation is used in a Transition, it will animate any
AnchorChanges that have occurred during the state change. This can be
overridden by setting a specific target item using the
AnchorChanges.target property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: AnchorAnimation can only be used in a Transition and in
conjunction with an AnchorChange. It cannot be used in behaviors and
other types of animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick and AnchorChanges.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnchorAnimation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="duration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

duration : int

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

This property holds the duration of the animation, in milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 250.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="easing-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

easing group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="easing.type-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

easing.type : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="easing.amplitude-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

easing.amplitude : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="easing.overshoot-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

easing.overshoot : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="easing.period-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

easing.period : real

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

Specifies the easing curve used for the animation

.. raw:: html

   </p>

.. raw:: html

   <p>

To specify an easing curve you need to specify at least the type. For
some curves you can also specify amplitude, period and/or overshoot. The
default easing curve is Linear.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">AnchorAnimation</a></span> { <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }</pre>

.. raw:: html

   <p>

See the PropertyAnimation::easing.type documentation for information
about the different types of easing curves.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@easing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="targets-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

targets : list<Item>

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

The items to reanchor.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no targets are specified all AnchorChanges will be animated by the
AnchorAnimation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@targets -->


