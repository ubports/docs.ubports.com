QtQml.qtqml-tutorials-extending-qml-example
===========================================

.. raw:: html

   <p>

The Qt QML module provides a set of APIs for extending QML through C++
extensions. You can write extensions to add your own QML types, extend
existing Qt types, or call C/C++ functions that are not accessible from
ordinary QML code.

.. raw:: html

   </p>

.. raw:: html

   <p>

This tutorial shows how to write a QML extension using C++ that includes
core QML features, including properties, signals and bindings. It also
shows how extensions can be deployed through plugins.

.. raw:: html

   </p>

.. raw:: html

   <p>

Many of the topics covered in this tutorial are documented in further
detail in Integrating QML and C++ and its documentation sub-topics. In
particular, you may be interested in the sub-topics Exposing Attributes
of C++ Classes to QML and Defining QML Types from C++.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-tutorial-examples">

Running the Tutorial Examples

.. raw:: html

   </h2>

.. raw:: html

   <p>

The code in this tutorial is available as an example project with
subprojects associated with each tutorial chapter. In Qt Creator, open
the Welcome mode and select the tutorial from Examples. In Edit mode,
expand the extending-qml project, right-click on the subproject
(chapter) you want to run and select Run.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="chapter-1-creating-a-new-type">

Chapter 1: Creating a New Type

.. raw:: html

   </h2>

.. raw:: html

   <p>

extending-qml/chapter1-basics

.. raw:: html

   </p>

.. raw:: html

   <p>

A common task when extending QML is to provide a new QML type that
supports some custom functionality beyond what is provided by the
built-in Qt Quick types. For example, this could be done to implement
particular data models, or provide types with custom painting and
drawing capabilities, or access system features like network programming
that are not accessible through built-in QML features.

.. raw:: html

   </p>

.. raw:: html

   <p>

In this tutorial, we will show how to use the C++ classes in the Qt
Quick module to extend QML. The end result will be a simple Pie Chart
display implemented by several custom QML types connected together
through QML features like bindings and signals, and made available to
the QML runtime through a plugin.

.. raw:: html

   </p>

.. raw:: html

   <p>

To begin with, let's create a new QML type called "PieChart" that has
two properties: a name and a color. We will make it available in an
importable type namespace called "Charts", with a version of 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

We want this PieChart type to be usable from QML like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import Charts 1.0
   PieChart {
   width: 100; height: 100
   name: &quot;A simple pie chart&quot;
   color: &quot;red&quot;
   }</pre>

.. raw:: html

   <p>

To do this, we need a C++ class that encapsulates this PieChart type and
its two properties. Since QML makes extensive use of Qt's meta object
system, this new class must:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Inherit from QObject

.. raw:: html

   </li>

.. raw:: html

   <li>

Declare its properties using the Q\_PROPERTY macro

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Here is our PieChart class, defined in piechart.h:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="preprocessor">#include &lt;QtQuick/QQuickPaintedItem&gt;</span>
   <span class="preprocessor">#include &lt;QColor&gt;</span>
   <span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QString</span> name READ name WRITE setName)
   Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor)
   <span class="keyword">public</span>:
   PieChart(<span class="type">QQuickItem</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
   <span class="type">QString</span> name() <span class="keyword">const</span>;
   <span class="type">void</span> setName(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>name);
   <span class="type">QColor</span> color() <span class="keyword">const</span>;
   <span class="type">void</span> setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color);
   <span class="type">void</span> paint(<span class="type">QPainter</span> <span class="operator">*</span>painter);
   <span class="keyword">private</span>:
   <span class="type">QString</span> m_name;
   <span class="type">QColor</span> m_color;
   };</pre>

.. raw:: html

   <p>

The class inherits from QQuickPaintedItem because we want to override
QQuickPaintedItem::paint() in perform drawing operations with the
QPainter API. If the class just represented some data type and was not
an item that actually needed to be displayed, it could simply inherit
from QObject. Or, if we want to extend the functionality of an existing
QObject-based class, it could inherit from that class instead.
Alternatively, if we want to create a visual item that doesn't need to
perform drawing operations with the QPainter API, we can just subclass
QQuickItem.

