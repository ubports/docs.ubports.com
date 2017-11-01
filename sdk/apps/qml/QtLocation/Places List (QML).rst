

|image0|

To write a QML application that will show places in a list, we start by
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
        //specify plugin parameters as necessary
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
        searchTerm: "pizza"
        searchArea: QtPositioning.circle(startCoordinate);
        Component.onCompleted: update()
    }

Finally we instantiate a ListView to show the search results found by
the model. An inline delegate has been used and we have assumed that
every search result is of
`type </sdk/apps/qml/QtLocation/PlaceSearchModel#search-result-types>`__
``PlaceSearchesult``. Consequently it is assumed that we always have
access to the *place*
`role </sdk/apps/qml/QtLocation/PlaceSearchModel#placesearchmodel-roles>`__,
other search result types may not have a *place*
`role </sdk/apps/qml/QtLocation/PlaceSearchModel#placesearchmodel-roles>`__.

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

.. |image0| image:: /media/sdk/apps/qml/qtlocation-places-list-example/images/places-list.png

