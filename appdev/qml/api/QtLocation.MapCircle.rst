QtLocation.MapCircle
====================

.. raw:: html

   <p>

The MapCircle type displays a geographic circle on a Map. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapCircle -->

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

import QtLocation 5.3

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

Qt Location 5.0

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

center : coordinate

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

opacity : real

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

   <!-- $$$MapCircle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The MapCircle type displays a geographic circle on a Map, which consists
of all points that are within a set distance from one central point.
Depending on map projection, a geographic circle may not always be a
perfect circle on the screen: for instance, in the Mercator projection,
circles become ovoid in shape as they near the poles. To display a
perfect screen circle around a point, use a MapQuickItem containing a
relevant Qt Quick type instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the circle is displayed as a 1 pixel black border with no
fill. To change its appearance, use the color, border.color and
border.width properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

Internally, a MapCircle is implemented as a many-sided polygon. To
calculate the radius points it uses a spherical model of the Earth,
similar to the atDistanceAndAzimuth method of the coordinate type. These
two things can occasionally have implications for the accuracy of the
circle's shape, depending on position and map projection.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Dragging a MapCircle (through the use of MouseArea) causes new
points to be generated at the same distance (in meters) from the center.
This is in contrast to other map items which store their dimensions in
terms of latitude and longitude differences between vertices.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Performance

.. raw:: html

   </h3>

.. raw:: html

   <p>

MapCircle performance is almost equivalent to that of a MapPolygon with
125 vertices. There is a small amount of additional overhead with
respect to calculating the vertices first.

.. raw:: html

   </p>

.. raw:: html

   <p>

Like the other map objects, MapCircle is normally drawn without a smooth
appearance. Setting the opacity property will force the object to be
blended, which decreases performance considerably depending on the
graphics hardware in use.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following snippet shows a map containing a MapCircle, centered at
the coordinate (-27, 153) with a radius of 5km. The circle is filled in
green, with a 3 pixel black border.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Map {
   MapCircle {
   center {
   latitude: <span class="operator">-</span><span class="number">27.5</span>
   longitude: <span class="number">153.0</span>
   }
   radius: <span class="number">5000.0</span>
   color: <span class="char">'green'</span>
   border<span class="operator">.</span>width: <span class="number">3</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapCircle -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$border -->

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

This property is part of the border group property. The border property
holds the width and color used to draw the border of the circle. The
width is in pixels and is independent of the zoom level of the map.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default values correspond to a black border with a width of 1 pixel.
For no line, use a width of 0 or a transparent color.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@border -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="center-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

center : coordinate

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

This property holds the central point about which the circle is defined.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also radius.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@center -->

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

This property holds the fill color of the circle when drawn. For no
fill, use a transparent color.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="opacity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

opacity : real

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

This property holds the opacity of the item. Opacity is specified as a
number between 0 (fully transparent) and 1 (fully opaque). The default
is 1.

.. raw:: html

   </p>

.. raw:: html

   <p>

An item with 0 opacity will still receive mouse events. To stop mouse
events, set the visible property of the item to false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@opacity -->

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

This property holds the radius of the circle, in meters on the ground.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also center.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@radius -->