.. raw:: html

   </p>

.. raw:: html

   <p>

The PieChart class defines the two properties, name and color, with the
Q\_PROPERTY macro, and overrides QQuickPaintedItem::paint(). The class
implementation in piechart.cpp simply sets and returns the m\_name and
m\_color values as appropriate, and implements paint() to draw a simple
pie chart. It also turns off the QGraphicsItem::ItemHasNoContents flag
to enable painting:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">PieChart<span class="operator">::</span>PieChart(<span class="type">QQuickItem</span> <span class="operator">*</span>parent)
   : <span class="type">QQuickPaintedItem</span>(parent)
   {
   }
   ...
   <span class="type">void</span> PieChart<span class="operator">::</span>paint(<span class="type">QPainter</span> <span class="operator">*</span>painter)
   {
   <span class="type">QPen</span> pen(m_color<span class="operator">,</span> <span class="number">2</span>);
   painter<span class="operator">-</span><span class="operator">&gt;</span>setPen(pen);
   painter<span class="operator">-</span><span class="operator">&gt;</span>setRenderHints(<span class="type">QPainter</span><span class="operator">::</span>Antialiasing<span class="operator">,</span> <span class="keyword">true</span>);
   painter<span class="operator">-</span><span class="operator">&gt;</span>drawPie(boundingRect()<span class="operator">.</span>adjusted(<span class="number">1</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span>)<span class="operator">,</span> <span class="number">90</span> <span class="operator">*</span> <span class="number">16</span><span class="operator">,</span> <span class="number">290</span> <span class="operator">*</span> <span class="number">16</span>);
   }</pre>

.. raw:: html

   <p>

Now that we have defined the PieChart type, we will use it from QML. The
app.qml file creates a PieChart item and display the pie chart's details
using a standard QML Text item:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Charts 1.0
   import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">PieChart</span> {
   <span class="name">id</span>: <span class="name">aPieChart</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">name</span>: <span class="string">&quot;A simple pie chart&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   <span class="type">Text</span> {
   <span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
   <span class="name">text</span>: <span class="name">aPieChart</span>.<span class="name">name</span>
   }
   }</pre>

.. raw:: html

   <p>

Notice that although the color is specified as a string in QML, it is
automatically converted to a QColor object for the PieChart color
property. Automatic conversions are provided for various other basic
types; for example, a string like "640x480" can be automatically
converted to a QSize value.

.. raw:: html

   </p>

.. raw:: html

   <p>

