.. _sdk_qtlocation_places_map_(qml):

QtLocation Places Map (QML)
===========================



To write a QML application that will show places on a map, we start by making the following import declarations.

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3

Instantiate a `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  instance. The `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  is effectively the backend from where places are sourced from. Because the ``nokia`` plugin has been specified, some mandatory parameters need to be filled in, see the `Nokia Plugin </sdk/apps/qml/QtLocation/location-plugin-nokia/#mandatory-parameters>`_  documentation for details:

.. code:: qml

    Plugin {
        id: myPlugin
        name: "nokia"
        //specify plugin parameters if necessary
        //PluginParameter {...}
        //PluginParameter {...}
        //...
    }

Next we instantiate a :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` which we can use to specify search parameters and perform a places search operation. For illustrative purposes, :ref:`update() <sdk_qtlocation_placesearchmodel_update>` is invoked once construction of the model is complete. Typically :ref:`update() <sdk_qtlocation_placesearchmodel_update>` would be invoked in response to a user action such as a button click.

.. code:: qml

    PlaceSearchModel {
        id: searchModel
        plugin: myPlugin
        searchTerm: "Pizza"
        //Brisbane
        searchArea: QtPositioning.circle(QtPositioning.coordinate(-27.46778, 153.02778))
        Component.onCompleted: update()
    }

The map is displayed by using the :ref:`Map <sdk_qtlocation_map>` type and inside we declare the :ref:`MapItemView <sdk_qtlocation_mapitemview>` and supply the search model and a delegate. An inline delegate has been used and we have assumed that every search result is of :ref:`type <sdk_qtlocation_placesearchmodel_search>` ``PlaceSerachesult``. Consequently it is assumed that we always have access to the *place* :ref:`role <sdk_qtlocation_placesearchmodel_placesearchmodel>`, other search result types may not have a *place* :ref:`role <sdk_qtlocation_placesearchmodel_placesearchmodel>`.

.. code:: qml

    Map {
        id: map
        anchors.fill: parent
        plugin: myPlugin;
        center {
            latitude: -27.47
            longitude: 153.025
        }
        zoomLevel: 13
        MapItemView {
            model: searchModel
            delegate: MapQuickItem {
                coordinate: place.location.coordinate
                anchorPoint.x: image.width * 0.5
                anchorPoint.y: image.height
                sourceItem: Image {
                    id: image
                    source: "marker.png"
                }
            }
        }
    }

Files:

-  places\_map/places\_map.qml
-  places\_map/main.cpp
-  places\_map/places\_map.pro

