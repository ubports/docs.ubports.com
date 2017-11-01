

.. rubric:: Overview
   :name: overview

The Places API allows users to discover places of interest and view
details about them, such as address and contact information. Some places
may have additional content associated with them, such as images and
reviews. The Places API also facilitates management of places and
categories, allowing users to save and remove them.

.. rubric:: Introductory Concepts
   :name: introductory-concepts

.. rubric:: Plugin
   :name: plugin

A `Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ is an
abstraction for a backend. One
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ might
access places from a REST server while another may access places from a
local database. The following instantiates a
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ object
by providing a name of "nokia". The
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ name
identifies which backend to choose from. Plugins may also be provided
with a set of
`parameters </sdk/apps/qml/QtLocation/PluginParameter/>`__, which
essentially takes the form of a set of key-value pairs. The
`parameters </sdk/apps/qml/QtLocation/PluginParameter/>`__ that can be
specified vary among the different
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__
backends. For documentation on the possible
`parameters </sdk/apps/qml/QtLocation/PluginParameter/>`__ and nuances
of each
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__, see
the `Plugin
References </sdk/apps/qml/QtLocation/qtlocation-index#plugin-references-and-parameters>`__.

.. code:: qml

    Plugin {
        id: myPlugin
        name: "nokia"
        //specify plugin parameters as necessary
        //PluginParameter {...}
        //PluginParameter {...}
        //...
    }

**Note:** The Nokia plugin must be supplied with some mandatory
parameters as outlined in the `Nokia
Plugin </sdk/apps/qml/QtLocation/location-plugin-nokia#mandatory-parameters>`__
documentation.

.. rubric:: Models, Views and Delegates
   :name: models-views-and-delegates

The QML Places API is built around the notion of models, views and
delegates.

+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Model**      | A model holds data items and maintains their structure. The model is also responsible for retrieving the items from a data source.                                                                                                                                                             |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **View**       | A view is a visual container that displays the data and manages how visual items are shown such as in a list or a grid. The view may also be responsible for navigating the data, for example, scrolling through the visual items during a flicking motion.                                    |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Delegate**   | A delegate defines how individual data elements should appear as visual items in the view. The models expose a set of data roles and the delegate uses them to construct a visual item. The delegate may also define behaviour such as an operation to invoke when a visual item is clicked.   |
+----------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The Common Use Cases section below demonstrates concrete examples of how
these concepts fit together.

.. rubric:: Common Use Cases
   :name: common-use-cases

.. rubric:: Searching for Places
   :name: searching-for-places

Searching is accomplished via the
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__. The
`plugin </sdk/apps/qml/QtLocation/PlaceSearchModel#plugin-prop>`__
property specifies which backend to perform search operations against.
Search parameters may be provided through properties such as the
`searchTerm </sdk/apps/qml/QtLocation/PlaceSearchModel#searchTerm-prop>`__
and
`searchArea </sdk/apps/qml/QtLocation/PlaceSearchModel#searchArea-prop>`__.
A search operation can then be started by invoking the
`update() </sdk/apps/qml/QtLocation/PlaceSearchModel#update-method>`__
method. For simplicity, the snippet below invokes
`update() </sdk/apps/qml/QtLocation/PlaceSearchModel#update-method>`__
once construction of the model as been completed, typically
`update() </sdk/apps/qml/QtLocation/PlaceSearchModel#update-method>`__
would be invoked in response to a user action such as a button click.
While the search operation is underway the
`PlaceSearchModel::status </sdk/apps/qml/QtLocation/PlaceSearchModel#status-prop>`__
property transitions into the ``Loading`` state and when successfully
completed moves into the ``Ready`` state.

.. code:: qml

    PlaceSearchModel {
        id: searchModel
        plugin: myPlugin
        searchTerm: "pizza"
        searchArea: QtPositioning.circle(startCoordinate);
        Component.onCompleted: update()
    }

.. rubric:: Display Search Results using a ListView
   :name: display-search-results-using-a-listview

A ListView can be used to show the search results found by the model. It
defines the visual region for where the results are shown, and in the
case below fills the entirety of its parent. The ListView has built in
behavior that enables the region to respond to flicking events and to
scroll appropriately.

In the snippet below, the search model has been assigned to the
ListView's model property. When the model is updated with new results,
the ListView is automatically updated to reflect the model's new data
items.

A simple delegate has been bound to the ListView's delegate property.
The `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__
exposes a set of
`roles </sdk/apps/qml/QtLocation/PlaceSearchModel#placesearchmodel-roles>`__
of which the *title* and *place* roles have been used below, these are
of type string and
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__
respectively. Essentially for each data item that should be visible in
the view, the view invokes the delegate to create a visual
representation of the item.

