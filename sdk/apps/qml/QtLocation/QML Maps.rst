.. _sdk_qtlocation_qml_maps:

QtLocation QML Maps
===================



The :ref:`Map <sdk_qtlocation_map>` type allows the display of a map and placing objects within the map. Various points of interest can be defined and added to the map for display. Also the :ref:`Map <sdk_qtlocation_map>` has features to control how the map is displayed. With the Map item you can center the map, zoom, pinch and make the item flickable.

The places to be added to the map are `MapItems </sdk/apps/qml/QtLocation/location-maps-qml/#putting-objects-on-a-map-map-overlay-objects>`_ . The item's position is defined by a coordinate which includes latitude, longitude and altitude. The item is then displayed automatically after it is added to the Map. `MapItems </sdk/apps/qml/QtLocation/location-maps-qml/#putting-objects-on-a-map-map-overlay-objects>`_  or :ref:`Map <sdk_qtlocation_map>`.

All position APIs are part of the QtPositioning module. The basic piece of position information is the coordinate. A coordinate encapsulates data for the latitude, longitude and altitude of the location. Altitude is in meters. It also has a method to determine distance to another coordinate. The coordinate type may also be held within a Location element, this will also have information on a bounding box size to determine sufficient proximity to the location and a location address.

Here is an example of a client that uses a position source to center a :ref:`map <sdk_qtlocation_map>` on the current position:

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

`Geocoding <http://en.wikipedia.org/wiki/Geocoding>`_  is the derivation of geographical coordinates (latitude and longitude) from other geographical references to the locations. For example, this can be a street address. Reverse geocoding is also possible with a street address being used to determine a geographical coordinate. Geocoding is performed by using the GeoCodeModel type.

The following code examples are a small part of the ``map`` component in the `Map Viewer (QML) </sdk/apps/qml/QtLocation/mapviewer/>`_  example. The snippets demonstrate the declaration of the :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` component.

In the snippet we see that the ``geocodeModel`` property contains the plugin and two signal handlers. One for changes in status (``onStatusChanged`` ) and the other to update the centering of the Map object (``onLocationsChanged`` ).

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

These geocoding features are called from a higher level piece of code. In this snippet we see an ``onGoButtonClicked`` signal handler that extracts the address from the user interface and then creates a query for the :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` to process and determine the geographical coordinates.

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

A very important function of the :ref:`Map <sdk_qtlocation_map>` type is navigation from one place to a destination with possible waypoints along the route. The route will be divided up into a series of segments. At the end of each segment is a vertex called a *maneuver*. The *segments* contain information about the time and distance to the end of the segment. The *maneuvers* contain information about what to do next, how to get onto the next segment, if there is one. So a *maneuver* contains navigational information, for example "turn right now".

