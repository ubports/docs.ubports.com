QtLocation.MapRectangle
=======================

.. raw:: html

   <p>

The MapRectangle type displays a rectangle on a Map. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapRectangle -->

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

bottomRight : coordinate

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

topLeft : coordinate

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MapRectangle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The MapRectangle type displays a rectangle on a Map. Rectangles are a
special case of Polygon with exactly 4 vertices and 4 "straight" edges.
In this case, "straight" means that the top-left point has the same
latitude as the top-right point (the top edge), and the bottom-left
point has the same latitude as the bottom-right point (the bottom edge).
Similarly, the points on the left side have the same longitude, and the
points on the right side have the same longitude.

.. raw:: html

   </p>

.. raw:: html

   <p>

To specify the rectangle, it requires a bottomRight point, both given by
a coordinate.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the rectangle is displayed with transparent fill and a
1-pixel thick black border. This can be changed using the border.width
properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Similar to the MapRectangle causes its vertices to be recalculated
in the geographic coordinate space. Apparent stretching of the item
occurs when dragged to the a different latitude, however, its edges
remain straight.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Performance

.. raw:: html

   </h3>

.. raw:: html

   <p>

MapRectangles have a rendering cost identical to a MapPolygon with 4
vertices.

.. raw:: html

   </p>

.. raw:: html

   <p>

Like the other map objects, opacity property will force the object to be
blended, which decreases performance considerably depending on the
hardware in use.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following snippet shows a map containing a MapRectangle, spanning
from (-27, 153) to (-28, 153.5), near Brisbane, Australia. The rectangle
is filled in green, with a 2 pixel black border.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Map {
   MapRectangle {
   color: <span class="char">'green'</span>
   border<span class="operator">.</span>width: <span class="number">2</span>
   topLeft {
   latitude: <span class="operator">-</span><span class="number">27</span>
   longitude: <span class="number">153</span>
   }
   bottomRight {
   latitude: <span class="operator">-</span><span class="number">28</span>
   longitude: <span class="number">153.5</span>
   }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapRectangle -->

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

This property is part of the border property group. The border property
group holds the width and color used to draw the border of the
rectangle. The width is in pixels and is independent of the zoom level
of the map.

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

   <tr valign="top" id="bottomRight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

bottomRight : coordinate

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

This property holds the bottom-right coordinate of the MapRectangle
which can be used to retrieve its longitude, latitude and altitude.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bottomRight -->

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

This property holds the fill color of the rectangle. For no fill, use a
transparent color.

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

   <tr valign="top" id="topLeft-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

topLeft : coordinate

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

This property holds the top-left coordinate of the MapRectangle which
can be used to retrieve its longitude, latitude and altitude.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@topLeft -->


