QtLocation.qtlocation-places-example
====================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Places example presents an application window displaying a map. At
the top of the window is a search box, which is used to enter a place
search query. To search for a place enter a search term into the text
box and click the magnifying glass icon. To search for a place by
category, click the category icon to display the list of available
categories and select the desired category. The place search query will
be for places that are near the current location shown on the map.

.. raw:: html

   </p>

.. raw:: html

   <p>

The search box provides search term suggestions when three or more
characters are entered. Selecting one of the suggestions will cause a
place search to be performed with the selected search text.

.. raw:: html

   </p>

.. raw:: html

   <p>

Search results are available from the slide out tab on the left.
Clicking on a search result will display details about the place. If a
places has rich content (editorials, reviews and images), these can be
accessed by the buttons on the details page. To find similar places
click the "Find similar" button. If the current Geo service provider
supports it, buttons to edit and remove a place will also be available.

.. raw:: html

   </p>

.. raw:: html

   <p>

The geo service provider can be changed by accessing the "Provider" menu
at the bottom of the window. Depending on the features supported by the
provider, the "New" menu allows creating new Places and Categories. To
create a new place, select "Place" from the "New" menu and fill in the
fields. Click "Go!" to save the place. To create a new category, select
"Category" from the "New" menu and fill in the fields. Click "Go!" to
save the category.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Places example can work with any of the available geo services
plugins. However, some plugins may require additional plugin parameters
in order to function correctly. Plugin parameters can be passed on the
command line using the --plugin argument, which takes the form:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">-</span><span class="operator">-</span>plugin<span class="operator">.</span><span class="operator">&lt;</span>parameter name<span class="operator">&gt;</span> <span class="operator">&lt;</span>parameter value<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

Refer to the documentation for each of the geo services plugins for
details on what plugin parameters they support. The Nokia services
plugin supplied with Qt requires an app\_id and token pair. See "Qt
Location Nokia Plugin" for details.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="displaying-categories">

Displaying Categories

.. raw:: html

   </h2>

.. raw:: html

   <p>

Before search by category can be performed, the list of available
categories needs to be retrieved. This is achieved by creating a
CategoryModel.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.CategoryModel.md">CategoryModel</a></span> {
   <span class="name">id</span>: <span class="name">categoryModel</span>
   <span class="name">plugin</span>: <span class="name">placesPlugin</span>
   <span class="name">hierarchical</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

The CategoryModel type provides a model of the available categories. It
can provide either a flat list or a hierarchical tree model. In this
example, we use a hierarchical tree model, by setting the hierarchical
property to true. The plugin property is set to placesPlugin which is
the identifier of the Plugin object used for place search throughout the
example.

.. raw:: html

   </p>

.. raw:: html

   <p>

Next we create a view to display the category model.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="name">id</span>: <span class="name">root</span>
   property <span class="type">bool</span> <span class="name">showSave</span>: <span class="number">true</span>
   property <span class="type">bool</span> <span class="name">showRemove</span>: <span class="number">true</span>
   property <span class="type">bool</span> <span class="name">showChildren</span>: <span class="number">true</span>
   signal <span class="type">categoryClicked</span>(variant category)
   signal <span class="type">editClicked</span>(variant category)
   <span class="name">header</span>: <span class="name">IconButton</span> {
   <span class="name">source</span>: <span class="string">&quot;../../resources/left.png&quot;</span>
   <span class="name">pressedSource</span>: <span class="string">&quot;../../resources/left_pressed.png&quot;</span>
   <span class="name">onClicked</span>: <span class="name">categoryListModel</span>.<span class="name">rootIndex</span> <span class="operator">=</span> <span class="name">categoryListModel</span>.<span class="name">parentModelIndex</span>()
   }
   <span class="name">model</span>: <span class="name">VisualDataModel</span> {
   <span class="name">id</span>: <span class="name">categoryListModel</span>
   <span class="name">model</span>: <span class="name">categoryModel</span>
   <span class="name">delegate</span>: <span class="name">CategoryDelegate</span> {
   <span class="name">id</span>: <span class="name">categoryDelegate</span>
   <span class="name">showSave</span>: <span class="name">root</span>.<span class="name">showSave</span>
   <span class="name">showRemove</span>: <span class="name">root</span>.<span class="name">showRemove</span>
   <span class="name">showChildren</span>: <span class="name">root</span>.<span class="name">showChildren</span>
   <span class="name">onClicked</span>: <span class="name">root</span>.<span class="name">categoryClicked</span>(<span class="name">category</span>);
   <span class="name">onArrowClicked</span>: <span class="name">categoryListModel</span>.<span class="name">rootIndex</span> <span class="operator">=</span> <span class="name">categoryListModel</span>.<span class="name">modelIndex</span>(<span class="name">index</span>)
   <span class="name">onCrossClicked</span>: <span class="name">category</span>.<span class="name">remove</span>();
   <span class="name">onEditClicked</span>: <span class="name">root</span>.<span class="name">editClicked</span>(<span class="name">category</span>);
   }
   }
   }</pre>

