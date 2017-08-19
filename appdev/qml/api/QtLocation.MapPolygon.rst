QtLocation.MapPolygon
=====================

.. raw:: html

   <p>

The MapPolygon type displays a polygon on a Map More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapPolygon -->

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

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

path : list<coordinate>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

addCoordinate(coordinate)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeCoordinate(coordinate)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MapPolygon-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The MapPolygon type displays a polygon on a Map, specified in terms of
an ordered list of coordinates. For best appearance and results,
polygons should be simple (not self-intersecting).

.. raw:: html

   </p>

.. raw:: html

   <p>

The coordinates on the path cannot be directly changed after being added
to the Polygon. Instead, copy the path.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">var path <span class="operator">=</span> mapPolygon<span class="operator">.</span>path;
   path<span class="operator">[</span><span class="number">0</span><span class="operator">]</span><span class="operator">.</span>latitude <span class="operator">=</span> <span class="number">5</span>;
   mapPolygon<span class="operator">.</span>path <span class="operator">=</span> path;</pre>

.. raw:: html

   <p>

Coordinates can also be added and removed at any time using the
removeCoordinate methods.

.. raw:: html

   </p>

.. raw:: html

   <p>

For drawing rectangles with "straight" edges (same latitude across one
edge, same latitude across the other), the MapRectangle type provides a
simpler, two-point API.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the polygon is displayed as a 1 pixel black border with no
fill. To change its appearance, use the border.width properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Since MapPolygons are geographic items, dragging a MapPolygon
(through the use of MouseArea) causes its vertices to be recalculated in
the geographic coordinate space. The edges retain the same geographic
lengths (latitude and longitude differences between the vertices), but
they remain straight. Apparent stretching of the item occurs when
dragged to a different latitude.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Performance

.. raw:: html

   </h3>

.. raw:: html

   <p>

MapPolygons have a rendering cost that is O(n) with respect to the
number of vertices. This means that the per frame cost of having a
Polygon on the Map grows in direct proportion to the number of points on
the Polygon. There is an additional triangulation cost (approximately
O(n log n)) which is currently paid with each frame, but in future may
be paid only upon adding or removing points.

.. raw:: html

   </p>

.. raw:: html

   <p>

Like the other map objects, MapPolygon is normally drawn without a
smooth appearance. Setting the opacity property will force the object to
be blended, which decreases performance considerably depending on the
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

The following snippet shows a MapPolygon being used to display a
triangle, with three vertices near Brisbane, Australia. The triangle is
filled in green, with a 1 pixel black border.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Map {
   MapPolygon {
   color: <span class="char">'green'</span>
   path: <span class="operator">[</span>
   { latitude: <span class="operator">-</span><span class="number">27</span><span class="operator">,</span> longitude: <span class="number">153.0</span> }<span class="operator">,</span>
   { latitude: <span class="operator">-</span><span class="number">27</span><span class="operator">,</span> longitude: <span class="number">154.1</span> }<span class="operator">,</span>
   { latitude: <span class="operator">-</span><span class="number">28</span><span class="operator">,</span> longitude: <span class="number">153.5</span> }
   <span class="operator">]</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapPolygon -->

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
group holds the width and color used to draw the border of the polygon.

.. raw:: html

   </p>

.. raw:: html

   <p>

The width is in pixels and is independent of the zoom level of the map.

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

This property holds the color used to fill the polygon.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is transparent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="path-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

path : list<coordinate>

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

This property holds the ordered list of coordinates which define the
polygon.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also removeCoordinate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@path -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addCoordinate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addCoordinate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

addCoordinate(coordinate)

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

Adds a coordinate to the path.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also path.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addCoordinate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeCoordinate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeCoordinate(coordinate)

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

Removes a coordinate from the path. If there are multiple instances of
the same coordinate, the one added last is removed.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also path.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeCoordinate -->


