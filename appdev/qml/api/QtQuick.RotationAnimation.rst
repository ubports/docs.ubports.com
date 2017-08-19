QtQuick.RotationAnimation
=========================

.. raw:: html

   <p>

Animates changes in rotation values More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RotationAnimation -->

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

PropertyAnimation

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

direction : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

from : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

to : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$RotationAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

RotationAnimation is a specialized PropertyAnimation that gives control
over the direction of rotation during an animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, it rotates in the direction of the numerical change; a
rotation from 0 to 240 will rotate 240 degrees clockwise, while a
rotation from 240 to 0 will rotate 240 degrees counterclockwise. The
direction property can be set to specify the direction in which the
rotation should occur.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example we use RotationAnimation to animate the
rotation between states via the shortest path:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">150</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">antialiasing</span>: <span class="number">true</span>
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;rotated&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">rotation</span>: <span class="number">180</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="index.html">RotationAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">direction</span>: <span class="name">RotationAnimation</span>.<span class="name">Counterclockwise</span> }
   }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">rect</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;rotated&quot;</span> }
   }</pre>

.. raw:: html

   <p>

Notice the RotationAnimation did not need to set a target value. As a
convenience, when used in a transition, RotationAnimation will rotate
all properties named "rotation" or "angle". You can override this by
providing your own properties via properties or property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Also, note the Rectangle will be rotated around its default
transformOrigin (which is Item.Center). To use a different transform
origin, set the origin in the PropertyChanges object and apply the
change at the start of the animation using PropertyAction. See the
PropertyAction documentation for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Like any other animation type, a RotationAnimation can be applied in a
number of ways, including transitions, behaviors and property value
sources. The Animation and Transitions in Qt Quick documentation shows a
variety of methods for creating animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick and Qt Quick Examples -
Animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RotationAnimation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="direction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

direction : enumeration

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

This property holds the direction of the rotation.

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

RotationAnimation.Numerical (default) - Rotate by linearly interpolating
between the two numbers. A rotation from 10 to 350 will rotate 340
degrees clockwise.

.. raw:: html

   </li>

.. raw:: html

   <li>

RotationAnimation.Clockwise - Rotate clockwise between the two values

.. raw:: html

   </li>

.. raw:: html

   <li>

RotationAnimation.Counterclockwise - Rotate counterclockwise between the
two values

.. raw:: html

   </li>

.. raw:: html

   <li>

RotationAnimation.Shortest - Rotate in the direction that produces the
shortest animation path. A rotation from 10 to 350 will rotate 20
degrees counterclockwise.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="from-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

from : real

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

This property holds the starting value for the animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following animation is not applied until the angle
value has reached 100:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">states</span>: [
   <span class="comment">// ...</span>
   ]
   <span class="name">transition</span>: <span class="name">Transition</span> {
   <span class="type"><a href="index.html">RotationAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;angle&quot;</span>; <span class="name">from</span>: <span class="number">100</span>; <span class="name">duration</span>: <span class="number">2000</span> }
   }
   }</pre>

.. raw:: html

   <p>

If the RotationAnimation is defined within a Transition or Behavior,
this value defaults to the value defined in the starting state of the
Transition, or the current value of the property at the moment the
Behavior is triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@from -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="to-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

to : real

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

This property holds the end value for the animation..

.. raw:: html

   </p>

.. raw:: html

   <p>

If the RotationAnimation is defined within a Transition or Behavior,
this value defaults to the value defined in the end state of the
Transition, or the value of the property change that triggered the
Behavior.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@to -->


