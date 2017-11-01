Provides access to place search results.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`categories </sdk/apps/qml/QtLocation/PlaceSearchModel#categories-prop>`__****
   : list<Category>
-  ****`count </sdk/apps/qml/QtLocation/PlaceSearchModel#count-prop>`__****
   : int
-  ****`favoritesMatchParameters </sdk/apps/qml/QtLocation/PlaceSearchModel#favoritesMatchParameters-prop>`__****
   : VariantMap
-  ****`favoritesPlugin </sdk/apps/qml/QtLocation/PlaceSearchModel#favoritesPlugin-prop>`__****
   : Plugin
-  ****`limit </sdk/apps/qml/QtLocation/PlaceSearchModel#limit-prop>`__****
   : int
-  ****`nextPagesAvailable </sdk/apps/qml/QtLocation/PlaceSearchModel#nextPagesAvailable-prop>`__****
   : bool
-  ****`plugin </sdk/apps/qml/QtLocation/PlaceSearchModel#plugin-prop>`__****
   : Plugin
-  ****`previousPagesAvailable </sdk/apps/qml/QtLocation/PlaceSearchModel#previousPagesAvailable-prop>`__****
   : bool
-  ****`recommendationId </sdk/apps/qml/QtLocation/PlaceSearchModel#recommendationId-prop>`__****
   : string
-  ****`relevanceHint </sdk/apps/qml/QtLocation/PlaceSearchModel#relevanceHint-prop>`__****
   : enumeration
-  ****`searchArea </sdk/apps/qml/QtLocation/PlaceSearchModel#searchArea-prop>`__****
   : variant
-  ****`searchTerm </sdk/apps/qml/QtLocation/PlaceSearchModel#searchTerm-prop>`__****
   : string
-  ****`status </sdk/apps/qml/QtLocation/PlaceSearchModel#status-prop>`__****
   : enum
-  ****`visibilityScope </sdk/apps/qml/QtLocation/PlaceSearchModel#visibilityScope-prop>`__****
   : enum

Methods
-------

-  ****`cancel </sdk/apps/qml/QtLocation/PlaceSearchModel#cancel-method>`__****\ ()
-  ****`data </sdk/apps/qml/QtLocation/PlaceSearchModel#data-method>`__****\ (int
   *index*, string *role*)
-  string
   ****`errorString </sdk/apps/qml/QtLocation/PlaceSearchModel#errorString-method>`__****\ ()
-  ****`nextPage </sdk/apps/qml/QtLocation/PlaceSearchModel#nextPage-method>`__****\ ()
-  ****`previousPage </sdk/apps/qml/QtLocation/PlaceSearchModel#previousPage-method>`__****\ ()
-  ****`reset </sdk/apps/qml/QtLocation/PlaceSearchModel#reset-method>`__****\ ()
-  ****`update </sdk/apps/qml/QtLocation/PlaceSearchModel#update-method>`__****\ ()
-  ****`updateWith </sdk/apps/qml/QtLocation/PlaceSearchModel#updateWith-method>`__****\ (int
   *proposedSearchIndex*)

Detailed Description
--------------------

`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__
provides a model of place search results within the
`searchArea </sdk/apps/qml/QtLocation/PlaceSearchModel#searchArea-prop>`__.
The
`searchTerm </sdk/apps/qml/QtLocation/PlaceSearchModel#searchTerm-prop>`__
and
`categories </sdk/apps/qml/QtLocation/location-places-backend#categories>`__
properties can be set to restrict the search results to places matching
those criteria.

The `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__
returns both sponsored and `organic search
results <http://en.wikipedia.org/wiki/Organic_search>`__. Sponsored
search results will have the ``sponsored`` role set to true.

The model returns data for the following roles:

