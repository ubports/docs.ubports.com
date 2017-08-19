QtQuick.qtquick-tutorials-dynamicview-dynamicview1-example
==========================================================

.. raw:: html

   <p>

We begin our application by defining a ListView, a model which will
provide data to the view, and a delegate which provides a template for
constructing items in the view.

.. raw:: html

   </p>

.. raw:: html

   <p>

The code for the ListView and delegate looks like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">400</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">dragDelegate</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">content</span>
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
   <span class="name">height</span>: <span class="name">column</span>.<span class="name">implicitHeight</span> <span class="operator">+</span> <span class="number">4</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="name">border</span>.color: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="name">radius</span>: <span class="number">2</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Name: '</span> <span class="operator">+</span> <span class="name">name</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Type: '</span> <span class="operator">+</span> <span class="name">type</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Age: '</span> <span class="operator">+</span> <span class="name">age</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Size: '</span> <span class="operator">+</span> <span class="name">size</span> }
   }
   }
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">view</span>
   <span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
   <span class="name">model</span>: <span class="name">PetsModel</span> {}
   <span class="name">delegate</span>: <span class="name">dragDelegate</span>
   <span class="name">spacing</span>: <span class="number">4</span>
   <span class="name">cacheBuffer</span>: <span class="number">50</span>
   }
   }</pre>

.. raw:: html

   <p>

The model is defined in a separate QML file which looks like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">ListModel</span> {
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Polly&quot;</span>
   <span class="name">type</span>: <span class="string">&quot;Parrot&quot;</span>
   <span class="name">age</span>: <span class="number">12</span>
   <span class="name">size</span>: <span class="string">&quot;Small&quot;</span>
   }
   <span class="type">ListElement</span> {
   <span class="name">name</span>: <span class="string">&quot;Penny&quot;</span>
   <span class="name">type</span>: <span class="string">&quot;Turtle&quot;</span>
   <span class="name">age</span>: <span class="number">4</span>
   <span class="name">size</span>: <span class="string">&quot;Small&quot;</span>
   }
   }</pre>

.. raw:: html

   <h3>

Walkthrough

.. raw:: html

   </h3>

.. raw:: html

   <p>

The first item defined within the application's root Rectangle is the
delegate Component. This is the template from which each item in the
ListView is constructed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The name, age, type, and size variables referenced in the delegate are
sourced from the model data. The names correspond to roles defined in
the model.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">dragDelegate</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">content</span>
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
   <span class="name">height</span>: <span class="name">column</span>.<span class="name">implicitHeight</span> <span class="operator">+</span> <span class="number">4</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="name">border</span>.color: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="name">radius</span>: <span class="number">2</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Name: '</span> <span class="operator">+</span> <span class="name">name</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Type: '</span> <span class="operator">+</span> <span class="name">type</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Age: '</span> <span class="operator">+</span> <span class="name">age</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Size: '</span> <span class="operator">+</span> <span class="name">size</span> }
   }
   }
   }</pre>

.. raw:: html

   <p>

The second part of the application is the ListView itself to which we
bind the model and delegate.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">view</span>
   <span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
   <span class="name">model</span>: <span class="name">PetsModel</span> {}
   <span class="name">delegate</span>: <span class="name">dragDelegate</span>
   <span class="name">spacing</span>: <span class="number">4</span>
   <span class="name">cacheBuffer</span>: <span class="number">50</span>
   }</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

tutorials/dynamicview/dynamicview1/PetsModel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/dynamicview/dynamicview1/dynamicview.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/dynamicview/dynamicview1/dynamicview1.qmlproject

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@tutorials/dynamicview/dynamicview1 -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

QML Dynamic View Ordering Tutorial QML Dynamic View Ordering Tutorial 2
- Dragging View Items

.. raw:: html

   </p>
