.. _sdk_qtlocation_qt_location_nokia_plugin:

QtLocation Qt Location Nokia Plugin
===================================



Included with Qt Location is a geo services plugin which accesses the relevant Nokia services provided by Nokia. The use of these services is governed by the terms and conditions available at `Qt Location Nokia Plugin - Nokia Services Terms and Conditions </sdk/apps/qml/QtLocation/location-plugin-nokia-terms/>`_ .

Note that accepting the terms and conditions only applies those terms and conditions to the use of the Nokia geo services plugin and does not limit the use of the other geo services plugins that may be included with Qt.

The Nokia geo services plugin can be loaded by using the plugin key "nokia".

The online plugin uses the tiled map classes, which caches tile data in heap memory and texture memory.

The following table lists mandatory parameters that *must* be passed to the Nokia plugin.

+-------------+----------------------------------------------------------------------------------------------------------+
| Parameter   | Description                                                                                              |
+=============+==========================================================================================================+
| app\_id     | Client *app\_id* part of the app\_id/token pair used for authentication by all managers.                 |
+-------------+----------------------------------------------------------------------------------------------------------+
| token       | Client *token* part of the app\_id/token pair for the service used for authentication by all managers.   |
+-------------+----------------------------------------------------------------------------------------------------------+

The Nokia geo services plugin requires an application id and token pair to authenticate the application with the Nokia services. To obtain an application id and token pair visit http://sdk.developer.nokia.com/

The following table lists optional parameters that can be passed to the Nokia plugin.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Parameter                                                                                                                                              | Description                                                                                                                                            |
+========================================================================================================================================================+========================================================================================================================================================+
| proxy                                                                                                                                                  | Proxy server URL used by all managers. For usage of the system proxy just pass "system" as value.                                                      |
|                                                                                                                                                        | **Note:** See the notes in QNetworkProxyFactory::systemProxyForQuery() for further information.                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| mapping.host                                                                                                                                           | Base map tile service URL used by mapping manager.                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| mapping.host.aerial                                                                                                                                    | Aerial map tile service URL used by mapping manager. For all satellite, hybrid and terrain schemes.                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| mapping.cache.directory                                                                                                                                | Map tile cache directory used as network disk cache.                                                                                                   |
|                                                                                                                                                        | Default place for the cache is "QtLocation" directory in QStandardPaths::writableLocation(QStandardPaths::GenericCacheLocation).                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| mapping.cache.disk.size                                                                                                                                | Map tile disk cache size in bytes. Default size of the cache is 20MB.                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| mapping.cache.memory.size                                                                                                                              | Map tile memory cache size in bytes. Default size of the cache is 3MB.                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| mapping.cache.texture.size                                                                                                                             | Map tile texture cache size in bytes. Default size of the cache is 6MB. Note that the texture cache has a hard minimum size which depends on the size  |
|                                                                                                                                                        | of the map viewport (it must contain enough data to display the tiles currently visible on the display). This value is the amount of cache to be used  |
|                                                                                                                                                        | in addition to the bare minimum.                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| geocoding.host                                                                                                                                         | Geocoding service URL used by geocoding manager.                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| routing.host                                                                                                                                           | Routing service URL used by routing manager.                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| places.host                                                                                                                                            | Search service URL used by search manager.                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| places.api\_version                                                                                                                                    | Version of the REST API used by the places manager. Currently versions 1 and 2 are supported. The version 1 is deprecated and will not be part of the  |
|                                                                                                                                                        | final Qt release. The default is version 2.                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| places.theme                                                                                                                                           | Specifies the icon theme to be used for places and categories. If no theme is explicitly provided then the platform theme is used. A default           |
|                                                                                                                                                        | non-platform specific theme can be specified using a value of "default". The supported themes are "wp7\_dark" and "default". On desktop platforms the  |
|                                                                                                                                                        | "default" theme is the platform theme.                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

The following two examples show how to create a Nokia plugin instance with parameters supplied for an application id and token, which is required for authentication.

.. code:: cpp

    Plugin {
        name: "nokia"
        PluginParameter { name: "app_id"; value: "myapp" }
        PluginParameter { name: "token"; value: "abcdefg12345" }
    }

.. code:: cpp

    QMap<QString,QVariant> params;
    params["app_id"] = "myapp";
    params["token"] = "abcdefg12345";
    QGeoServiceProvider *gsp = new QGeoServiceProvider("nokia", params);

The Nokia provider remotely accesses places (read-only) from a REST based server. The specific capabilities and behaviours are outlined below:

+-----------------------------------------------------+----------------+
| Storage                                             | remote         |
+-----------------------------------------------------+----------------+
| Read/Write                                          | read-only      |
+-----------------------------------------------------+----------------+
| Icons                                               | yes            |
+-----------------------------------------------------+----------------+
| Search term suggestions                             | yes            |
+-----------------------------------------------------+----------------+
| Recommendations                                     | yes            |
+-----------------------------------------------------+----------------+
| Category structure                                  | Hierarchical   |
+-----------------------------------------------------+----------------+
| (Rich) Content images                               | yes            |
+-----------------------------------------------------+----------------+
| (Rich) Content reviews                              | yes            |
+-----------------------------------------------------+----------------+
| (Rich) Content editorials                           | yes            |
+-----------------------------------------------------+----------------+
| All details fetched during search                   | no             |
+-----------------------------------------------------+----------------+
| Paging offset index                                 | no             |
+-----------------------------------------------------+----------------+
| Paging limit                                        | yes            |
+-----------------------------------------------------+----------------+
| Distance relevance hint                             | no             |
+-----------------------------------------------------+----------------+
| Lexical name relevance hint                         | no             |
+-----------------------------------------------------+----------------+
| Extended Attributes                                 | yes            |
+-----------------------------------------------------+----------------+
| Notifications for added/removed places/categories   | no             |
+-----------------------------------------------------+----------------+
| visibility scopes                                   | public         |
+-----------------------------------------------------+----------------+
| favorites matching/(usable as favoritesPlugin)      | no             |
+-----------------------------------------------------+----------------+

The following list shows what core place data is returned during a place search:

-  name
-  location
-  contact information
-  attribution
-  categories
-  rating
-  visibility

The following list shows further details that may be retrieved via QPlaceManager::getDetails()

-  supplier
-  extended attributes

The ``nokia`` plugin supports searching with a *search term* and *category or categories*, however both are not supported simultaneously.

-  Valid usage: *search term* + *search center*
-  Valid usage: *category* + *search center*
-  Invalid usage: *search term* + *category* + *search center*

This limitation applies when using the ``nokia`` plugin with PlaceSearchModel and QPlaceManager::search().

The ``nokia`` plugin only supports provision of a *search center* when searching for places via PlaceSearchModel and QPlaceManager::search(). A search center can be provided via a bounding circle, however the radius should be kept at the default value of -1. Typically a developer should not have to set the radius at all. If a developer sets a radius, it is ignored by the plugin and the boundaries are not honored.

In a similar manner only the center of a bounding box is taken into consideration when searching. The boundaries of the box are not honored.

A search center *must* be provided for all searches.

The ``nokia`` plugin does not support relevancy hints. Any relevancy hints supplied to a search request are consequently ignored.

Only a partial *search term* and *search center* is supported when retrieving suggestions. This limitation applies when using the ``nokia`` plugin with the PlaceSearchSuggestionModel and QPlaceManager::searchSuggestions().

Both search term and search center *must* be provided when retrieving search term suggestions.

Only a given *place identifier* is supported as a parameter for a recommendations. No other parameters such as limit, offset, and search area are supported. This limitation applies when using the ``nokia`` plugin with PlaceSearchModel and QPlaceManager::search().

Icons are provided in the form of "base urls" which reference valid icon images. For example, if the "wp7\_dark" theme was specified, then an icon url might look something like http://<server>/01.icon.wp7\_dark and this references an actual icon image.

However these urls are "base urls" in the sense that they can be appended onto, to provide variants. For example, one could add ".list.png" to the above url to get the list variant of the icon, http://<server>/01.icon.wp7\_dark.list.png.

The following table shows the themes provided by the ``nokia`` plugin, along with any variants supported for those themes:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Theme                                                                                                                                                  | Supported type variants and appendage strings                                                                                                          |
+========================================================================================================================================================+========================================================================================================================================================+
| "default"                                                                                                                                              | no variants supported                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| "wp7\_dark"                                                                                                                                            | -  list : ".list.png"                                                                                                                                  |
|                                                                                                                                                        | -  map: ".map.png"                                                                                                                                     |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        | (Note: the default base urls reference a map type icons)                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

The supported set of attributes provided by ``nokia`` plugin are not fixed and may grow over time. Also the attributes provided may vary according to a place by place basis, e.g one place may provide opening hours while another does not. At the time of writing, it is known that some places provide ``openingHours`` (QPlaceAttribute::OpeningHours) and ``payment`` (QPlaceAttribute::Payment) methods but other attributes may be made available by the backend server. All places provided by the plugin will have the ``x_provider`` (QPlaceAttribute::Provider) attribute set to ``nokia``.

The extended attributes and rich content of places are not permitted to be saved. For QML this is related to Place::extendedAttributes, ImageModel, ReviewModel, and EditorialModel. For C++ this relates to QPlace::extendedAttribute(), QPlace::content() and QPlaceManager::getPlaceContent().

(Note that the ``nokia`` plugin is a read-only source of places and does not support saving functionality at all.)

