QtLocation.PlaceSearchModel
===========================

.. raw:: html

   <p>

Provides access to place search results. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PlaceSearchModel -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtLocation 5.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt Location 5.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

categories : list<Category>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

favoritesMatchParameters : VariantMap

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

favoritesPlugin : Plugin

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

limit : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

nextPagesAvailable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

plugin : Plugin

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

previousPagesAvailable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

recommendationId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relevanceHint : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

searchArea : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

searchTerm : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enum

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visibilityScope : enum

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

cancel()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

data(int index, string role)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string errorString()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

nextPage()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

previousPage()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reset()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

update()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

updateWith(int proposedSearchIndex)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PlaceSearchModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

searchTerm and categories properties can be set to restrict the search
results to places matching those criteria.

.. raw:: html

   </p>

.. raw:: html

   <p>

The PlaceSearchModel returns both sponsored and organic search results.
Sponsored search results will have the sponsored role set to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

The model returns data for the following roles:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Role

.. raw:: html

   </th>

.. raw:: html

   <th>

Type

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

type

.. raw:: html

   </td>

.. raw:: html

   <td>

enum

.. raw:: html

   </td>

.. raw:: html

   <td>

The type of search result.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

title

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

A string describing the search result.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

icon

.. raw:: html

   </td>

.. raw:: html

   <td>

PlaceIcon

.. raw:: html

   </td>

.. raw:: html

   <td>

Icon representing the search result.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

distance

.. raw:: html

   </td>

.. raw:: html

   <td>

real

.. raw:: html

   </td>

.. raw:: html

   <td>

Valid only when the type role is PlaceResult, the distance to the place
from the center of the searchArea has been specified, the distance is
NaN.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

place

.. raw:: html

   </td>

.. raw:: html

   <td>

Place

.. raw:: html

   </td>

.. raw:: html

   <td>

Valid only when the type role is PlaceResult, an object representing the
place.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

sponsored

.. raw:: html

   </td>

.. raw:: html

   <td>

bool

.. raw:: html

   </td>

.. raw:: html

   <td>

Valid only when the type role is PlaceResult, true if the search result
is a sponsored result.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Search Result Types

.. raw:: html

   </h3>

.. raw:: html

   <p>

The type role can take on the following values:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PlaceSearchModel.UnknownSearchResult

.. raw:: html

   </td>

.. raw:: html

   <td>

The contents of the search result are unknown.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PlaceSearchModel.PlaceResult

.. raw:: html

   </td>

.. raw:: html

   <td>

The search result contains a place.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PlaceSearchModel.ProposedSearchResult

.. raw:: html

   </td>

.. raw:: html

   <td>

The search result contains a proposed search which may be relevant.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

It can often be helpful to use a Loader to create a delegate that will
choose different Components based on the search result type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">resultDelegate</span>
   <span class="type">Loader</span> {
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">placeResult</span>
   <span class="type">Column</span> {
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">title</span> }
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">place</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">text</span> }
   }
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">otherResult</span>
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">title</span> }
   }
   <span class="name">sourceComponent</span>: <span class="name">type</span> <span class="operator">==</span> <span class="name">PlaceSearchModel</span>.<span class="name">PlaceResult</span> ? <span class="name">placeResult</span> :
   <span class="name">otherResult</span>
   }
   }</pre>

.. raw:: html

   <h2 id="detection-of-updated-and-removed-places">

Detection of Updated and Removed Places

.. raw:: html

   </h2>

.. raw:: html

   <p>

