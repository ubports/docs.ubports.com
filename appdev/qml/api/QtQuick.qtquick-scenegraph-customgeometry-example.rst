QtQuick.qtquick-scenegraph-customgeometry-example
=================================================

.. raw:: html

   <p>

The custom geometry example shows how to create a QQuickItem which uses
the scene graph API to build a custom geometry for the scene graph. It
does this by creating a BezierCurve item which is made part of the
CustomGeometry module and makes use of this in a QML file.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h2 id="beziercurve-declaration">

BezierCurve Declaration

.. raw:: html

   </h2>

.. raw:: html

   <pre class="cpp"><span class="preprocessor">#include &lt;QtQuick/QQuickItem&gt;</span>
   <span class="keyword">class</span> BezierCurve : <span class="keyword">public</span> <span class="type">QQuickItem</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QPointF</span> p1 READ p1 WRITE setP1 NOTIFY p1Changed)
   Q_PROPERTY(<span class="type">QPointF</span> p2 READ p2 WRITE setP2 NOTIFY p2Changed)
   Q_PROPERTY(<span class="type">QPointF</span> p3 READ p3 WRITE setP3 NOTIFY p3Changed)
   Q_PROPERTY(<span class="type">QPointF</span> p4 READ p4 WRITE setP4 NOTIFY p4Changed)
   Q_PROPERTY(<span class="type">int</span> segmentCount READ segmentCount WRITE setSegmentCount NOTIFY segmentCountChanged)
   <span class="keyword">public</span>:
   BezierCurve(<span class="type">QQuickItem</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
   <span class="operator">~</span>BezierCurve();
   <span class="type">QSGNode</span> <span class="operator">*</span>updatePaintNode(<span class="type">QSGNode</span> <span class="operator">*</span><span class="operator">,</span> UpdatePaintNodeData <span class="operator">*</span>);
   <span class="type">QPointF</span> p1() <span class="keyword">const</span> { <span class="keyword">return</span> m_p1; }
   <span class="type">QPointF</span> p2() <span class="keyword">const</span> { <span class="keyword">return</span> m_p2; }
   <span class="type">QPointF</span> p3() <span class="keyword">const</span> { <span class="keyword">return</span> m_p3; }
   <span class="type">QPointF</span> p4() <span class="keyword">const</span> { <span class="keyword">return</span> m_p4; }
   <span class="type">int</span> segmentCount() <span class="keyword">const</span> { <span class="keyword">return</span> m_segmentCount; }
   <span class="type">void</span> setP1(<span class="keyword">const</span> <span class="type">QPointF</span> <span class="operator">&amp;</span>p);
   <span class="type">void</span> setP2(<span class="keyword">const</span> <span class="type">QPointF</span> <span class="operator">&amp;</span>p);
   <span class="type">void</span> setP3(<span class="keyword">const</span> <span class="type">QPointF</span> <span class="operator">&amp;</span>p);
   <span class="type">void</span> setP4(<span class="keyword">const</span> <span class="type">QPointF</span> <span class="operator">&amp;</span>p);
   <span class="type">void</span> setSegmentCount(<span class="type">int</span> count);
   <span class="keyword">signals</span>:
   <span class="type">void</span> p1Changed(<span class="keyword">const</span> <span class="type">QPointF</span> <span class="operator">&amp;</span>p);
   <span class="type">void</span> p2Changed(<span class="keyword">const</span> <span class="type">QPointF</span> <span class="operator">&amp;</span>p);
   <span class="type">void</span> p3Changed(<span class="keyword">const</span> <span class="type">QPointF</span> <span class="operator">&amp;</span>p);
   <span class="type">void</span> p4Changed(<span class="keyword">const</span> <span class="type">QPointF</span> <span class="operator">&amp;</span>p);
   <span class="type">void</span> segmentCountChanged(<span class="type">int</span> count);
   <span class="keyword">private</span>:
   <span class="type">QPointF</span> m_p1;
   <span class="type">QPointF</span> m_p2;
   <span class="type">QPointF</span> m_p3;
   <span class="type">QPointF</span> m_p4;
   <span class="type">int</span> m_segmentCount;
   };</pre>

.. raw:: html

   <p>

The item declaration subclasses the QQuickItem class and adds five
properties. One for each of the four control points in the bezier curve
and a parameter to control the number of segments the curve is
subdivided into. For each of the properties we have corresponding getter
and setter functions. Since these properties can be bound to in QML, it
is also preferable to have notifier signals for each of them so changes
will be picked up the QML engine and used accordingly.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="type">QSGNode</span> <span class="operator">*</span>updatePaintNode(<span class="type">QSGNode</span> <span class="operator">*</span><span class="operator">,</span> UpdatePaintNodeData <span class="operator">*</span>);</pre>