+-------------+-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Role        | Type                                                                  | Description                                                                                                                                                                                                                                                                                                    |
+=============+=======================================================================+================================================================================================================================================================================================================================================================================================================+
| type        | enum                                                                  | The type of search result.                                                                                                                                                                                                                                                                                     |
+-------------+-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| title       | string                                                                | A string describing the search result.                                                                                                                                                                                                                                                                         |
+-------------+-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| icon        | `PlaceIcon </sdk/apps/qml/QtLocation/location-cpp-qml#placeicon>`__   | Icon representing the search result.                                                                                                                                                                                                                                                                           |
+-------------+-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| distance    | real                                                                  | Valid only when the ``type`` role is ``PlaceResult``, the distance to the place from the center of the `searchArea </sdk/apps/qml/QtLocation/PlaceSearchModel#searchArea-prop>`__. If no `searchArea </sdk/apps/qml/QtLocation/PlaceSearchModel#searchArea-prop>`__ has been specified, the distance is NaN.   |
+-------------+-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| place       | `Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__           | Valid only when the ``type`` role is ``PlaceResult``, an object representing the place.                                                                                                                                                                                                                        |
+-------------+-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sponsored   | bool                                                                  | Valid only when the ``type`` role is ``PlaceResult``, true if the search result is a sponsored result.                                                                                                                                                                                                         |
+-------------+-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Search Result Types
~~~~~~~~~~~~~~~~~~~

The ``type`` role can take on the following values:

+------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.UnknownSearchResult    | The contents of the search result are unknown.                        |
+------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.PlaceResult            | The search result contains a place.                                   |
+------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.ProposedSearchResult   | The search result contains a proposed search which may be relevant.   |
+------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

It can often be helpful to use a Loader to create a delegate that will
choose different Components based on the search result type.

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

The `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__
listens for places that have been updated or removed from its plugin's
backend. If it detects that a place has been updated and that place is
currently present in the model, then it will call
`Place::getDetails </sdk/apps/qml/QtLocation/Place#getDetails-method>`__
to refresh the details. If it detects that a place has been removed,
then correspondingly the place will be removed from the model if it is
currently present.

Example
-------

The following example shows how to use the
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__ to
search for Pizza restaurants in close proximity of a given position. A
`searchTerm </sdk/apps/qml/QtLocation/PlaceSearchModel#searchTerm-prop>`__
and
`searchArea </sdk/apps/qml/QtLocation/PlaceSearchModel#searchArea-prop>`__
are provided to the model and
`update() </sdk/apps/qml/QtLocation/PlaceSearchModel#update-method>`__
is used to perform a lookup query. Note that the model does not
incrementally fetch search results, but rather performs a single fetch
when
`update() </sdk/apps/qml/QtLocation/PlaceSearchModel#update-method>`__
is run. The
`count </sdk/apps/qml/QtLocation/PlaceSearchModel#count-prop>`__ is set
to the number of search results returned during the fetch.

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

The `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__
API has some limited support for paging. The
`nextPage() </sdk/apps/qml/QtLocation/PlaceSearchModel#nextPage-method>`__
and
`previousPage() </sdk/apps/qml/QtLocation/PlaceSearchModel#previousPage-method>`__
functions as well as the
`limit </sdk/apps/qml/QtLocation/PlaceSearchModel#limit-prop>`__
property can be used to access paged search results. When the
`limit </sdk/apps/qml/QtLocation/PlaceSearchModel#limit-prop>`__
property is set the search result page contains at most
`limit </sdk/apps/qml/QtLocation/PlaceSearchModel#limit-prop>`__ entries
(of type place result). For example, if the backend has 5 search results
in total [a,b,c,d,e], and assuming the first page is shown and limit of
3 has been set then a,b,c is returned. The
`nextPage() </sdk/apps/qml/QtLocation/PlaceSearchModel#nextPage-method>`__
would return d,e. The
`nextPagesAvailable </sdk/apps/qml/QtLocation/PlaceSearchModel#nextPagesAvailable-prop>`__
and
`previousPagesAvailable </sdk/apps/qml/QtLocation/PlaceSearchModel#previousPagesAvailable-prop>`__
properties can be used to check for further pages. At the moment the API
does not support the means to retrieve the total number of items
available from the backed. Note that support for
`nextPage() </sdk/apps/qml/QtLocation/PlaceSearchModel#nextPage-method>`__,
`previousPage() </sdk/apps/qml/QtLocation/PlaceSearchModel#previousPage-method>`__
and `limit </sdk/apps/qml/QtLocation/PlaceSearchModel#limit-prop>`__ can
vary according to the
`plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__.

**See also** CategoryModel and QPlaceManager.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ categories :                                                    |
| list<`Category </sdk/apps/qml/QtLocation/Category/>`__>                  |
+--------------------------------------------------------------------------+

This property holds a list of categories to be used when searching.
Returned search results will be for places that match at least one of
the categories.

| 

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds the number of results the model has.

Note that it does not refer to the total number of search results
available in the backend. The total number of search results is not
currently supported by the API.

| 

+--------------------------------------------------------------------------+
|        \ favoritesMatchParameters : VariantMap                           |
+--------------------------------------------------------------------------+

This property holds a set of parameters used to specify how search
result places are matched to favorites in the
`favoritesPlugin </sdk/apps/qml/QtLocation/PlaceSearchModel#favoritesPlugin-prop>`__.