To find a suitable route we will need to use a :ref:`RouteQuery <sdk_qtlocation_routequery>` to define the selection criteria and adding any required waypoints. The :ref:`RouteModel <sdk_qtlocation_routemodel>` should return a list of :ref:`RouteSegment <sdk_qtlocation_routesegment>`\ s that defines the route to the destination complete with navigation advice at the joins between segments, called :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`\ s

There are many options that you can add to the query to narrow the criteria. The :ref:`RouteQuery <sdk_qtlocation_routequery>` properties can include

+----------------------------------------------------------------------------------------+----------------------------------------------------------+
| :ref:`numberAlternativeRoutes <sdk_qtlocation_routequery_numberAlternativeRoutes>`   | The number of alternative routes                           |
+----------------------------------------------------------------------------------------+----------------------------------------------------------+
| :ref:`travelModes <sdk_qtlocation_routequery_travelModes>`                           | Travel modes                                               |
+----------------------------------------------------------------------------------------+----------------------------------------------------------+
| :ref:`routeOptimizations <sdk_qtlocation_routequery_routeOptimizations>`             | Required route optimizations                               |
+----------------------------------------------------------------------------------------+----------------------------------------------------------+
| :ref:`segmentDetail <sdk_qtlocation_routequery_segmentDetail>`                       | Level of detail in segments                                |
+----------------------------------------------------------------------------------------+----------------------------------------------------------+
| :ref:`maneuverDetail <sdk_qtlocation_routequery_maneuverDetail>`                     | Level of detail in maneuvers between segments              |
+----------------------------------------------------------------------------------------+----------------------------------------------------------+
| :ref:`waypoints <sdk_qtlocation_routequery_waypoints>`                               | A list of waypoints                                        |
+----------------------------------------------------------------------------------------+----------------------------------------------------------+
| :ref:`excludedAreas <sdk_qtlocation_routequery_excludedAreas>`                       | A list of excluded areas that the route must not cross     |
+----------------------------------------------------------------------------------------+----------------------------------------------------------+
| :ref:`featureTypes <sdk_qtlocation_routequery_featureTypes>`                         | Relevant map features, for example highway, ferry          |
+----------------------------------------------------------------------------------------+----------------------------------------------------------+

In the following example a default :ref:`RouteQuery <sdk_qtlocation_routequery>` is declared, later to be defined by some user input, and used in ``routeModel`` as the query. The ``routeInfoModel`` is a ListModel that can be updated using an ``update()`` function that we will look at later.

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

The user enters, via a dialog, some information such as the starting point of the route, some waypoints and the destination. All of these locations are waypoints so the locations from start to finish will be entered as a sequence of waypoints. Then other query properties can be set that may be specific to this trip.

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

The ``routeInfoModel`` ListModel is used to grab the results of the query and construct a suitable list for display. The ListModel ``routeInfoModel`` contains an ``update()`` function that loops through the segments extracting the segment length, instruction text and distance to the next instruction. The extracted data is formatted for display as it is retrieved.

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

For more information on the example see the `Map Viewer (QML) </sdk/apps/qml/QtLocation/mapviewer/>`_  example.

The :ref:`Map <sdk_qtlocation_map>` item also supports user interface interactions with the map using tactile and mouse gestures. That is features such as swiping to pan, pinching to zoom.

Enabling and configuring pinch and flickable is easy within the :ref:`Map <sdk_qtlocation_map>` type.

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

Zoom can also be controlled by other objects like sliders, as shown in the example, by implementing the ``onValueChanged`` handler to update the Map :ref:`zoomLevel <sdk_qtlocation_map_zoomLevel>`.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Map <sdk_qtlocation_map>`                                                                                                                           | Type displays a map                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapCircle <sdk_qtlocation_mapcircle>`                                                                                                               | Type displays a geographic circle on a Map                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`                                                                                                     | Type provides Map gesture interaction                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapItemView <sdk_qtlocation_mapitemview>`                                                                                                           | Used to populate Map from a model                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapPinchEvent <sdk_qtlocation_mappinchevent>`                                                                                                       | Type provides basic information about pinch event                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapPolygon <sdk_qtlocation_mappolygon>`                                                                                                             | Type displays a polygon on a Map                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapPolyline <sdk_qtlocation_mappolyline>`                                                                                                           | Type displays a polyline on a map                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>`                                                                                                         | Type displays an arbitrary Qt Quick object on a Map                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapRectangle <sdk_qtlocation_maprectangle>`                                                                                                         | Type displays a rectangle on a Map                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapRoute <sdk_qtlocation_maproute>`                                                                                                                 | Type displays a Route on a Map                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapType <sdk_qtlocation_maptype>`                                                                                                                   | Type holds information about a map type                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`                                                                                                         | Type provides support for searching operations related to geographic information                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Route <sdk_qtlocation_route>`                                                                                                                       | Type represents one geographical route                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`                                                                                                       | Type represents the information relevant to the point at which two RouteSegments meet                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`RouteModel <sdk_qtlocation_routemodel>`                                                                                                             | Type provides access to routes                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`RouteQuery <sdk_qtlocation_routequery>`                                                                                                             | Type is used to provide query parameters to a RouteModel                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`RouteSegment <sdk_qtlocation_routesegment>`                                                                                                         | Type represents a segment of a Route                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

The above snippets are taken from the `Map Viewer (QML) </sdk/apps/qml/QtLocation/mapviewer/>`_  example.