.. raw:: html

   <p>

The synchronization point between the QML scene and the rendering scene
graph is the virtual function QQuickItem::updatePaintNode() which all
items with custom scene graph logic must implement.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The scene graph will on many hardware configurations be rendering
on a separate thread. It is therefore crucial that interaction with the
scene graph happens in a controlled manner, first and foremost through
the QQuickItem::updatePaintNode() function.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="beziercurve-implementation">

BezierCurve Implementation

.. raw:: html

   </h2>

.. raw:: html

   <pre class="cpp">BezierCurve<span class="operator">::</span>BezierCurve(<span class="type">QQuickItem</span> <span class="operator">*</span>parent)
   : <span class="type">QQuickItem</span>(parent)
   <span class="operator">,</span> m_p1(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span>)
   <span class="operator">,</span> m_p2(<span class="number">1</span><span class="operator">,</span> <span class="number">0</span>)
   <span class="operator">,</span> m_p3(<span class="number">0</span><span class="operator">,</span> <span class="number">1</span>)
   <span class="operator">,</span> m_p4(<span class="number">1</span><span class="operator">,</span> <span class="number">1</span>)
   <span class="operator">,</span> m_segmentCount(<span class="number">32</span>)
   {
   setFlag(ItemHasContents<span class="operator">,</span> <span class="keyword">true</span>);
   }</pre>

.. raw:: html

   <p>

The BezierCurve constructor sets up default values for the control
points and the number of segments. The bezier curve is specified in
normalized coordinates relative to the item's bounding rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

The constructor also sets the flag QQuickItem::ItemHasContents. This
flags tells the canvas that this item provides visual content and will
call QQuickItem::updatePaintNode() when it is time for the QML scene to
be synchronized with the rendering scene graph.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">BezierCurve<span class="operator">::</span><span class="operator">~</span>BezierCurve()
   {
   }</pre>

.. raw:: html

   <p>

The BezierCurve class has no data members that need to be cleaned up so
the destructor does nothing. It is worth mentioning that the rendering
scene graph is managed by the scene graph it self, potentially in a
different thread, so one should never retain QSGNode references in the
QQuickItem class nor try to clean them up explicitly.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> BezierCurve<span class="operator">::</span>setP1(<span class="keyword">const</span> <span class="type">QPointF</span> <span class="operator">&amp;</span>p)
   {
   <span class="keyword">if</span> (p <span class="operator">=</span><span class="operator">=</span> m_p1)
   <span class="keyword">return</span>;
   m_p1 <span class="operator">=</span> p;
   <span class="keyword">emit</span> p1Changed(p);
   update();
   }</pre>

.. raw:: html

   <p>

The setter function for the p1 property checks if the value is unchanged
and exits early if this is the case. Then it updates the internal value
and emits the changed signal. It then proceeds to call the
QQuickItem::update() function which will notify the rendering scene
graph, that the state of this object has changed and needs to be
synchronized with the rendering scene graph. A call to update() will
result in a call to QQuickItem::updatePaintNode() at a later time.

.. raw:: html

   </p>

.. raw:: html

   <p>

