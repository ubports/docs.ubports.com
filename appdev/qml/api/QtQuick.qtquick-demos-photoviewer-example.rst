QtQuick.qtquick-demos-photoviewer-example
=========================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Photo Viewer demonstrates the following Qt Quick features:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Using custom types to create screens and screen controls.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using Qt Quick Controls to create an application window.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the Package type with a DelegateModel to provide delegates with a
shared context to multiple views.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using XML list models to download Flickr feeds.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the Flipable type to create labels with different text on the
front and back.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the PathView, Path, PathAttribute, and PathLine types to lay out
photos on a path.

.. raw:: html

   </li>

.. raw:: html

   <li>

Providing feedback to users while data is loading.

.. raw:: html

   </li>

.. raw:: html

   <li>

Localizing applications.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

To run the example from Qt Creator, open the Welcome mode and select the
example from Examples. For more information, visit Building and Running
an Example.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="using-custom-types">

Using Custom Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

In the Photo Viewer app, we use the following custom types that are each
defined in a separate .qml file:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

AlbumDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

BusyIndicator.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

EditableButton.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

PhotoDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

ProgressBar.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

RssModel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

Tag.qml

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

To use the custom types, we add an import statement to the main QML
file, main.qml, that imports the folder called PhotoViewerCore where the
types are located:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;PhotoViewerCore&quot;</pre>

.. raw:: html

   <h2 id="creating-the-main-window">

Creating the Main Window

.. raw:: html

   </h2>

.. raw:: html

   <p>

In main.qml, we use the ApplicationWindow Qt Quick Control to create the
app main window:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ApplicationWindow</span> {
   <span class="name">id</span>: <span class="name">mainWindow</span>
   <span class="name">visible</span>: <span class="number">true</span></pre>

.. raw:: html

   <p>

We use a ListModel type with ListElement types to display photo albums:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">ListModel</span> {
   <span class="name">id</span>: <span class="name">photosModel</span>
   <span class="type">ListElement</span> { <span class="name">tag</span>: <span class="string">&quot;Flowers&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">tag</span>: <span class="string">&quot;Wildlife&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">tag</span>: <span class="string">&quot;Prague&quot;</span> }
   }</pre>

.. raw:: html

   <p>

List elements are defined like other QML types except that they contain
a collection of role definitions instead of properties. Roles both
define how the data is accessed and include the data itself. For each
list element, we use the tag role to specify the photos to download.

.. raw:: html

   </p>

.. raw:: html

   <p>

A DelegateModel type is used together with the Package type to provide
delegates to multiple views. The model property holds the model
providing data for the delegate model and the delegate property
specifies the template defining each item instantiated by a view:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">DelegateModel</span> { <span class="name">id</span>: <span class="name">albumVisualModel</span>; <span class="name">model</span>: <span class="name">photosModel</span>; <span class="name">delegate</span>: <span class="name">AlbumDelegate</span> {} }</pre>

.. raw:: html

   <p>

We use a GridView type to lay out the albums as a grid:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.GridView.md">GridView</a></span> {
   <span class="name">id</span>: <span class="name">albumView</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>; <span class="name">cellWidth</span>: <span class="number">210</span>; <span class="name">cellHeight</span>: <span class="number">220</span>
   <span class="name">model</span>: <span class="name">albumVisualModel</span>.<span class="name">parts</span>.<span class="name">album</span>; <span class="name">visible</span>: <span class="name">albumsShade</span>.<span class="name">opacity</span> <span class="operator">!=</span> <span class="number">1.0</span>
   }</pre>

.. raw:: html

   <p>