We'll also create a C++ application that uses a QQuickView to run and
display app.qml. The application must register the PieChart type using
the qmlRegisterType() function, to allow it to be used from QML. If you
don't register the type, app.qml won't be able to create a PieChart.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is the application main.cpp:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="preprocessor">#include &quot;piechart.h&quot;</span>
   <span class="preprocessor">#include &lt;QtQuick/QQuickView&gt;</span>
   <span class="preprocessor">#include &lt;QGuiApplication&gt;</span>
   <span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
   {
   <span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
   qmlRegisterType<span class="operator">&lt;</span>PieChart<span class="operator">&gt;</span>(<span class="string">&quot;Charts&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieChart&quot;</span>);
   <span class="type">QQuickView</span> view;
   view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
   view<span class="operator">.</span>setSource(<span class="type">QUrl</span>(<span class="string">&quot;qrc:///app.qml&quot;</span>));
   view<span class="operator">.</span>show();
   <span class="keyword">return</span> app<span class="operator">.</span>exec();
   }</pre>

.. raw:: html

   <p>

This call to qmlRegisterType() registers the PieChart type as a type
called "PieChart", in a type namespace called "Charts", with a version
of 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Lastly, we write a .pro project file that includes the files and the
declarative library:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">QT += qml quick
   HEADERS += piechart.h
   SOURCES += piechart.cpp \
   main.cpp
   RESOURCES += chapter1-basics.qrc
   DESTPATH = $$[QT_INSTALL_EXAMPLES]/qml/tutorials/extending-qml/chapter1-basics
   target.path = $$DESTPATH
   qml.files = *.qml
   qml.path = $$DESTPATH
   INSTALLS += target qml</pre>

.. raw:: html

   <p>

Now we can build and run the application:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: You may see a warning Expression ... depends on non-NOTIFYable
properties: PieChart::name. This happens because we add a binding to the
writable name property, but haven't yet defined a notify signal for it.
The QML engine therefore cannot update the binding if the name value
changes. This is addressed in the following chapters.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="chapter-2-connecting-to-c-methods-and-signals">

Chapter 2: Connecting to C++ Methods and Signals

.. raw:: html

   </h2>

.. raw:: html

   <p>

extending-qml/chapter2-methods

.. raw:: html

   </p>

.. raw:: html

   <p>

Suppose we want PieChart to have a "clearChart()" method that erases the
chart and then emits a "chartCleared" signal. Our app.qml would be able
to call clearChart() and receive chartCleared() signals like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Charts 1.0
   import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">PieChart</span> {
   <span class="name">id</span>: <span class="name">aPieChart</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">onChartCleared</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The chart has been cleared&quot;</span>)
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">aPieChart</span>.<span class="name">clearChart</span>()
   }
   <span class="type">Text</span> {
   <span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
   <span class="name">text</span>: <span class="string">&quot;Click anywhere to clear the chart&quot;</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

To do this, we add a clearChart() method and a chartCleared() signal to
our C++ class:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
   {
   ...
   <span class="keyword">public</span>:
   ...
   Q_INVOKABLE <span class="type">void</span> clearChart();
   <span class="keyword">signals</span>:
   <span class="type">void</span> chartCleared();
   ...
   };</pre>

.. raw:: html

   <p>

The use of Q\_INVOKABLE makes the clearChart() method available to the
Qt Meta-Object system, and in turn, to QML. Note that it could have been
declared as a Qt slot instead of using Q\_INVOKABLE, as slots are also
callable from QML. Both of these approaches are valid.

.. raw:: html

   </p>

.. raw:: html

   <p>

The clearChart() method simply changes the color to Qt::transparent,
repaints the chart, then emits the chartCleared() signal:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> PieChart<span class="operator">::</span>clearChart()
   {
   setColor(<span class="type">QColor</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">::</span>transparent));
   update();
   <span class="keyword">emit</span> chartCleared();
   }</pre>

.. raw:: html

   <p>

Now when we run the application and click the window, the pie chart
disappears, and the application outputs:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qml: The chart has been cleared</pre>

.. raw:: html

   <h2 id="chapter-3-adding-property-bindings">

Chapter 3: Adding Property Bindings

.. raw:: html

   </h2>

.. raw:: html

   <p>

extending-qml/chapter3-bindings

.. raw:: html

   </p>

.. raw:: html

   <p>

Property binding is a powerful feature of QML that allows values of
different types to be synchronized automatically. It uses signals to
notify and update other types' values when property values are changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Let's enable property bindings for the color property. That means if we
have code like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Charts 1.0
   import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Row</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">spacing</span>: <span class="number">20</span>
   <span class="type">PieChart</span> {
   <span class="name">id</span>: <span class="name">chartA</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   <span class="type">PieChart</span> {
   <span class="name">id</span>: <span class="name">chartB</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">chartA</span>.<span class="name">color</span>
   }
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: { <span class="name">chartA</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;blue&quot;</span> }
   }
   <span class="type">Text</span> {
   <span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
   <span class="name">text</span>: <span class="string">&quot;Click anywhere to change the chart color&quot;</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The "color: chartA.color" statement binds the color value of chartB to
the color of chartA. Whenever chartA's color value changes, chartB's
color value updates to the same value. When the window is clicked, the
onClicked handler in the MouseArea changes the color of chartA, thereby
changing both charts to the color blue.

.. raw:: html

   </p>

.. raw:: html

   <p>

It's easy to enable property binding for the color property. We add a
NOTIFY feature to its Q\_PROPERTY() declaration to indicate that a
"colorChanged" signal is emitted whenever the value changes.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
   {
   ...
   Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor NOTIFY colorChanged)
   <span class="keyword">public</span>:
   ...
   <span class="keyword">signals</span>:
   <span class="type">void</span> colorChanged();
   ...
   };</pre>

.. raw:: html

   <p>

Then, we emit this signal in setPieSlice():

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> PieChart<span class="operator">::</span>setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color)
   {
   <span class="keyword">if</span> (color <span class="operator">!</span><span class="operator">=</span> m_color) {
   m_color <span class="operator">=</span> color;
   update();   <span class="comment">// repaint with the new color</span>
   <span class="keyword">emit</span> colorChanged();
   }
   }</pre>

.. raw:: html

   <p>

It's important for setColor() to check that the color value has actually
changed before emitting colorChanged(). This ensures the signal is not
emitted unnecessarily and also prevents loops when other types respond
to the value change.

.. raw:: html

   </p>

.. raw:: html

   <p>

The use of bindings is essential to QML. You should always add NOTIFY
signals for properties if they are able to be implemented, so that your
properties can be used in bindings. Properties that cannot be bound
cannot be automatically updated and cannot be used as flexibly in QML.
Also, since bindings are invoked so often and relied upon in QML usage,
users of your custom QML types may see unexpected behavior if bindings
are not implemented.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="chapter-4-using-custom-property-types">

Chapter 4: Using Custom Property Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

extending-qml/chapter4-customPropertyTypes

.. raw:: html

   </p>

.. raw:: html

   <p>

The PieChart type currently has a string-type property and a color-type
property. It could have many other types of properties. For example, it
could have an int-type property to store an identifier for each chart:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// C++</span>
   <span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
   {
   Q_PROPERTY(<span class="type">int</span> chartId READ chartId WRITE setChartId NOTIFY chartIdChanged)
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   <span class="keyword">public</span>:
   <span class="type">void</span> setChartId(<span class="type">int</span> chartId);
   <span class="type">int</span> chartId() <span class="keyword">const</span>;
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   <span class="keyword">signals</span>:
   <span class="type">void</span> chartIdChanged();
   };
   <span class="comment">// QML</span>
   PieChart {
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   chartId: <span class="number">100</span>
   }</pre>

.. raw:: html

   <p>

Aside from int, we could use various other property types. Many of the
Qt data types such as QColor, QSize and QRect are automatically
supported from QML. (See Data Type Conversion Between QML and C++
documentation for a full list.)

.. raw:: html

   </p>

.. raw:: html

   <p>

If we want to create a property whose type is not supported by QML by
default, we need to register the type with the QML engine.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, let's replace the use of the property with a type called
"PieSlice" that has a color property. Instead of assigning a color, we
assign an PieSlice value which itself contains a color:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Charts 1.0
   import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">PieChart</span> {
   <span class="name">id</span>: <span class="name">chart</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">pieSlice</span>: <span class="name">PieSlice</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   }
   <span class="name">Component</span>.onCompleted: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The pie is colored &quot;</span> <span class="operator">+</span> <span class="name">chart</span>.<span class="name">pieSlice</span>.<span class="name">color</span>)
   }</pre>

