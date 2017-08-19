QtLocation.MapPolyline
======================

.. raw:: html

   <p>

The MapPolyline type displays a polyline on a map. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapPolyline -->

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

line

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

line.width : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

line.color : color

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

   <!-- $$$MapPolyline-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The path.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">var path <span class="operator">=</span> mapPolyline<span class="operator">.</span>path;
   path<span class="operator">[</span><span class="number">0</span><span class="operator">]</span><span class="operator">.</span>latitude <span class="operator">=</span> <span class="number">5</span>;
   mapPolyline<span class="operator">.</span>path <span class="operator">=</span> path;</pre>

.. raw:: html

   <p>

Coordinates can also be added and removed at any time using the
removeCoordinate methods.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the polyline is displayed as a 1-pixel thick black line.
This can be changed using the line.color properties.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Performance

.. raw:: html

   </h3>

.. raw:: html

   <p>

MapPolylines have a rendering cost that is O(n) with respect to the
number of vertices. This means that the per frame cost of having a
polyline on the Map grows in direct proportion to the number of points
in the polyline.

.. raw:: html

   </p>

.. raw:: html

   <p>

Like the other map objects, MapPolyline is normally drawn without a
smooth appearance. Setting the opacity property will force the object to
be blended, which decreases performance considerably depending on the
hardware in use.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: MapPolylines are implemented using the OpenGL GL\_LINES primitive.
There have been occasional reports of issues and rendering
inconsistencies on some (particularly quite old) platforms. No
workaround is yet available for these issues.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following snippet shows a MapPolyline with 4 points, making a shape
like the top part of a "question mark" (?), near Brisbane, Australia.
The line drawn is 3 pixels in width and green in color.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Map {
   MapPolyline {
   line<span class="operator">.</span>width: <span class="number">3</span>
   line<span class="operator">.</span>color: <span class="char">'green'</span>
   path: <span class="operator">[</span>
   { latitude: <span class="operator">-</span><span class="number">27</span><span class="operator">,</span> longitude: <span class="number">153.0</span> }<span class="operator">,</span>
   { latitude: <span class="operator">-</span><span class="number">27</span><span class="operator">,</span> longitude: <span class="number">154.1</span> }<span class="operator">,</span>
   { latitude: <span class="operator">-</span><span class="number">28</span><span class="operator">,</span> longitude: <span class="number">153.5</span> }<span class="operator">,</span>
   { latitude: <span class="operator">-</span><span class="number">29</span><span class="operator">,</span> longitude: <span class="number">153.5</span> }
   <span class="operator">]</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapPolyline -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$line -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="line-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

line group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="line.width-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

line.width : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="line.color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

line.color : color

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

This property is part of the line property group. The line property
group holds the width and color used to draw the line.

.. raw:: html

   </p>

.. raw:: html

   <p>

The width is in pixels and is independent of the zoom level of the map.
The default values correspond to a black border with a width of 1 pixel.

.. raw:: html

   </p>

.. raw:: html

   <p>

For no line, use a width of 0 or a transparent color.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@line -->

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
polyline.

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


