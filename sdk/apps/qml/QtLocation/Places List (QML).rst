.. _sdk_qtlocation_places_list_(qml):

QtLocation Places List (QML)
============================



To write a QML application that will show places in a list, we start by making the following import declarations.

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3

Instantiate a `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  instance. The `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  is effectively the backend from where places are sourced from. Because the ``nokia`` plugin has been specified, some mandatory parameters need to be filled in, see the `Nokia Plugin </sdk/apps/qml/QtLocation/location-plugin-nokia/#mandatory-parameters>`_  documentation for details:

.. code:: qml

    Plugin {
        id: myPlugin
        name: "nokia"
        //specify plugin parameters as necessary
        //PluginParameter {...}
        //PluginParameter {...}
        //...
    }

Next we instantiate a :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` which we can use to specify search parameters and perform a places search operation. For illustrative purposes, :ref:`update() <sdk_qtlocation_placesearchmodel_update>` is invoked once construction of the model is complete. Typically :ref:`update() <sdk_qtlocation_placesearchmodel_update>` would be invoked in response to a user action such as a button click.

.. code:: qml

    PlaceSearchModel {
        id: searchModel
        plugin: myPlugin
        searchTerm: "pizza"
        searchArea: QtPositioning.circle(startCoordinate);
        Component.onCompleted: update()
    }

Finally we instantiate a ListView to show the search results found by the model. An inline delegate has been used and we have assumed that every search result is of :ref:`type <sdk_qtlocation_placesearchmodel_search>` ``PlaceSearchesult``. Consequently it is assumed that we always have access to the *place* :ref:`role <sdk_qtlocation_placesearchmodel_placesearchmodel>`, other search result types may not have a *place* :ref:`role <sdk_qtlocation_placesearchmodel_placesearchmodel>`.

.. code:: qml

    ListView {
        anchors.fill: parent
        model: searchModel
        delegate: Component {
            Column {
                Text { text: title }
                Text { text: place.location.address.text }
            }
        }
        spacing: 10
    }

Files:

-  places\_list/places\_list.qml
-  places\_list/main.cpp
-  places\_list/places\_list.pro