The model property references the package name album that we specify in
AlbumDelegate.qml. We use the Package type to allow the photos to move
between different views. The Package contains the named items browser,
fullscreen, and album:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Package</span> {
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">Package</span>.name: <span class="string">'browser'</span>
   <span class="type"><a href="QtQuick.GridView.md">GridView</a></span> {
   <span class="name">id</span>: <span class="name">photosGridView</span>; <span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">grid</span>; <span class="name">width</span>: <span class="name">mainWindow</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">mainWindow</span>.<span class="name">height</span> <span class="operator">-</span> <span class="number">21</span>
   <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">21</span>; <span class="name">cellWidth</span>: <span class="number">160</span>; <span class="name">cellHeight</span>: <span class="number">153</span>; <span class="name">interactive</span>: <span class="number">false</span>
   <span class="name">onCurrentIndexChanged</span>: <span class="name">photosListView</span>.<span class="name">positionViewAtIndex</span>(<span class="name">currentIndex</span>, <span class="name">ListView</span>.<span class="name">Contain</span>)
   }
   }
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">Package</span>.name: <span class="string">'fullscreen'</span>
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">photosListView</span>; <span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">list</span>; <span class="name">orientation</span>: <span class="name">Qt</span>.<span class="name">Horizontal</span>
   <span class="name">width</span>: <span class="name">mainWindow</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">mainWindow</span>.<span class="name">height</span>; <span class="name">interactive</span>: <span class="number">false</span>
   <span class="name">onCurrentIndexChanged</span>: <span class="name">photosGridView</span>.<span class="name">positionViewAtIndex</span>(<span class="name">currentIndex</span>, <span class="name">GridView</span>.<span class="name">Contain</span>)
   <span class="name">highlightRangeMode</span>: <span class="name">ListView</span>.<span class="name">StrictlyEnforceRange</span>; <span class="name">snapMode</span>: <span class="name">ListView</span>.<span class="name">SnapOneItem</span>
   }
   }
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">Package</span>.name: <span class="string">'album'</span>
   <span class="name">id</span>: <span class="name">albumWrapper</span>; <span class="name">width</span>: <span class="number">210</span>; <span class="name">height</span>: <span class="number">220</span></pre>

.. raw:: html

   <p>

The named items are used as the delegates by the views that reference
the special DelegateModel::parts property to select the model that
provides the chosen delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use a ListView type to lay out albums in other views:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">model</span>: <span class="name">albumVisualModel</span>.<span class="name">parts</span>.<span class="name">browser</span>; <span class="name">interactive</span>: <span class="number">false</span> }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">model</span>: <span class="name">albumVisualModel</span>.<span class="name">parts</span>.<span class="name">fullscreen</span>; <span class="name">interactive</span>: <span class="number">false</span> }</pre>

.. raw:: html

   <h2 id="displaying-photos">

Displaying Photos

.. raw:: html

   </h2>

.. raw:: html

   <p>

We use the PhotoDelegate custom type that is specified in
PhotoDelegate.qml to display photos. We use a Package type to lay out
the photos either in a stack, list, or a grid:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Package</span> {
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">stackItem</span>; <span class="name">Package</span>.name: <span class="string">'stack'</span>; <span class="name">width</span>: <span class="number">160</span>; <span class="name">height</span>: <span class="number">153</span>; <span class="name">z</span>: <span class="name">stackItem</span>.<span class="name">PathView</span>.<span class="name">z</span> }
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">listItem</span>; <span class="name">Package</span>.name: <span class="string">'list'</span>; <span class="name">width</span>: <span class="name">mainWindow</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">40</span>; <span class="name">height</span>: <span class="number">153</span> }
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">gridItem</span>; <span class="name">Package</span>.name: <span class="string">'grid'</span>; <span class="name">width</span>: <span class="number">160</span>; <span class="name">height</span>: <span class="number">153</span> }</pre>

.. raw:: html

   <p>

The photos are rotated at random angles by using the Math.random()
JavaScript method:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">160</span>; <span class="name">height</span>: <span class="number">153</span>
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">photoWrapper</span>
   property <span class="type">double</span> <span class="name">randomAngle</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> (<span class="number">2</span> <span class="operator">*</span> <span class="number">6</span> <span class="operator">+</span> <span class="number">1</span>) <span class="operator">-</span> <span class="number">6</span>
   property <span class="type">double</span> <span class="name">randomAngle2</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> (<span class="number">2</span> <span class="operator">*</span> <span class="number">6</span> <span class="operator">+</span> <span class="number">1</span>) <span class="operator">-</span> <span class="number">6</span>
   <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">width</span>: <span class="number">140</span>; <span class="name">height</span>: <span class="number">133</span>
   <span class="name">z</span>: <span class="name">stackItem</span>.<span class="name">PathView</span>.<span class="name">z</span>; <span class="name">rotation</span>: <span class="name">photoWrapper</span>.<span class="name">randomAngle</span></pre>

