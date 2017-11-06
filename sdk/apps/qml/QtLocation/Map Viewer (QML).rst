.. _sdk_qtlocation_map_viewer_(qml):

QtLocation Map Viewer (QML)
===========================


This is a large example covering many basic uses of maps, positioning, and navigation services in Qt Location. This page is divided into sections covering each of these areas of functionality with snippets from the code.

The Map Viewer example can work with any of the available geo services plugins. However, some plugins may require additional :ref:`plugin parameters <sdk_qtlocation_pluginparameter>` in order to function correctly. :ref:`Plugin parameters <sdk_qtlocation_pluginparameter>` can be passed on the command line using the ``--plugin`` argument, which takes the form:

.. code:: cpp

    --plugin.<parameter name> <parameter value>

Refer to the documentation for each of the geo services plugins for details on what plugin parameters they support. The Nokia services plugin supplied with Qt requires an *app\_id* and *token* pair. See "`Qt Location Nokia Plugin </sdk/apps/qml/QtLocation/location-plugin-nokia/>`_ " for details.

QML types shown in this example:

-  Displaying a map

   -  :ref:`Map <sdk_qtlocation_map>`
   -  :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`
   -  coordinate

-  Finding an address

   -  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`
   -  :ref:`MapItemView <sdk_qtlocation_mapitemview>`
   -  :ref:`MapCircle <sdk_qtlocation_mapcircle>`

-  Directions and travel routes

   -  :ref:`RouteModel <sdk_qtlocation_routemodel>`
   -  :ref:`MapRoute <sdk_qtlocation_maproute>`

Drawing a map on-screen is accomplished using the Map type, as shown below.

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
    center {
        latitude: -27.5796
        longitude: 153.1003
    }
    }

In this example, we give the map an initial center coordinate with a set latitude and longitude. We also set the initial zoom level to 50% (halfway between the maximum and minimum).

The calls to "pinch" and "flick" are used to enable gestures on the map. The flick gesture is also sometimes known as "kinetic panning", and provides a more intuitive feel for panning the map both on touch screens and with a mouse.

As we do not specify a plugin for supplying map data, the platform default will be used. This is typically the "nokia" plugin, which provides data from Nokia services. Additional licensing conditions do apply to the use of this data, please see the documentation for further details.

To locate a certain address or place on the map uses a process called geocoding. In order to perform a geocode operation, we first need to adjust our Map object to be able to receive the result.

Receiving results of geocoding is done through a :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`, which is typically instantiated as a property of the Map component:

.. code:: qml

        property GeocodeModel geocodeModel: GeocodeModel {
        }

Then, to display the contents of the :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` we use a :ref:`MapItemView <sdk_qtlocation_mapitemview>`:

.. code:: qml

        MapItemView {
            model: geocodeModel
            delegate: pointDelegate
        }

:ref:`MapItemView <sdk_qtlocation_mapitemview>` uses an object called a "delegate" to act as a template for the items it creates. This can contain any map object desired, but in this case we show a :ref:`MapCircle <sdk_qtlocation_mapcircle>`:

.. code:: qml

        Component {
            id: pointDelegate
            MapCircle {
                radius: 1000
                color: circleMouseArea.containsMouse ? "lime" : "red"
                opacity: 0.6
                center: locationData.coordinate
            }
        }

With these three objects, we have enough to receive Geocode responses and display them on our Map. The final piece is to send the actual Geocode request.

In this example, we have a utility component called Dialog which we use to display the user interface requesting geocoding parameters. You can create a similar component yourself using Dialog.qml in this example as a reference, or drive the process using any other UI you wish.

To send a geocode request, first we create an Address object, and fill it in with the desired parameters. Then we set "map.geocodeModel.query" to the filled in Address, and call update() on the :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.

.. code:: qml

        InputDialog {
            id: geocodeDialog
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
        }

Similar to the :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`, Qt Location also features the :ref:`RouteModel <sdk_qtlocation_routemodel>` type, which allows information about routes (for example driving directions) between two or more points, to be received and used with a Map.

Here again, we instantiate the :ref:`RouteModel <sdk_qtlocation_routemodel>` as a property of our Map:

.. code:: qml

        property RouteQuery routeQuery: RouteQuery {}
        property RouteModel routeModel: RouteModel {
            plugin : map.plugin
            query: routeQuery
        }

To display the contents of a model to the user, we need a view. Once again we will use a :ref:`MapItemView <sdk_qtlocation_mapitemview>`, to display the Routes as objects on the Map:

.. code:: qml

        MapItemView {
            model: routeModel
            delegate: routeDelegate
            autoFitViewport: true
        }

To act as a template for the objects we wish the view to create, we create a delegate component:

.. code:: qml

        Component {
            id: routeDelegate
            MapRoute {
                route: routeData
                line.color: routeMouseArea.containsMouse ? "lime" : "red"
                line.width: 5
                smooth: true
                opacity: 0.8
        }

With the model, view and delegate now complete, the only missing component is some kind of control over the model to begin the Route request process. In the simplest case, we can fill out a Route request using two already available coordinates, which we store inside the RouteDialog component:

.. code:: qml

        RouteDialog {
            id: routeDialog
            property variant startCoordinate
            property variant endCoordinate
        }

In the next snippet, we show how to set up the request object and instruct the model to update. We also instruct the map to center on the start coordinate for our routing request.

.. code:: qml

            function calculateRoute() {
                // clear away any old data in the query
                map.routeQuery.clearWaypoints();
                // add the start and end coords as waypoints on the route
                map.routeQuery.addWaypoint(startCoordinate)
                map.routeQuery.addWaypoint(endCoordinate)
                map.routeQuery.travelModes = routeDialog.travelMode
                map.routeQuery.routeOptimizations = routeDialog.routeOptimization
                map.routeModel.update();
                // center the map on the start coord
                map.center = startCoordinate;

This is all that is required to display a Route on the Map. However, it is also useful to be able to retrieve the written directions and explanation of the travel route. In the example, these are displayed in the pull-out on the left-hand side of the map. To create this pull-out's contents, we use a standard ListModel and ListView pair. The data in the ListModel is built from the routeModel's output:

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

Inside the :ref:`RouteModel <sdk_qtlocation_routemodel>`, we add an :ref:`onStatusChanged <sdk_qtlocation_routemodel_status>` handler, which calls the ``update()`` function we defined on the model:

.. code:: qml

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

Files:

-  mapviewer/mapviewer.qml
-  mapviewer/qmlmapviewerwrapper.cpp
-  mapviewer/content/dialogs/Message.qml
-  mapviewer/content/dialogs/RouteDialog.qml
-  mapviewer/content/map/3dItem.qml
-  mapviewer/content/map/CircleItem.qml
-  mapviewer/content/map/ImageItem.qml
-  mapviewer/content/map/MapComponent.qml
-  mapviewer/content/map/Marker.qml
-  mapviewer/content/map/MiniMap.qml
-  mapviewer/content/map/PolygonItem.qml
-  mapviewer/content/map/PolylineItem.qml
-  mapviewer/content/map/RectangleItem.qml
-  mapviewer/content/map/VideoItem.qml
-  mapviewer/mapviewer.pro
-  mapviewer/mapviewerwrapper.qrc

