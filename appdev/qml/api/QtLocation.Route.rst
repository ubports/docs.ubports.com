QtLocation.Route
================

.. raw:: html

   <p>

The Route type represents one geographical route. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Route -->

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

bounds : georectangle

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

distance : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

path : QJSValue

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

segments : list<RouteSegment>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

travelTime : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Route-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A Route type contains high level information about a route, such as the
length the route, the estimated travel time for the route, and enough
information to render a basic image of the route on a map.

.. raw:: html

   </p>

.. raw:: html

   <p>

The QGeoRoute object also contains a list of RouteSegment objects which
describe subsections of the route in greater detail.

.. raw:: html

   </p>

.. raw:: html

   <p>

The primary means of acquiring Route objects is RouteModel.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example">

Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

This example shows how to display a route's maneuvers in a ListView:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtLocation 5.3
   <span class="type"><a href="QtLocation.RouteModel.md">RouteModel</a></span> {
   <span class="name">id</span>: <span class="name">routeModel</span>
   <span class="comment">// model initialization</span>
   }
   <span class="type">ListView</span> {
   <span class="name">spacing</span>: <span class="number">10</span>
   <span class="name">model</span>: <span class="name">routeModel</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">RouteModel</span>.<span class="name">Ready</span> ? <span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">segments</span> : <span class="number">null</span>
   <span class="name">visible</span>: <span class="name">model</span> ? <span class="number">true</span> : <span class="number">false</span>
   <span class="name">delegate</span>: <span class="name">Row</span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">spacing</span>: <span class="number">10</span>
   property <span class="type">bool</span> <span class="name">hasManeuver</span> : <span class="name">modelData</span>.<span class="name">maneuver</span> <span class="operator">&amp;&amp;</span> <span class="name">modelData</span>.<span class="name">maneuver</span>.<span class="name">valid</span>
   <span class="name">visible</span>: <span class="name">hasManeuver</span>
   <span class="type">Text</span> { <span class="name">text</span>: (<span class="number">1</span> <span class="operator">+</span> <span class="name">index</span>) <span class="operator">+</span> <span class="string">&quot;.&quot;</span> }
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">hasManeuver</span> ? <span class="name">modelData</span>.<span class="name">maneuver</span>.<span class="name">instructionText</span> : <span class="string">&quot;&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@Route -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$bounds -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="bounds-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

bounds : georectangle

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

Read-only property which holds a bounding box which encompasses the
entire route.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bounds -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="distance-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

distance : real

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

Read-only property which holds distance covered by this route, in
meters.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@distance -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="path-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

path : QJSValue

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

Read-only property which holds the geographical coordinates of this
route. Coordinates are listed in the order in which they would be
traversed by someone traveling along this segment of the route.

.. raw:: html

   </p>

.. raw:: html

   <p>

To access individual segments you can use standard list accessors:
'path.length' indicates the number of objects and 'path[index starting
from zero]' gives the actual object.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QtPositioning::coordinate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@path -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="segments-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

segments : list<RouteSegment>

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

Read-only property which holds the list of RouteSegment objects of this
route.

.. raw:: html

   </p>

.. raw:: html

   <p>

To access individual segments you can use standard list accessors:
'segments.length' indicates the number of objects and 'segments[index
starting from zero]' gives the actual objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also RouteSegment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@segments -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="travelTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

travelTime : int

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

Read-only property which holds the estimated amount of time it will take
to traverse this route, in seconds.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@travelTime -->


