QtLocation.RouteSegment
=======================

.. raw:: html

   <p>

The RouteSegment type represents a segment of a Route. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RouteSegment -->

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

distance : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maneuver : RouteManeuver

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

path : QJSValue

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

   <!-- $$$RouteSegment-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A RouteSegment instance has information about the physical layout of the
route segment, the length of the route and estimated time required to
traverse the route segment and optional RouteManeuvers associated with
the end of the route segment.

.. raw:: html

   </p>

.. raw:: html

   <p>

RouteSegment instances can be thought of as edges on a routing graph,
with RouteManeuver instances as optional labels attached to the vertices
of the graph.

.. raw:: html

   </p>

.. raw:: html

   <p>

The primary means of acquiring Route objects is via Routes via
RouteModel.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example">

Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following QML snippet demonstrates how to print information about a
route segment:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtLocation 5.3
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;Segment distance &quot;</span> <span class="operator">+</span> <span class="name">routeSegment</span>.<span class="name">distance</span> <span class="operator">+</span> <span class="string">&quot; meters, &quot;</span> <span class="operator">+</span> <span class="name">routeSegment</span>.<span class="name">path</span>.<span class="name">length</span> <span class="operator">+</span> <span class="string">&quot; points.&quot;</span>
   }</pre>

.. raw:: html

   <!-- @@@RouteSegment -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$distance -->

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

Read-only property which holds the distance covered by this segment of
the route, in meters.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@distance -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maneuver-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maneuver : RouteManeuver

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

Read-only property which holds the maneuver for this route segment.

.. raw:: html

   </p>

.. raw:: html

   <p>

Will return invalid maneuver if no information has been attached to the
endpoint of this route segment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maneuver -->

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
segment. Coordinates are listed in the order in which they would be
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
to traverse this segment, in seconds.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@travelTime -->


