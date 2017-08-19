QtLocation.location-places-qml
==============================

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Places API allows users to discover places of interest and view
details about them, such as address and contact information. Some places
may have additional content associated with them, such as images and
reviews. The Places API also facilitates management of places and
categories, allowing users to save and remove them.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="introductory-concepts">

Introductory Concepts

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Plugin

.. raw:: html

   </h3>

.. raw:: html

   <p>

A Plugin, see the Plugin References.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span> {
   <span class="name">id</span>: <span class="name">myPlugin</span>
   <span class="name">name</span>: <span class="string">&quot;nokia&quot;</span>
   <span class="comment">//specify plugin parameters as necessary</span>
   <span class="comment">//PluginParameter {...}</span>
   <span class="comment">//PluginParameter {...}</span>
   <span class="comment">//...</span>
   }</pre>

.. raw:: html

   <p>

Note: The Nokia plugin must be supplied with some mandatory parameters
as outlined in the Nokia Plugin documentation.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Models, Views and Delegates

.. raw:: html

   </h3>

.. raw:: html

   <p>

The QML Places API is built around the notion of models, views and
delegates.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Model

.. raw:: html

   </td>

.. raw:: html

   <td>

A model holds data items and maintains their structure. The model is
also responsible for retrieving the items from a data source.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

View

.. raw:: html

   </td>

.. raw:: html

   <td>

A view is a visual container that displays the data and manages how
visual items are shown such as in a list or a grid. The view may also be
responsible for navigating the data, for example, scrolling through the
visual items during a flicking motion.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Delegate

.. raw:: html

   </td>

.. raw:: html

   <td>

A delegate defines how individual data elements should appear as visual
items in the view. The models expose a set of data roles and the
delegate uses them to construct a visual item. The delegate may also
define behaviour such as an operation to invoke when a visual item is
clicked.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The Common Use Cases section below demonstrates concrete examples of how
these concepts fit together.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="common-use-cases">

Common Use Cases

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Searching for Places

.. raw:: html

   </h3>

.. raw:: html

   <p>

Searching is accomplished via the PlaceSearchModel. The plugin property
specifies which backend to perform search operations against. Search
parameters may be provided through properties such as the searchTerm and
searchArea. A search operation can then be started by invoking the
update() method. For simplicity, the snippet below invokes update() once
construction of the model as been completed, typically update() would be
invoked in response to a user action such as a button click. While the
search operation is underway the PlaceSearchModel::status property
transitions into the Loading state and when successfully completed moves
into the Ready state.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a></span> {
   <span class="name">id</span>: <span class="name">searchModel</span>
   <span class="name">plugin</span>: <span class="name">myPlugin</span>
   <span class="name">searchTerm</span>: <span class="string">&quot;pizza&quot;</span>
   <span class="name">searchArea</span>: <span class="name">QtPositioning</span>.<span class="name">circle</span>(<span class="name">startCoordinate</span>);
   <span class="name">Component</span>.onCompleted: <span class="name">update</span>()
   }</pre>

.. raw:: html

   <h3>

Display Search Results using a ListView

.. raw:: html

   </h3>

.. raw:: html

   <p>

A ListView can be used to show the search results found by the model. It
defines the visual region for where the results are shown, and in the
case below fills the entirety of its parent. The ListView has built in
behavior that enables the region to respond to flicking events and to
scroll appropriately.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the snippet below, the search model has been assigned to the
ListView's model property. When the model is updated with new results,
the ListView is automatically updated to reflect the model's new data
items.

.. raw:: html

   </p>

.. raw:: html

   <p>

A simple delegate has been bound to the ListView's delegate property.
The PlaceSearchModel exposes a set of roles of which the title and place
roles have been used below, these are of type string and Place
respectively. Essentially for each data item that should be visible in
the view, the view invokes the delegate to create a visual
representation of the item.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">searchModel</span>
   <span class="name">delegate</span>: <span class="name">Component</span> {
   <span class="type">Column</span> {
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">title</span> }
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">place</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">text</span> }
   }
   }
   <span class="name">spacing</span>: <span class="number">10</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note: For simplicty's sake we have assumed that every search result is
of type PlaceSearchResult and so always have access to the place role,
other search result types may not have a place role.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the Places List example for full source code.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Display Search Results using a MapItemView

.. raw:: html

   </h3>

.. raw:: html

   <p>

Instead of a ListView, the PlaceSearchModel can be used in conjunction
with a MapItemView to display markers on a map. Firstly a Map is used to
define the visual region occupied by the map, in this case it fills the
entirety of its parent. Other properties are specified such as the
plugin providing the maps, and the map's center and zoomLevel.

.. raw:: html

   </p>

.. raw:: html

   <p>

