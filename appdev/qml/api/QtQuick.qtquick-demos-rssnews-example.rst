QtQuick.qtquick-demos-rssnews-example
=====================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

RSS News demonstrates the following Qt Quick features:

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

Using list models and list elements to represent data.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using XML list models to download XML data.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using list views to display data.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the Component type to create a footer for the news item list view.

.. raw:: html

   </li>

.. raw:: html

   <li>

Using the Image type to create a button for closing the app.

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

In the RSS News app, we use the following custom types that are each
defined in a separate .qml file:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

BusyIndicator.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

CategoryDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

NewsDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

RssFeeds.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

ScrollBar.qml

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

To use the custom types, we add an import statement to the main QML
file, rssnews.qml that imports the folder called content where the types
are located:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;./content&quot;</pre>

.. raw:: html

   <h2 id="creating-the-main-window">

Creating the Main Window

.. raw:: html

   </h2>

.. raw:: html

   <p>

In rssnews.qml, we use a Rectangle type with custom properties to create
the app main window:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">window</span>
   <span class="name">width</span>: <span class="number">800</span>
   <span class="name">height</span>: <span class="number">480</span>
   property <span class="type">string</span> <span class="name">currentFeed</span>: <span class="name">rssFeeds</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">feed</span>
   property <span class="type">bool</span> <span class="name">loading</span>: <span class="name">feedModel</span>.<span class="name">status</span> <span class="operator">===</span> <span class="name">XmlListModel</span>.<span class="name">Loading</span>
   property <span class="type">bool</span> <span class="name">isPortrait</span>: <span class="name">Screen</span>.<span class="name">primaryOrientation</span> <span class="operator">===</span> <span class="name">Qt</span>.<span class="name">PortraitOrientation</span></pre>

.. raw:: html

   <p>

We will use the custom properties later for loading XML data and for
adjusting the screen layout depending on its orientation.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="creating-a-category-list">

Creating a Category List

.. raw:: html

   </h2>

.. raw:: html

   <p>

In rssnews.qml, we use the RssFeeds custom type that we specify in
RssFeeds.qml to create a list of feed categories:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">RssFeeds</span> { <span class="name">id</span>: <span class="name">rssFeeds</span> }</pre>

.. raw:: html

   <p>

In RssFeeds.qml, we use a ListModel type with a ListElement type to
create a category list where list elements represent feed categories:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListModel</span> {
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Top Stories&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/topstories&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/TopStories.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;World&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/world&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/World.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Europe&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/europe&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/Europe.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Asia&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/asia&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/Asia.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;U.S. National&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/us&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/USNational.jpg&quot;</span>  }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Politics&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/politics&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/Politics.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Business&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/business&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/Business.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Technology&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/tech&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/Technology.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Entertainment&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/entertainment&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/Entertainment.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Health&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/health&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/Health.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Science&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/science&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/Science.jpg&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Sports&quot;</span>; <span class="name">feed</span>: <span class="string">&quot;news.yahoo.com/rss/sports&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images/Sports.jpg&quot;</span> }
   }</pre>

.. raw:: html

   <p>

List elements are defined like other QML types except that they contain
a collection of role definitions instead of properties. Roles both
define how the data is accessed and include the data itself.

.. raw:: html

   </p>

.. raw:: html

   <p>

For each list element, we use the name role to specify the category
name, the feed role to specify the URL to load the data from, and the
image role to display an image for the category.

.. raw:: html

   </p>

.. raw:: html

   <p>

In rssnews.qml, we use a ListView type to display the category list:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">categories</span>
   property <span class="type">int</span> <span class="name">itemWidth</span>: <span class="number">190</span>
   <span class="name">width</span>: <span class="name">isPortrait</span> ? <span class="name">parent</span>.<span class="name">width</span> : <span class="name">itemWidth</span>
   <span class="name">height</span>: <span class="name">isPortrait</span> ? <span class="name">itemWidth</span> : <span class="name">parent</span>.<span class="name">height</span>
   <span class="name">orientation</span>: <span class="name">isPortrait</span> ? <span class="name">ListView</span>.<span class="name">Horizontal</span> : <span class="name">ListView</span>.<span class="name">Vertical</span>
   <span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">model</span>: <span class="name">rssFeeds</span>
   <span class="name">delegate</span>: <span class="name">CategoryDelegate</span> { <span class="name">itemSize</span>: <span class="name">categories</span>.<span class="name">itemWidth</span> }
   <span class="name">spacing</span>: <span class="number">3</span>
   }</pre>

.. raw:: html

   <p>

