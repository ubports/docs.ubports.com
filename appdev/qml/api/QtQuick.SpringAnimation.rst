QtQuick.SpringAnimation
=======================

.. raw:: html

   <p>

Allows a property to track a value in a spring-like motion More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SpringAnimation -->

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

NumberAnimation

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

damping : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

epsilon : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mass : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

modulus : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

spring : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

velocity : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SpringAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

SpringAnimation mimics the oscillatory behavior of a spring, with the
appropriate spring constant to control the acceleration and the damping
to control how quickly the effect dies away.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can also limit the maximum velocity of the animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following Rectangle moves to the position of the mouse using a
SpringAnimation when the mouse is clicked. The use of the Behavior on
the x and y values indicates that whenever these values are changed, a
SpringAnimation should be applied.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   Behavior on <span class="name">x</span> { <span class="type"><a href="index.html">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">2</span>; <span class="name">damping</span>: <span class="number">0.2</span> } }
   Behavior on <span class="name">y</span> { <span class="type"><a href="index.html">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">2</span>; <span class="name">damping</span>: <span class="number">0.2</span> } }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">rect</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">mouse</span>.<span class="name">x</span> <span class="operator">-</span> <span class="name">rect</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>
   <span class="name">rect</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">mouse</span>.<span class="name">y</span> <span class="operator">-</span> <span class="name">rect</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

Like any other animation type, a SpringAnimation can be applied in a
number of ways, including transitions, behaviors and property value
sources. The Animation and Transitions in Qt Quick documentation shows a
variety of methods for creating animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SmoothedAnimation, Animation and Transitions in Qt Quick, Qt
Quick Examples - Animation, and Qt Quick Demo - Clocks.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SpringAnimation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$damping -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="damping-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

damping : real

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

This property holds the spring damping value.

.. raw:: html

   </p>

.. raw:: html

   <p>

This value describes how quickly the spring-like motion comes to rest.
The default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

The useful value range is 0 - 1.0. The lower the value, the faster it
comes to rest.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@damping -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="epsilon-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

epsilon : real

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

This property holds the spring epsilon.

.. raw:: html

   </p>

.. raw:: html

   <p>

The epsilon is the rate and amount of change in the value which is close
enough to 0 to be considered equal to zero. This will depend on the
usage of the value. For pixel positions, 0.25 would suffice. For scale,
0.005 will suffice.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default is 0.01. Tuning this value can provide small performance
improvements.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@epsilon -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mass-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mass : real

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

This property holds the "mass" of the property being moved.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value is 1.0 by default.

.. raw:: html

   </p>

.. raw:: html

   <p>

A greater mass causes slower movement and a greater spring-like motion
when an item comes to rest.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mass -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="modulus-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

modulus : real

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

This property holds the modulus value. The default value is 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting a modulus forces the target value to "wrap around" at the
modulus. For example, setting the modulus to 360 will cause a value of
370 to wrap around to 10.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@modulus -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="spring-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

spring : real

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

This property describes how strongly the target is pulled towards the
source. The default value is 0 (that is, the spring-like motion is
disabled).

.. raw:: html

   </p>

.. raw:: html

   <p>

The useful value range is 0 - 5.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

When this property is set and the velocity value is greater than 0, the
velocity limits the maximum speed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@spring -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="velocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

velocity : real

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

This property holds the maximum velocity allowed when tracking the
source.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 0 (no maximum velocity).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@velocity -->


