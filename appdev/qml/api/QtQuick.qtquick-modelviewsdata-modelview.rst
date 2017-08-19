QtQuick.qtquick-modelviewsdata-modelview
========================================

.. raw:: html

   <p>

Simply put, applications need to form data and display the data. Qt
Quick has the notion of models, views, and delegates to display data.
They modularize the visualization of data in order to give the developer
or designer control over the different aspects of the data. A developer
can swap a list view with a grid view with little changes to the data.
Similarly, encapsulating an instance of the data in a delegate allows
the developer to dictate how to present or handle the data.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Model - contains the data and its structure. There are several QML types
for creating models.

.. raw:: html

   </li>

.. raw:: html

   <li>

View - a container that displays the data. The view might display the
data in a list or a grid.

.. raw:: html

   </li>

.. raw:: html

   <li>

Delegate - dictates how the data should appear in the view. The delegate
takes each data in the model and encapsulates it. The data is accessible
through the delegate.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

To visualize data, bind the view's model property to a model and the
delegate property to a component or another compatible type.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="displaying-data-with-views">

Displaying Data with Views

.. raw:: html

   </h2>

.. raw:: html

   <p>

Views are containers for collections of items. They are feature-rich and
can be customizable to meet style or behavior requirements.

.. raw:: html

   </p>

.. raw:: html

   <p>

A set of standard views are provided in the basic set of Qt Quick
graphical types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ListView - arranges items in a horizontal or vertical list

.. raw:: html

   </li>

.. raw:: html

   <li>

GridView - arranges items in a grid within the available space

.. raw:: html

   </li>

.. raw:: html

   <li>

PathView - arranges items on a path

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These types have properties and behaviors exclusive to each type. Visit
their respective documentation for more information.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Decorating Views

.. raw:: html

   </h3>

.. raw:: html

   <p>

Views allow visual customization through decoration properties such as
the header, footer, and section properties. By binding an object,
usually another visual object, to these properties, the views are
decoratable. A footer may include a Rectangle type showcasing borders or
a header that displays a logo on top of the list.

.. raw:: html

   </p>

.. raw:: html

   <p>

Suppose that a specific club wants to decorate its members list with its
brand colors. A member list is in a model and the delegate will display
the model's content.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListModel</span> {
   <span class="name">id</span>: <span class="name">nameModel</span>
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Alice&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Bob&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Jane&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Harry&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Wendy&quot;</span> }
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">nameDelegate</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="name">name</span>;
   <span class="name">font</span>.pixelSize: <span class="number">24</span>
   }
   }</pre>

.. raw:: html

   <p>

The club may decorate the members list by binding visual objects to the
header and footer properties. The visual object may be defined inline,
in another file, or in a Component type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">clip</span>: <span class="number">true</span>
   <span class="name">model</span>: <span class="name">nameModel</span>
   <span class="name">delegate</span>: <span class="name">nameDelegate</span>
   <span class="name">header</span>: <span class="name">bannercomponent</span>
   <span class="name">footer</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">30</span>;
   <span class="name">gradient</span>: <span class="name">clubcolors</span>
   }
   <span class="name">highlight</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">color</span>: <span class="string">&quot;lightgray&quot;</span>
   }
   }
   <span class="type">Component</span> {     <span class="comment">//instantiated when header is processed</span>
   <span class="name">id</span>: <span class="name">bannercomponent</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">banner</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">gradient</span>: <span class="name">clubcolors</span>
   <span class="type">border</span> {<span class="name">color</span>: <span class="string">&quot;#9EDDF2&quot;</span>; <span class="name">width</span>: <span class="number">2</span>}
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Club Members&quot;</span>
   <span class="name">font</span>.pixelSize: <span class="number">32</span>
   }
   }
   }
   <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span> {
   <span class="name">id</span>: <span class="name">clubcolors</span>
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;#8EE2FE&quot;</span>}
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.66</span>; <span class="name">color</span>: <span class="string">&quot;#7ED2EE&quot;</span>}
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h3>

Mouse and Touch Handling

.. raw:: html

   </h3>

.. raw:: html

   <p>

The views handle dragging and flicking of their content, however they do
not handle touch interaction with the individual delegates. In order for
the delegates to react to touch input, e.g. to set the currentIndex, a
MouseArea with the appropriate touch handling logic must be provided by
the delegate.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that if highlightRangeMode is set to StrictlyEnforceRange the
currentIndex will be affected by dragging/flicking the view, since the
view will always ensure that the currentIndex is within the highlight
range specified.

.. raw:: html

   </p>

.. raw:: html

   <h3>

ListView Sections

.. raw:: html

   </h3>

.. raw:: html

   <p>

ListView contents may be grouped into sections, where related list items
are labeled according to their sections. Further, the sections may be
decorated with delegates.

.. raw:: html

   </p>

.. raw:: html

   <p>

A list may contain a list indicating people's names and the team on
which team the person belongs.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListModel</span> {
   <span class="name">id</span>: <span class="name">nameModel</span>
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Alice&quot;</span>; <span class="name">team</span>: <span class="string">&quot;Crypto&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Bob&quot;</span>; <span class="name">team</span>: <span class="string">&quot;Crypto&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Jane&quot;</span>; <span class="name">team</span>: <span class="string">&quot;QA&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Victor&quot;</span>; <span class="name">team</span>: <span class="string">&quot;QA&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Wendy&quot;</span>; <span class="name">team</span>: <span class="string">&quot;Graphics&quot;</span> }
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">nameDelegate</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="name">name</span>;
   <span class="name">font</span>.pixelSize: <span class="number">24</span>
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">anchors</span>.leftMargin: <span class="number">2</span>
   }
   }</pre>