To lay out the category list horizontally at the top of the window in
portrait orientation and vertically on the left side in landscape
orientation, we use the orientation property. Based on the orientation,
we bind either the width or the height of the list to a fixed value
(itemWidth).

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the anchors.top property to position the list view at the top of
the screen in both orientations.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the model property to load XML data from the rssFeeds model, and
CategoryDelegate as the delegate to instantiate each item in the list.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="creating-list-elements">

Creating List Elements

.. raw:: html

   </h2>

.. raw:: html

   <p>

In CategoryDelegate.qml, we use the Rectangle type with custom
properties to create list elements:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">delegate</span>
   property <span class="type">bool</span> <span class="name">selected</span>: <span class="name">ListView</span>.<span class="name">isCurrentItem</span></pre>

.. raw:: html

   <p>

We set the selected property to the ListView.isCurrentItem attached
property to specify that selected is true if delegate is the current
item.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the Image type source property to display the image, centered in
the delegate, specified for the list element by the image role in the
rssFeeds list model:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">source</span>: <span class="name">image</span>
   }</pre>

.. raw:: html

   <p>

We use a Text type to add titles to list elements:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">titleText</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">leftMargin</span>: <span class="number">20</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>; <span class="name">rightMargin</span>: <span class="number">20</span>
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>; <span class="name">topMargin</span>: <span class="number">20</span>
   }
   <span class="type">font</span> { <span class="name">pixelSize</span>: <span class="number">18</span>; <span class="name">bold</span>: <span class="number">true</span> }
   <span class="name">text</span>: <span class="name">name</span>
   <span class="name">color</span>: <span class="name">selected</span> ? <span class="string">&quot;#ffffff&quot;</span> : <span class="string">&quot;#ebebdd&quot;</span>
   <span class="name">scale</span>: <span class="name">selected</span> ? <span class="number">1.15</span> : <span class="number">1.0</span>
   Behavior on <span class="name">color</span> { <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">150</span> } }
   Behavior on <span class="name">scale</span> { <span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">duration</span>: <span class="number">300</span> } }</pre>

.. raw:: html

   <p>

We use the anchors property to position the title at the top of the list
element, with a 20-pixel margin. We use font properties to adjust font
size and text formatting.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the color property to brighten the text and to scale it slightly
larger when the list item is the current item. By applying a Behavior to
the property, we animate the actions of selecting and deselecting list
items.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use a MouseArea type to download XML data when users tap a category
list element:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">delegate</span>
   <span class="name">onClicked</span>: {
   <span class="name">delegate</span>.<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">currentIndex</span> <span class="operator">=</span> <span class="name">index</span>
   <span class="keyword">if</span> (<span class="name">window</span>.<span class="name">currentFeed</span> <span class="operator">==</span> <span class="name">feed</span>)
   <span class="name">feedModel</span>.<span class="name">reload</span>()
   <span class="keyword">else</span>
   <span class="name">window</span>.<span class="name">currentFeed</span> <span class="operator">=</span> <span class="name">feed</span>
   }
   }</pre>

.. raw:: html

   <p>

The anchors.fill property is set to delegate to enable users to tap
anywhere within the list element.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the onClicked signal handler to load the XML data for the
category list. If the tapped category is already current, the reload()
function is called to reload the data.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="downloading-xml-data">

Downloading XML Data

.. raw:: html

   </h2>

.. raw:: html

   <p>

In rssnews.qml, we use an XmlListModel type as a data source for
ListView elements to display news items in the selected category:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
   <span class="name">id</span>: <span class="name">feedModel</span>
   <span class="name">source</span>: <span class="string">&quot;http://&quot;</span> <span class="operator">+</span> <span class="name">window</span>.<span class="name">currentFeed</span>
   <span class="name">query</span>: <span class="string">&quot;/rss/channel/item[child::media:content]&quot;</span>
   <span class="name">namespaceDeclarations</span>: <span class="string">&quot;declare namespace media = 'http://search.yahoo.com/mrss/';&quot;</span></pre>

.. raw:: html

   <p>

We use the source property and the window.currentFeed custom property to
fetch news items for the selected category.

.. raw:: html

   </p>

.. raw:: html

   <p>

The query property specifies that the XmlListModel generates a model
item for each <item> in the XML document.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the XmlRole type to specify the model item attributes. Each model
item has the title, description, image, link, and pubDate attributes
that match the values of the corresponding <item> in the XML document:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
   <span class="comment">// Remove any links from the description</span>
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;description&quot;</span>; <span class="name">query</span>: <span class="string">&quot;fn:replace(description/string(), '\&amp;lt;a href=.*\/a\&amp;gt;', '')&quot;</span> }
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;image&quot;</span>; <span class="name">query</span>: <span class="string">&quot;media:content/@url/string()&quot;</span> }
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;link&quot;</span>; <span class="name">query</span>: <span class="string">&quot;link/string()&quot;</span> }
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;pubDate&quot;</span>; <span class="name">query</span>: <span class="string">&quot;pubDate/string()&quot;</span> }
   }</pre>