+--------------------------------------+--------------------------------------+
| .. code:: qml                        | |image0|                             |
|                                      |                                      |
|     ListView {                       |                                      |
|         anchors.fill: parent         |                                      |
|         model: searchModel           |                                      |
|         delegate: Component {        |                                      |
|             Column {                 |                                      |
|                 Text { text: title } |                                      |
|                 Text { text: place.l |                                      |
| ocation.address.text }               |                                      |
|             }                        |                                      |
|         }                            |                                      |
|         spacing: 10                  |                                      |
|     }                                |                                      |
+--------------------------------------+--------------------------------------+

**Note:** For simplicty's sake we have assumed that every search result
is of
`type </sdk/apps/qml/QtLocation/PlaceSearchModel#search-result-types>`__
``PlaceSearchResult`` and so always have access to the *place* role,
other search result types may not have a *place* role.

See the `Places List </sdk/apps/qml/QtLocation/places_list/>`__ example
for full source code.

.. rubric:: Display Search Results using a MapItemView
   :name: display-search-results-using-a-mapitemview

Instead of a ListView, the
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__ can be
used in conjunction with a
`MapItemView </sdk/apps/qml/QtLocation/MapItemView/>`__ to display
markers on a map. Firstly a `Map </sdk/apps/qml/QtLocation/Map/>`__ is
used to define the visual region occupied by the map, in this case it
fills the entirety of its parent. Other properties are specified such as
the `plugin </sdk/apps/qml/QtLocation/Map#plugin-prop>`__ providing the
maps, and the map's
`center </sdk/apps/qml/QtLocation/Map#center-prop>`__ and
`zoomLevel </sdk/apps/qml/QtLocation/Map#zoomLevel-prop>`__.

Inside the `Map </sdk/apps/qml/QtLocation/Map/>`__, a
`MapItemView </sdk/apps/qml/QtLocation/MapItemView/>`__ is declared,
where the `model </sdk/apps/qml/QtLocation/MapItemView#model-prop>`__
property has been set to the search model and a
`delegate </sdk/apps/qml/QtLocation/MapItemView#delegate-prop>`__
consisting of a
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ is used to
display a marker image. A marker is shown for every place that was found
by the search model. The delegate uses the *place* role to position the
marker.

+--------------------------------------+--------------------------------------+
| .. code:: qml                        | |image1|                             |
|                                      |                                      |
|     Map {                            |                                      |
|         id: map                      |                                      |
|         anchors.fill: parent         |                                      |
|         plugin: myPlugin;            |                                      |
|         center {                     |                                      |
|             latitude: -27.47         |                                      |
|             longitude: 153.025       |                                      |
|         }                            |                                      |
|         zoomLevel: 13                |                                      |
|         MapItemView {                |                                      |
|             model: searchModel       |                                      |
|             delegate: MapQuickItem { |                                      |
|                 coordinate: place.lo |                                      |
| cation.coordinate                    |                                      |
|                 anchorPoint.x: image |                                      |
| .width * 0.5                         |                                      |
|                 anchorPoint.y: image |                                      |
| .height                              |                                      |
|                 sourceItem: Image {  |                                      |
|                     id: image        |                                      |
|                     source: "marker. |                                      |
| png"                                 |                                      |
|                 }                    |                                      |
|             }                        |                                      |
|         }                            |                                      |
|     }                                |                                      |
+--------------------------------------+--------------------------------------+

**Note:** For simplicty's sake we have assumed that every search result
is of
`type </sdk/apps/qml/QtLocation/PlaceSearchModel#search-result-types>`__
``PlaceSearchResult`` and so always have access to the *place* role,
other search result types may not have a *place* role.

See the `Places Map </sdk/apps/qml/QtLocation/places_map/>`__ example
for full source code.

.. rubric:: Fetching Place Details
   :name: fetching-place-details

In order to save bandwidth, sometimes a backend will only return places
which are partially populated with details. This can be checked with the
`Place::detailsFetched </sdk/apps/qml/QtLocation/Place#detailsFetched-prop>`__
property which indicates whether all availalable details have been
fetched or not. If not, the
`Place::getDetails </sdk/apps/qml/QtLocation/Place#getDetails-method>`__\ ()
method can be invoked to fetch the remaining details.

.. code:: qml

    if (!place.detailsFetched)
        place.getDetails();

.. rubric:: Saving and Removing Places
   :name: saving-and-removing-places