.. raw:: html

   <p>

Because a hierarchical model is being used, a DelegateModel is needed to
provide navigation functionality. If flat list model was being used the
view could use the CategoryModel directly.

.. raw:: html

   </p>

.. raw:: html

   <p>

The view contains a header item that is used as a back button to
navigate up the category tree. The onClicked handler sets the root index
of the DelegateModel to the parent of the current index. Categories are
displayed by the CategoryDelegate, which provides four signals. The
onArrowClicked handler sets the root index to the current index causing
the sub categories of the selected category to be displayed. The
onClicked handler emits the categoryClicked() signal with a category
parameter indicating which specific category has been chosen. The
onCrossClicked handler will invoke the categories remove() method. The
onEditClicked handler invokes the editClicked() signal of the root item,
this is used to notify which particular category is to be edited.

.. raw:: html

   </p>

.. raw:: html

   <p>

The CategoryDelegate displays the category name and emits the clicked
signal when the text is clicked:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">name</span>
   <span class="name">anchors</span>.left: <span class="name">icon</span>.<span class="name">right</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">verticalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
   <span class="name">text</span>: <span class="name">category</span>.<span class="name">name</span>
   <span class="name">elide</span>: <span class="name">Text</span>.<span class="name">ElideRight</span>
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">root</span>.<span class="name">clicked</span>()
   }</pre>

.. raw:: html

   <p>

The CategoryDelegate also displays icons for editing, removing and
displaying child categories. These icons are shown as desired when the
showSave and showRemove and showChildren properties are set and only
then in cases where the function is supported.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">IconButton</span> {
   <span class="name">id</span>: <span class="name">edit</span>
   <span class="name">anchors</span>.right: <span class="name">cross</span>.<span class="name">left</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">visible</span>: (<span class="name">placesPlugin</span>.<span class="name">name</span> <span class="operator">!=</span> <span class="string">&quot;&quot;</span> ? <span class="name">placesPlugin</span>.<span class="name">supportsPlaces</span>(<span class="name">Plugin</span>.<span class="name">SaveCategoryFeature</span>) : <span class="number">false</span>)
   <span class="operator">&amp;&amp;</span> <span class="name">showSave</span>
   <span class="name">source</span>: <span class="string">&quot;../../resources/pencil.png&quot;</span>
   <span class="name">hoveredSource</span>: <span class="string">&quot;../../resources/pencil_hovered.png&quot;</span>
   <span class="name">pressedSource</span>: <span class="string">&quot;../../resources/pencil_pressed.png&quot;</span>
   <span class="name">onClicked</span>: <span class="name">root</span>.<span class="name">editClicked</span>()
   }
   <span class="type">IconButton</span> {
   <span class="name">id</span>: <span class="name">cross</span>
   <span class="name">anchors</span>.right: <span class="name">arrow</span>.<span class="name">left</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">visible</span>: (<span class="name">placesPlugin</span>.<span class="name">name</span> <span class="operator">!=</span> <span class="string">&quot;&quot;</span> ? <span class="name">placesPlugin</span>.<span class="name">supportsPlaces</span>(<span class="name">Plugin</span>.<span class="name">RemoveCategoryFeature</span>) : <span class="number">false</span>)
   <span class="operator">&amp;&amp;</span> <span class="name">showRemove</span>
   <span class="name">source</span>: <span class="string">&quot;../../resources/cross.png&quot;</span>
   <span class="name">hoveredSource</span>: <span class="string">&quot;../../resources/cross_hovered.png&quot;</span>
   <span class="name">pressedSource</span>: <span class="string">&quot;../../resources/cross_pressed.png&quot;</span>
   <span class="name">onClicked</span>: <span class="name">root</span>.<span class="name">crossClicked</span>()
   }
   <span class="type">IconButton</span> {
   <span class="name">id</span>: <span class="name">arrow</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">visible</span>: <span class="name">model</span>.<span class="name">hasModelChildren</span> <span class="operator">&amp;&amp;</span> <span class="name">showChildren</span>
   <span class="name">source</span>: <span class="string">&quot;../../resources/right.png&quot;</span>
   <span class="name">pressedSource</span>: <span class="string">&quot;../../resources/right_pressed.png&quot;</span>
   <span class="name">onClicked</span>: <span class="name">root</span>.<span class="name">arrowClicked</span>()
   }</pre>