By default the parameter map is empty and implies that the favorites
plugin matches by `alternative
identifiers </sdk/apps/qml/QtLocation/location-places-backend#alternative-identifier-cross-referencing>`__.
Generally, an application developer will not need to set this property.

In cases where the favorites plugin does not support matching by
alternative identifiers, then the `plugin
documentation </sdk/apps/qml/QtLocation/qtlocation-index#plugin-references-and-parameters>`__
should be consulted to see precisely what key-value parameters to set.

| 

+--------------------------------------------------------------------------+
|        \ favoritesPlugin : `Plugin </sdk/apps/qml/QtLocation/Plugin/>`__ |
+--------------------------------------------------------------------------+

This property holds the
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ which
will be used to search for favorites. Any places from the search which
can be cross-referenced or matched in the favoritesPlugin will have
their `favorite </sdk/apps/qml/QtLocation/Place#favorite-prop>`__
property set to the corresponding
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__ from the
favoritesPlugin.

If the favoritesPlugin is not set, the
`favorite </sdk/apps/qml/QtLocation/Place#favorite-prop>`__ property of
the places in the results will always be null.

**See also** `Favorites </sdk/apps/qml/QtLocation/Place#favorites>`__.

| 

+--------------------------------------------------------------------------+
|        \ limit : int                                                     |
+--------------------------------------------------------------------------+

This property holds the limit of the number of items that will be
returned.

| 

+--------------------------------------------------------------------------+
|        \ nextPagesAvailable : bool                                       |
+--------------------------------------------------------------------------+

This property holds whether there is one or more additional pages of
search results available.

**See also**
`nextPage() </sdk/apps/qml/QtLocation/PlaceSearchModel#nextPage-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ plugin : `Plugin </sdk/apps/qml/QtLocation/Plugin/>`__          |
+--------------------------------------------------------------------------+

This property holds the
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ which
will be used to perform the search.

| 

+--------------------------------------------------------------------------+
|        \ previousPagesAvailable : bool                                   |
+--------------------------------------------------------------------------+

This property holds whether there is one or more previous pages of
search results available.

**See also**
`previousPage() </sdk/apps/qml/QtLocation/PlaceSearchModel#previousPage-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ recommendationId : string                                       |
+--------------------------------------------------------------------------+

This property holds the placeId to be used in order to find
recommendations for similar places.

| 

+--------------------------------------------------------------------------+
|        \ relevanceHint : enumeration                                     |
+--------------------------------------------------------------------------+

This property holds a relevance hint used in the search query. The hint
is given to the provider to help but not dictate the ranking of results.
For example, the distance hint may give closer places a higher ranking
but it does not necessarily mean the results will be strictly ordered
according to distance. A provider may ignore the hint altogether.

+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SearchResultModel.UnspecifiedHint        | No relevance hint is given to the provider.                                                                                                                     |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SearchResultModel.DistanceHint           | The distance of the place from the user's current location is important to the user. This hint is only meaningful when a circular search area is used.          |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SearchResultModel.LexicalPlaceNameHint   | The lexical ordering of place names (in ascending alphabetical order) is relevant to the user. This hint is useful for providers based on a local data store.   |
+------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ searchArea : variant                                            |
+--------------------------------------------------------------------------+

This property holds the search area. The search result returned by the
model will be within the search area.

If this property is set to a geocircle its radius property may be left
unset, in which case the
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ will
choose an appropriate radius for the search.

