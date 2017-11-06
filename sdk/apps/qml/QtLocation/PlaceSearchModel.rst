.. _sdk_qtlocation_placesearchmodel:

QtLocation PlaceSearchModel
===========================

Provides access to place search results.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`categories <sdk_qtlocation_placesearchmodel_categories>` : list<Category>
-  :ref:`count <sdk_qtlocation_placesearchmodel_count>` : int
-  :ref:`favoritesMatchParameters <sdk_qtlocation_placesearchmodel_favoritesMatchParameters>` : VariantMap
-  :ref:`favoritesPlugin <sdk_qtlocation_placesearchmodel_favoritesPlugin>` : Plugin
-  :ref:`limit <sdk_qtlocation_placesearchmodel_limit>` : int
-  :ref:`nextPagesAvailable <sdk_qtlocation_placesearchmodel_nextPagesAvailable>` : bool
-  :ref:`plugin <sdk_qtlocation_placesearchmodel_plugin>` : Plugin
-  :ref:`previousPagesAvailable <sdk_qtlocation_placesearchmodel_previousPagesAvailable>` : bool
-  :ref:`recommendationId <sdk_qtlocation_placesearchmodel_recommendationId>` : string
-  :ref:`relevanceHint <sdk_qtlocation_placesearchmodel_relevanceHint>` : enumeration
-  :ref:`searchArea <sdk_qtlocation_placesearchmodel_searchArea>` : variant
-  :ref:`searchTerm <sdk_qtlocation_placesearchmodel_searchTerm>` : string
-  :ref:`status <sdk_qtlocation_placesearchmodel_status>` : enum
-  :ref:`visibilityScope <sdk_qtlocation_placesearchmodel_visibilityScope>` : enum

Methods
-------

-  :ref:`cancel <sdk_qtlocation_placesearchmodel_cancel>`\ ()
-  :ref:`data <sdk_qtlocation_placesearchmodel_data>`\ (int *index*, string *role*)
-  string :ref:`errorString <sdk_qtlocation_placesearchmodel_errorString>`\ ()
-  :ref:`nextPage <sdk_qtlocation_placesearchmodel_nextPage>`\ ()
-  :ref:`previousPage <sdk_qtlocation_placesearchmodel_previousPage>`\ ()
-  :ref:`reset <sdk_qtlocation_placesearchmodel_reset>`\ ()
-  :ref:`update <sdk_qtlocation_placesearchmodel_update>`\ ()
-  :ref:`updateWith <sdk_qtlocation_placesearchmodel_updateWith>`\ (int *proposedSearchIndex*)

Detailed Description
--------------------

:ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` provides a model of place search results within the :ref:`searchArea <sdk_qtlocation_placesearchmodel_searchArea>`. The :ref:`searchTerm <sdk_qtlocation_placesearchmodel_searchTerm>` and `categories </sdk/apps/qml/QtLocation/location-places-backend/#categories>`_  properties can be set to restrict the search results to places matching those criteria.

The :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` returns both sponsored and `organic search results <http://en.wikipedia.org/wiki/Organic_search>`_ . Sponsored search results will have the ``sponsored`` role set to true.

The model returns data for the following roles:

+-------------+------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Role        | Type                                                                   | Description                                                                                                                                                                                                                                                                                |
+=============+========================================================================+============================================================================================================================================================================================================================================================================================+
| type        | enum                                                                   | The type of search result.                                                                                                                                                                                                                                                                 |
+-------------+------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| title       | string                                                                 | A string describing the search result.                                                                                                                                                                                                                                                     |
+-------------+------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| icon        | `PlaceIcon </sdk/apps/qml/QtLocation/location-cpp-qml/#placeicon>`_    | Icon representing the search result.                                                                                                                                                                                                                                                       |
+-------------+------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| distance    | real                                                                   | Valid only when the ``type`` role is ``PlaceResult``, the distance to the place from the center of the :ref:`searchArea <sdk_qtlocation_placesearchmodel_searchArea>`. If no :ref:`searchArea <sdk_qtlocation_placesearchmodel_searchArea>` has been specified, the distance is NaN.       |
+-------------+------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| place       | `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_            | Valid only when the ``type`` role is ``PlaceResult``, an object representing the place.                                                                                                                                                                                                    |
+-------------+------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sponsored   | bool                                                                   | Valid only when the ``type`` role is ``PlaceResult``, true if the search result is a sponsored result.                                                                                                                                                                                     |
+-------------+------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Search Result Types
~~~~~~~~~~~~~~~~~~~

The ``type`` role can take on the following values:

+-------------------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.UnknownSearchResult    | The contents of the search result are unknown.                        |
+-------------------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.PlaceResult            | The search result contains a place.                                   |
+-------------------------------------------------------------------------------+--------------------------------------------------------------------------+
| :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.ProposedSearchResult   | The search result contains a proposed search which may be relevant.   |
+-------------------------------------------------------------------------------+--------------------------------------------------------------------------+

It can often be helpful to use a Loader to create a delegate that will choose different Components based on the search result type.

.. code:: qml

    Component {
        id: resultDelegate
        Loader {
            Component {
                id: placeResult
                Column {
                    Text { text: title }
                    Text { text: place.location.address.text }
                }
            }
            Component {
                id: otherResult
                Text { text: title }
            }
            sourceComponent: type == PlaceSearchModel.PlaceResult ? placeResult :
                                                                    otherResult
        }
    }

Detection of Updated and Removed Places
---------------------------------------

The :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` listens for places that have been updated or removed from its plugin's backend. If it detects that a place has been updated and that place is currently present in the model, then it will call :ref:`Place::getDetails <sdk_qtlocation_place_getDetails>` to refresh the details. If it detects that a place has been removed, then correspondingly the place will be removed from the model if it is currently present.

Example
-------

The following example shows how to use the :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` to search for Pizza restaurants in close proximity of a given position. A :ref:`searchTerm <sdk_qtlocation_placesearchmodel_searchTerm>` and :ref:`searchArea <sdk_qtlocation_placesearchmodel_searchArea>` are provided to the model and :ref:`update() <sdk_qtlocation_placesearchmodel_update>` is used to perform a lookup query. Note that the model does not incrementally fetch search results, but rather performs a single fetch when :ref:`update() <sdk_qtlocation_placesearchmodel_update>` is run. The :ref:`count <sdk_qtlocation_placesearchmodel_count>` is set to the number of search results returned during the fetch.

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    PlaceSearchModel {
        id: searchModel
        plugin: myPlugin
        searchTerm: "pizza"
        searchArea: QtPositioning.circle(startCoordinate);
        Component.onCompleted: update()
    }

Paging
------

The :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` API has some limited support for paging. The :ref:`nextPage() <sdk_qtlocation_placesearchmodel_nextPage>` and :ref:`previousPage() <sdk_qtlocation_placesearchmodel_previousPage>` functions as well as the :ref:`limit <sdk_qtlocation_placesearchmodel_limit>` property can be used to access paged search results. When the :ref:`limit <sdk_qtlocation_placesearchmodel_limit>` property is set the search result page contains at most :ref:`limit <sdk_qtlocation_placesearchmodel_limit>` entries (of type place result). For example, if the backend has 5 search results in total [a,b,c,d,e], and assuming the first page is shown and limit of 3 has been set then a,b,c is returned. The :ref:`nextPage() <sdk_qtlocation_placesearchmodel_nextPage>` would return d,e. The :ref:`nextPagesAvailable <sdk_qtlocation_placesearchmodel_nextPagesAvailable>` and :ref:`previousPagesAvailable <sdk_qtlocation_placesearchmodel_previousPagesAvailable>` properties can be used to check for further pages. At the moment the API does not support the means to retrieve the total number of items available from the backed. Note that support for :ref:`nextPage() <sdk_qtlocation_placesearchmodel_nextPage>`, :ref:`previousPage() <sdk_qtlocation_placesearchmodel_previousPage>` and :ref:`limit <sdk_qtlocation_placesearchmodel_limit>` can vary according to the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ .

**See also** CategoryModel and QPlaceManager.

Property Documentation
----------------------

.. _sdk_qtlocation_placesearchmodel_categories:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| categories : list<:ref:`Category <sdk_qtlocation_category>`>                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of categories to be used when searching. Returned search results will be for places that match at least one of the categories.

.. _sdk_qtlocation_placesearchmodel_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of results the model has.

Note that it does not refer to the total number of search results available in the backend. The total number of search results is not currently supported by the API.

