.. _sdk_qtlocation_qml_places_api:

QtLocation QML Places API
=========================



The Places API allows users to discover places of interest and view details about them, such as address and contact information. Some places may have additional content associated with them, such as images and reviews. The Places API also facilitates management of places and categories, allowing users to save and remove them.

A `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  is an abstraction for a backend. One `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  might access places from a REST server while another may access places from a local database. The following instantiates a `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  object by providing a name of "nokia". The `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  name identifies which backend to choose from. Plugins may also be provided with a set of :ref:`parameters <sdk_qtlocation_pluginparameter>`, which essentially takes the form of a set of key-value pairs. The :ref:`parameters <sdk_qtlocation_pluginparameter>` that can be specified vary among the different `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  backends. For documentation on the possible :ref:`parameters <sdk_qtlocation_pluginparameter>` and nuances of each `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ , see the `Plugin References </sdk/apps/qml/QtLocation/qtlocation-index/#plugin-references-and-parameters>`_ .

.. code:: qml

    Plugin {
        id: myPlugin
        name: "nokia"
        //specify plugin parameters as necessary
        //PluginParameter {...}
        //PluginParameter {...}
        //...
    }

**Note:** The Nokia plugin must be supplied with some mandatory parameters as outlined in the `Nokia Plugin </sdk/apps/qml/QtLocation/location-plugin-nokia/#mandatory-parameters>`_  documentation.

The QML Places API is built around the notion of models, views and delegates.

+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Model**      | A model holds data items and maintains their structure. The model is also responsible for retrieving the items from a data source.                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **View**       | A view is a visual container that displays the data and manages how visual items are shown such as in a list or a grid. The view may also be responsible for navigating the data, for example, scrolling through the visual items during a flicking motion.                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Delegate**   | A delegate defines how individual data elements should appear as visual items in the view. The models expose a set of data roles and the delegate uses them to construct a visual item. The delegate may also define behaviour such as an operation to invoke when a visual item is clicked.   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The Common Use Cases section below demonstrates concrete examples of how these concepts fit together.

Searching is accomplished via the :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`. The :ref:`plugin <sdk_qtlocation_placesearchmodel_plugin>` property specifies which backend to perform search operations against. Search parameters may be provided through properties such as the :ref:`searchTerm <sdk_qtlocation_placesearchmodel_searchTerm>` and :ref:`searchArea <sdk_qtlocation_placesearchmodel_searchArea>`. A search operation can then be started by invoking the :ref:`update() <sdk_qtlocation_placesearchmodel_update>` method. For simplicity, the snippet below invokes :ref:`update() <sdk_qtlocation_placesearchmodel_update>` once construction of the model as been completed, typically :ref:`update() <sdk_qtlocation_placesearchmodel_update>` would be invoked in response to a user action such as a button click. While the search operation is underway the :ref:`PlaceSearchModel::status <sdk_qtlocation_placesearchmodel_status>` property transitions into the ``Loading`` state and when successfully completed moves into the ``Ready`` state.

.. code:: qml

    PlaceSearchModel {
        id: searchModel
        plugin: myPlugin
        searchTerm: "pizza"
        searchArea: QtPositioning.circle(startCoordinate);
        Component.onCompleted: update()
    }

A ListView can be used to show the search results found by the model. It defines the visual region for where the results are shown, and in the case below fills the entirety of its parent. The ListView has built in behavior that enables the region to respond to flicking events and to scroll appropriately.

In the snippet below, the search model has been assigned to the ListView's model property. When the model is updated with new results, the ListView is automatically updated to reflect the model's new data items.

A simple delegate has been bound to the ListView's delegate property. The :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` exposes a set of :ref:`roles <sdk_qtlocation_placesearchmodel_placesearchmodel>` of which the *title* and *place* roles have been used below, these are of type string and `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_  respectively. Essentially for each data item that should be visible in the view, the view invokes the delegate to create a visual representation of the item.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|     ListView {                                                                                                                                         |                                                                                                                                                        |
|         anchors.fill: parent                                                                                                                           |                                                                                                                                                        |
|         model: searchModel                                                                                                                             |                                                                                                                                                        |
|         delegate: Component {                                                                                                                          |                                                                                                                                                        |
|             Column {                                                                                                                                   |                                                                                                                                                        |
|                 Text { text: title }                                                                                                                   |                                                                                                                                                        |
|                 Text { text: place.location.address.text }                                                                                             |                                                                                                                                                        |
|             }                                                                                                                                          |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|         spacing: 10                                                                                                                                    |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

**Note:** For simplicty's sake we have assumed that every search result is of :ref:`type <sdk_qtlocation_placesearchmodel_search>` ``PlaceSearchResult`` and so always have access to the *place* role, other search result types may not have a *place* role.

See the `Places List </sdk/apps/qml/QtLocation/places_list/>`_  example for full source code.

Instead of a ListView, the :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` can be used in conjunction with a :ref:`MapItemView <sdk_qtlocation_mapitemview>` to display markers on a map. Firstly a :ref:`Map <sdk_qtlocation_map>` is used to define the visual region occupied by the map, in this case it fills the entirety of its parent. Other properties are specified such as the :ref:`plugin <sdk_qtlocation_map_plugin>` providing the maps, and the map's :ref:`center <sdk_qtlocation_map_center>` and :ref:`zoomLevel <sdk_qtlocation_map_zoomLevel>`.

