QtQuick.PropertyAction
======================

.. raw:: html

   <p>

Specifies immediate property changes during animation More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PropertyAction -->

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

exclude : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

properties : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

property : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

targets : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

value : any

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PropertyAction-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

PropertyAction is used to specify an immediate property change during an
animation. The property change is not animated.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is useful for setting non-animated property values during an
animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a SequentialAnimation that sets the image's opacity
property to .5, animates the width of the image, then sets opacity back
to 1:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="index.html">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">img</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">value</span>: <span class="number">.5</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">img</span>; <span class="name">property</span>: <span class="string">&quot;width&quot;</span>; <span class="name">to</span>: <span class="number">300</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   <span class="type"><a href="index.html">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">img</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">value</span>: <span class="number">1</span> }
   }</pre>

.. raw:: html

   <p>

PropertyAction is also useful for setting the exact point at which a
property change should occur during a Transition. For example, if
PropertyChanges was used in a State to rotate an item around a
particular transformOrigin, it might be implemented like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;rotated&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">rotation</span>: <span class="number">180</span>; <span class="name">transformOrigin</span>: <span class="name">Item</span>.<span class="name">BottomRight</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.RotationAnimation.md">RotationAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">direction</span>: <span class="name">RotationAnimation</span>.<span class="name">Counterclockwise</span> }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">rect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;rotated&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

However, with this code, the transformOrigin is not set until after the
animation, as a State is taken to define the values at the end of a
transition. The animation would rotate at the default transformOrigin,
then jump to Item.BottomRight. To fix this, insert a PropertyAction
before the RotationAnimation begins:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="index.html">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">property</span>: <span class="string">&quot;transformOrigin&quot;</span> }
   <span class="type"><a href="QtQuick.RotationAnimation.md">RotationAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">direction</span>: <span class="name">RotationAnimation</span>.<span class="name">Counterclockwise</span> }
   }
   }</pre>

.. raw:: html

   <p>

This immediately sets the transformOrigin property to the value defined
in the end state of the Transition (i.e. the value defined in the
PropertyAction object) so that the rotation animation begins with the
correct transform origin.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick and Qt QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PropertyAction -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$exclude -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exclude-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

exclude : list<Object>

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

This property holds the objects that should not be affected by this
action.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also targets.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exclude -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="properties-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

properties : string

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

These properties determine the items and their properties that are
affected by this action.

.. raw:: html

   </p>

.. raw:: html

   <p>

The details of how these properties are interpreted in different
situations is covered in the corresponding PropertyAnimation
documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also exclude.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@properties -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="property-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

property : string

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

These properties determine the items and their properties that are
affected by this action.

.. raw:: html

   </p>

.. raw:: html

   <p>

The details of how these properties are interpreted in different
situations is covered in the corresponding PropertyAnimation
documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also exclude.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@property -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : Object

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

These properties determine the items and their properties that are
affected by this action.

.. raw:: html

   </p>

.. raw:: html

   <p>

The details of how these properties are interpreted in different
situations is covered in the corresponding PropertyAnimation
documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also exclude.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="targets-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

targets : list<Object>

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

These properties determine the items and their properties that are
affected by this action.

.. raw:: html

   </p>

.. raw:: html

   <p>

The details of how these properties are interpreted in different
situations is covered in the corresponding PropertyAnimation
documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also exclude.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@targets -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

value : any

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

This property holds the value to be set on the property.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the PropertyAction is defined within a Transition or Behavior, this
value defaults to the value defined in the end state of the Transition,
or the value of the property change that triggered the Behavior.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->