The other property setters are equivalent, and are omitted from this
example.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QSGNode</span> <span class="operator">*</span>BezierCurve<span class="operator">::</span>updatePaintNode(<span class="type">QSGNode</span> <span class="operator">*</span>oldNode<span class="operator">,</span> UpdatePaintNodeData <span class="operator">*</span>)
   {
   <span class="type">QSGGeometryNode</span> <span class="operator">*</span>node <span class="operator">=</span> <span class="number">0</span>;
   <span class="type">QSGGeometry</span> <span class="operator">*</span>geometry <span class="operator">=</span> <span class="number">0</span>;
   <span class="keyword">if</span> (<span class="operator">!</span>oldNode) {
   node <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QSGGeometryNode</span>;</pre>

.. raw:: html

   <p>

The updatePaintNode() function is the primary integration point for
synchronizing the state of the QML scene with the rendering scene graph.
The function gets passed a QSGNode which is the instance that was
returned on the last call to the function. It will be null the first
time the function gets called and we create our QSGGeometryNode which we
will fill with geometry and a material.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">        geometry <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QSGGeometry</span>(<span class="type">QSGGeometry</span><span class="operator">::</span>defaultAttributes_Point2D()<span class="operator">,</span> m_segmentCount);
   geometry<span class="operator">-</span><span class="operator">&gt;</span>setLineWidth(<span class="number">2</span>);
   geometry<span class="operator">-</span><span class="operator">&gt;</span>setDrawingMode(GL_LINE_STRIP);
   node<span class="operator">-</span><span class="operator">&gt;</span>setGeometry(geometry);
   node<span class="operator">-</span><span class="operator">&gt;</span>setFlag(<span class="type">QSGNode</span><span class="operator">::</span>OwnsGeometry);</pre>

.. raw:: html

   <p>

We then create the geometry and add it to the node. The first argument
to the QSGGeometry constructor is a definition of the vertex type,
called an "attribute set". Since the graphics often used in QML centers
around a few common standard attribute sets, these are provided by
default. Here we use the Point2D attribute set which has two floats, one
for x coordinates and one for y coordinates. The second argument is the
vertex count.

.. raw:: html

   </p>

.. raw:: html

   <p>

Custom attribute sets can also created, but that is not covered in this
example.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since we do not have any special needs for memory managing the geometry,
we specify that the QSGGeometryNode should own the geometry.

.. raw:: html

   </p>

.. raw:: html

   <p>

To minimize allocations, reduce memory fragmentation and improve
performance, it would also be possible to make the geometry a member of
a QSGGeometryNode subclass, in which case, we would not have set the
QSGGeometryNode::OwnsGeometry flag.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">        <span class="type">QSGFlatColorMaterial</span> <span class="operator">*</span>material <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QSGFlatColorMaterial</span>;
   material<span class="operator">-</span><span class="operator">&gt;</span>setColor(<span class="type">QColor</span>(<span class="number">255</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span>));
   node<span class="operator">-</span><span class="operator">&gt;</span>setMaterial(material);
   node<span class="operator">-</span><span class="operator">&gt;</span>setFlag(<span class="type">QSGNode</span><span class="operator">::</span>OwnsMaterial);</pre>

.. raw:: html

   <p>

The scene graph API provides a few commonly used material
implementations. In this example we use the QSGFlatColorMaterial which
will fill the shape defined by the geometry with a solid color. Again we
pass the ownership of the material to the node, so it can be cleaned up
by the scene graph.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    } <span class="keyword">else</span> {
   node <span class="operator">=</span> <span class="keyword">static_cast</span><span class="operator">&lt;</span><span class="type">QSGGeometryNode</span> <span class="operator">*</span><span class="operator">&gt;</span>(oldNode);
   geometry <span class="operator">=</span> node<span class="operator">-</span><span class="operator">&gt;</span>geometry();
   geometry<span class="operator">-</span><span class="operator">&gt;</span>allocate(m_segmentCount);
   }</pre>

.. raw:: html

   <p>

In the case where the QML item has changed and we only want to modify
the existing node's geometry, we cast the oldNode to a QSGGeometryNode
instance and extract it's geometry. In case the segment count has
changed, we call QSGGeometry::allocate() to make sure it has the right
number of vertices.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="type">QRectF</span> bounds <span class="operator">=</span> boundingRect();
   <span class="type">QSGGeometry</span><span class="operator">::</span>Point2D <span class="operator">*</span>vertices <span class="operator">=</span> geometry<span class="operator">-</span><span class="operator">&gt;</span>vertexDataAsPoint2D();
   <span class="keyword">for</span> (<span class="type">int</span> i <span class="operator">=</span> <span class="number">0</span>; i <span class="operator">&lt;</span> m_segmentCount; <span class="operator">+</span><span class="operator">+</span>i) {
   <span class="type">qreal</span> t <span class="operator">=</span> i <span class="operator">/</span> <span class="type">qreal</span>(m_segmentCount <span class="operator">-</span> <span class="number">1</span>);
   <span class="type">qreal</span> invt <span class="operator">=</span> <span class="number">1</span> <span class="operator">-</span> t;
   <span class="type">QPointF</span> pos <span class="operator">=</span> invt <span class="operator">*</span> invt <span class="operator">*</span> invt <span class="operator">*</span> m_p1
   <span class="operator">+</span> <span class="number">3</span> <span class="operator">*</span> invt <span class="operator">*</span> invt <span class="operator">*</span> t <span class="operator">*</span> m_p2
   <span class="operator">+</span> <span class="number">3</span> <span class="operator">*</span> invt <span class="operator">*</span> t <span class="operator">*</span> t <span class="operator">*</span> m_p3
   <span class="operator">+</span> t <span class="operator">*</span> t <span class="operator">*</span> t <span class="operator">*</span> m_p4;
   <span class="type">float</span> x <span class="operator">=</span> bounds<span class="operator">.</span>x() <span class="operator">+</span> pos<span class="operator">.</span>x() <span class="operator">*</span> bounds<span class="operator">.</span>width();
   <span class="type">float</span> y <span class="operator">=</span> bounds<span class="operator">.</span>y() <span class="operator">+</span> pos<span class="operator">.</span>y() <span class="operator">*</span> bounds<span class="operator">.</span>height();
   vertices<span class="operator">[</span>i<span class="operator">]</span><span class="operator">.</span>set(x<span class="operator">,</span> y);
   }
   node<span class="operator">-</span><span class="operator">&gt;</span>markDirty(<span class="type">QSGNode</span><span class="operator">::</span>DirtyGeometry);</pre>

.. raw:: html

   <p>

To fill the geometry, we first extract the vertex array from it. Since
we are using one of the default attribute sets, we can use the
convenience function QSGGeometry::vertexDataAsPoint2D(). Then we go
through each segment and calculate its position and write that value to
the vertex.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="keyword">return</span> node;
   }</pre>

