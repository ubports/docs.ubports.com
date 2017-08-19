QtLocation.MapRoute
===================

.. raw:: html

   <p>

The MapRoute type displays a Route on a Map. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapRoute -->

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

route : Route

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MapRoute-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The MapRoute type displays a Route obtained through a RouteModel or
other means, on the Map as a Polyline following the path of the Route.

.. raw:: html

   </p>

.. raw:: html

   <p>

route property instead of directly in coordinates.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the route is displayed as a 1-pixel thick black line. This
can be changed using the line.color properties.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Performance

.. raw:: html

   </h3>

.. raw:: html

   <p>

For notes about the performance on MapRoute, refer to the documentation
for MapPolyline.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

Here is how to draw a route on a map:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtLocation 5.3
   <span class="type"><a href="QtLocation.Map.md">Map</a></span> {
   <span class="type"><a href="QtLocation.RouteModel.md">RouteModel</a></span> {
   <span class="name">id</span>: <span class="name">routeModel</span>
   }
   <span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
   <span class="name">model</span>: <span class="name">routeModel</span>
   <span class="name">delegate</span>: <span class="name">routeDelegate</span>
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">routeDelegate</span>
   <span class="type"><a href="#">MapRoute</a></span> {
   <span class="name">route</span>: <span class="name">routeData</span>
   <span class="name">line</span>.color: <span class="string">&quot;blue&quot;</span>
   <span class="name">line</span>.width: <span class="number">5</span>
   <span class="name">smooth</span>: <span class="number">true</span>
   <span class="name">opacity</span>: <span class="number">0.8</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@MapRoute -->

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

   <tr valign="top" id="route-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

route : Route

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

This property holds the route to be drawn which can be used to represent
one geographical route.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@route -->