.. _sdk_qtlocation_placesearchmodel_favoritesMatchParameters:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| favoritesMatchParameters : VariantMap                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a set of parameters used to specify how search result places are matched to favorites in the :ref:`favoritesPlugin <sdk_qtlocation_placesearchmodel_favoritesPlugin>`.

By default the parameter map is empty and implies that the favorites plugin matches by `alternative identifiers </sdk/apps/qml/QtLocation/location-places-backend/#alternative-identifier-cross-referencing>`_ . Generally, an application developer will not need to set this property.

In cases where the favorites plugin does not support matching by alternative identifiers, then the `plugin documentation </sdk/apps/qml/QtLocation/qtlocation-index/#plugin-references-and-parameters>`_  should be consulted to see precisely what key-value parameters to set.

.. _sdk_qtlocation_placesearchmodel_favoritesPlugin:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| favoritesPlugin : :ref:`Plugin <sdk_qtlocation_plugin>`                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  which will be used to search for favorites. Any places from the search which can be cross-referenced or matched in the favoritesPlugin will have their :ref:`favorite <sdk_qtlocation_place_favorite>` property set to the corresponding `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_  from the favoritesPlugin.

If the favoritesPlugin is not set, the :ref:`favorite <sdk_qtlocation_place_favorite>` property of the places in the results will always be null.

**See also** :ref:`Favorites <sdk_qtlocation_place_favorites>`.

.. _sdk_qtlocation_placesearchmodel_limit:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| limit : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the limit of the number of items that will be returned.

.. _sdk_qtlocation_placesearchmodel_nextPagesAvailable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| nextPagesAvailable : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether there is one or more additional pages of search results available.

**See also** :ref:`nextPage() <sdk_qtlocation_placesearchmodel_nextPage>`.

.. _sdk_qtlocation_placesearchmodel_plugin:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| plugin : :ref:`Plugin <sdk_qtlocation_plugin>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  which will be used to perform the search.

.. _sdk_qtlocation_placesearchmodel_previousPagesAvailable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| previousPagesAvailable : bool                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether there is one or more previous pages of search results available.

**See also** :ref:`previousPage() <sdk_qtlocation_placesearchmodel_previousPage>`.

.. _sdk_qtlocation_placesearchmodel_recommendationId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| recommendationId : string                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the placeId to be used in order to find recommendations for similar places.

.. _sdk_qtlocation_placesearchmodel_relevanceHint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relevanceHint : enumeration                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a relevance hint used in the search query. The hint is given to the provider to help but not dictate the ranking of results. For example, the distance hint may give closer places a higher ranking but it does not necessarily mean the results will be strictly ordered according to distance. A provider may ignore the hint altogether.

+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SearchResultModel.UnspecifiedHint        | No relevance hint is given to the provider.                                                                                                                     |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SearchResultModel.DistanceHint           | The distance of the place from the user's current location is important to the user. This hint is only meaningful when a circular search area is used.          |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SearchResultModel.LexicalPlaceNameHint   | The lexical ordering of place names (in ascending alphabetical order) is relevant to the user. This hint is useful for providers based on a local data store.   |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtlocation_placesearchmodel_searchArea:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| searchArea : variant                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the search area. The search result returned by the model will be within the search area.

If this property is set to a geocircle its radius property may be left unset, in which case the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  will choose an appropriate radius for the search.

Support for specifying a search area can vary according to the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  backend implementation. For example, some may support a search center only while others may only support geo rectangles.

.. _sdk_qtlocation_placesearchmodel_searchTerm:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| searchTerm : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds search term used in query. The search term is a free-form text string.

.. _sdk_qtlocation_placesearchmodel_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enum                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of the model. It can be one of:

+------------------------------------------------------------------+---------------------------------------------------------------------+
| :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.Null      | No search query has been executed. The model is empty.           |
+------------------------------------------------------------------+---------------------------------------------------------------------+
| :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.Ready     | The search query has completed, and the results are available.   |
+------------------------------------------------------------------+---------------------------------------------------------------------+
| :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.Loading   | A search query is currently being executed.                      |
+------------------------------------------------------------------+---------------------------------------------------------------------+
| :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.Error     | An error occurred when executing the previous search query.      |
+------------------------------------------------------------------+---------------------------------------------------------------------+