.. raw:: html

   <p>

We use the feedModel model in a ListView type to display the data:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">list</span>
   <span class="name">anchors</span>.left: <span class="name">isPortrait</span> ? <span class="name">window</span>.<span class="name">left</span> : <span class="name">categories</span>.<span class="name">right</span>
   <span class="name">anchors</span>.right: <span class="name">closeButton</span>.<span class="name">left</span>
   <span class="name">anchors</span>.top: <span class="name">isPortrait</span> ? <span class="name">categories</span>.<span class="name">bottom</span> : <span class="name">window</span>.<span class="name">top</span>
   <span class="name">anchors</span>.bottom: <span class="name">window</span>.<span class="name">bottom</span>
   <span class="name">anchors</span>.leftMargin: <span class="number">30</span>
   <span class="name">anchors</span>.rightMargin: <span class="number">4</span>
   <span class="name">clip</span>: <span class="name">isPortrait</span>
   <span class="name">model</span>: <span class="name">feedModel</span>
   <span class="name">footer</span>: <span class="name">footerText</span>
   <span class="name">delegate</span>: <span class="name">NewsDelegate</span> {}
   }</pre>

.. raw:: html

   <p>

To list the news items below the category list in portrait orientation
and to its right in landscape orientation, we use the isPortrait custom
property to anchor the top of the news items list to the left of window
and bottom of categories in portrait orientation and to the right of
categories and bottom of window in landscape orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the anchors.bottom property to anchor the bottom of the list view
to the bottom of the window in both orientations.

.. raw:: html

   </p>

.. raw:: html

   <p>

In portrait orientation, we clip the painting of the news items to the
bounding rectangle of the list view to avoid graphical artifacts when
news items are scrolled over other items. In landscape, this is not
required, because the list spans the entire screen vertically.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the model property to load XML data from the feedModel model, and
use NewsDelegate as the delegate to instantiate each item in the list.

.. raw:: html

   </p>

.. raw:: html

   <p>

In NewsDelegate.qml, we use a Column type to lay out the XML data:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">delegate</span>
   <span class="name">width</span>: <span class="name">delegate</span>.<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">width</span>
   <span class="name">spacing</span>: <span class="number">8</span></pre>

.. raw:: html

   <p>

Within the column, we use a Row and another column to position images
and title text:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">spacing</span>: <span class="number">8</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">4</span>
   <span class="name">height</span>: <span class="name">titleText</span>.<span class="name">font</span>.<span class="name">pixelSize</span> <span class="operator">/</span> <span class="number">4</span>
   }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">titleImage</span>
   <span class="name">source</span>: <span class="name">image</span>
   }
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">titleText</span>
   <span class="name">text</span>: <span class="name">title</span>
   <span class="name">width</span>: <span class="name">delegate</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">titleImage</span>.<span class="name">width</span>
   <span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
   <span class="name">font</span>.pixelSize: <span class="number">26</span>
   <span class="name">font</span>.bold: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

We generate a textual representation of how long ago the item was posted
using the timeSinceEvent() JavaScript function:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">width</span>: <span class="name">delegate</span>.<span class="name">width</span>
   <span class="name">font</span>.pixelSize: <span class="number">12</span>
   <span class="name">textFormat</span>: <span class="name">Text</span>.<span class="name">RichText</span>
   <span class="name">font</span>.italic: <span class="number">true</span>
   <span class="name">text</span>: <span class="name">timeSinceEvent</span>(<span class="name">pubDate</span>) <span class="operator">+</span> <span class="string">&quot; (&lt;a href=\&quot;&quot;</span> <span class="operator">+</span> <span class="name">link</span> <span class="operator">+</span> <span class="string">&quot;\&quot;&gt;Link&lt;/a&gt;)&quot;</span>
   <span class="name">onLinkActivated</span>: {
   <span class="name">Qt</span>.<span class="name">openUrlExternally</span>(<span class="name">link</span>)
   }
   }</pre>

.. raw:: html

   <p>