.. raw:: html

   <p>

The ListView type has the section attached property that can combine
adjacent and related types into a section. The section.property
determines which list type property to use as sections. The
section.criteria can dictate how the section names are displayed and the
section.delegate is similar to the views' delegate property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">nameModel</span>
   <span class="name">delegate</span>: <span class="name">nameDelegate</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">highlight</span>: <span class="name">Rectangle</span> {
   <span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   }
   <span class="type">section</span> {
   <span class="name">property</span>: <span class="string">&quot;team&quot;</span>
   <span class="name">criteria</span>: <span class="name">ViewSection</span>.<span class="name">FullString</span>
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">color</span>: <span class="string">&quot;#b0dfb0&quot;</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">4</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">font</span>.pixelSize: <span class="number">16</span>
   <span class="name">font</span>.bold: <span class="number">true</span>
   <span class="name">text</span>: <span class="name">section</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h2 id="view-delegates">

View Delegates

.. raw:: html

   </h2>

.. raw:: html

   <p>

Views need a delegate to visually represent an item in a list. A view
will visualize each item list according to the template defined by the
delegate. Items in a model are accessible through the index property as
well as the item's properties.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">petdelegate</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">label</span>
   <span class="name">font</span>.pixelSize: <span class="number">24</span>
   <span class="name">text</span>: <span class="keyword">if</span> (<span class="name">index</span> <span class="operator">==</span> <span class="number">0</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">type</span> <span class="operator">+</span> <span class="string">&quot; (default)&quot;</span>
   <span class="keyword">else</span>
   <span class="name">text</span>: <span class="name">type</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h3>

Accessing Views and Models from Delegates

.. raw:: html

   </h3>

.. raw:: html

   <p>

The list view to which the delegate is bound is accessible from the
delegate through the ListView.view property. Likewise, the GridView
GridView.view is available to delegates. The corresponding model and its
properties, therefore, are available through ListView.view.model. In
addition, any defined signals or methods in the model are also
accessible.

.. raw:: html

   </p>

.. raw:: html

   <p>

This mechanism is useful when you want to use the same delegate for a
number of views, for example, but you want decorations or other features
to be different for each view, and you would like these different
settings to be properties of each of the views. Similarly, it might be
of interest to access or show some properties of the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example, the delegate shows the property language of
the model, and the color of one of the fields depends on the property
fruit\_color of the view.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">ListModel</span> {
   <span class="name">id</span>: <span class="name">fruitModel</span>
   property <span class="type">string</span> <span class="name">language</span>: <span class="string">&quot;en&quot;</span>
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Apple&quot;</span>
   <span class="name">cost</span>: <span class="number">2.45</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Orange&quot;</span>
   <span class="name">cost</span>: <span class="number">3.25</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Banana&quot;</span>
   <span class="name">cost</span>: <span class="number">1.95</span>
   }
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">fruitDelegate</span>
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">id</span>: <span class="name">fruit</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot; Fruit: &quot;</span> <span class="operator">+</span> <span class="name">name</span>; <span class="name">color</span>: <span class="name">fruit</span>.<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">fruit_color</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot; Cost: $&quot;</span> <span class="operator">+</span> <span class="name">cost</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot; Language: &quot;</span> <span class="operator">+</span> <span class="name">fruit</span>.<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">model</span>.<span class="name">language</span> }
   }
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   property <span class="type">color</span> <span class="name">fruit_color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">model</span>: <span class="name">fruitModel</span>
   <span class="name">delegate</span>: <span class="name">fruitDelegate</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   }</pre>

.. raw:: html

   <h2 id="models">

Models

.. raw:: html

   </h2>

.. raw:: html

   <p>

