

.. rubric:: Overview
   :name: overview

The `Map </sdk/apps/qml/QtLocation/Map/>`__ type allows the display of a
map and placing objects within the map. Various points of interest can
be defined and added to the map for display. Also the
`Map </sdk/apps/qml/QtLocation/Map/>`__ has features to control how the
map is displayed. With the Map item you can center the map, zoom, pinch
and make the item flickable.

The places to be added to the map are
`MapItems </sdk/apps/qml/QtLocation/location-maps-qml#putting-objects-on-a-map-map-overlay-objects>`__.
The item's position is defined by a coordinate which includes latitude,
longitude and altitude. The item is then displayed automatically after
it is added to the Map.
`MapItems </sdk/apps/qml/QtLocation/location-maps-qml#putting-objects-on-a-map-map-overlay-objects>`__
or `Map </sdk/apps/qml/QtLocation/Map/>`__.

.. rubric:: Position on map
   :name: position-on-map

All position APIs are part of the QtPositioning module. The basic piece
of position information is the coordinate. A coordinate encapsulates
data for the latitude, longitude and altitude of the location. Altitude
is in meters. It also has a method to determine distance to another
coordinate. The coordinate type may also be held within a Location
element, this will also have information on a bounding box size to
determine sufficient proximity to the location and a location address.

Here is an example of a client that uses a position source to center a
`map </sdk/apps/qml/QtLocation/Map/>`__ on the current position:

.. code:: cpp

    Rectangle {
        import QtPositioning 5.2
        import QtLocation 5.3
        ...
        map : Map {
            // initialize map
            ...
        }
        PositionSource {
            onPositionChanged: {
                // center the map on the current position
                map.center = position.coordinate
            }
        }
    }

.. rubric:: Geocoding
   :name: geocoding

`Geocoding <http://en.wikipedia.org/wiki/Geocoding>`__ is the derivation
of geographical coordinates (latitude and longitude) from other
geographical references to the locations. For example, this can be a
street address. Reverse geocoding is also possible with a street address
being used to determine a geographical coordinate. Geocoding is
performed by using the GeoCodeModel type.

The following code examples are a small part of the ``map`` component in
the `Map Viewer (QML) </sdk/apps/qml/QtLocation/mapviewer/>`__ example.
The snippets demonstrate the declaration of the
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ component.

In the snippet we see that the ``geocodeModel`` property contains the
plugin and two signal handlers. One for changes in status
(``onStatusChanged`` ) and the other to update the centering of the Map
object (``onLocationsChanged`` ).

.. code:: qml

        property GeocodeModel geocodeModel: GeocodeModel {
            plugin: map.plugin
            onStatusChanged: {
                if ((status == GeocodeModel.Ready) || (status == GeocodeModel.Error))
                    map.geocodeFinished()
            }
            onLocationsChanged:
            {
                if (count == 1) {
                    map.center.latitude = get(0).coordinate.latitude
                    map.center.longitude = get(0).coordinate.longitude
                }
            }
        }
        MapItemView {
            model: geocodeModel
            delegate: pointDelegate
        }

These geocoding features are called from a higher level piece of code.
In this snippet we see an ``onGoButtonClicked`` signal handler that
extracts the address from the user interface and then creates a query
for the `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ to
process and determine the geographical coordinates.

.. code:: qml

            Address {
                id: geocodeAddress
            }
            onGoButtonClicked: {
                // manage the UI state transitions
                page.state = ""
                messageDialog.state = ""
                // fill out the Address element
                geocodeAddress.street = dialogModel.get(0).inputText
                geocodeAddress.city = dialogModel.get(1).inputText
                geocodeAddress.state = dialogModel.get(2).inputText
                geocodeAddress.country = dialogModel.get(3).inputText
                geocodeAddress.postalCode = dialogModel.get(4).inputText
                // send the geocode request
                map.geocodeModel.query = geocodeAddress
                map.geocodeModel.update()
            }

.. rubric:: Navigation
   :name: navigation

A very important function of the `Map </sdk/apps/qml/QtLocation/Map/>`__
type is navigation from one place to a destination with possible
waypoints along the route. The route will be divided up into a series of
segments. At the end of each segment is a vertex called a *maneuver*.
The *segments* contain information about the time and distance to the
end of the segment. The *maneuvers* contain information about what to do
next, how to get onto the next segment, if there is one. So a *maneuver*
contains navigational information, for example "turn right now".

To find a suitable route we will need to use a
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ to define the
selection criteria and adding any required waypoints. The
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__ should return a
list of `RouteSegment </sdk/apps/qml/QtLocation/RouteSegment/>`__\ s
that defines the route to the destination complete with navigation
advice at the joins between segments, called
`RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__\ s