Inside the :ref:`Map <sdk_qtlocation_map>`, a :ref:`MapItemView <sdk_qtlocation_mapitemview>` is declared, where the :ref:`model <sdk_qtlocation_mapitemview_model>` property has been set to the search model and a :ref:`delegate <sdk_qtlocation_mapitemview_delegate>` consisting of a :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` is used to display a marker image. A marker is shown for every place that was found by the search model. The delegate uses the *place* role to position the marker.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|     Map {                                                                                                                                              |                                                                                                                                                        |
|         id: map                                                                                                                                        |                                                                                                                                                        |
|         anchors.fill: parent                                                                                                                           |                                                                                                                                                        |
|         plugin: myPlugin;                                                                                                                              |                                                                                                                                                        |
|         center {                                                                                                                                       |                                                                                                                                                        |
|             latitude: -27.47                                                                                                                           |                                                                                                                                                        |
|             longitude: 153.025                                                                                                                         |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|         zoomLevel: 13                                                                                                                                  |                                                                                                                                                        |
|         MapItemView {                                                                                                                                  |                                                                                                                                                        |
|             model: searchModel                                                                                                                         |                                                                                                                                                        |
|             delegate: MapQuickItem {                                                                                                                   |                                                                                                                                                        |
|                 coordinate: place.location.coordinate                                                                                                  |                                                                                                                                                        |
|                 anchorPoint.x: image.width * 0.5                                                                                                       |                                                                                                                                                        |
|                 anchorPoint.y: image.height                                                                                                            |                                                                                                                                                        |
|                 sourceItem: Image {                                                                                                                    |                                                                                                                                                        |
|                     id: image                                                                                                                          |                                                                                                                                                        |
|                     source: "marker.png"                                                                                                               |                                                                                                                                                        |
|                 }                                                                                                                                      |                                                                                                                                                        |
|             }                                                                                                                                          |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

**Note:** For simplicty's sake we have assumed that every search result is of :ref:`type <sdk_qtlocation_placesearchmodel_search>` ``PlaceSearchResult`` and so always have access to the *place* role, other search result types may not have a *place* role.

See the `Places Map </sdk/apps/qml/QtLocation/places_map/>`_  example for full source code.

In order to save bandwidth, sometimes a backend will only return places which are partially populated with details. This can be checked with the :ref:`Place::detailsFetched <sdk_qtlocation_place_detailsFetched>` property which indicates whether all availalable details have been fetched or not. If not, the :ref:`Place::getDetails <sdk_qtlocation_place_getDetails>`\ () method can be invoked to fetch the remaining details.

.. code:: qml

    if (!place.detailsFetched)
        place.getDetails();

Some backends may support saving and removing places. This can be done by calling the :ref:`Place::save <sdk_qtlocation_place_save>`\ () and :ref:`Place::remove <sdk_qtlocation_place_remove>`\ () methods respectively. Note that in order to save a `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ , a `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  must be assigned to specify which backend we are saving to. The :ref:`status <sdk_qtlocation_place_status>` property will transition into the ``Saving`` state while the save operation is happening and on successful completion will move to the ``Ready`` state. The following snippet shows how to save and remove a place using javascript.

.. code:: qml

    //creating and saving a place
    var place = Qt.createQmlObject('import QtLocation 5.3; Place { }', parent);
    place.plugin = myPlugin;
    place.name = "New York";
    place.location.coordinate.latitude = 40.7
    place.location.coordinate.longitude = -74.0
    place.save();
    //removing a place
    place.remove();

The above snippets only exhibit a small subset of Places functionality. Refer to the `Places Types </sdk/apps/qml/QtLocation/location-places-qml/#places-types>`_  shown below for richer content such as :ref:`images <sdk_qtlocation_imagemodel>`, :ref:`reviews <sdk_qtlocation_reviewmodel>` etc, as well as more indepth descriptions and explanations.

See also the `Places (QML) </sdk/apps/qml/QtLocation/places/>`_  example for a more comprehensive demonstration on how to use the API.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Category <sdk_qtlocation_category>`                                                                                                                 | Type represents a category that a Place can be associated with                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`ContactDetail <sdk_qtlocation_contactdetail>`                                                                                                       | Type holds a contact detail such as a phone number or a website address                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`ContactDetails <sdk_qtlocation_contactdetails>`                                                                                                     | Type holds contact details for a Place                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`ExtendedAttributes <sdk_qtlocation_extendedattributes>`                                                                                             | Type holds additional data about a Place                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Icon <sdk_qtlocation_icon>`                                                                                                                         | Type represents an icon image source which can have multiple sizes                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Place <sdk_qtlocation_place>`                                                                                                                       | Type represents a location that is a position of interest                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`PlaceAttribute <sdk_qtlocation_placeattribute>`                                                                                                     | Type holds generic place attribute information                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Ratings <sdk_qtlocation_ratings>`                                                                                                                   | Type holds place rating information                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Supplier <sdk_qtlocation_supplier>`                                                                                                                 | Holds data regarding the supplier of a place, a place's image, review, or editorial                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`User <sdk_qtlocation_user>`                                                                                                                         | Type identifies a user who contributed a particular Place content item                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`CategoryModel <sdk_qtlocation_categorymodel>`                                                                                                       | Type provides a model of the categories supported by a Plugin                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`EditorialModel <sdk_qtlocation_editorialmodel>`                                                                                                     | Type provides a model of place editorials                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`ImageModel <sdk_qtlocation_imagemodel>`                                                                                                             | Type provides a model of place images                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`                                                                                                 | Provides access to place search results                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`PlaceSearchSuggestionModel <sdk_qtlocation_placesearchsuggestionmodel>`                                                                             | Provides access to search term suggestions                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`ReviewModel <sdk_qtlocation_reviewmodel>`                                                                                                           | Provides access to reviews of a Place                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

