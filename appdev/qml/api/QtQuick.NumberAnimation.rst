QtQuick.NumberAnimation
=======================

.. raw:: html

   <p>

Animates changes in qreal-type values More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@NumberAnimation -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

SmoothedAnimation and SpringAnimation.

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

   <!-- $$$NumberAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

NumberAnimation is a specialized PropertyAnimation that defines an
animation to be applied when a numerical value changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a NumberAnimation applied to the x property of a Rectangle as a
property value source. It animates the x value from its current value to
a value of 50, over 1000 milliseconds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">50</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   }</pre>

.. raw:: html

   <p>

Like any other animation type, a NumberAnimation can be applied in a
number of ways, including transitions, behaviors and property value
sources. The Animation and Transitions in Qt Quick documentation shows a
variety of methods for creating animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that NumberAnimation may not animate smoothly if there are
irregular changes in the number value that it is tracking. If this is
the case, use SmoothedAnimation instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick and Qt Quick Examples -
Animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@NumberAnimation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$from -->

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

For example, the following animation is not applied until the x value
has reached 100:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">states</span>: [
   <span class="comment">// ...</span>
   ]
   <span class="name">transition</span>: <span class="name">Transition</span> {
   <span class="type"><a href="index.html">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">from</span>: <span class="number">100</span>; <span class="name">duration</span>: <span class="number">200</span> }
   }
   }</pre>

.. raw:: html

   <p>

If the NumberAnimation is defined within a Transition or Behavior, this
value defaults to the value defined in the starting state of the
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

This property holds the end value for the animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the NumberAnimation is defined within a Transition or Behavior, this
value defaults to the value defined in the end state of the Transition,
or the value of the property change that triggered the Behavior.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@to -->


