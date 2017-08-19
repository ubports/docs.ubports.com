QtQuick.Gradient
================

.. raw:: html

   <p>

Defines a gradient fill More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Gradient -->

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

stops : list<GradientStop>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Gradient-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A gradient is defined by two or more colors, which will be blended
seamlessly.

.. raw:: html

   </p>

.. raw:: html

   <p>

The colors are specified as a set of GradientStop child items, each of
which defines a position on the gradient from 0.0 to 1.0 and a color.
The position of each GradientStop is defined by setting its position
property; its color is defined using its color property.

.. raw:: html

   </p>

.. raw:: html

   <p>

A gradient without any gradient stops is rendered as a solid white fill.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that this item is not a visual representation of a gradient. To
display a gradient, use a visual item (like Rectangle) which supports
the use of gradients.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example declares a Rectangle item with a gradient starting
with red, blending to yellow at one third of the height of the
rectangle, and ending with green:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">gradient</span>: <span class="name">Gradient</span> {
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.33</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span> }
   }
   }</pre>

.. raw:: html

   <h2 id="performance-and-limitations">

Performance and Limitations

.. raw:: html

   </h2>

.. raw:: html

   <p>

Calculating gradients can be computationally expensive compared to the
use of solid color fills or images. Consider using gradients for static
items in a user interface.

.. raw:: html

   </p>

.. raw:: html

   <p>

In Qt 5.0, only vertical, linear gradients can be applied to items. If
you need to apply different orientations of gradients, a combination of
rotation and clipping will need to be applied to the relevant items.
This can introduce additional performance requirements for your
application.

.. raw:: html

   </p>

.. raw:: html

   <p>

The use of animations involving gradient stops may not give the desired
result. An alternative way to animate gradients is to use pre-generated
images or SVG drawings containing gradients.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also GradientStop.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Gradient -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$stops -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stops-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] stops : list<GradientStop>

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

This property holds the gradient stops describing the gradient.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property contains an empty list.

.. raw:: html

   </p>

.. raw:: html

   <p>

To set the gradient stops, define them as children of the Gradient.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stops -->