We use the onLinkActivated signal handler to open the URL in an external
browser when users select the link.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="providing-feedback-to-users">

Providing Feedback to Users

.. raw:: html

   </h2>

.. raw:: html

   <p>

In CategoryDelegate.qml, we use the BusyIndicator custom type to
indicate activity while the XML data is being loaded:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">BusyIndicator</span> {
   <span class="name">scale</span>: <span class="number">0.8</span>
   <span class="name">visible</span>: <span class="name">delegate</span>.<span class="name">ListView</span>.<span class="name">isCurrentItem</span> <span class="operator">&amp;&amp;</span> <span class="name">window</span>.<span class="name">loading</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   }</pre>

.. raw:: html

   <p>

We use the scale property to reduce the indicator size to 0.8. We bind
the visible property to the isCurrentItem attached property of the
delegate list view and loading property of the main window to display
the indicator image when a category list item is the current item and
XML data is being loaded.

.. raw:: html

   </p>

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
   <span class="name">source</span>: <span class="string">&quot;images/busy.png&quot;</span>;
   NumberAnimation on <span class="name">rotation</span> {
   <span class="name">running</span>: <span class="name">container</span>.<span class="name">visible</span>
   <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">360</span>;
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>;
   <span class="name">duration</span>: <span class="number">1200</span>
   }
   }</pre>

.. raw:: html

   <p>

In your apps, you can also use the BusyIndicator type from the Qt Quick
Controls module.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="creating-scroll-bars">

Creating Scroll Bars

.. raw:: html

   </h2>

.. raw:: html

   <p>

In rssnews.qml, we use our own custom ScrollBar type to create scroll
bars in the category and news item list views. In your apps, you can
also use the ScrollView type from the Qt Quick Controls module.

.. raw:: html

   </p>

.. raw:: html

   <p>

First, we create a scroll bar in the category list view. We bind the
orientation property to the isPortrait property and to the Horizontal
value of the Qt::Orientation enum type to display a horizontal scroll
bar in portrait orientation and to the Vertical value to display a
vertical scroll bar in landscape orientation:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">ScrollBar</span> {
   <span class="name">id</span>: <span class="name">listScrollBar</span>
   <span class="name">orientation</span>: <span class="name">isPortrait</span> ? <span class="name">Qt</span>.<span class="name">Horizontal</span> : <span class="name">Qt</span>.<span class="name">Vertical</span>
   <span class="name">height</span>: <span class="name">isPortrait</span> ? <span class="number">8</span> : <span class="name">categories</span>.<span class="name">height</span>;
   <span class="name">width</span>: <span class="name">isPortrait</span> ? <span class="name">categories</span>.<span class="name">width</span> : <span class="number">8</span>
   <span class="name">scrollArea</span>: <span class="name">categories</span>;
   <span class="name">anchors</span>.right: <span class="name">categories</span>.<span class="name">right</span>
   }</pre>

.. raw:: html

   <p>

Same as with the categories list view, we adjust the width and height of
the scroll bar based on the isPortrait property.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the scrollArea property to display the scroll bar in the
categories list view.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the anchors.right property to anchor the scroll bar to the right
side of the category list.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">ScrollBar</span> {
   <span class="name">scrollArea</span>: <span class="name">list</span>
   <span class="name">width</span>: <span class="number">8</span>
   <span class="name">anchors</span>.right: <span class="name">window</span>.<span class="name">right</span>
   <span class="name">anchors</span>.top: <span class="name">isPortrait</span> ? <span class="name">categories</span>.<span class="name">bottom</span> : <span class="name">window</span>.<span class="name">top</span>
   <span class="name">anchors</span>.bottom: <span class="name">window</span>.<span class="name">bottom</span>
   }</pre>

.. raw:: html

   <p>

Second, we create another scroll bar in the news item list view. We want
a vertical scroll bar to appear on the right side of the view regardless
of screen orientation, so we can set the width property to 8 and bind
the anchors.right property to the window.right property. We use the
anchors.top property to anchor the scroll bar top to the bottom of the
category list in portrait orientation and to the top of the news item
list in landscape orientation. We use the anchors.bottom property to
anchor the scroll bar bottom to the list view bottom in both
orientations.

.. raw:: html

   </p>

.. raw:: html

   <p>

We define the ScrollBar type in ScrollBar.qml. We use an Item type with
custom properties to create a container for the scroll bar:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">variant</span> <span class="name">scrollArea</span>
   property <span class="type">int</span> <span class="name">orientation</span>: <span class="name">Qt</span>.<span class="name">Vertical</span>
   <span class="name">opacity</span>: <span class="number">0</span></pre>