.. _sdk_qtlocation_placesearchmodel_visibilityScope:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visibilityScope : enum                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the visibility scope of the places to search. Only places with the specified visibility will be returned in the search results.

The visibility scope can be one of:

+-------------------------------+-----------------------------------------------------------------------------------------------------+
| Place.UnspecifiedVisibility   | No explicit visibility scope specified, places with any visibility may be part of search results.   |
+-------------------------------+-----------------------------------------------------------------------------------------------------+
| Place.DeviceVisibility        | Only places stored on the local device will be part of the search results.                          |
+-------------------------------+-----------------------------------------------------------------------------------------------------+
| Place.PrivateVisibility       | Only places that are private to the current user will be part of the search results.                |
+-------------------------------+-----------------------------------------------------------------------------------------------------+
| Place.PublicVisibility        | Only places that are public will be part of the search results.                                     |
+-------------------------------+-----------------------------------------------------------------------------------------------------+

Method Documentation
--------------------

.. _sdk_qtlocation_placesearchmodel_cancel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cancel()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Cancels an ongoing search operation immediately and sets the model status to :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.Ready. The model retains any search results it had before the operation was started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also** :ref:`update() <sdk_qtlocation_placesearchmodel_update>` and :ref:`status <sdk_qtlocation_placesearchmodel_status>`.

.. _sdk_qtlocation_placesearchmodel_data:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| data(int *index*, string *role*)                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the data for a given *role* at the specified row *index*.

.. _sdk_qtlocation_placesearchmodel_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string errorString() const                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest place search model error. If no error has occurred or if the model was cleared an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

.. _sdk_qtlocation_placesearchmodel_nextPage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| nextPage()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Updates the model to display the next page of search results. If there is no next page then this method does nothing.

.. _sdk_qtlocation_placesearchmodel_previousPage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| previousPage()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Updates the model to display the previous page of search results. If there is no previous page then this method does nothing.

.. _sdk_qtlocation_placesearchmodel_reset:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| reset()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Resets the model. All search results are cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.Null.

.. _sdk_qtlocation_placesearchmodel_update:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| update()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Updates the model based on the provided query parameters. The model will be populated with a list of places matching the search parameters specified by the type's properties. Search criteria is specified by setting properties such as the :ref:`searchTerm <sdk_qtlocation_placesearchmodel_searchTerm>`, `categories </sdk/apps/qml/QtLocation/location-places-backend/#categories>`_ , :ref:`searchArea <sdk_qtlocation_placesearchmodel_searchArea>` and :ref:`limit <sdk_qtlocation_placesearchmodel_limit>`. Support for these properties may vary according to `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ . ``update()`` then submits the set of criteria to the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  to process.

While the model is updating the :ref:`status <sdk_qtlocation_placesearchmodel_status>` of the model is set to ``PlaceSearchModel.Loading``. If the model is successfully updated the :ref:`status <sdk_qtlocation_placesearchmodel_status>` is set to ``PlaceSearchModel.Ready``, while if it unsuccessfully completes, the :ref:`status <sdk_qtlocation_placesearchmodel_status>` is set to ``PlaceSearchModel.Error`` and the model cleared.

.. code:: cpp

    PlaceSearchModel {
        id: model
        plugin: backendPlugin
        searchArea: QtPositioning.circle(QtPositioning.coordinate(10, 10))
        ...
    }
    MouseArea {
        ...
        onClicked: {
            model.searchTerm = "pizza";
            model.categories = null;  //not searching by any category
            model.searchArea.center.latitude = -27.5;
            model.searchArea.center.longitude = 153;
            model.update();
        }
    }

**See also** :ref:`cancel() <sdk_qtlocation_placesearchmodel_cancel>` and :ref:`status <sdk_qtlocation_placesearchmodel_status>`.

.. _sdk_qtlocation_placesearchmodel_updateWith:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| updateWith(int *proposedSearchIndex*)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Updates the model based on the ProposedSearchResult at index *proposedSearchIndex*. The model will be populated with a list of places matching the proposed search. Model status will be set to :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.Loading. If the model is updated successfully status will be set to :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.Ready. If an error occurs status will be set to :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.Error and the model cleared.

If *proposedSearchIndex* does not reference a ProposedSearchResult this method does nothing.