.. raw:: html

   <p>

We use a BorderImage type to create borders for the images:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQuick.BorderImage.md">BorderImage</a></span> {
   <span class="type">anchors</span> {
   <span class="name">fill</span>: <span class="name">originalImage</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Image</span>.<span class="name">Ready</span> ? <span class="name">border</span> : <span class="name">placeHolder</span>
   <span class="name">leftMargin</span>: -<span class="number">6</span>; <span class="name">topMargin</span>: -<span class="number">6</span>; <span class="name">rightMargin</span>: -<span class="number">8</span>; <span class="name">bottomMargin</span>: -<span class="number">8</span>
   }
   <span class="name">source</span>: <span class="string">'images/box-shadow.png'</span>
   <span class="name">border</span>.left: <span class="number">10</span>; <span class="name">border</span>.top: <span class="number">10</span>; <span class="name">border</span>.right: <span class="number">10</span>; <span class="name">border</span>.bottom: <span class="number">10</span>
   }</pre>

.. raw:: html

   <h2 id="downloading-flickr-feeds">

Downloading Flickr Feeds

.. raw:: html

   </h2>

.. raw:: html

   <p>

In AlbumDelegate.qml, we use the DelegateModel to provide the
PhotoDelegate delegate to the RssModel model:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type">DelegateModel</span> {
   <span class="name">id</span>: <span class="name">visualModel</span>; <span class="name">delegate</span>: <span class="name">PhotoDelegate</span> { }
   <span class="name">model</span>: <span class="name">RssModel</span> { <span class="name">id</span>: <span class="name">rssModel</span>; <span class="name">tags</span>: <span class="name">tag</span> }
   }</pre>

.. raw:: html

   <p>

In RssModel.qml, we use an XmlListModel type as a data source for
Package objects to download photos from the selected feeds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick.XmlListModel 2.0
   <span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
   property <span class="type">string</span> <span class="name">tags</span> : <span class="string">&quot;&quot;</span>
   <span class="keyword">function</span> <span class="name">encodeTags</span>(<span class="name">x</span>) { <span class="keyword">return</span> <span class="name">encodeURIComponent</span>(<span class="name">x</span>.<span class="name">replace</span>(<span class="string">' '</span>,<span class="string">','</span>)); }</pre>

.. raw:: html

   <p>

We use the tags custom property to specify which photos to download. The
encodeTags custom function uses the encodeURIComponent JavaScript method
to ensure that the requests to the server are correctly formatted.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the source property to fetch photos that have the specified tags
attached from public Flickr feeds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">source</span>: <span class="string">&quot;http://api.flickr.com/services/feeds/photos_public.gne?&quot;</span><span class="operator">+</span>(<span class="name">tags</span> ? <span class="string">&quot;tags=&quot;</span><span class="operator">+</span><span class="name">encodeTags</span>(<span class="name">tags</span>)<span class="operator">+</span><span class="string">&quot;&amp;&quot;</span> : <span class="string">&quot;&quot;</span>)
   <span class="name">query</span>: <span class="string">&quot;/feed/entry&quot;</span>
   <span class="name">namespaceDeclarations</span>: <span class="string">&quot;declare default element namespace 'http://www.w3.org/2005/Atom';&quot;</span></pre>

.. raw:: html

   <p>

The query property specifies that the XmlListModel generates a model
item for each feed entry.

.. raw:: html

   </p>

.. raw:: html

   <p>

The namespaceDeclarations property specifies that the requested document
uses the namespace http://www.w3.org/2005/Atom, which is declared as the
default namespace.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the XmlRole type to specify the model item attributes. Each model
item has the title, content, and hq attributes that match the values of
the corresponding feed entry:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;content&quot;</span>; <span class="name">query</span>: <span class="string">&quot;content/string()&quot;</span> }
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;hq&quot;</span>; <span class="name">query</span>: <span class="string">&quot;link[@rel='enclosure']/@href/string()&quot;</span> }</pre>

.. raw:: html

   <h2 id="creating-flipable-labels">

Creating Flipable Labels