The PlaceSearchModel listens for places that have been updated or
removed from its plugin's backend. If it detects that a place has been
updated and that place is currently present in the model, then it will
call Place::getDetails to refresh the details. If it detects that a
place has been removed, then correspondingly the place will be removed
from the model if it is currently present.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example">

Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows how to use the count is set to the number of
search results returned during the fetch.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type"><a href="#">PlaceSearchModel</a></span> {
   <span class="name">id</span>: <span class="name">searchModel</span>
   <span class="name">plugin</span>: <span class="name">myPlugin</span>
   <span class="name">searchTerm</span>: <span class="string">&quot;pizza&quot;</span>
   <span class="name">searchArea</span>: <span class="name">QtPositioning</span>.<span class="name">circle</span>(<span class="name">startCoordinate</span>);
   <span class="name">Component</span>.onCompleted: <span class="name">update</span>()
   }</pre>

.. raw:: html

   <h2 id="paging">

Paging

.. raw:: html

   </h2>

.. raw:: html

   <p>

The limit can vary according to the plugin.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also CategoryModel and QPlaceManager.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PlaceSearchModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$categories -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="categories-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

categories : list<Category>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a list of categories to be used when searching.
Returned search results will be for places that match at least one of
the categories.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@categories -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the number of results the model has.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that it does not refer to the total number of search results
available in the backend. The total number of search results is not
currently supported by the API.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="favoritesMatchParameters-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

favoritesMatchParameters : VariantMap

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a set of parameters used to specify how search
result places are matched to favorites in the favoritesPlugin.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default the parameter map is empty and implies that the favorites
plugin matches by alternative identifiers. Generally, an application
developer will not need to set this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

In cases where the favorites plugin does not support matching by
alternative identifiers, then the plugin documentation should be
consulted to see precisely what key-value parameters to set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@favoritesMatchParameters -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="favoritesPlugin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

favoritesPlugin : Plugin

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the Plugin which will be used to search for
favorites. Any places from the search which can be cross-referenced or
matched in the favoritesPlugin will have their favorite property set to
the corresponding Place from the favoritesPlugin.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the favoritesPlugin is not set, the favorite property of the places
in the results will always be null.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Favorites.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@favoritesPlugin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="limit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

limit : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the limit of the number of items that will be
returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@limit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nextPagesAvailable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

nextPagesAvailable : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether there is one or more additional pages of
search results available.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also nextPage().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nextPagesAvailable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="plugin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

plugin : Plugin

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the Plugin which will be used to perform the search.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@plugin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previousPagesAvailable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

previousPagesAvailable : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether there is one or more previous pages of
search results available.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also previousPage().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@previousPagesAvailable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="recommendationId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

recommendationId : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the placeId to be used in order to find
recommendations for similar places.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@recommendationId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relevanceHint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relevanceHint : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a relevance hint used in the search query. The hint
is given to the provider to help but not dictate the ranking of results.
For example, the distance hint may give closer places a higher ranking
but it does not necessarily mean the results will be strictly ordered
according to distance. A provider may ignore the hint altogether.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SearchResultModel.UnspecifiedHint

.. raw:: html

   </td>

.. raw:: html

   <td>

No relevance hint is given to the provider.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SearchResultModel.DistanceHint

.. raw:: html

   </td>

.. raw:: html

   <td>

The distance of the place from the user's current location is important
to the user. This hint is only meaningful when a circular search area is
used.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

SearchResultModel.LexicalPlaceNameHint

.. raw:: html

   </td>

.. raw:: html

   <td>

The lexical ordering of place names (in ascending alphabetical order) is
relevant to the user. This hint is useful for providers based on a local
data store.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@relevanceHint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="searchArea-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

searchArea : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the search area. The search result returned by the
model will be within the search area.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is set to a geocircle its radius property may be left
unset, in which case the Plugin will choose an appropriate radius for
the search.

.. raw:: html

   </p>

.. raw:: html

   <p>

Support for specifying a search area can vary according to the plugin
backend implementation. For example, some may support a search center
only while others may only support geo rectangles.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@searchArea -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="searchTerm-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

searchTerm : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds search term used in query. The search term is a
free-form text string.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@searchTerm -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enum

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the status of the model. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PlaceSearchModel.Null

.. raw:: html

   </td>

