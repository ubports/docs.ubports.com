.. _sdk_qtlocation_routesegment:

QtLocation RouteSegment
=======================

The RouteSegment type represents a segment of a Route.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`distance <sdk_qtlocation_routesegment_distance>` : real
-  :ref:`maneuver <sdk_qtlocation_routesegment_maneuver>` : RouteManeuver
-  :ref:`path <sdk_qtlocation_routesegment_path>` : QJSValue
-  :ref:`travelTime <sdk_qtlocation_routesegment_travelTime>` : int

Detailed Description
--------------------

A :ref:`RouteSegment <sdk_qtlocation_routesegment>` instance has information about the physical layout of the route segment, the length of the route and estimated time required to traverse the route segment and optional RouteManeuvers associated with the end of the route segment.

:ref:`RouteSegment <sdk_qtlocation_routesegment>` instances can be thought of as edges on a routing graph, with :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>` instances as optional labels attached to the vertices of the graph.

The primary means of acquiring Route objects is via Routes via :ref:`RouteModel <sdk_qtlocation_routemodel>`.

Example
-------

The following QML snippet demonstrates how to print information about a route segment:

.. code:: qml

    import QtQuick 2.0
    import QtLocation 5.3
    Text {
        text: "Segment distance " + routeSegment.distance + " meters, " + routeSegment.path.length + " points."
    }

Property Documentation
----------------------

.. _sdk_qtlocation_routesegment_distance:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| distance : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Read-only property which holds the distance covered by this segment of the route, in meters.

.. _sdk_qtlocation_routesegment_maneuver:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maneuver : :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Read-only property which holds the maneuver for this route segment.

Will return invalid maneuver if no information has been attached to the endpoint of this route segment.

.. _sdk_qtlocation_routesegment_path:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| path : QJSValue                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Read-only property which holds the geographical coordinates of this segment. Coordinates are listed in the order in which they would be traversed by someone traveling along this segment of the route.

To access individual segments you can use standard list accessors: 'path.length' indicates the number of objects and 'path[index starting from zero]' gives the actual object.

**See also** QtPositioning::coordinate.

.. _sdk_qtlocation_routesegment_travelTime:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| travelTime : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Read-only property which holds the estimated amount of time it will take to traverse this segment, in seconds.