.. raw:: html

   </h2>

.. raw:: html

   <p>

When users select the Edit button, the album labels are flipped from
their front side to their back side and the text on them changes from
album name to Remove.

.. raw:: html

   </p>

.. raw:: html

   <p>

In AlbumDelegate.qml, we use the Tag custom type to specify the text to
display on the front and back sides of album labels:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type">Tag</span> {
   <span class="type">anchors</span> { <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">bottomMargin</span>: <span class="number">10</span> }
   <span class="name">frontLabel</span>: <span class="name">tag</span>; <span class="name">backLabel</span>: <span class="name">qsTr</span>(<span class="string">&quot;Remove&quot;</span>); <span class="name">flipped</span>: <span class="name">mainWindow</span>.<span class="name">editMode</span>
   <span class="name">onTagChanged</span>: <span class="name">rssModel</span>.<span class="name">tags</span> <span class="operator">=</span> <span class="name">tag</span>
   <span class="name">onBackClicked</span>: <span class="keyword">if</span> (<span class="name">mainWindow</span>.<span class="name">editMode</span>) <span class="name">photosModel</span>.<span class="name">remove</span>(<span class="name">index</span>);
   }</pre>

.. raw:: html

   <p>

The onTagChanged signal handler is used to change the tag based on which
the model is populated. The onBackClicked signal handler is used to
remove the album.

.. raw:: html

   </p>

.. raw:: html

   <p>

In Tag.qml, we use a Flipable type with custom properties and signals to
create the labels:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Flipable.md">Flipable</a></span> {
   <span class="name">id</span>: <span class="name">flipable</span>
   property <span class="type">alias</span> <span class="name">frontLabel</span>: <span class="name">frontButton</span>.<span class="name">label</span>
   property <span class="type">alias</span> <span class="name">backLabel</span>: <span class="name">backButton</span>.<span class="name">label</span>
   property <span class="type">int</span> <span class="name">angle</span>: <span class="number">0</span>
   property <span class="type">int</span> <span class="name">randomAngle</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> (<span class="number">2</span> <span class="operator">*</span> <span class="number">6</span> <span class="operator">+</span> <span class="number">1</span>) <span class="operator">-</span> <span class="number">6</span>
   property <span class="type">bool</span> <span class="name">flipped</span>: <span class="number">false</span>
   signal <span class="type">frontClicked</span>
   signal <span class="type">backClicked</span>
   signal <span class="type">tagChanged</span>(string tag)</pre>

.. raw:: html

   <p>

The front property holds the EditableButton custom type that enables
users to edit the label text:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">front</span>: <span class="name">EditableButton</span> {
   <span class="name">id</span>: <span class="name">frontButton</span>; <span class="name">rotation</span>: <span class="name">flipable</span>.<span class="name">randomAngle</span>
   <span class="type">anchors</span> { <span class="name">centerIn</span>: <span class="name">parent</span>; <span class="name">verticalCenterOffset</span>: -<span class="number">20</span> }
   <span class="name">onClicked</span>: <span class="name">flipable</span>.<span class="name">frontClicked</span>()
   <span class="name">onLabelChanged</span>: <span class="name">flipable</span>.<span class="name">tagChanged</span>(<span class="name">label</span>)
   }</pre>

.. raw:: html

   <p>

The back property holds the Button custom type that is used to remove
the album:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">back</span>: <span class="name">Button</span> {
   <span class="name">id</span>: <span class="name">backButton</span>; <span class="name">tint</span>: <span class="string">&quot;red&quot;</span>; <span class="name">rotation</span>: <span class="name">flipable</span>.<span class="name">randomAngle</span>
   <span class="type">anchors</span> { <span class="name">centerIn</span>: <span class="name">parent</span>; <span class="name">verticalCenterOffset</span>: -<span class="number">20</span> }
   <span class="name">onClicked</span>: <span class="name">flipable</span>.<span class="name">backClicked</span>()
   }</pre>

.. raw:: html

   <h2 id="laying-out-photos-on-a-path">

Laying out Photos on a Path

.. raw:: html

   </h2>

.. raw:: html

   <p>