.. raw:: html

   <p>

Like PieChart, this new PieSlice type inherits from QQuickPaintedItem
and declares its properties with Q\_PROPERTY():

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> PieSlice : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor)
   <span class="keyword">public</span>:
   PieSlice(<span class="type">QQuickItem</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
   <span class="type">QColor</span> color() <span class="keyword">const</span>;
   <span class="type">void</span> setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color);
   <span class="type">void</span> paint(<span class="type">QPainter</span> <span class="operator">*</span>painter);
   <span class="keyword">private</span>:
   <span class="type">QColor</span> m_color;
   };</pre>

.. raw:: html

   <p>

To use it in PieChart, we modify the color property declaration and
associated method signatures:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickItem</span>
   {
   Q_OBJECT
   Q_PROPERTY(PieSlice<span class="operator">*</span> pieSlice READ pieSlice WRITE setPieSlice)
   ...
   <span class="keyword">public</span>:
   ...
   PieSlice <span class="operator">*</span>pieSlice() <span class="keyword">const</span>;
   <span class="type">void</span> setPieSlice(PieSlice <span class="operator">*</span>pieSlice);
   ...
   };</pre>

.. raw:: html

   <p>

There is one thing to be aware of when implementing setPieSlice(). The
PieSlice is a visual item, so it must be set as a child of the PieChart
using QQuickItem::setParentItem() so that the PieChart knows to paint
this child item when its contents are drawn:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> PieChart<span class="operator">::</span>setPieSlice(PieSlice <span class="operator">*</span>pieSlice)
   {
   m_pieSlice <span class="operator">=</span> pieSlice;
   pieSlice<span class="operator">-</span><span class="operator">&gt;</span>setParentItem(<span class="keyword">this</span>);
   }</pre>

