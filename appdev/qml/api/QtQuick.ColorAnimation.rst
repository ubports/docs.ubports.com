QtQuick.ColorAnimation
======================

.. raw:: html

   <p>

Animates changes in color values More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ColorAnimation -->

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

from : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

to : color

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ColorAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ColorAnimation is a specialized PropertyAnimation that defines an
animation to be applied when a color value changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a ColorAnimation applied to the color property of a Rectangle as
a property value source. It animates the color property's value from its
current value to a value of "red", over 1000 milliseconds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   ColorAnimation on <span class="name">color</span> { <span class="name">to</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   }</pre>

.. raw:: html

   <p>

Like any other animation type, a ColorAnimation can be applied in a
number of ways, including transitions, behaviors and property value
sources. The Animation and Transitions in Qt Quick documentation shows a
variety of methods for creating animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

For convenience, when a ColorAnimation is used in a Transition, it will
animate any color properties that have been modified during the state
change. If a property or properties are explicitly set for the
animation, then those are used instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick and Qt Quick Examples -
Animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ColorAnimation -->

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

from : color

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

This property holds the color value at which the animation should begin.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following animation is not applied until a color value
has reached "#c0c0c0":

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">states</span>: [
   <span class="comment">// States are defined here...</span>
   ]
   <span class="name">transition</span>: <span class="name">Transition</span> {
   <span class="type"><a href="index.html">ColorAnimation</a></span> { <span class="name">from</span>: <span class="string">&quot;#c0c0c0&quot;</span>; <span class="name">duration</span>: <span class="number">2000</span> }
   }
   }</pre>

.. raw:: html

   <p>

If the ColorAnimation is defined within a Transition or Behavior, this
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

to : color

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

This property holds the color value at which the animation should end.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the ColorAnimation is defined within a Transition or Behavior, this
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


