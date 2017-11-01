The Route type represents one geographical route.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`bounds </sdk/apps/qml/QtLocation/Route#bounds-prop>`__**** :
   georectangle
-  ****`distance </sdk/apps/qml/QtLocation/Route#distance-prop>`__**** :
   real
-  ****`path </sdk/apps/qml/QtLocation/Route#path-prop>`__**** :
   QJSValue
-  ****`segments </sdk/apps/qml/QtLocation/Route#segments-prop>`__**** :
   list<RouteSegment>
-  ****`travelTime </sdk/apps/qml/QtLocation/Route#travelTime-prop>`__****
   : int

Detailed Description
--------------------

A Route type contains high level information about a route, such as the
length the route, the estimated travel time for the route, and enough
information to render a basic image of the route on a map.

The QGeoRoute object also contains a list of RouteSegment objects which
describe subsections of the route in greater detail.

The primary means of acquiring Route objects is
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.

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

+--------------------------------------------------------------------------+
|        \ bounds : georectangle                                           |
+--------------------------------------------------------------------------+

Read-only property which holds a bounding box which encompasses the
entire route.

| 

+--------------------------------------------------------------------------+
|        \ distance : real                                                 |
+--------------------------------------------------------------------------+

Read-only property which holds distance covered by this route, in
meters.

| 

+--------------------------------------------------------------------------+
|        \ path : QJSValue                                                 |
+--------------------------------------------------------------------------+

Read-only property which holds the geographical coordinates of this
route. Coordinates are listed in the order in which they would be
traversed by someone traveling along this segment of the route.

To access individual segments you can use standard list accessors:
'path.length' indicates the number of objects and 'path[index starting
from zero]' gives the actual object.

**See also** QtPositioning::coordinate.

| 

+--------------------------------------------------------------------------+
|        \ segments :                                                      |
| list<`RouteSegment </sdk/apps/qml/QtLocation/RouteSegment/>`__>          |
+--------------------------------------------------------------------------+

Read-only property which holds the list of
`RouteSegment </sdk/apps/qml/QtLocation/RouteSegment/>`__ objects of
this route.

To access individual segments you can use standard list accessors:
'segments.length' indicates the number of objects and 'segments[index
starting from zero]' gives the actual objects.

**See also** `RouteSegment </sdk/apps/qml/QtLocation/RouteSegment/>`__.

| 

+--------------------------------------------------------------------------+
|        \ travelTime : int                                                |
+--------------------------------------------------------------------------+

Read-only property which holds the estimated amount of time it will take
to traverse this route, in seconds.

| 
