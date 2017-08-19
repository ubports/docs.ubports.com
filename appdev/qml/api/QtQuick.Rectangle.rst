QtQuick.Rectangle
=================

.. raw:: html

   <p>

Paints a filled rectangle with an optional border More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Rectangle -->

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

Item

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

antialiasing : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

border

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

border.width : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

border.color : color

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

gradient : Gradient

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

radius : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Rectangle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Rectangle items are used to fill areas with solid color or gradients,
and/or to provide a rectangular border.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="appearance">

Appearance

.. raw:: html

   </h2>

.. raw:: html

   <p>

Each Rectangle item is painted using either a solid fill color,
specified using the color property, or a gradient, defined using a
Gradient type and set using the gradient property. If both a color and a
gradient are specified, the gradient is used.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can add an optional border to a rectangle with its own color and
thickness by setting the border.color and border.width properties. Set
the color to "transparent" to paint a border without a fill color.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can also create rounded rectangles using the radius property. Since
this introduces curved edges to the corners of a rectangle, it may be
appropriate to set the Item::antialiasing property to improve its
appearance.

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

The following example shows the effects of some of the common properties
on a Rectangle item, which in this case is used to create a square:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">border</span>.color: <span class="string">&quot;black&quot;</span>
   <span class="name">border</span>.width: <span class="number">5</span>
   <span class="name">radius</span>: <span class="number">10</span>
   }</pre>

.. raw:: html

   <h2 id="performance">

Performance

.. raw:: html

   </h2>

.. raw:: html

   <p>

Using the Item::antialiasing property improves the appearance of a
rounded rectangle at the cost of rendering performance. You should
consider unsetting this property for rectangles in motion, and only set
it when they are stationary.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Image.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Rectangle -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$antialiasing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="antialiasing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

antialiasing : bool

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

Used to decide if the Rectangle should use antialiasing or not.
Antialiasing provides information on the performance implications of
this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default is true for Rectangles with a radius, and false otherwise.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@antialiasing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="border-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

border group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="border.width-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

border.width : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="border.color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

border.color : color

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

The width and color used to draw the border of the rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

A width of 1 creates a thin line. For no line, use a width of 0 or a
transparent color.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The width of the rectangle's border does not affect the geometry
of the rectangle itself or its position relative to other items if
anchors are used.

.. raw:: html

   </p>

.. raw:: html

   <p>

The border is rendered within the rectangle's boundaries.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@border -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

color : color

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

This property holds the color used to fill the rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default color is white.

.. raw:: html

   </p>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows rectangles with colors specified using
hexadecimal and named color notation:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;#00B000&quot;</span>
   <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   }
   <span class="type"><a href="index.html">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;steelblue&quot;</span>
   <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   }</pre>

.. raw:: html

   <p>

If both a gradient and a color are specified, the gradient will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also gradient.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="gradient-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

gradient : Gradient

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

The gradient to use to fill the rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property allows for the construction of simple vertical gradients.
Other gradients may by formed by adding rotation to the rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Rectangle</a></span> {
   <span class="name">y</span>: <span class="number">0</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   }
   <span class="type"><a href="index.html">Rectangle</a></span> {
   <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   <span class="name">gradient</span>: <span class="name">Gradient</span> {
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
   }
   }
   <span class="type"><a href="index.html">Rectangle</a></span> {
   <span class="name">y</span>: <span class="number">200</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   <span class="name">rotation</span>: <span class="number">90</span>
   <span class="name">gradient</span>: <span class="name">Gradient</span> {
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
   }
   }</pre>

.. raw:: html

   <p>

If both a gradient and a color are specified, the gradient will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Gradient and color.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gradient -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="radius-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

radius : real

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

This property holds the corner radius used to draw a rounded rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

If radius is non-zero, the rectangle will be painted as a rounded
rectangle, otherwise it will be painted as a normal rectangle. The same
radius is used by all 4 corners; there is currently no way to specify
different radii for different corners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@radius -->