.. raw:: html

   <h2 id="presenting-search-suggestions">

Presenting Search Suggestions

.. raw:: html

   </h2>

.. raw:: html

   <p>

The PlaceSearchSuggestionModel type is used to fetch suggested search
terms based on a partially entered search term.

.. raw:: html

   </p>

.. raw:: html

   <p>

A new suggestion search is triggered whenever the entered search term is
changed.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">onTextChanged</span>: {
   <span class="keyword">if</span> (<span class="name">searchRectangle</span>.<span class="name">suggestionsEnabled</span>) {
   <span class="keyword">if</span> (<span class="name">text</span>.<span class="name">length</span> <span class="operator">&gt;=</span> <span class="number">3</span>) {
   <span class="keyword">if</span> (<span class="name">suggestionModel</span> <span class="operator">!=</span> <span class="number">null</span>) {
   <span class="name">suggestionModel</span>.<span class="name">searchTerm</span> <span class="operator">=</span> <span class="name">text</span>;
   <span class="name">suggestionModel</span>.<span class="name">update</span>();
   }
   } <span class="keyword">else</span> {
   <span class="name">searchRectangle</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

The suggestionsEnabled property is used to temporarily disable search
suggestions when a suggestion is selected (selecting it updates the
search term text). Suggestions are only queried if the length of the
search term is three or more characters, otherwise the search boxes
state is reset.

.. raw:: html

   </p>

.. raw:: html

   <p>

When the status of the PlaceSearchSuggestionModel changes, the state of
the search box is changed to display the search suggestions.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.PlaceSearchSuggestionModel.md">PlaceSearchSuggestionModel</a></span> {
   <span class="name">id</span>: <span class="name">suggestionModel</span>
   <span class="name">plugin</span>: <span class="name">placesPlugin</span>
   <span class="name">searchArea</span>: <span class="name">placeSearchModel</span>.<span class="name">searchArea</span>
   <span class="name">onStatusChanged</span>: {
   <span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">PlaceSearchSuggestionModel</span>.<span class="name">Ready</span>)
   <span class="name">searchRectangle</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;SuggestionsShown&quot;</span>;
   }
   }</pre>

.. raw:: html

   <p>

The main object in the "SuggestionsShown" state is the ListView showing
the search suggestions.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="name">id</span>: <span class="name">suggestionView</span>
   <span class="name">model</span>: <span class="name">suggestionModel</span>
   <span class="name">delegate</span>: <span class="name">Text</span> {
   <span class="name">text</span>: <span class="name">suggestion</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">suggestionsEnabled</span> <span class="operator">=</span> <span class="number">false</span>;
   <span class="name">searchBox</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">suggestion</span>;
   <span class="name">suggestionsEnabled</span> <span class="operator">=</span> <span class="number">true</span>;
   <span class="name">placeSearchModel</span>.<span class="name">searchForText</span>(<span class="name">suggestion</span>);
   <span class="name">searchRectangle</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>;
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

A Text object is used as the delegate to display the suggestion text.
Clicking on the suggested search term updates the search term and
triggers a place search using the search suggestion.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="searching-for-places">

Searching for Places

.. raw:: html

   </h2>

.. raw:: html

   <p>

The PlaceSearchModel type is used to search for places.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a></span> {
   <span class="name">id</span>: <span class="name">placeSearchModel</span>
   <span class="name">plugin</span>: <span class="name">placesPlugin</span>
   <span class="name">searchArea</span>: <span class="name">searchRegion</span>
   <span class="keyword">function</span> <span class="name">searchForCategory</span>(<span class="name">category</span>) {
   <span class="name">searchTerm</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>;
   <span class="name">categories</span> <span class="operator">=</span> <span class="name">category</span>;
   <span class="name">recommendationId</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>;
   <span class="name">searchArea</span> <span class="operator">=</span> <span class="name">searchRegion</span>
   <span class="name">limit</span> <span class="operator">=</span> -<span class="number">1</span>;
   <span class="name">update</span>();
   }
   <span class="keyword">function</span> <span class="name">searchForText</span>(<span class="name">text</span>) {
   <span class="name">searchTerm</span> <span class="operator">=</span> <span class="name">text</span>;
   <span class="name">categories</span> <span class="operator">=</span> <span class="number">null</span>;
   <span class="name">recommendationId</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>;
   <span class="name">searchArea</span> <span class="operator">=</span> <span class="name">searchRegion</span>
   <span class="name">limit</span> <span class="operator">=</span> -<span class="number">1</span>;
   <span class="name">update</span>();
   }
   <span class="keyword">function</span> <span class="name">searchForRecommendations</span>(<span class="name">placeId</span>) {
   <span class="name">searchTerm</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>;
   <span class="name">categories</span> <span class="operator">=</span> <span class="number">null</span>;
   <span class="name">recommendationId</span> <span class="operator">=</span> <span class="name">placeId</span>;
   <span class="name">searchArea</span> <span class="operator">=</span> <span class="number">null</span>;
   <span class="name">limit</span> <span class="operator">=</span> -<span class="number">1</span>;
   <span class="name">update</span>();
   }
   <span class="name">onStatusChanged</span>: {
   <span class="keyword">switch</span> (<span class="name">status</span>) {
   <span class="keyword">case</span> <span class="name">PlaceSearchModel</span>.<span class="name">Ready</span>:
   <span class="name">searchResultView</span>.<span class="name">showSearchResults</span>();
   <span class="keyword">break</span>;
   <span class="keyword">case</span> <span class="name">PlaceSearchModel</span>.<span class="name">Error</span>:
   <span class="name">console</span>.<span class="name">log</span>(<span class="name">errorString</span>());
   }
   }
   }</pre>

.. raw:: html

   <p>

First some of the model's properties are set, which will be used to form
the search request. The searchArea property is set to the searchRegion
object which is a GeoCircle with a center that is linked to the current
location displayed on the Map.

.. raw:: html

   </p>

.. raw:: html

   <p>

Finally, we define two helper functions searchForCategory() and
searchForText(), which set either the categories or searchTerm
properties and invokes the update() method to start the place search.
The search results are displayed in a ListView.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="name">id</span>: <span class="name">searchView</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">placeSearchModel</span>
   <span class="name">delegate</span>: <span class="name">SearchResultDelegate</span> {
   <span class="name">onDisplayPlaceDetails</span>: <span class="name">showPlaceDetails</span>(<span class="name">data</span>)
   <span class="name">onSearchFor</span>: <span class="name">placeSearchModel</span>.<span class="name">searchForText</span>(<span class="name">query</span>);
   }
   <span class="name">footer</span>: <span class="name">Item</span> {
   <span class="name">width</span>: <span class="name">searchView</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="type">Button</span> {
   <span class="name">text</span>: <span class="name">qsTr</span>(<span class="string">&quot;Previous&quot;</span>)
   <span class="name">enabled</span>: <span class="name">placeSearchModel</span>.<span class="name">previousPagesAvailable</span>
   <span class="name">onClicked</span>: <span class="name">placeSearchModel</span>.<span class="name">previousPage</span>()
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
   }
   <span class="type">Button</span> {
   <span class="name">text</span>: <span class="name">qsTr</span>(<span class="string">&quot;Clear&quot;</span>)
   <span class="name">onClicked</span>: <span class="name">placeSearchModel</span>.<span class="name">reset</span>()
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   }
   <span class="type">Button</span> {
   <span class="name">text</span>: <span class="name">qsTr</span>(<span class="string">&quot;Next&quot;</span>)
   <span class="name">enabled</span>: <span class="name">placeSearchModel</span>.<span class="name">nextPagesAvailable</span>
   <span class="name">onClicked</span>: <span class="name">placeSearchModel</span>.<span class="name">nextPage</span>()
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

The delegate used in the ListView, SearchResultDelegate, is designed to
handle multiple search result types via a Loader object. For results of
type PlaceResult the delegate is:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">placeComponent</span>
   <span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">placeRoot</span>
   <span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="type">Rectangle</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;#dbffde&quot;</span>
   <span class="name">visible</span>: <span class="name">model</span>.<span class="name">sponsored</span> <span class="operator">!==</span> <span class="name">undefined</span> ? <span class="name">model</span>.<span class="name">sponsored</span> : <span class="number">false</span>
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">qsTr</span>(<span class="string">&quot;Sponsored result&quot;</span>)
   <span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignRight</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">font</span>.pixelSize: <span class="number">8</span>
   <span class="name">visible</span>: <span class="name">model</span>.<span class="name">sponsored</span> <span class="operator">!==</span> <span class="name">undefined</span> ? <span class="name">model</span>.<span class="name">sponsored</span> : <span class="number">false</span>
   }
   }
   <span class="type">Row</span> {
   <span class="type">Image</span> {
   <span class="name">source</span>: <span class="name">place</span>.<span class="name">favorite</span> ? <span class="string">&quot;../../resources/star.png&quot;</span> : <span class="name">place</span>.<span class="name">icon</span>.<span class="name">url</span>()
   }
   <span class="type">Column</span> {
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">placeName</span>
   <span class="name">text</span>: <span class="name">place</span>.<span class="name">favorite</span> ? <span class="name">place</span>.<span class="name">favorite</span>.<span class="name">name</span> : <span class="name">place</span>.<span class="name">name</span>
   }
   <span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">distanceText</span>
   <span class="name">font</span>.italic: <span class="number">true</span>
   <span class="name">text</span>: <span class="name">PlacesUtils</span>.<span class="name">prettyDistance</span>(<span class="name">distance</span>)
   }
   }
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: <span class="name">placeRoot</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;Pressed&quot;</span>
   <span class="name">onReleased</span>: <span class="name">placeRoot</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>
   <span class="name">onCanceled</span>: <span class="name">placeRoot</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>
   <span class="name">onClicked</span>: {
   <span class="keyword">if</span> (<span class="name">model</span>.<span class="name">type</span> <span class="operator">===</span> <span class="name">undefined</span> <span class="operator">||</span> <span class="name">type</span> <span class="operator">===</span> <span class="name">PlaceSearchModel</span>.<span class="name">PlaceResult</span>) {
   <span class="keyword">if</span> (!<span class="name">place</span>.<span class="name">detailsFetched</span>)
   <span class="name">place</span>.<span class="name">getDetails</span>();
   <span class="name">root</span>.<span class="name">displayPlaceDetails</span>({
   distance: <span class="name">model</span>.<span class="name">distance</span>,
   place: <span class="name">model</span>.<span class="name">place</span>,
   });
   }
   }
   }
   <span class="name">states</span>: [
   <span class="type">State</span> {
   <span class="name">name</span>: <span class="string">&quot;&quot;</span>
   },
   <span class="type">State</span> {
   <span class="name">name</span>: <span class="string">&quot;Pressed&quot;</span>
   <span class="type">PropertyChanges</span> { <span class="name">target</span>: <span class="name">placeName</span>; <span class="name">color</span>: <span class="string">&quot;#1C94FC&quot;</span>}
   <span class="type">PropertyChanges</span> { <span class="name">target</span>: <span class="name">distanceText</span>; <span class="name">color</span>: <span class="string">&quot;#1C94FC&quot;</span>}
   }
   ]
   }
   }</pre>