Support for specifying a search area can vary according to the
`plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ backend
implementation. For example, some may support a search center only while
others may only support geo rectangles.

| 

+--------------------------------------------------------------------------+
|        \ searchTerm : string                                             |
+--------------------------------------------------------------------------+

This property holds search term used in query. The search term is a
free-form text string.

| 

+--------------------------------------------------------------------------+
|        \ status : enum                                                   |
+--------------------------------------------------------------------------+

This property holds the status of the model. It can be one of:

+-----------------------------------------------------------------------------+------------------------------------------------------------------+
| `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.Null      | No search query has been executed. The model is empty.           |
+-----------------------------------------------------------------------------+------------------------------------------------------------------+
| `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.Ready     | The search query has completed, and the results are available.   |
+-----------------------------------------------------------------------------+------------------------------------------------------------------+
| `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.Loading   | A search query is currently being executed.                      |
+-----------------------------------------------------------------------------+------------------------------------------------------------------+
| `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.Error     | An error occurred when executing the previous search query.      |
+-----------------------------------------------------------------------------+------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ visibilityScope : enum                                          |
+--------------------------------------------------------------------------+

This property holds the visibility scope of the places to search. Only
places with the specified visibility will be returned in the search
results.

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

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancel()                                                        |
+--------------------------------------------------------------------------+

Cancels an ongoing search operation immediately and sets the model
status to
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.Ready.
The model retains any search results it had before the operation was
started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also**
`update() </sdk/apps/qml/QtLocation/PlaceSearchModel#update-method>`__
and `status </sdk/apps/qml/QtLocation/PlaceSearchModel#status-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ data(int *index*, string *role*)                                |
+--------------------------------------------------------------------------+

Returns the data for a given *role* at the specified row *index*.

| 

+--------------------------------------------------------------------------+
|        \ string errorString() const                                      |
+--------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest place
search model error. If no error has occurred or if the model was cleared
an empty string is returned.

An empty string may also be returned if an error occurred which has no
associated textual representation.

| 

+--------------------------------------------------------------------------+
|        \ nextPage()                                                      |
+--------------------------------------------------------------------------+

Updates the model to display the next page of search results. If there
is no next page then this method does nothing.

| 

+--------------------------------------------------------------------------+
|        \ previousPage()                                                  |
+--------------------------------------------------------------------------+

Updates the model to display the previous page of search results. If
there is no previous page then this method does nothing.

| 

+--------------------------------------------------------------------------+
|        \ reset()                                                         |
+--------------------------------------------------------------------------+

Resets the model. All search results are cleared, any outstanding
requests are aborted and possible errors are cleared. Model status will
be set to
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.Null.

| 

+--------------------------------------------------------------------------+
|        \ update()                                                        |
+--------------------------------------------------------------------------+

Updates the model based on the provided query parameters. The model will
be populated with a list of places matching the search parameters
specified by the type's properties. Search criteria is specified by
setting properties such as the
`searchTerm </sdk/apps/qml/QtLocation/PlaceSearchModel#searchTerm-prop>`__,
`categories </sdk/apps/qml/QtLocation/location-places-backend#categories>`__,
`searchArea </sdk/apps/qml/QtLocation/PlaceSearchModel#searchArea-prop>`__
and `limit </sdk/apps/qml/QtLocation/PlaceSearchModel#limit-prop>`__.
Support for these properties may vary according to
`plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__.
``update()`` then submits the set of criteria to the
`plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ to
process.

While the model is updating the
`status </sdk/apps/qml/QtLocation/PlaceSearchModel#status-prop>`__ of
the model is set to ``PlaceSearchModel.Loading``. If the model is
successfully updated the
`status </sdk/apps/qml/QtLocation/PlaceSearchModel#status-prop>`__ is
set to ``PlaceSearchModel.Ready``, while if it unsuccessfully completes,
the `status </sdk/apps/qml/QtLocation/PlaceSearchModel#status-prop>`__
is set to ``PlaceSearchModel.Error`` and the model cleared.

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

**See also**
`cancel() </sdk/apps/qml/QtLocation/PlaceSearchModel#cancel-method>`__
and `status </sdk/apps/qml/QtLocation/PlaceSearchModel#status-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ updateWith(int *proposedSearchIndex*)                           |
+--------------------------------------------------------------------------+

Updates the model based on the ProposedSearchResult at index
*proposedSearchIndex*. The model will be populated with a list of places
matching the proposed search. Model status will be set to
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.Loading.
If the model is updated successfully status will be set to
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.Ready.
If an error occurs status will be set to
`PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__.Error
and the model cleared.

If *proposedSearchIndex* does not reference a ProposedSearchResult this
method does nothing.

| 