There are many options that you can add to the query to narrow the
criteria. The `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__
properties can include

+--------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| `numberAlternativeRoutes </sdk/apps/qml/QtLocation/RouteQuery#numberAlternativeRoutes-prop>`__   | The number of alternative routes                         |
+--------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| `travelModes </sdk/apps/qml/QtLocation/RouteQuery#travelModes-prop>`__                           | Travel modes                                             |
+--------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| `routeOptimizations </sdk/apps/qml/QtLocation/RouteQuery#routeOptimizations-prop>`__             | Required route optimizations                             |
+--------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| `segmentDetail </sdk/apps/qml/QtLocation/RouteQuery#segmentDetail-prop>`__                       | Level of detail in segments                              |
+--------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| `maneuverDetail </sdk/apps/qml/QtLocation/RouteQuery#maneuverDetail-prop>`__                     | Level of detail in maneuvers between segments            |
+--------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| `waypoints </sdk/apps/qml/QtLocation/RouteQuery#waypoints-prop>`__                               | A list of waypoints                                      |
+--------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| `excludedAreas </sdk/apps/qml/QtLocation/RouteQuery#excludedAreas-prop>`__                       | A list of excluded areas that the route must not cross   |
+--------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| `featureTypes </sdk/apps/qml/QtLocation/RouteQuery#featureTypes-prop>`__                         | Relevant map features, for example highway, ferry        |
+--------------------------------------------------------------------------------------------------+----------------------------------------------------------+

In the following example a default
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ is declared, later
to be defined by some user input, and used in ``routeModel`` as the
query. The ``routeInfoModel`` is a ListModel that can be updated using
an ``update()`` function that we will look at later.

.. code:: qml

        property RouteQuery routeQuery: RouteQuery {}
        property RouteModel routeModel: RouteModel {
            plugin : map.plugin
            query: routeQuery
            onStatusChanged: {
                if (status == RouteModel.Ready) {
                    switch (count) {
                    case 0:
                        clearAll() // technically not an error
                        map.routeError()
                        break
                    case 1:
                        routeInfoModel.update()
                        break
                    }
                } else if (status == RouteModel.Error) {
                    clearAll()
                    map.routeError()
                }
            }
            function clearAll() {
                routeInfoModel.update()
            }
        }

The user enters, via a dialog, some information such as the starting
point of the route, some waypoints and the destination. All of these
locations are waypoints so the locations from start to finish will be
entered as a sequence of waypoints. Then other query properties can be
set that may be specific to this trip.

.. code:: qml

            function calculateRoute() {
                // clear away any old data in the query
                map.routeQuery.clearWaypoints();
                // add the start and end coords as waypoints on the route
                map.routeQuery.addWaypoint(startCoordinate)
                map.routeQuery.addWaypoint(endCoordinate)
                map.routeQuery.travelModes = routeDialog.travelMode
                map.routeQuery.routeOptimizations = routeDialog.routeOptimization
                for (var i=0; i<9; i++) {
                    map.routeQuery.setFeatureWeight(i, 0)
                }
                for (var i=0; i<routeDialog.features.length; i++) {
                    map.routeQuery.setFeatureWeight(routeDialog.features[i], RouteQuery.AvoidFeatureWeight)
                }
                map.routeModel.update();
                // center the map on the start coord
                map.center = startCoordinate;
        }

The ``routeInfoModel`` ListModel is used to grab the results of the
query and construct a suitable list for display. The ListModel
``routeInfoModel`` contains an ``update()`` function that loops through
the segments extracting the segment length, instruction text and
distance to the next instruction. The extracted data is formatted for
display as it is retrieved.

.. code:: qml

        ListModel {
            id: routeInfoModel
            property string travelTime
            property string distance
            function update() {
                clear()
                if (routeModel.count > 0) {
                    for (var i = 0; i < routeModel.get(0).segments.length; i++) {
                        append({
                            "instruction": routeModel.get(0).segments[i].maneuver.instructionText,
                            "distance": formatDistance(routeModel.get(0).segments[i].maneuver.distanceToNextInstruction)
                        });
                    }
                }
                travelTime = routeModel.count == 0 ? "" : formatTime(routeModel.get(0).travelTime)
                distance = routeModel.count == 0 ? "" : formatDistance(routeModel.get(0).distance)
            }
        }
        MapItemView {
            model: routeModel
            delegate: routeDelegate
            autoFitViewport: true
        }

For more information on the example see the `Map Viewer
(QML) </sdk/apps/qml/QtLocation/mapviewer/>`__ example.

.. rubric:: Zoom, Pinch and Flickable
   :name: zoom-pinch-and-flickable