.. raw:: html

   <h2 id="displaying-place-content">

Displaying Place Content

.. raw:: html

   </h2>

.. raw:: html

   <p>

Places can have additional rich content, including editorials, reviews
and images. Rich content is accessed via a set of models. Content models
are generally not created directly by the application developer, instead
models are obtained from the editorialModel, reviewModel and imageModel
properties of the Place type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">place</span>.<span class="name">editorialModel</span>
   <span class="name">delegate</span>: <span class="name">EditorialDelegate</span> { }
   }</pre>

.. raw:: html

   <h2 id="place-and-category-creation">

Place and Category Creation

.. raw:: html

   </h2>

.. raw:: html

   <p>

Some backends may support creation and saving of new places and
categories. Plugin support can be checked an run-time with the
Plugin::supportsPlaces() method.

.. raw:: html

   </p>

.. raw:: html

   <p>

To save a new place, first create a new Place object, using the
Qt.createQmlObject() method. Assign the appropriate plugin and place
properties and invoke the save() method.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">locationPlace</span>.<span class="name">plugin</span> <span class="operator">=</span> <span class="name">placesPlugin</span>;
   <span class="name">locationPlace</span>.<span class="name">name</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">street</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">1</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">district</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">2</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">city</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">3</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">county</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">4</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">state</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">5</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">countryCode</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">6</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">country</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">7</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">postalCode</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">8</span>).<span class="name">inputText</span>;
   var <span class="name">c</span> = <span class="name">QtPositioning</span>.<span class="name">coordinate</span>(<span class="name">parseFloat</span>(<span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">9</span>).<span class="name">inputText</span>),
   <span class="name">parseFloat</span>(<span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">10</span>).<span class="name">inputText</span>));
   <span class="name">locationPlace</span>.<span class="name">location</span>.<span class="name">coordinate</span> <span class="operator">=</span> <span class="name">c</span>;
   var <span class="name">phone</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail { }'</span>, <span class="name">locationPlace</span>);
   <span class="name">phone</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Phone&quot;</span>;
   <span class="name">phone</span>.<span class="name">value</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">11</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">contactDetails</span>.<span class="name">phone</span> <span class="operator">=</span> <span class="name">phone</span>;
   var <span class="name">fax</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail { }'</span>, <span class="name">locationPlace</span>);
   <span class="name">fax</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Fax&quot;</span>;
   <span class="name">fax</span>.<span class="name">value</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">12</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">contactDetails</span>.<span class="name">fax</span> <span class="operator">=</span> <span class="name">fax</span>;
   var <span class="name">email</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail { }'</span>, <span class="name">locationPlace</span>);
   <span class="name">email</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Email&quot;</span>;
   <span class="name">email</span>.<span class="name">value</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">13</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">contactDetails</span>.<span class="name">email</span> <span class="operator">=</span> <span class="name">email</span>;
   var <span class="name">website</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail { }'</span>, <span class="name">locationPlace</span>);
   <span class="name">website</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Website&quot;</span>;
   <span class="name">website</span>.<span class="name">value</span> <span class="operator">=</span> <span class="name">dataFieldsModel</span>.<span class="name">get</span>(<span class="number">14</span>).<span class="name">inputText</span>;
   <span class="name">locationPlace</span>.<span class="name">contactDetails</span>.<span class="name">website</span> <span class="operator">=</span> <span class="name">website</span>;
   <span class="name">locationPlace</span>.<span class="name">categories</span> <span class="operator">=</span> <span class="name">__categories</span>;
   <span class="name">locationPlace</span>.<span class="name">statusChanged</span>.<span class="name">connect</span>(<span class="name">processStatus</span>);
   <span class="name">locationPlace</span>.<span class="name">save</span>();</pre>

.. raw:: html

   <p>

Category creation is similar:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">onGoButtonClicked</span>: {
   var <span class="name">modifiedCategory</span> = <span class="name">category</span> ? <span class="name">category</span> : <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; Category { }'</span>, <span class="name">page</span>);
   <span class="name">modifiedCategory</span>.<span class="name">plugin</span> <span class="operator">=</span> <span class="name">placesPlugin</span>;
   <span class="name">modifiedCategory</span>.<span class="name">name</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">inputText</span>;
   <span class="name">category</span> <span class="operator">=</span> <span class="name">modifiedCategory</span>;
   <span class="name">category</span>.<span class="name">save</span>();
   }</pre>

.. raw:: html

   <p>

Support for place and category removal can be checked at run-time by
using the Plugin::supportsPlaces method, passing in a
Plugin::PlacesFeatures flag and getting back true if the feature is
supported. For example one would invoke
supportsPlaces(Plugin.RemovePlaceFeature) to check if the
Plugin.RemovePlaceFeature is supported.

.. raw:: html

   </p>

.. raw:: html

   <p>

To remove a place, invoke its remove() method. To remove a category,
invoke its remove() method.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The example detects which plugins are available and has an option to
show them in the via the Provider button.

.. raw:: html

   </p>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

places/places.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/qmlplaceswrapper.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/CategoryDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/CategoryDialog.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/CategoryView.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/EditorialDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/EditorialPage.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/Group.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/MapComponent.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/OptionsDialog.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/PlaceDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/PlaceDialog.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/PlaceEditorials.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/PlaceImages.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/PlaceReviews.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/PlacesUtils.js

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/RatingView.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/ReviewDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/ReviewPage.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/SearchBox.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/SearchResultDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/content/places/SearchResultView.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places/places.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

places/placeswrapper.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@places -->