.. raw:: html

   <p>

Like the PieChart type, the PieSlice type has to be registered using
qmlRegisterType() to be used from QML. As with PieChart, we'll add the
type to the "Charts" type namespace, version 1.0:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
   {
   ...
   qmlRegisterType<span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span>(<span class="string">&quot;Charts&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieSlice&quot;</span>);
   ...
   }</pre>

.. raw:: html

   <h2 id="chapter-5-using-list-property-types">

Chapter 5: Using List Property Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

extending-qml/chapter5-listproperties

.. raw:: html

   </p>

.. raw:: html

   <p>

Right now, a PieChart can only have one PieSlice. Ideally a chart would
have multiple slices, with different colors and sizes. To do this, we
could have a slices property that accepts a list of PieSlice items:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Charts 1.0
   import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">PieChart</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">slices</span>: [
   <span class="type">PieSlice</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">fromAngle</span>: <span class="number">0</span>; <span class="name">angleSpan</span>: <span class="number">110</span>
   },
   <span class="type">PieSlice</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;black&quot;</span>
   <span class="name">fromAngle</span>: <span class="number">110</span>; <span class="name">angleSpan</span>: <span class="number">50</span>
   },
   <span class="type">PieSlice</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">fromAngle</span>: <span class="number">160</span>; <span class="name">angleSpan</span>: <span class="number">100</span>
   }
   ]
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

To do this, we replace the pieSlice property in PieChart with a slices
property, declared as a QQmlListProperty type. The QQmlListProperty
class enables the creation of list properties in QML extensions. We
replace the pieSlice() function with a slices() function that returns a
list of slices, and add an internal append\_slice() function (discussed
below). We also use a QList to store the internal list of slices as
m\_slices:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickItem</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> slices READ slices)
   ...
   <span class="keyword">public</span>:
   ...
   <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> slices();
   <span class="keyword">private</span>:
   <span class="keyword">static</span> <span class="type">void</span> append_slice(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> PieSlice <span class="operator">*</span>slice);
   <span class="type">QString</span> m_name;
   <span class="type">QList</span><span class="operator">&lt;</span>PieSlice <span class="operator">*</span><span class="operator">&gt;</span> m_slices;
   };</pre>

.. raw:: html

   <p>

Although the slices property does not have an associated WRITE function,
it is still modifiable because of the way QQmlListProperty works. In the
PieChart implementation, we implement PieChart::slices() to return a
QQmlListProperty value and indicate that the internal
PieChart::append\_slice() function is to be called whenever a request is
made from QML to add items to the list:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> PieChart<span class="operator">::</span>slices()
   {
   <span class="keyword">return</span> <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span>(<span class="keyword">this</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="operator">&amp;</span>PieChart<span class="operator">::</span>append_slice<span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span>);
   }
   <span class="type">void</span> PieChart<span class="operator">::</span>append_slice(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> PieSlice <span class="operator">*</span>slice)
   {
   PieChart <span class="operator">*</span>chart <span class="operator">=</span> qobject_cast<span class="operator">&lt;</span>PieChart <span class="operator">*</span><span class="operator">&gt;</span>(list<span class="operator">-</span><span class="operator">&gt;</span>object);
   <span class="keyword">if</span> (chart) {
   slice<span class="operator">-</span><span class="operator">&gt;</span>setParentItem(chart);
   chart<span class="operator">-</span><span class="operator">&gt;</span>m_slices<span class="operator">.</span>append(slice);
   }
   }</pre>