The `Map </sdk/apps/qml/QtLocation/Map/>`__ item also supports user
interface interactions with the map using tactile and mouse gestures.
That is features such as swiping to pan, pinching to zoom.

Enabling and configuring pinch and flickable is easy within the
`Map </sdk/apps/qml/QtLocation/Map/>`__ type.

.. code:: qml

    Map {
        id: map
        zoomLevel: (maximumZoomLevel - minimumZoomLevel)/2
        center {
            latitude: -27.5796
            longitude: 153.1003
        }
        // Enable pinch gestures to zoom in and out
        gesture.flickDeceleration: 3000
        gesture.enabled: true
    }

Zoom can also be controlled by other objects like sliders, as shown in
the example, by implementing the ``onValueChanged`` handler to update
the Map `zoomLevel </sdk/apps/qml/QtLocation/Map#zoomLevel-prop>`__.

.. rubric:: Types
   :name: types

.. rubric:: Maps
   :name: maps

+--------------------------------------+--------------------------------------+
| `Map </sdk/apps/qml/QtLocation/Map/> | Type displays a map                  |
| `__                                  |                                      |
+--------------------------------------+--------------------------------------+
| `MapCircle </sdk/apps/qml/QtLocation | Type displays a geographic circle on |
| /MapCircle/>`__                      | a Map                                |
+--------------------------------------+--------------------------------------+
| `MapGestureArea </sdk/apps/qml/QtLoc | Type provides Map gesture            |
| ation/MapGestureArea/>`__            | interaction                          |
+--------------------------------------+--------------------------------------+
| `MapItemView </sdk/apps/qml/QtLocati | Used to populate Map from a model    |
| on/MapItemView/>`__                  |                                      |
+--------------------------------------+--------------------------------------+
| `MapPinchEvent </sdk/apps/qml/QtLoca | Type provides basic information      |
| tion/MapPinchEvent/>`__              | about pinch event                    |
+--------------------------------------+--------------------------------------+
| `MapPolygon </sdk/apps/qml/QtLocatio | Type displays a polygon on a Map     |
| n/MapPolygon/>`__                    |                                      |
+--------------------------------------+--------------------------------------+
| `MapPolyline </sdk/apps/qml/QtLocati | Type displays a polyline on a map    |
| on/MapPolyline/>`__                  |                                      |
+--------------------------------------+--------------------------------------+
| `MapQuickItem </sdk/apps/qml/QtLocat | Type displays an arbitrary Qt Quick  |
| ion/MapQuickItem/>`__                | object on a Map                      |
+--------------------------------------+--------------------------------------+
| `MapRectangle </sdk/apps/qml/QtLocat | Type displays a rectangle on a Map   |
| ion/MapRectangle/>`__                |                                      |
+--------------------------------------+--------------------------------------+
| `MapRoute </sdk/apps/qml/QtLocation/ | Type displays a Route on a Map       |
| MapRoute/>`__                        |                                      |
+--------------------------------------+--------------------------------------+
| `MapType </sdk/apps/qml/QtLocation/M | Type holds information about a map   |
| apType/>`__                          | type                                 |
+--------------------------------------+--------------------------------------+

.. rubric:: Geocoding
   :name: geocoding-1

+--------------------------------------+--------------------------------------+
| `GeocodeModel </sdk/apps/qml/QtLocat | Type provides support for searching  |
| ion/GeocodeModel/>`__                | operations related to geographic     |
|                                      | information                          |
+--------------------------------------+--------------------------------------+

.. rubric:: Routing
   :name: routing

+--------------------------------------+--------------------------------------+
| `Route </sdk/apps/qml/QtLocation/Rou | Type represents one geographical     |
| te/>`__                              | route                                |
+--------------------------------------+--------------------------------------+
| `RouteManeuver </sdk/apps/qml/QtLoca | Type represents the information      |
| tion/RouteManeuver/>`__              | relevant to the point at which two   |
|                                      | RouteSegments meet                   |
+--------------------------------------+--------------------------------------+
| `RouteModel </sdk/apps/qml/QtLocatio | Type provides access to routes       |
| n/RouteModel/>`__                    |                                      |
+--------------------------------------+--------------------------------------+
| `RouteQuery </sdk/apps/qml/QtLocatio | Type is used to provide query        |
| n/RouteQuery/>`__                    | parameters to a RouteModel           |
+--------------------------------------+--------------------------------------+
| `RouteSegment </sdk/apps/qml/QtLocat | Type represents a segment of a Route |
| ion/RouteSegment/>`__                |                                      |
+--------------------------------------+--------------------------------------+

.. rubric:: Example
   :name: example

The above snippets are taken from the `Map Viewer
(QML) </sdk/apps/qml/QtLocation/mapviewer/>`__ example.