Some backends may support saving and removing places. This can be done
by calling the
`Place::save </sdk/apps/qml/QtLocation/Place#save-method>`__\ () and
`Place::remove </sdk/apps/qml/QtLocation/Place#remove-method>`__\ ()
methods respectively. Note that in order to save a
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__, a
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ must be
assigned to specify which backend we are saving to. The
`status </sdk/apps/qml/QtLocation/Place#status-prop>`__ property will
transition into the ``Saving`` state while the save operation is
happening and on successful completion will move to the ``Ready`` state.
The following snippet shows how to save and remove a place using
javascript.

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

.. rubric:: Learn More
   :name: learn-more

The above snippets only exhibit a small subset of Places functionality.
Refer to the `Places
Types </sdk/apps/qml/QtLocation/location-places-qml#places-types>`__
shown below for richer content such as
`images </sdk/apps/qml/QtLocation/ImageModel/>`__,
`reviews </sdk/apps/qml/QtLocation/ReviewModel/>`__ etc, as well as more
indepth descriptions and explanations.

See also the `Places (QML) </sdk/apps/qml/QtLocation/places/>`__ example
for a more comprehensive demonstration on how to use the API.

.. rubric:: Places Types
   :name: places-types

.. rubric:: Data Types
   :name: data-types

+--------------------------------------+--------------------------------------+
| `Category </sdk/apps/qml/QtLocation/ | Type represents a category that a    |
| Category/>`__                        | Place can be associated with         |
+--------------------------------------+--------------------------------------+
| `ContactDetail </sdk/apps/qml/QtLoca | Type holds a contact detail such as  |
| tion/ContactDetail/>`__              | a phone number or a website address  |
+--------------------------------------+--------------------------------------+
| `ContactDetails </sdk/apps/qml/QtLoc | Type holds contact details for a     |
| ation/ContactDetails/>`__            | Place                                |
+--------------------------------------+--------------------------------------+
| `ExtendedAttributes </sdk/apps/qml/Q | Type holds additional data about a   |
| tLocation/ExtendedAttributes/>`__    | Place                                |
+--------------------------------------+--------------------------------------+
| `Icon </sdk/apps/qml/QtLocation/Icon | Type represents an icon image source |
| />`__                                | which can have multiple sizes        |
+--------------------------------------+--------------------------------------+
| `Place </sdk/apps/qml/QtLocation/Pla | Type represents a location that is a |
| ce/>`__                              | position of interest                 |
+--------------------------------------+--------------------------------------+
| `PlaceAttribute </sdk/apps/qml/QtLoc | Type holds generic place attribute   |
| ation/PlaceAttribute/>`__            | information                          |
+--------------------------------------+--------------------------------------+
| `Ratings </sdk/apps/qml/QtLocation/R | Type holds place rating information  |
| atings/>`__                          |                                      |
+--------------------------------------+--------------------------------------+
| `Supplier </sdk/apps/qml/QtLocation/ | Holds data regarding the supplier of |
| Supplier/>`__                        | a place, a place's image, review, or |
|                                      | editorial                            |
+--------------------------------------+--------------------------------------+
| `User </sdk/apps/qml/QtLocation/User | Type identifies a user who           |
| />`__                                | contributed a particular Place       |
|                                      | content item                         |
+--------------------------------------+--------------------------------------+

.. rubric:: Models
   :name: models

+--------------------------------------+--------------------------------------+
| `CategoryModel </sdk/apps/qml/QtLoca | Type provides a model of the         |
| tion/CategoryModel/>`__              | categories supported by a Plugin     |
+--------------------------------------+--------------------------------------+
| `EditorialModel </sdk/apps/qml/QtLoc | Type provides a model of place       |
| ation/EditorialModel/>`__            | editorials                           |
+--------------------------------------+--------------------------------------+
| `ImageModel </sdk/apps/qml/QtLocatio | Type provides a model of place       |
| n/ImageModel/>`__                    | images                               |
+--------------------------------------+--------------------------------------+
| `PlaceSearchModel </sdk/apps/qml/QtL | Provides access to place search      |
| ocation/PlaceSearchModel/>`__        | results                              |
+--------------------------------------+--------------------------------------+
| `PlaceSearchSuggestionModel </sdk/ap | Provides access to search term       |
| ps/qml/QtLocation/PlaceSearchSuggest | suggestions                          |
| ionModel/>`__                        |                                      |
+--------------------------------------+--------------------------------------+
| `ReviewModel </sdk/apps/qml/QtLocati | Provides access to reviews of a      |
| on/ReviewModel/>`__                  | Place                                |
+--------------------------------------+--------------------------------------+

.. |image0| image:: /media/sdk/apps/qml/location-places-qml/images/places-list.png
.. |image1| image:: /media/sdk/apps/qml/location-places-qml/images/places-map.jpg

