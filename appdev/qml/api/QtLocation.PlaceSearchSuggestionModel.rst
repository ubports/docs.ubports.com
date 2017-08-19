QtLocation.PlaceSearchSuggestionModel
=====================================

.. raw:: html

   <p>

Provides access to search term suggestions. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PlaceSearchSuggestionModel -->

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

limit : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

offset : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

plugin : Plugin

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

searchArea : geoshape

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

suggestions : stringlist

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

string errorString()

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

   </ul>

.. raw:: html

   <!-- $$$PlaceSearchSuggestionModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The PlaceSearchSuggestionModel can be used to provide search term
suggestions as the user enters their search term. The properties of this
model should match that of the PlaceSearchModel, which will be used to
perform the actual search query, to ensure that the search suggestion
results are relevant.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two ways of accessing the data provided by this model, either
through the suggestions property or through views and delegates. The
latter is the preferred method.

.. raw:: html

   </p>

.. raw:: html

   <p>

The limit - 1) will be returned. Support for paging may vary from plugin
to plugin.

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

suggestion

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

Suggested search term.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The following example shows how to use the searchArea is set to match
what would be used to perform the actual place search with
PlaceSearchModel.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type"><a href="#">PlaceSearchSuggestionModel</a></span> {
   <span class="name">id</span>: <span class="name">suggestionModel</span>
   <span class="name">plugin</span>: <span class="name">myPlugin</span>
   <span class="comment">// Brisbane</span>
   <span class="name">searchArea</span>: <span class="name">QtLocation</span>.<span class="name">circle</span>(<span class="name">QtLocation</span>.<span class="name">coordinate</span>(-<span class="number">27.46778</span>, <span class="number">153.02778</span>))
   <span class="name">onSearchTermChanged</span>: <span class="name">update</span>()
   }
   <span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">suggestionModel</span>
   <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">suggestion</span> }
   }</pre>

.. raw:: html

   <p>

See also PlaceSearchModel and QPlaceManager.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PlaceSearchSuggestionModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$limit -->

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

   <p>

See also offset.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@limit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="offset-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

offset : int

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

This property holds the index of the first item in the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also limit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@offset -->

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

This property holds the provider Plugin which will be used to perform
the search.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@plugin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="searchArea-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

searchArea : geoshape

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

This property holds the search area. Search suggestion results returned
by the model will be relevant to the given search area.

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

This property holds the partial search term used in query.

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

PlaceSearchSuggestionModel.Null

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

PlaceSearchSuggestionModel.Ready

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

PlaceSearchSuggestionModel.Loading

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

PlaceSearchSuggestionModel.Error

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

   <tr valign="top" id="suggestions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

suggestions : stringlist

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

This property holds the list of predicted search terms that the model
currently has.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@suggestions -->

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

Cancels an ongoing search suggestion operation immediately and sets the
model status to PlaceSearchSuggestionModel.Ready. The model retains any
search suggestions it had before the operation was started.

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

This read-only property holds the textual presentation of latest search
suggestion model error. If no error has occurred, or if the model was
cleared, an empty string is returned.

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

Resets the model. All search suggestions are cleared, any outstanding
requests are aborted and possible errors are cleared. Model status will
be set to PlaceSearchSuggestionModel.Null.

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
be populated with a list of search suggestions for the partial offset
may be specified. update() submits the set of parameters to the plugin
to process.

.. raw:: html

   </p>

.. raw:: html

   <p>

While the model is updating the status is set to
PlaceSearchSuggestionModel.Error and the model cleared.

.. raw:: html

   </p>

.. raw:: html

   <p>

This example shows use of the model

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">PlaceSeachSuggestionModel {
   id: model
   plugin: backendPlugin
   searchArea: <span class="type">QtPositioning</span><span class="operator">.</span>circle(<span class="type">QtPositioning</span><span class="operator">.</span>coordinate(<span class="number">10</span><span class="operator">,</span> <span class="number">10</span>))
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   }
   MouseArea {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   onClicked: {
   model<span class="operator">.</span>searchTerm <span class="operator">=</span> <span class="string">&quot;piz&quot;</span>
   model<span class="operator">.</span>searchArea<span class="operator">.</span>center<span class="operator">.</span>latitude <span class="operator">=</span> <span class="operator">-</span><span class="number">27.5</span>;
   model<span class="operator">.</span>searchArea<span class="operator">.</span>cetner<span class="operator">.</span>longitude <span class="operator">=</span> <span class="number">153</span>;
   model<span class="operator">.</span>update();
   }
   }</pre>

.. raw:: html

   <p>

A more detailed example can be found in the in Places (QML) example.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also status.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@update -->