.. raw:: html

   <td>

No search query has been executed. The model is empty.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PlaceSearchModel.Ready

.. raw:: html

   </td>

.. raw:: html

   <td>

The search query has completed, and the results are available.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PlaceSearchModel.Loading

.. raw:: html

   </td>

.. raw:: html

   <td>

A search query is currently being executed.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

PlaceSearchModel.Error

.. raw:: html

   </td>

.. raw:: html

   <td>

An error occurred when executing the previous search query.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="visibilityScope-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visibilityScope : enum

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the visibility scope of the places to search. Only
places with the specified visibility will be returned in the search
results.

.. raw:: html

   </p>

.. raw:: html

   <p>

The visibility scope can be one of:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.UnspecifiedVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

No explicit visibility scope specified, places with any visibility may
be part of search results.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.DeviceVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

Only places stored on the local device will be part of the search
results.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.PrivateVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

Only places that are private to the current user will be part of the
search results.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.PublicVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

Only places that are public will be part of the search results.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@visibilityScope -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancel-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancel()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Cancels an ongoing search operation immediately and sets the model
status to PlaceSearchModel.Ready. The model retains any search results
it had before the operation was started.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an operation is not ongoing, invoking cancel() has no effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also status.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="data-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

data(int index, string role)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the data for a given role at the specified row index.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@data -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string errorString() const

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This read-only property holds the textual presentation of latest place
search model error. If no error has occurred or if the model was cleared
an empty string is returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

An empty string may also be returned if an error occurred which has no
associated textual representation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nextPage-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

nextPage()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Updates the model to display the next page of search results. If there
is no next page then this method does nothing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nextPage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previousPage-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

previousPage()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Updates the model to display the previous page of search results. If
there is no previous page then this method does nothing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@previousPage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reset-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

reset()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Resets the model. All search results are cleared, any outstanding
requests are aborted and possible errors are cleared. Model status will
be set to PlaceSearchModel.Null.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reset -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="update-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

update()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Updates the model based on the provided query parameters. The model will
be populated with a list of places matching the search parameters
specified by the type's properties. Search criteria is specified by
setting properties such as the limit. Support for these properties may
vary according to plugin. update() then submits the set of criteria to
the plugin to process.

.. raw:: html

   </p>

.. raw:: html

   <p>

While the model is updating the status is set to PlaceSearchModel.Error
and the model cleared.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">PlaceSearchModel {
   id: model
   plugin: backendPlugin
   searchArea: <span class="type">QtPositioning</span><span class="operator">.</span>circle(<span class="type">QtPositioning</span><span class="operator">.</span>coordinate(<span class="number">10</span><span class="operator">,</span> <span class="number">10</span>))
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   }
   MouseArea {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   onClicked: {
   model<span class="operator">.</span>searchTerm <span class="operator">=</span> <span class="string">&quot;pizza&quot;</span>;
   model<span class="operator">.</span>categories <span class="operator">=</span> null;  <span class="comment">//not searching by any category</span>
   model<span class="operator">.</span>searchArea<span class="operator">.</span>center<span class="operator">.</span>latitude <span class="operator">=</span> <span class="operator">-</span><span class="number">27.5</span>;
   model<span class="operator">.</span>searchArea<span class="operator">.</span>center<span class="operator">.</span>longitude <span class="operator">=</span> <span class="number">153</span>;
   model<span class="operator">.</span>update();
   }
   }</pre>

.. raw:: html

   <p>

See also status.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@update -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="updateWith-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

updateWith(int proposedSearchIndex)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Updates the model based on the ProposedSearchResult at index
proposedSearchIndex. The model will be populated with a list of places
matching the proposed search. Model status will be set to
PlaceSearchModel.Error and the model cleared.

.. raw:: html

   </p>

.. raw:: html

   <p>

If proposedSearchIndex does not reference a ProposedSearchResult this
method does nothing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@updateWith -->


