.. _sdk_qtlocation_route:

QtLocation Route
================

The Route type represents one geographical route.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`bounds <sdk_qtlocation_route_bounds>` : georectangle
-  :ref:`distance <sdk_qtlocation_route_distance>` : real
-  :ref:`path <sdk_qtlocation_route_path>` : QJSValue
-  :ref:`segments <sdk_qtlocation_route_segments>` : list<RouteSegment>
-  :ref:`travelTime <sdk_qtlocation_route_travelTime>` : int

Detailed Description
--------------------

A Route type contains high level information about a route, such as the length the route, the estimated travel time for the route, and enough information to render a basic image of the route on a map.

The QGeoRoute object also contains a list of RouteSegment objects which describe subsections of the route in greater detail.

The primary means of acquiring Route objects is :ref:`RouteModel <sdk_qtlocation_routemodel>`.

Example
-------

This example shows how to display a route's maneuvers in a ListView:

.. code:: qml

    import QtQuick 2.0
    import QtLocation 5.3
    RouteModel {
        id: routeModel
        // model initialization
    }
    ListView {
        spacing: 10
        model: routeModel.status == RouteModel.Ready ? routeModel.get(0).segments : null
        visible: model ? true : false
        delegate: Row {
            width: parent.width
            spacing: 10
            property bool hasManeuver : modelData.maneuver && modelData.maneuver.valid
            visible: hasManeuver
            Text { text: (1 + index) + "." }
            Text {
                text: hasManeuver ? modelData.maneuver.instructionText : ""
            }
        }
    }

Property Documentation
----------------------

.. _sdk_qtlocation_route_bounds:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bounds : georectangle                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Read-only property which holds a bounding box which encompasses the entire route.

.. _sdk_qtlocation_route_distance:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| distance : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Read-only property which holds distance covered by this route, in meters.

.. _sdk_qtlocation_route_path:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| path : QJSValue                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Read-only property which holds the geographical coordinates of this route. Coordinates are listed in the order in which they would be traversed by someone traveling along this segment of the route.

To access individual segments you can use standard list accessors: 'path.length' indicates the number of objects and 'path[index starting from zero]' gives the actual object.

**See also** QtPositioning::coordinate.

.. _sdk_qtlocation_route_segments:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| segments : list<:ref:`RouteSegment <sdk_qtlocation_routesegment>`>                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Read-only property which holds the list of :ref:`RouteSegment <sdk_qtlocation_routesegment>` objects of this route.

To access individual segments you can use standard list accessors: 'segments.length' indicates the number of objects and 'segments[index starting from zero]' gives the actual objects.

**See also** :ref:`RouteSegment <sdk_qtlocation_routesegment>`.

.. _sdk_qtlocation_route_travelTime:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| travelTime : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Read-only property which holds the estimated amount of time it will take to traverse this route, in seconds.