Data is provided to the delegate via named data roles which the delegate
may bind to. Here is a ListModel with two roles, type and age, and a
ListView with a delegate that binds to these roles to display their
values:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
   <span class="type">ListModel</span> {
   <span class="name">id</span>: <span class="name">myModel</span>
   <span class="type">ListElement</span> { <span class="name">type</span>: <span class="string">&quot;Dog&quot;</span>; <span class="name">age</span>: <span class="number">8</span> }
   <span class="type">ListElement</span> { <span class="name">type</span>: <span class="string">&quot;Cat&quot;</span>; <span class="name">age</span>: <span class="number">5</span> }
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">myDelegate</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">type</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">age</span> }
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">myModel</span>
   <span class="name">delegate</span>: <span class="name">myDelegate</span>
   }
   }</pre>

.. raw:: html

   <p>

If there is a naming clash between the model's properties and the
delegate's properties, the roles can be accessed with the qualified
model name instead. For example, if a Text type had type or age
properties, the text in the above example would display those property
values instead of the type and age values from the model item. In this
case, the properties could have been referenced as model.type and
model.age instead to ensure the delegate displays the property values
from the model item.

.. raw:: html

   </p>

.. raw:: html

   <p>

A special index role containing the index of the item in the model is
also available to the delegate. Note this index is set to -1 if the item
is removed from the model. If you bind to the index role, be sure that
the logic accounts for the possibility of index being -1, i.e. that the
item is no longer valid. (Usually the item will shortly be destroyed,
but it is possible to delay delegate destruction in some views via a
delayRemove attached property.)

.. raw:: html

   </p>

.. raw:: html

   <p>

Models that do not have named roles (such as the ListModel shown below)
will have the data provided via the modelData role. The modelData role
is also provided for models that have only one role. In this case the
modelData role contains the same data as the named role.

.. raw:: html

   </p>

.. raw:: html

   <p>

QML provides several types of data models among the built-in set of QML
types. In addition, models can be created with Qt C++ and then made
available to the QMLEngine for use by QML components. For information
about creating these models, visit the Using C++ Models with Qt Quick
Views and creating QML types articles.

.. raw:: html

   </p>

.. raw:: html

   <p>

Positioning of items from a model can be achieved using a Repeater.

.. raw:: html

   </p>

.. raw:: html

   <h3>

ListModel

.. raw:: html

   </h3>

.. raw:: html

   <p>

ListModel is a simple hierarchy of types specified in QML. The available
roles are specified by the ListElement properties.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListModel</span> {
   <span class="name">id</span>: <span class="name">fruitModel</span>
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Apple&quot;</span>
   <span class="name">cost</span>: <span class="number">2.45</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Orange&quot;</span>
   <span class="name">cost</span>: <span class="number">3.25</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Banana&quot;</span>
   <span class="name">cost</span>: <span class="number">1.95</span>
   }
   }</pre>

.. raw:: html

   <p>

The above model has two roles, name and cost. These can be bound to by a
ListView delegate, for example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">fruitModel</span>
   <span class="name">delegate</span>: <span class="name">Row</span> {
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Fruit: &quot;</span> <span class="operator">+</span> <span class="name">name</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Cost: $&quot;</span> <span class="operator">+</span> <span class="name">cost</span> }
   }
   }</pre>

.. raw:: html

   <p>

ListModel provides methods to manipulate the ListModel directly via
JavaScript. In this case, the first item inserted determines the roles
available to any views that are using the model. For example, if an
empty ListModel is created and populated via JavaScript, the roles
provided by the first insertion are the only roles that will be shown in
the view:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListModel</span> { <span class="name">id</span>: <span class="name">fruitModel</span> }
   ...
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">fruitModel</span>.<span class="name">append</span>({&quot;cost&quot;: <span class="number">5.95</span>, &quot;name&quot;:<span class="string">&quot;Pizza&quot;</span>})
   }</pre>

.. raw:: html

   <p>

When the MouseArea is clicked, fruitModel will have two roles, cost and
name. Even if subsequent roles are added, only the first two will be
handled by views using the model. To reset the roles available in the
model, call ListModel::clear().

.. raw:: html

   </p>

.. raw:: html

   <h3>

XmlListModel

.. raw:: html

   </h3>

.. raw:: html

   <p>

XmlListModel allows construction of a model from an XML data source. The
roles are specified via the XmlRole type. The type needs to be imported.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>XmlListModel <span class="number">2.0</span></pre>

.. raw:: html

   <p>

The following model has three roles, title, link and description:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
   <span class="name">id</span>: <span class="name">feedModel</span>
   <span class="name">source</span>: <span class="string">&quot;http://rss.news.yahoo.com/rss/oceania&quot;</span>
   <span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;link&quot;</span>; <span class="name">query</span>: <span class="string">&quot;link/string()&quot;</span> }
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;description&quot;</span>; <span class="name">query</span>: <span class="string">&quot;description/string()&quot;</span> }
   }</pre>

.. raw:: html

   <p>

The RSS News demo shows how XmlListModel can be used to display an RSS
feed.

