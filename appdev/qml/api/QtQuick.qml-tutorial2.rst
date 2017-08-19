QtQuick.qml-tutorial2
=====================

.. raw:: html

   <p>

This chapter adds a color picker to change the color of the text.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Our color picker is made of six cells with different colors. To avoid
writing the same code multiple times for each cell, we create a new Cell
component. A component provides a way of defining a new type that we can
re-use in other QML files. A QML component is like a black-box and
interacts with the outside world through properties, signals and
functions and is generally defined in its own QML file. (For more
details, see the Component documentation). The component's filename must
always start with a capital letter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is the QML code for Cell.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">alias</span> <span class="name">cellColor</span>: <span class="name">rectangle</span>.<span class="name">color</span>
   signal <span class="type">clicked</span>(color cellColor)
   <span class="name">width</span>: <span class="number">40</span>; <span class="name">height</span>: <span class="number">25</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rectangle</span>
   <span class="name">border</span>.color: <span class="string">&quot;white&quot;</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">container</span>.<span class="name">clicked</span>(<span class="name">container</span>.<span class="name">cellColor</span>)
   }
   }</pre>

.. raw:: html

   <h2 id="walkthrough">

Walkthrough

.. raw:: html

   </h2>

.. raw:: html

   <h3>

The Cell Component

.. raw:: html

   </h3>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">alias</span> <span class="name">cellColor</span>: <span class="name">rectangle</span>.<span class="name">color</span>
   signal <span class="type">clicked</span>(color cellColor)
   <span class="name">width</span>: <span class="number">40</span>; <span class="name">height</span>: <span class="number">25</span></pre>

.. raw:: html

   <p>

The root type of our component is an Item with the id container. An Item
is the most basic visual type in QML and is often used as a container
for other types.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    property <span class="type">alias</span> <span class="name">cellColor</span>: <span class="name">rectangle</span>.<span class="name">color</span></pre>

.. raw:: html

   <p>

We declare a cellColor property. This property is accessible from
outside our component, this allows us to instantiate the cells with
different colors. This property is just an alias to an existing property
- the color of the rectangle that compose the cell (see Property
Binding).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    signal <span class="type">clicked</span>(color cellColor)</pre>

.. raw:: html

   <p>

We want our component to also have a signal that we call clicked with a
cellColor parameter of type color. We will use this signal to change the
color of the text in the main QML file later.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rectangle</span>
   <span class="name">border</span>.color: <span class="string">&quot;white&quot;</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }</pre>

.. raw:: html

   <p>

Our cell component is basically a colored rectangle with the id
rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

The anchors.fill property is a convenient way to set the size of a
visual type. In this case the rectangle will have the same size as its
parent (see Anchor-Based Layout).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">container</span>.<span class="name">clicked</span>(<span class="name">container</span>.<span class="name">cellColor</span>)
   }</pre>

.. raw:: html

   <p>

In order to change the color of the text when clicking on a cell, we
create a MouseArea type with the same size as its parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

A MouseArea defines a signal called clicked. When this signal is
triggered we want to emit our own clicked signal with the color as
parameter.

.. raw:: html

   </p>

.. raw:: html

   <h3>

The main QML file

.. raw:: html

   </h3>

.. raw:: html

   <p>

In our main QML file, we use our Cell component to create the color
picker:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">page</span>
   <span class="name">width</span>: <span class="number">320</span>; <span class="name">height</span>: <span class="number">480</span>
   <span class="name">color</span>: <span class="string">&quot;lightgray&quot;</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">helloText</span>
   <span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>
   <span class="name">y</span>: <span class="number">30</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">page</span>.<span class="name">horizontalCenter</span>
   <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">font</span>.bold: <span class="number">true</span>
   }
   <span class="type"><a href="QtQuick.Grid.md">Grid</a></span> {
   <span class="name">id</span>: <span class="name">colorPicker</span>
   <span class="name">x</span>: <span class="number">4</span>; <span class="name">anchors</span>.bottom: <span class="name">page</span>.<span class="name">bottom</span>; <span class="name">anchors</span>.bottomMargin: <span class="number">4</span>
   <span class="name">rows</span>: <span class="number">2</span>; <span class="name">columns</span>: <span class="number">3</span>; <span class="name">spacing</span>: <span class="number">3</span>
   <span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;red&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
   <span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;green&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
   <span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
   <span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
   <span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;steelblue&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
   <span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;black&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
   }
   }</pre>

.. raw:: html

   <p>

We create the color picker by putting 6 cells with different colors in a
grid.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;red&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }</pre>

.. raw:: html

   <p>

When the clicked signal of our cell is triggered, we want to set the
color of the text to the cellColor passed as a parameter. We can react
to any signal of our component through a property of the name
'onSignalName' (see Signal Attributes).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qml-tutorial2.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

QML Tutorial 1 - Basic Types QML Tutorial 3 - States and Transitions

.. raw:: html

   </p>