.. raw:: html

   <p>

In the end of the function, we return the node so the scene graph can
render it.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="application-entry-point">

Application Entry-Point

.. raw:: html

   </h2>

.. raw:: html

   <pre class="cpp"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span>argv)
   {
   <span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
   qmlRegisterType<span class="operator">&lt;</span>BezierCurve<span class="operator">&gt;</span>(<span class="string">&quot;CustomGeometry&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;BezierCurve&quot;</span>);
   <span class="type">QQuickView</span> view;
   <span class="type">QSurfaceFormat</span> format <span class="operator">=</span> view<span class="operator">.</span>format();
   format<span class="operator">.</span>setSamples(<span class="number">16</span>);
   view<span class="operator">.</span>setFormat(format);
   view<span class="operator">.</span>setSource(<span class="type">QUrl</span>(<span class="string">&quot;qrc:///scenegraph/customgeometry/main.qml&quot;</span>));
   view<span class="operator">.</span>show();
   app<span class="operator">.</span>exec();
   }</pre>

.. raw:: html

   <p>

The application is a straightforward QML application, with a
QGuiApplication and a QQuickView that we pass a .qml file. To make use
of the BezierCurve item, we need to register it in the QML engine, using
the qmlRegisterType() function. We give it the name BezierCurve and make
it part of the CustomGeometry 1.0 module.

.. raw:: html

   </p>

.. raw:: html

   <p>

As the bezier curve is drawn using GL\_LINE\_STRIP, we specify that the
view should be multisampled to get antialiasing. This is not required,
but it will make the item look a bit nicer on hardware that supports it.
Multisampling is not enabled by default because it often results in
higher memory usage.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="using-the-item">

Using the Item

.. raw:: html

   </h2>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import CustomGeometry 1.0</pre>

.. raw:: html

   <p>

Our .qml file imports the QtQuick 2.0 module to get the standard types
and also our own CustomGeometry 1.0 module which contains our newly
created BezierCurve objects.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">300</span>
   <span class="name">height</span>: <span class="number">200</span>
   <span class="type">BezierCurve</span> {
   <span class="name">id</span>: <span class="name">line</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">anchors</span>.margins: <span class="number">20</span></pre>

.. raw:: html

   <p>

Then we create the our root item and an instance of the BezierCurve
which we anchor to fill the root.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        property <span class="type">real</span> <span class="name">t</span>
   SequentialAnimation on <span class="name">t</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">1</span>; <span class="name">duration</span>: <span class="number">2000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">2000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   }
   <span class="name">p2</span>: <span class="name">Qt</span>.<span class="name">point</span>(<span class="name">t</span>, <span class="number">1</span> <span class="operator">-</span> <span class="name">t</span>)
   <span class="name">p3</span>: <span class="name">Qt</span>.<span class="name">point</span>(<span class="number">1</span> <span class="operator">-</span> <span class="name">t</span>, <span class="name">t</span>)
   }</pre>

.. raw:: html

   <p>

To make the example a bit more interesting we add an animation to change
the two control points in the curve. The end points stay unchanged.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">anchors</span>.bottom: <span class="name">line</span>.<span class="name">bottom</span>
   <span class="name">x</span>: <span class="number">20</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> <span class="number">40</span>
   <span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
   <span class="name">text</span>: <span class="string">&quot;This curve is a custom scene graph item, implemented using GL_LINE_STRIP&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

Finally we overlay a short text outlining what the example shows.

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

scenegraph/customgeometry/beziercurve.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/customgeometry/beziercurve.h

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/customgeometry/main.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/customgeometry/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/customgeometry/customgeometry.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/customgeometry/customgeometry.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@scenegraph/customgeometry -->