.. raw:: html

   <p>

The append\_slice() function simply sets the parent item as before, and
adds the new item to the m\_slices list. As you can see, the append
function for a QQmlListProperty is called with two arguments: the list
property, and the item that is to be appended.

.. raw:: html

   </p>

.. raw:: html

   <p>

The PieSlice class has also been modified to include fromAngle and
angleSpan properties and to draw the slice according to these values.
This is a straightforward modification if you have read the previous
pages in this tutorial, so the code is not shown here.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="chapter-6-writing-an-extension-plugin">

Chapter 6: Writing an Extension Plugin

.. raw:: html

   </h2>

.. raw:: html

   <p>

extending-qml/chapter6-plugins

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently the PieChart and PieSlice types are used by app.qml, which is
displayed using a QQuickView in a C++ application. An alternative way to
use our QML extension is to create a plugin library to make it available
to the QML engine as a new QML import module. This allows the PieChart
and PieSlice types to be registered into a type namespace which can be
imported by any QML application, instead of restricting these types to
be only used by the one application.

.. raw:: html

   </p>

.. raw:: html

   <p>

The steps for creating a plugin are described in Creating C++ Plugins
for QML. To start with, we create a plugin class named ChartsPlugin. It
subclasses QQmlExtensionPlugin and registers our QML types in the
inherited registerTypes() method.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is the ChartsPlugin definition in chartsplugin.h:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="preprocessor">#include &lt;QQmlExtensionPlugin&gt;</span>
   <span class="keyword">class</span> ChartsPlugin : <span class="keyword">public</span> <span class="type">QQmlExtensionPlugin</span>
   {
   Q_OBJECT
   Q_PLUGIN_METADATA(IID <span class="string">&quot;org.qt-project.Qt.QQmlExtensionInterface&quot;</span>)
   <span class="keyword">public</span>:
   <span class="type">void</span> registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri);
   };</pre>

.. raw:: html

   <p>

And its implementation in chartsplugin.cpp:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="preprocessor">#include &quot;piechart.h&quot;</span>
   <span class="preprocessor">#include &quot;pieslice.h&quot;</span>
   <span class="preprocessor">#include &lt;qqml.h&gt;</span>
   <span class="type">void</span> ChartsPlugin<span class="operator">::</span>registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri)
   {
   qmlRegisterType<span class="operator">&lt;</span>PieChart<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieChart&quot;</span>);
   qmlRegisterType<span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieSlice&quot;</span>);
   }</pre>

.. raw:: html

   <p>

Then, we write a .pro project file that defines the project as a plugin
library and specifies with DESTDIR that library files should be built
into a ../Charts directory.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">TEMPLATE = lib
   CONFIG += plugin
   QT += qml quick
   DESTDIR = ../Charts
   TARGET = $$qtLibraryTarget(chartsplugin)
   HEADERS += piechart.h \
   pieslice.h \
   chartsplugin.h
   SOURCES += piechart.cpp \
   pieslice.cpp \
   chartsplugin.cpp
   DESTPATH=$$[QT_INSTALL_EXAMPLES]/qml/tutorials/extending-qml/chapter6-plugins/Charts
   target.path=$$DESTPATH
   qmldir.files=$$PWD/qmldir
   qmldir.path=$$DESTPATH
   INSTALLS += target qmldir
   OTHER_FILES += qmldir
   # Copy the qmldir file to the same folder as the plugin binary
   QMAKE_POST_LINK += $$QMAKE_COPY $$replace($$list($$quote($$PWD/qmldir) $$DESTDIR), /, $$QMAKE_DIR_SEP)</pre>

.. raw:: html

   <p>

