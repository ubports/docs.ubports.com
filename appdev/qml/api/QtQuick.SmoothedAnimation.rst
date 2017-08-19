QtQuick.SmoothedAnimation
=========================

.. raw:: html

   <p>

Allows a property to smoothly track a value More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SmoothedAnimation -->

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

duration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumEasingTime : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reversingMode : enumeration

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

   <!-- $$$SmoothedAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A SmoothedAnimation animates a property's value to a set target value
using an ease in/out quad easing curve. When the target value changes,
the easing curves used to animate between the old and new target values
are smoothly spliced together to create a smooth movement to the new
target value that maintains the current velocity.

.. raw:: html

   </p>

.. raw:: html

   <p>

The follow example shows one Rectangle tracking the position of another
using SmoothedAnimation. The green rectangle's x and y values are bound
to those of the red rectangle. Whenever these values change, the green
rectangle smoothly animates to its new position:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">800</span>; <span class="name">height</span>: <span class="number">600</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">60</span>; <span class="name">height</span>: <span class="number">60</span>
   <span class="name">x</span>: <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">-</span> <span class="number">5</span>; <span class="name">y</span>: <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">-</span> <span class="number">5</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   Behavior on <span class="name">x</span> { <span class="type"><a href="index.html">SmoothedAnimation</a></span> { <span class="name">velocity</span>: <span class="number">200</span> } }
   Behavior on <span class="name">y</span> { <span class="type"><a href="index.html">SmoothedAnimation</a></span> { <span class="name">velocity</span>: <span class="number">200</span> } }
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect1</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onRightPressed: <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">+</span> <span class="number">100</span>
   <span class="name">Keys</span>.onLeftPressed: <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">rect1</span>.<span class="name">x</span> <span class="operator">-</span> <span class="number">100</span>
   <span class="name">Keys</span>.onUpPressed: <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">-</span> <span class="number">100</span>
   <span class="name">Keys</span>.onDownPressed: <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">rect1</span>.<span class="name">y</span> <span class="operator">+</span> <span class="number">100</span>
   }</pre>

.. raw:: html

   <p>

A SmoothedAnimation can be configured by setting the velocity at which
the animation should occur, or the duration that the animation should
take. If both the velocity and duration are specified, the one that
results in the quickest animation is chosen for each change in the
target value.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, animating from 0 to 800 will take 4 seconds if a velocity
of 200 is set, will take 8 seconds with a duration of 8000 set, and will
take 4 seconds with both a velocity of 200 and a duration of 8000 set.
Animating from 0 to 20000 will take 10 seconds if a velocity of 200 is
set, will take 8 seconds with a duration of 8000 set, and will take 8
seconds with both a velocity of 200 and a duration of 8000 set.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default velocity of SmoothedAnimation is 200 units/second. Note that
if the range of the value being animated is small, then the velocity
will need to be adjusted appropriately. For example, the opacity of an
item ranges from 0 - 1.0. To enable a smooth animation in this range the
velocity will need to be set to a value such as 0.5 units/second.
Animating from 0 to 1.0 with a velocity of 0.5 will take 2000 ms to
complete.

.. raw:: html

   </p>

.. raw:: html

   <p>

Like any other animation type, a SmoothedAnimation can be applied in a
number of ways, including transitions, behaviors and property value
sources. The Animation and Transitions in Qt Quick documentation shows a
variety of methods for creating animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SpringAnimation, NumberAnimation, Animation and Transitions in
Qt Quick, and Qt Quick Examples - Animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SmoothedAnimation -->

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

This property holds the animation duration, in msecs, used when tracking
the source.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting this to -1 (the default) disables the duration value.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the velocity value and the duration value are both enabled, then the
animation will use whichever gives the shorter duration.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumEasingTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumEasingTime : int

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

This property specifies the maximum time, in msecs, any "eases" during
the follow should take. Setting this property causes the velocity to
"level out" after at a time. Setting a negative value reverts to the
normal mode of easing over the entire animation duration.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is -1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumEasingTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reversingMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

reversingMode : enumeration

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

Sets how the SmoothedAnimation behaves if an animation direction is
reversed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

SmoothedAnimation.Eased (default) - the animation will smoothly
decelerate, and then reverse direction

.. raw:: html

   </li>

.. raw:: html

   <li>

SmoothedAnimation.Immediate - the animation will immediately begin
accelerating in the reverse direction, beginning with a velocity of 0

.. raw:: html

   </li>

.. raw:: html

   <li>

SmoothedAnimation.Sync - the property is immediately set to the target
value

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@reversingMode -->

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

This property holds the average velocity allowed when tracking the 'to'
value.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default velocity of SmoothedAnimation is 200 units/second.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting this to -1 disables the velocity value.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the velocity value and the duration value are both enabled, then the
animation will use whichever gives the shorter duration.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@velocity -->