In AlbumDelegate.qml, we use a PathView type to lay out the photos
provided by the visualModel.parts.stack model on a path that has the
form of a stack:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
   <span class="name">id</span>: <span class="name">photosPathView</span>; <span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">stack</span>; <span class="name">pathItemCount</span>: <span class="number">5</span>
   <span class="name">visible</span>: !<span class="name">busyIndicator</span>.<span class="name">visible</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>; <span class="name">anchors</span>.verticalCenterOffset: -<span class="number">30</span>
   <span class="name">path</span>: <span class="name">Path</span> {
   <span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">'z'</span>; <span class="name">value</span>: <span class="number">9999.0</span> }
   <span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">1</span>; <span class="name">y</span>: <span class="number">1</span> }
   <span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">'z'</span>; <span class="name">value</span>: <span class="number">0.0</span> }
   }
   }</pre>

.. raw:: html

   <p>

The path property holds the Path type that defines the path used by the
PathView. The PathAttribute types are used to set a range of 0 to 9999
for the z attribute. This way, the path creates a stack of album photos.
Because each PhotoDelegate is slightly rotated at a random angle, this
results in a realistic-looking stack of photos.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="providing-feedback-to-users">

Providing Feedback to Users

.. raw:: html

   </h2>

.. raw:: html

   <p>

We use a busy indicator and a progress bar to indicate activity while
Flickr feeds and photos are being loaded.

.. raw:: html

   </p>

.. raw:: html

   <p>

In AlbumDelegate.qml, we use the BusyIndicator custom type and the on
custom property to display a rotating image while the Flickr feed is
being loaded:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type">BusyIndicator</span> {
   <span class="name">id</span>: <span class="name">busyIndicator</span>
   <span class="type">anchors</span> { <span class="name">centerIn</span>: <span class="name">parent</span>; <span class="name">verticalCenterOffset</span>: -<span class="number">20</span> }
   <span class="name">on</span>: <span class="name">rssModel</span>.<span class="name">status</span> <span class="operator">!=</span> <span class="name">XmlListModel</span>.<span class="name">Ready</span>
   }</pre>

.. raw:: html

   <p>

In PhotoDelegate.qml, we use them to indicate activity while a photo is
being loaded:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="type">BusyIndicator</span> { <span class="name">anchors</span>.centerIn: <span class="name">parent</span>; <span class="name">on</span>: <span class="name">originalImage</span>.<span class="name">status</span> <span class="operator">!=</span> <span class="name">Image</span>.<span class="name">Ready</span> }</pre>

.. raw:: html

   <p>

We define the BusyIndicator type in BusyIndicator.qml. We use an Image
type to display an image and apply a NumberAnimation to its rotation
property to rotate the image in an infinite loop:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">bool</span> <span class="name">on</span>: <span class="number">false</span>
   <span class="name">source</span>: <span class="string">&quot;images/busy.png&quot;</span>; <span class="name">visible</span>: <span class="name">container</span>.<span class="name">on</span>
   NumberAnimation on <span class="name">rotation</span> { <span class="name">running</span>: <span class="name">container</span>.<span class="name">on</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">360</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>; <span class="name">duration</span>: <span class="number">1200</span> }
   }</pre>

.. raw:: html

   <p>

In your apps, you can also use the BusyIndicator type from the Qt Quick
Controls module.

.. raw:: html

   </p>

.. raw:: html

   <p>

In main.qml, we use the ProgressBar custom type to indicate progress
while a high quality version of a photo is being opened on full screen:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">ProgressBar</span> {
   <span class="name">progress</span>: <span class="name">mainWindow</span>.<span class="name">downloadProgress</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">4</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">opacity</span>: <span class="name">mainWindow</span>.<span class="name">imageLoading</span>; <span class="name">visible</span>: <span class="name">opacity</span> <span class="operator">!=</span> <span class="number">0.0</span>
   }</pre>

.. raw:: html

   <p>