In this example, the Charts directory is located at the same level as
the application that uses our new import module. This way, the QML
engine will find our module as the default search path for QML imports
includes the directory of the application executable. Alternatively, we
could control what directories the QML import path contains, useful if
there are multiple QML applications using the same QML imports.

.. raw:: html

   </p>

.. raw:: html

   <p>

The .pro file also contains additional magic to ensure that the module
definition qmldir file is always copied to the same location as the
plugin binary.

.. raw:: html

   </p>

.. raw:: html

   <p>

The qmldir file declares the module name and the plugin that is made
available by the module:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">module Charts
   plugin chartsplugin</pre>

.. raw:: html

   <p>

Now we have a QML module that can be imported to any application,
provided that the QML engine knows where to find it. The example
contains an executable that loads app.qml, which uses the import Charts
1.0 statement. Alternatively, you can load the QML file using the
qmlscene tool, setting the import path to the current directory so that
it finds the qmldir file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlscene <span class="operator">-</span>I <span class="operator">.</span> app<span class="operator">.</span>qml</pre>

.. raw:: html

   <p>

The module "Charts" will be loaded by the QML engine, and the types
provided by that module will be available for use in any QML document
which imports it.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="chapter-7-summary">

Chapter 7: Summary

.. raw:: html

   </h2>

.. raw:: html

   <p>

In this tutorial, we've shown the basic steps for creating a QML
extension:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Define new QML types by subclassing QObject and registering them with
qmlRegisterType()

.. raw:: html

   </li>

.. raw:: html

   <li>

Add callable methods using Q\_INVOKABLE or Qt slots, and connect to Qt
signals with an onSignal syntax

.. raw:: html

   </li>

.. raw:: html

   <li>

Add property bindings by defining NOTIFY signals

.. raw:: html

   </li>

.. raw:: html

   <li>

Define custom property types if the built-in types are not sufficient

.. raw:: html

   </li>

.. raw:: html

   <li>

Define list property types using QQmlListProperty

.. raw:: html

   </li>

.. raw:: html

   <li>

Create a plugin library by defining a Qt plugin and writing a qmldir
file

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The Integrating QML and C++ documentation shows other useful features
that can be added to QML extensions. For example, we could use default
properties to allow slices to be added without using the slices
property:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">PieChart {
   PieSlice { ..&#x2e; }
   PieSlice { ..&#x2e; }
   PieSlice { ..&#x2e; }
   }</pre>

.. raw:: html

   <p>

Or randomly add and remove slices from time to time using property value
sources:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">PieChart {
   PieSliceRandomizer on slices {}
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

tutorials/extending-qml/chapter1-basics/app.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter1-basics/piechart.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter1-basics/piechart.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter2-methods/app.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter2-methods/piechart.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter2-methods/piechart.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter3-bindings/app.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter3-bindings/piechart.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter3-bindings/piechart.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter4-customPropertyTypes/app.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter4-customPropertyTypes/piechart.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter4-customPropertyTypes/piechart.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter4-customPropertyTypes/pieslice.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter4-customPropertyTypes/pieslice.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter5-listproperties/app.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter5-listproperties/piechart.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter5-listproperties/piechart.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter5-listproperties/pieslice.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter5-listproperties/pieslice.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/app.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/import/chartsplugin.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/import/chartsplugin.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/import/piechart.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/import/piechart.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/import/pieslice.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/import/pieslice.h

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter1-basics/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/extending-qml.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter1-basics/chapter1-basics.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter1-basics/chapter1-basics.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter2-methods/chapter2-methods.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter2-methods/chapter2-methods.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter3-bindings/chapter3-binding.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter3-bindings/chapter3-bindings.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter4-customPropertyTypes/chapter4-customPropertyTypes.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter4-customPropertyTypes/chapter4-customPropertyTypes.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter5-listproperties/chapter5-listproperties.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter5-listproperties/chapter5-listproperties.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/app.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/app.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/chapter6-plugins.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/import/import.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/extending-qml/chapter6-plugins/import/qmldir

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Integrating QML and C++.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tutorials/extending-qml -->