.. raw:: html

   <p>

We use a BorderImage type to display the scroll bar thumb at the x and y
position that we calculate by using the position() function:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.BorderImage.md">BorderImage</a></span> {
   <span class="name">source</span>: <span class="string">&quot;images/scrollbar.png&quot;</span>
   <span class="type">border</span> { <span class="name">left</span>: <span class="number">1</span>; <span class="name">right</span>: <span class="number">1</span>; <span class="name">top</span>: <span class="number">1</span>; <span class="name">bottom</span>: <span class="number">1</span> }
   <span class="name">x</span>: <span class="name">container</span>.<span class="name">orientation</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Vertical</span> ? <span class="number">2</span> : <span class="name">position</span>()
   <span class="name">y</span>: <span class="name">container</span>.<span class="name">orientation</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Vertical</span> ? <span class="name">position</span>() : <span class="number">2</span>
   <span class="name">width</span>: <span class="name">container</span>.<span class="name">orientation</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Vertical</span> ? <span class="name">container</span>.<span class="name">width</span> <span class="operator">-</span> <span class="number">4</span> : <span class="name">size</span>()
   <span class="name">height</span>: <span class="name">container</span>.<span class="name">orientation</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Vertical</span> ? <span class="name">size</span>() : <span class="name">container</span>.<span class="name">height</span> <span class="operator">-</span> <span class="number">4</span>
   }</pre>

.. raw:: html

   <p>

We use the size function to calculate the thumb width and height
depending on the screen orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use states to make the scroll bar visible when the users move the
scroll area:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;visible&quot;</span>
   <span class="name">when</span>: <span class="name">container</span>.<span class="name">orientation</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Vertical</span> ?
   <span class="name">scrollArea</span>.<span class="name">movingVertically</span> :
   <span class="name">scrollArea</span>.<span class="name">movingHorizontally</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">container</span>; <span class="name">opacity</span>: <span class="number">1.0</span> }
   }</pre>

.. raw:: html

   <p>

We use transitions to apply a NumberAnimation to the "opacity" property
when the state changes from "visible" to the default state:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="name">from</span>: <span class="string">&quot;visible&quot;</span>; <span class="name">to</span>: <span class="string">&quot;&quot;</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">duration</span>: <span class="number">600</span> }
   }
   }</pre>

.. raw:: html

   <h2 id="creating-footers">

Creating Footers

.. raw:: html

   </h2>

.. raw:: html

   <p>

In rssnews.qml, we use a Component type with a Rectangle type to create
a footer for the news list view:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">footerText</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">closeButton</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="string">&quot;lightgray&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="string">&quot;RSS Feed from Yahoo News&quot;</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">font</span>.pixelSize: <span class="number">14</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

We bind the width of the footer to the width of the component and the
height to the of close button to align them when no news items are
displayed.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="creating-buttons">

Creating Buttons

.. raw:: html

   </h2>

.. raw:: html

   <p>

In rssnews.qml, we use an Image type to create a simple push button that
users can tap to close the app:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">closeButton</span>
   <span class="name">source</span>: <span class="string">&quot;content/images/btn_close.png&quot;</span>
   <span class="name">scale</span>: <span class="number">0.8</span>
   <span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">anchors</span>.margins: <span class="number">4</span>
   <span class="name">opacity</span>: (<span class="name">isPortrait</span> <span class="operator">&amp;&amp;</span> <span class="name">categories</span>.<span class="name">moving</span>) ? <span class="number">0.2</span> : <span class="number">1.0</span>
   Behavior on <span class="name">opacity</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">duration</span>: <span class="number">300</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutSine</span> }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">Qt</span>.<span class="name">quit</span>()
   }
   }
   }</pre>

.. raw:: html

   <p>

We use anchors to position the close button in the top right corner of
the news list view, with 4-pixel margins. Because the close button
overlaps the category list in portrait orientation, we animate the
opacity property to make the button almost fully transparent when users
are scrolling the category list.

.. raw:: html

   </p>

.. raw:: html

   <p>

We use the onClicked signal handler within a MouseArea to call the
quit() function when users select the close button.

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

demos/rssnews/rssnews.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/rssnews/content/BusyIndicator.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/rssnews/content/CategoryDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/rssnews/content/NewsDelegate.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/rssnews/content/RssFeeds.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/rssnews/content/ScrollBar.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/rssnews/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/rssnews/rssnews.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/rssnews/rssnews.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/rssnews/rssnews.qrc

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

   <!-- @@@demos/rssnews -->
