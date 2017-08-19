QtQuick.RotationAnimator
========================

.. raw:: html

   <p>

The RotationAnimator type animates the rotation of an Item. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RotationAnimator -->

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

Qt 5.2

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

   </ul>

.. raw:: html

   <!-- $$$RotationAnimator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Animator types are different from normal Animation types. When using an
Animator, the animation can be run in the render thread and the property
value will jump to the end when the animation is complete.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value of Item::rotation is updated after the animation has finished.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following snippet shows how to use a RotationAnimator together with
a Rectangle item.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rotatingBox</span>
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type"><a href="index.html">RotationAnimator</a></span> {
   <span class="name">target</span>: <span class="name">rotatingBox</span>;
   <span class="name">from</span>: <span class="number">0</span>;
   <span class="name">to</span>: <span class="number">360</span>;
   <span class="name">duration</span>: <span class="number">1000</span>
   <span class="name">running</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

It is also possible to use the on keyword to tie the RotationAnimator
directly to the rotation property of an Item instance.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   RotationAnimator on <span class="name">rotation</span> {
   <span class="name">from</span>: <span class="number">0</span>;
   <span class="name">to</span>: <span class="number">360</span>;
   <span class="name">duration</span>: <span class="number">1000</span>
   }
   }</pre>

.. raw:: html

   <p>

See also Item::transformOrigin and ScaleAnimator.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RotationAnimator -->

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

RotationAnimator.Numerical (default) - Rotate by linearly interpolating
between the two numbers. A rotation from 10 to 350 will rotate 340
degrees clockwise.

.. raw:: html

   </li>

.. raw:: html

   <li>

RotationAnimator.Clockwise - Rotate clockwise between the two values

.. raw:: html

   </li>

.. raw:: html

   <li>

RotationAnimator.Counterclockwise - Rotate counterclockwise between the
two values

.. raw:: html

   </li>

.. raw:: html

   <li>

RotationAnimator.Shortest - Rotate in the direction that produces the
shortest animation path. A rotation from 10 to 350 will rotate 20
degrees counterclockwise.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@direction -->