We define the ProgressBar type in ProgressBar.qml. We use a Rectangle
type to create the progress bar and apply a NumberAnimation to its
opacity property to change the color of the bar from black to white as
data loading proceeds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">real</span> <span class="name">progress</span>: <span class="number">0</span>
   Behavior on <span class="name">opacity</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">duration</span>: <span class="number">600</span> } }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">color</span>: <span class="string">&quot;black&quot;</span>; <span class="name">opacity</span>: <span class="number">0.5</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">fill</span>; <span class="name">color</span>: <span class="string">&quot;white&quot;</span>; <span class="name">height</span>: <span class="name">container</span>.<span class="name">height</span>
   <span class="name">width</span>: <span class="name">container</span>.<span class="name">width</span> <span class="operator">*</span> <span class="name">container</span>.<span class="name">progress</span>
   }
   }</pre>

.. raw:: html

   <p>

In your apps, you can also use the ProgressBar type from the Qt Quick
Controls module.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="localizing-applications">

Localizing Applications

.. raw:: html

   </h2>

.. raw:: html

   <p>

The example application is translated into German and French. The
translated strings are loaded at runtime according to the current
locale.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use a Column type in main.qml to position buttons for adding and
editing albums and exiting the application:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">spacing</span>: <span class="number">20</span>; <span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>; <span class="name">rightMargin</span>: <span class="number">20</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">newButton</span>; <span class="name">label</span>: <span class="name">qsTr</span>(<span class="string">&quot;Add&quot;</span>); <span class="name">rotation</span>: <span class="number">3</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">onClicked</span>: {
   <span class="name">mainWindow</span>.<span class="name">editMode</span> <span class="operator">=</span> <span class="number">false</span>
   <span class="name">photosModel</span>.<span class="name">append</span>( { tag: <span class="string">&quot;&quot;</span> } )
   <span class="name">albumView</span>.<span class="name">positionViewAtIndex</span>(<span class="name">albumView</span>.<span class="name">count</span> <span class="operator">-</span> <span class="number">1</span>, <span class="name">GridView</span>.<span class="name">Contain</span>)
   }
   }
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">deleteButton</span>; <span class="name">label</span>: <span class="name">qsTr</span>(<span class="string">&quot;Edit&quot;</span>); <span class="name">rotation</span>: -<span class="number">2</span>;
   <span class="name">onClicked</span>: <span class="name">mainWindow</span>.<span class="name">editMode</span> <span class="operator">=</span> !<span class="name">mainWindow</span>.<span class="name">editMode</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   }
   <span class="type">Button</span> {
   <span class="name">id</span>: <span class="name">quitButton</span>; <span class="name">label</span>: <span class="name">qsTr</span>(<span class="string">&quot;Quit&quot;</span>); <span class="name">rotation</span>: -<span class="number">2</span>;
   <span class="name">onClicked</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   }
   }</pre>

.. raw:: html

   <p>

We use the qsTr() command to mark the button labels translatable.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the lupdate tool to generate the translation source files and the
lrelease tool to convert the translated strings to the QM files used by
the application at runtime. These files are stored in the i18n
directory.

.. raw:: html

   </p>

.. raw:: html

   <p>

To make the application aware of the translations, we add code to the
main() function in the main.cpp file. The code creates a QTranslator
object, loads a translation according to the current locale at runtime,
and installs the translator object into the application:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
   {
   <span class="type">QApplication</span> app(argc<span class="operator">,</span> argv);
   <span class="type">QTranslator</span> qtTranslator;
   qtTranslator<span class="operator">.</span>load(<span class="string">&quot;qml_&quot;</span> <span class="operator">+</span> <span class="type">QLocale</span><span class="operator">::</span>system()<span class="operator">.</span>name()<span class="operator">,</span> <span class="string">&quot;:/i18n/&quot;</span>);
   app<span class="operator">.</span>installTranslator(<span class="operator">&amp;</span>qtTranslator);</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

demos/photoviewer/main.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/PhotoViewerCore/AlbumDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/PhotoViewerCore/BusyIndicator.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/PhotoViewerCore/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/PhotoViewerCore/EditableButton.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/PhotoViewerCore/PhotoDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/PhotoViewerCore/ProgressBar.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/PhotoViewerCore/RssModel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/PhotoViewerCore/Tag.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/PhotoViewerCore/script/script.js

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/i18n/qml\_de.qm

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/i18n/qml\_fr.qm

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/photoviewer.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/photoviewer/qml.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QML Applications.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@demos/photoviewer -->
