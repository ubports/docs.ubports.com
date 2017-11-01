The RouteSegment type represents a segment of a Route.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`distance </sdk/apps/qml/QtLocation/RouteSegment#distance-prop>`__****
   : real
-  ****`maneuver </sdk/apps/qml/QtLocation/RouteSegment#maneuver-prop>`__****
   : RouteManeuver
-  ****`path </sdk/apps/qml/QtLocation/RouteSegment#path-prop>`__**** :
   QJSValue
-  ****`travelTime </sdk/apps/qml/QtLocation/RouteSegment#travelTime-prop>`__****
   : int

Detailed Description
--------------------

A `RouteSegment </sdk/apps/qml/QtLocation/RouteSegment/>`__ instance has
information about the physical layout of the route segment, the length
of the route and estimated time required to traverse the route segment
and optional RouteManeuvers associated with the end of the route
segment.

`RouteSegment </sdk/apps/qml/QtLocation/RouteSegment/>`__ instances can
be thought of as edges on a routing graph, with
`RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__ instances as
optional labels attached to the vertices of the graph.

The primary means of acquiring Route objects is via Routes via
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.

Example
-------

The following QML snippet demonstrates how to print information about a
route segment:

.. code:: qml

    import QtQuick 2.0
    import QtLocation 5.3
    Text {
        text: "Segment distance " + routeSegment.distance + " meters, " + routeSegment.path.length + " points."
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ distance : real                                                 |
+--------------------------------------------------------------------------+

Read-only property which holds the distance covered by this segment of
the route, in meters.

| 

+--------------------------------------------------------------------------+
|        \ maneuver :                                                      |
| `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__              |
+--------------------------------------------------------------------------+

Read-only property which holds the maneuver for this route segment.

Will return invalid maneuver if no information has been attached to the
endpoint of this route segment.

| 

+--------------------------------------------------------------------------+
|        \ path : QJSValue                                                 |
+--------------------------------------------------------------------------+

Read-only property which holds the geographical coordinates of this
segment. Coordinates are listed in the order in which they would be
traversed by someone traveling along this segment of the route.

To access individual segments you can use standard list accessors:
'path.length' indicates the number of objects and 'path[index starting
from zero]' gives the actual object.

**See also** QtPositioning::coordinate.

| 

+--------------------------------------------------------------------------+
|        \ travelTime : int                                                |
+--------------------------------------------------------------------------+

Read-only property which holds the estimated amount of time it will take
to traverse this segment, in seconds.

| 
