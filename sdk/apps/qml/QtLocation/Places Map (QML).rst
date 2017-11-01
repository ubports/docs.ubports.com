

|image0|

To write a QML application that will show places on a map, we start by
making the following import declarations.

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3

Instantiate a
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__
instance. The
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ is
effectively the backend from where places are sourced from. Because the
``nokia`` plugin has been specified, some mandatory parameters need to
be filled in, see the `Nokia
Plugin </sdk/apps/qml/QtLocation/location-plugin-nokia#mandatory-parameters>`__
documentation for details:

.. code:: qml

    Plugin {
        id: myPlugin
        name: "nokia"
        //specify plugin parameters if necessary
        //PluginParameter {...}
        //PluginParameter {...}
        //...
    }

Next we instantiate a
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__ which
we can use to specify search parameters and perform a places search
operation. For illustrative purposes,
`update() </sdk/apps/qml/QtLocation/PlaceSearchModel#update-method>`__
is invoked once construction of the model is complete. Typically
`update() </sdk/apps/qml/QtLocation/PlaceSearchModel#update-method>`__
would be invoked in response to a user action such as a button click.

.. code:: qml

    PlaceSearchModel {
        id: searchModel
        plugin: myPlugin
        searchTerm: "Pizza"
        //Brisbane
        searchArea: QtPositioning.circle(QtPositioning.coordinate(-27.46778, 153.02778))
        Component.onCompleted: update()
    }

The map is displayed by using the
`Map </sdk/apps/qml/QtLocation/Map/>`__ type and inside we declare the
`MapItemView </sdk/apps/qml/QtLocation/MapItemView/>`__ and supply the
search model and a delegate. An inline delegate has been used and we
have assumed that every search result is of
`type </sdk/apps/qml/QtLocation/PlaceSearchModel#search-result-types>`__
``PlaceSerachesult``. Consequently it is assumed that we always have
access to the *place*
`role </sdk/apps/qml/QtLocation/PlaceSearchModel#placesearchmodel-roles>`__,
other search result types may not have a *place*
`role </sdk/apps/qml/QtLocation/PlaceSearchModel#placesearchmodel-roles>`__.

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

.. |image0| image:: /media/sdk/apps/qml/qtlocation-places-map-example/images/places-map.jpg