Inside the Map, a MapItemView is declared, where the model property has
been set to the search model and a delegate consisting of a MapQuickItem
is used to display a marker image. A marker is shown for every place
that was found by the search model. The delegate uses the place role to
position the marker.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.Map.md">Map</a></span> {
   <span class="name">id</span>: <span class="name">map</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">plugin</span>: <span class="name">myPlugin</span>;
   <span class="type">center</span> {
   <span class="name">latitude</span>: -<span class="number">27.47</span>
   <span class="name">longitude</span>: <span class="number">153.025</span>
   }
   <span class="name">zoomLevel</span>: <span class="number">13</span>
   <span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
   <span class="name">model</span>: <span class="name">searchModel</span>
   <span class="name">delegate</span>: <span class="name">MapQuickItem</span> {
   <span class="name">coordinate</span>: <span class="name">place</span>.<span class="name">location</span>.<span class="name">coordinate</span>
   <span class="name">anchorPoint</span>.x: <span class="name">image</span>.<span class="name">width</span> <span class="operator">*</span> <span class="number">0.5</span>
   <span class="name">anchorPoint</span>.y: <span class="name">image</span>.<span class="name">height</span>
   <span class="name">sourceItem</span>: <span class="name">Image</span> {
   <span class="name">id</span>: <span class="name">image</span>
   <span class="name">source</span>: <span class="string">&quot;marker.png&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note: For simplicty's sake we have assumed that every search result is
of type PlaceSearchResult and so always have access to the place role,
other search result types may not have a place role.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the Places Map example for full source code.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Fetching Place Details

.. raw:: html

   </h3>

.. raw:: html

   <p>

In order to save bandwidth, sometimes a backend will only return places
which are partially populated with details. This can be checked with the
Place::detailsFetched property which indicates whether all availalable
details have been fetched or not. If not, the Place::getDetails() method
can be invoked to fetch the remaining details.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="keyword">if</span> (!<span class="name">place</span>.<span class="name">detailsFetched</span>)
   <span class="name">place</span>.<span class="name">getDetails</span>();</pre>

.. raw:: html

   <h3>

Saving and Removing Places

.. raw:: html

   </h3>

.. raw:: html

   <p>

Some backends may support saving and removing places. This can be done
by calling the Plugin must be assigned to specify which backend we are
saving to. The status property will transition into the Saving state
while the save operation is happening and on successful completion will
move to the Ready state. The following snippet shows how to save and
remove a place using javascript.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">//creating and saving a place</span>
   var <span class="name">place</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; Place { }'</span>, <span class="name">parent</span>);
   <span class="name">place</span>.<span class="name">plugin</span> <span class="operator">=</span> <span class="name">myPlugin</span>;
   <span class="name">place</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;New York&quot;</span>;
   <span class="name">place</span>.<span class="name">location</span>.<span class="name">coordinate</span>.<span class="name">latitude</span> <span class="operator">=</span> <span class="number">40.7</span>
   <span class="name">place</span>.<span class="name">location</span>.<span class="name">coordinate</span>.<span class="name">longitude</span> <span class="operator">=</span> -<span class="number">74.0</span>
   <span class="name">place</span>.<span class="name">save</span>();
   <span class="comment">//removing a place</span>
   <span class="name">place</span>.<span class="name">remove</span>();</pre>

.. raw:: html

   <h3>

Learn More

.. raw:: html

   </h3>

.. raw:: html

   <p>

The above snippets only exhibit a small subset of Places functionality.
Refer to the Places Types shown below for richer content such as images,
reviews etc, as well as more indepth descriptions and explanations.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also the Places (QML) example for a more comprehensive demonstration
on how to use the API.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="places-types">

Places Types

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Data Types

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Category

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type represents a category that a Place can be associated with

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

ContactDetail

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type holds a contact detail such as a phone number or a website address

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

ContactDetails

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type holds contact details for a Place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

ExtendedAttributes

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type holds additional data about a Place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Icon

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type represents an icon image source which can have multiple sizes

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type represents a location that is a position of interest

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

PlaceAttribute

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type holds generic place attribute information

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Ratings

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type holds place rating information

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Supplier

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds data regarding the supplier of a place, a place's image, review,
or editorial

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

User

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type identifies a user who contributed a particular Place content item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Models

.. raw:: html

   </h3>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

CategoryModel

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides a model of the categories supported by a Plugin

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

EditorialModel

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides a model of place editorials

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

ImageModel

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides a model of place images

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

PlaceSearchModel

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Provides access to place search results

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

PlaceSearchSuggestionModel

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Provides access to search term suggestions

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

ReviewModel

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Provides access to reviews of a Place

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@location-places-qml.html -->