.. raw:: html

   </p>

.. raw:: html

   <h3>

VisualItemModel

.. raw:: html

   </h3>

.. raw:: html

   <p>

VisualItemModel allows QML items to be provided as a model.

.. raw:: html

   </p>

.. raw:: html

   <p>

This model contains both the data and delegate; the child items of a
VisualItemModel provide the contents of the delegate. The model does not
provide any roles.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">VisualItemModel</span> {
   <span class="name">id</span>: <span class="name">itemModel</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">height</span>: <span class="number">30</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">height</span>: <span class="number">30</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">height</span>: <span class="number">30</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">itemModel</span>
   }</pre>

.. raw:: html

   <p>

Note that in the above example there is no delegate required. The items
of the model itself provide the visual types that will be positioned by
the view.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Integers as Models

.. raw:: html

   </h3>

.. raw:: html

   <p>

An integer can be used as a model that contains a certain number of
types. In this case, the model does not have any data roles.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example creates a ListView with five elements:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">itemDelegate</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;I am item number: &quot;</span> <span class="operator">+</span> <span class="name">index</span> }
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="number">5</span>
   <span class="name">delegate</span>: <span class="name">itemDelegate</span>
   }
   }</pre>

.. raw:: html

   <h3>

Object Instances as Models

.. raw:: html

   </h3>

.. raw:: html

   <p>

An object instance can be used to specify a model with a single object
type. The properties of the object are provided as roles.

.. raw:: html

   </p>

.. raw:: html

   <p>

The example below creates a list with one item, showing the color of the
myText text. Note the use of the fully qualified model.color property to
avoid clashing with color property of the Text type in the delegate.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">myText</span>
   <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;#dd44ee&quot;</span>
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">myDelegate</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">model</span>.<span class="name">color</span> }
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">anchors</span>.topMargin: <span class="number">30</span>
   <span class="name">model</span>: <span class="name">myText</span>
   <span class="name">delegate</span>: <span class="name">myDelegate</span>
   }
   }</pre>

.. raw:: html

   <h3>

C++ Data Models

.. raw:: html

   </h3>

.. raw:: html

   <p>

Models can be defined in C++ and then made available to QML. This
mechanism is useful for exposing existing C++ data models or otherwise
complex datasets to QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

For information, visit the Using C++ Models with Qt Quick Views article.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="repeaters">

Repeaters

.. raw:: html

   </h2>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <p>

Repeaters create items from a template for use with positioners, using
data from a model. Combining repeaters and positioners is an easy way to
lay out lots of items. A Repeater item is placed inside a positioner,
and generates items that the enclosing positioner arranges.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each Repeater creates a number of items by combining each element of
data from a model, specified using the model property, with the template
item, defined as a child item within the Repeater. The total number of
items is determined by the amount of data in the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows a repeater used with a Grid item to arrange
a set of Rectangle items. The Repeater item creates a series of 24
rectangles for the Grid item to position in a 5 by 5 arrangement.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>; <span class="name">color</span>: <span class="string">&quot;black&quot;</span>
   <span class="type"><a href="QtQuick.Grid.md">Grid</a></span> {
   <span class="name">x</span>: <span class="number">5</span>; <span class="name">y</span>: <span class="number">5</span>
   <span class="name">rows</span>: <span class="number">5</span>; <span class="name">columns</span>: <span class="number">5</span>; <span class="name">spacing</span>: <span class="number">10</span>
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> { <span class="name">model</span>: <span class="number">24</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">70</span>; <span class="name">height</span>: <span class="number">70</span>
   <span class="name">color</span>: <span class="string">&quot;lightgreen&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">index</span>
   <span class="name">font</span>.pointSize: <span class="number">30</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span> } }
   }
   }
   }</pre>

.. raw:: html

   <p>

The number of items created by a Repeater is held by its count property.
It is not possible to set this property to determine the number of items
to be created. Instead, as in the above example, we use an integer as
the model. This is explained in the QML Data Models document.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is also possible to use a delegate as the template for the items
created by a Repeater. This is specified using the delegate property.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="using-transitions">

Using Transitions

.. raw:: html

   </h2>

.. raw:: html

   <p>

Transitions can be used to animate items that are added to, moved
within, or removed from a positioner.

.. raw:: html

   </p>

.. raw:: html

   <p>

Transitions for adding items apply to items that are created as part of
a positioner, as well as those that are reparented to become children of
a positioner. Transitions for removing items apply to items within a
positioner that are deleted, as well as those that are removed from a
positioner and given new parents in a document.

.. raw:: html

   </p>

.. raw:: html

   <p>

Additionally, changing the opacity of items to zero will cause them to
disappear using the remove transition, and making the opacity non-zero
will cause them to appear using the add transition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-modelviewsdata-modelview.html -->
