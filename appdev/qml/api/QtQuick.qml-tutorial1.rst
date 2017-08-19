QtQuick.qml-tutorial1
=====================

.. raw:: html

   <p>

This first program is a very simple "Hello world" example that
introduces some basic QML concepts. The picture below is a screenshot of
this program.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is the QML code for the application:

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
   }</pre>

.. raw:: html

   <h2 id="walkthrough">

Walkthrough

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Import

.. raw:: html

   </h3>

.. raw:: html

   <p>

First, we need to import the types that we need for this example. Most
QML files will import the built-in QML types (like Rectangle, Image,
...) that come with Qt, using:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0</pre>

.. raw:: html

   <h3>

Rectangle Type

.. raw:: html

   </h3>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">page</span>
   <span class="name">width</span>: <span class="number">320</span>; <span class="name">height</span>: <span class="number">480</span>
   <span class="name">color</span>: <span class="string">&quot;lightgray&quot;</span></pre>

.. raw:: html

   <p>

We declare a root object of type Rectangle. It is one of the basic
building blocks you can use to create an application in QML. We give it
an id to be able to refer to it later. In this case, we call it "page".
We also set the width, height and color properties. The Rectangle type
contains many other properties (such as x and y), but these are left at
their default values.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Text Type

.. raw:: html

   </h3>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">helloText</span>
   <span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>
   <span class="name">y</span>: <span class="number">30</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">page</span>.<span class="name">horizontalCenter</span>
   <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">font</span>.bold: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

We add a Text type as a child of the root Rectangle type that displays
the text 'Hello world!'.

.. raw:: html

   </p>

.. raw:: html

   <p>

The y property is used to position the text vertically at 30 pixels from
the top of its parent.

.. raw:: html

   </p>

.. raw:: html

   <p>

The anchors.horizontalCenter property refers to the horizontal center of
an type. In this case, we specify that our text type should be
horizontally centered in the page element (see Anchor-Based Layout).

.. raw:: html

   </p>

.. raw:: html

   <p>

The font.pointSize and font.bold properties are related to fonts and use
the dot notation.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Viewing the example

.. raw:: html

   </h3>

.. raw:: html

   <p>

To view what you have created, run the qmlscene tool (located in the bin
directory) with your filename as the first argument. For example, to run
the provided completed Tutorial 1 example from the install location, you
would type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlscene tutorials<span class="operator">/</span>helloworld<span class="operator">/</span>tutorial1<span class="operator">.</span>qml</pre>

.. raw:: html

   <!-- @@@qml-tutorial1.html -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

QML Tutorial QML Tutorial 2 - QML Components

.. raw:: html

   </p>
