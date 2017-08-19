QtQuick.qtquick-scenegraph-simplematerial-example
=================================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

In this example, we will make use of the QSGSimpleMaterialShader class
to fill a shape in the scene graph. This is a convenience class intended
to avoid a lot of the boilerplate code required when creating materials
with the QSGMaterial, QSGMaterialShader and QSGMaterialType classes
directly.

.. raw:: html

   </p>

.. raw:: html

   <p>

A simple material consists of two parts: the material state and the
material shader. The material shader has one instance per scene graph
and contains the actual OpenGL shader program and information about
which attributes and uniforms it uses. The material state is what we
assign to each individual node; in this case to give them different
colors.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">struct</span> State
   {
   <span class="type">QColor</span> color;
   <span class="type">int</span> compare(<span class="keyword">const</span> State <span class="operator">*</span>other) <span class="keyword">const</span> {
   <span class="type">uint</span> rgb <span class="operator">=</span> color<span class="operator">.</span>rgba();
   <span class="type">uint</span> otherRgb <span class="operator">=</span> other<span class="operator">-</span><span class="operator">&gt;</span>color<span class="operator">.</span>rgba();
   <span class="keyword">if</span> (rgb <span class="operator">=</span><span class="operator">=</span> otherRgb) {
   <span class="keyword">return</span> <span class="number">0</span>;
   } <span class="keyword">else</span> <span class="keyword">if</span> (rgb <span class="operator">&lt;</span> otherRgb) {
   <span class="keyword">return</span> <span class="operator">-</span><span class="number">1</span>;
   } <span class="keyword">else</span> {
   <span class="keyword">return</span> <span class="number">1</span>;
   }
   }
   };</pre>

.. raw:: html

   <p>

The first thing we do when creating custom materials with the simplified
scheme is to create a state class. In this case the state class contains
only one member, a QColor. It also defines a compare function which the
scene graph can use to reorder the node rendering.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Shader : <span class="keyword">public</span> <span class="type">QSGSimpleMaterialShader</span><span class="operator">&lt;</span>State<span class="operator">&gt;</span>
   {
   QSG_DECLARE_SIMPLE_COMPARABLE_SHADER(Shader<span class="operator">,</span> State);</pre>

.. raw:: html

   <p>

Next we define the material shader, by subclassing a template
instantiation of QSGSimpleMaterialShader with our State.

.. raw:: html

   </p>

.. raw:: html

   <p>

Then we use the macro QSG\_DECLARE\_SIMPLE\_COMPARABLE\_SHADER() which
will generate some boilerplate code for us. Since our State class has a
compare function, we declare that the states can be compared. It would
have been possible to remove the State::compare() function and instead
declare the shader with QSG\_DECLARE\_SIMPLE\_SHADER(), but this could
then reduce performance in certain use cases.

.. raw:: html

   </p>

.. raw:: html

   <p>

The state struct is used as a template parameter to automatically
generate a QSGMaterialType for us, so it is crucial that the pair of
shader and state are made up of unique classes. Using the same State
class in multiple shaders will will lead to undefined behavior.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">public</span>:
   <span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>vertexShader() <span class="keyword">const</span> {
   <span class="keyword">return</span>
   <span class="string">&quot;attribute highp vec4 aVertex;                              \n&quot;</span>
   <span class="string">&quot;attribute highp vec2 aTexCoord;                            \n&quot;</span>
   <span class="string">&quot;uniform highp mat4 qt_Matrix;                              \n&quot;</span>
   <span class="string">&quot;varying highp vec2 texCoord;                               \n&quot;</span>
   <span class="string">&quot;void main() {                                              \n&quot;</span>
   <span class="string">&quot;    gl_Position = qt_Matrix * aVertex;                     \n&quot;</span>
   <span class="string">&quot;    texCoord = aTexCoord;                                  \n&quot;</span>
   <span class="string">&quot;}&quot;</span>;
   }
   <span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>fragmentShader() <span class="keyword">const</span> {
   <span class="keyword">return</span>
   <span class="string">&quot;uniform lowp float qt_Opacity;                             \n&quot;</span>
   <span class="string">&quot;uniform lowp vec4 color;                                   \n&quot;</span>
   <span class="string">&quot;varying highp vec2 texCoord;                               \n&quot;</span>
   <span class="string">&quot;void main ()                                               \n&quot;</span>
   <span class="string">&quot;{                                                          \n&quot;</span>
   <span class="string">&quot;    gl_FragColor = texCoord.y * texCoord.x * color * qt_Opacity;  \n&quot;</span>
   <span class="string">&quot;}&quot;</span>;
   }</pre>

.. raw:: html

   <p>

Next comes the declaration of the shader source code, where we define a
vertex and fragment shader. The simple material assumes the presence of
qt\_Matrix in the vertex shader and qt\_Opacity in the fragment shader.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="type">QList</span><span class="operator">&lt;</span><span class="type">QByteArray</span><span class="operator">&gt;</span> attributes() <span class="keyword">const</span>
   {
   <span class="keyword">return</span> <span class="type">QList</span><span class="operator">&lt;</span><span class="type">QByteArray</span><span class="operator">&gt;</span>() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;aVertex&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;aTexCoord&quot;</span>;
   }</pre>

.. raw:: html

   <p>

We reimplement the attributes function to return the name of the aVertex
and aTexCoord attributes. These attributes will be mapped to attribute
indices 0 and 1 in the node's geometry.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="type">void</span> resolveUniforms()
   {
   id_color <span class="operator">=</span> program()<span class="operator">-</span><span class="operator">&gt;</span>uniformLocation(<span class="string">&quot;color&quot;</span>);
   }
   <span class="keyword">private</span>:
   <span class="type">int</span> id_color;</pre>

.. raw:: html

   <p>

Uniforms can be accessed either by name or by index, where index is
faster than name. We reimplement the resolveUniforms() function to find
the index of the color uniform. We do not have to worry about resolving
qt\_Opacity or qt\_Matrix as these are handled by the baseclass.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="type">void</span> updateState(<span class="keyword">const</span> State <span class="operator">*</span>state<span class="operator">,</span> <span class="keyword">const</span> State <span class="operator">*</span>)
   {
   program()<span class="operator">-</span><span class="operator">&gt;</span>setUniformValue(id_color<span class="operator">,</span> state<span class="operator">-</span><span class="operator">&gt;</span>color);
   }</pre>

.. raw:: html

   <p>

The updateState() function is called once for every unique state and we
use it to update the shader program with the current color. The previous
state is passed in as a second parameter so that the user can update
only that which has changed. In our usecase, where all the colors are
different, the updateState will be called once for every node.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> ColorNode : <span class="keyword">public</span> <span class="type">QSGGeometryNode</span>
   {
   <span class="keyword">public</span>:
   ColorNode()
   : m_geometry(<span class="type">QSGGeometry</span><span class="operator">::</span>defaultAttributes_TexturedPoint2D()<span class="operator">,</span> <span class="number">4</span>)
   {
   setGeometry(<span class="operator">&amp;</span>m_geometry);
   <span class="type">QSGSimpleMaterial</span><span class="operator">&lt;</span>State<span class="operator">&gt;</span> <span class="operator">*</span>material <span class="operator">=</span> Shader<span class="operator">::</span>createMaterial();
   material<span class="operator">-</span><span class="operator">&gt;</span>setFlag(<span class="type">QSGMaterial</span><span class="operator">::</span>Blending);
   setMaterial(material);
   setFlag(OwnsMaterial);
   }
   <span class="type">QSGGeometry</span> m_geometry;
   };</pre>

.. raw:: html

   <p>

The ColorNode class is supposed to draw something, so it needs to be a
subclass of QSGGeometryNode.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since our shader expects both a position and a texture coordinate, we
use the default attribute set
QSGGeometry::defaultAttributes\_TexturedPoint2D() and declare that the
geometry consists of a total of four vertices. To avoid the allocation,
we make the QSGGeometry a member of the QSGGeometryNode.

.. raw:: html

   </p>

.. raw:: html

   <p>

When we used the macro QSG\_DECLARE\_SIMPLE\_COMPARABLE\_SHADER() above,
it defined the createMaterial() function which we use to instantiate
materials for our State struct.

.. raw:: html

   </p>

.. raw:: html

   <p>

As we will be making use of opacity in our custom material, we need to
set the QSGMaterial::Blending flag. The scene graph may use this flag to
either disable or enable GL\_BLEND when drawing the node or to reorder
the drawing of the node.

.. raw:: html

   </p>

.. raw:: html

   <p>

Finally, we tell the node to take ownership of the material, so we do
not have to explicitly memory-manage it.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Item : <span class="keyword">public</span> <span class="type">QQuickItem</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor NOTIFY colorChanged)
   <span class="keyword">public</span>:
   Item()
   {
   setFlag(ItemHasContents<span class="operator">,</span> <span class="keyword">true</span>);
   }
   <span class="type">void</span> setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color) {
   <span class="keyword">if</span> (m_color <span class="operator">!</span><span class="operator">=</span> color) {
   m_color <span class="operator">=</span> color;
   <span class="keyword">emit</span> colorChanged();
   update();
   }
   }
   <span class="type">QColor</span> color() <span class="keyword">const</span> {
   <span class="keyword">return</span> m_color;
   }
   <span class="keyword">signals</span>:
   <span class="type">void</span> colorChanged();
   <span class="keyword">private</span>:
   <span class="type">QColor</span> m_color;</pre>

.. raw:: html

   <p>

Since the Item is providing its own graphics to the scene graph, we set
the flag QQuickItem::ItemHasContents.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">public</span>:
   <span class="type">QSGNode</span> <span class="operator">*</span>updatePaintNode(<span class="type">QSGNode</span> <span class="operator">*</span>node<span class="operator">,</span> UpdatePaintNodeData <span class="operator">*</span>)
   {
   ColorNode <span class="operator">*</span>n <span class="operator">=</span> <span class="keyword">static_cast</span><span class="operator">&lt;</span>ColorNode <span class="operator">*</span><span class="operator">&gt;</span>(node);
   <span class="keyword">if</span> (<span class="operator">!</span>node)
   n <span class="operator">=</span> <span class="keyword">new</span> ColorNode();
   <span class="type">QSGGeometry</span><span class="operator">::</span>updateTexturedRectGeometry(n<span class="operator">-</span><span class="operator">&gt;</span>geometry()<span class="operator">,</span> boundingRect()<span class="operator">,</span> <span class="type">QRectF</span>(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">1</span>));
   <span class="keyword">static_cast</span><span class="operator">&lt;</span><span class="type">QSGSimpleMaterial</span><span class="operator">&lt;</span>State<span class="operator">&gt;</span><span class="operator">*</span><span class="operator">&gt;</span>(n<span class="operator">-</span><span class="operator">&gt;</span>material())<span class="operator">-</span><span class="operator">&gt;</span>state()<span class="operator">-</span><span class="operator">&gt;</span>color <span class="operator">=</span> m_color;
   n<span class="operator">-</span><span class="operator">&gt;</span>markDirty(<span class="type">QSGNode</span><span class="operator">::</span>DirtyGeometry <span class="operator">|</span> <span class="type">QSGNode</span><span class="operator">::</span>DirtyMaterial);
   <span class="keyword">return</span> n;
   }
   };</pre>

.. raw:: html

   <p>

Whenever the Item has changed graphically, the
QQuickItem::updatePaintNode() function is called.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The scene graph may be rendered in a different thread than the GUI
thread and QQuickItem::updatePaintNode() is one of the few places where
it is safe to access properties of the QML object. Any interaction with
the scene graph from a custom QQuickItem should be contained within this
function. The function is called on the rendering thread while the GUI
thread is blocked.

.. raw:: html

   </p>

.. raw:: html

   <p>

The first time this function is called for an Item instance, the node
will be 0, and so we create a new one. For every consecutive call, the
node will be what we returned previously. There are scenarios where the
scene graph will be removed and rebuilt from scratch however, so one
should always check the node and recreate it if required.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once we have a ColorNode, we update its geometry and material state.
Finally, we notify the scene graph that the node has undergone changes
to its geometry and material.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span>argv)
   {
   <span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
   qmlRegisterType<span class="operator">&lt;</span>Item<span class="operator">&gt;</span>(<span class="string">&quot;SimpleMaterial&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;SimpleMaterialItem&quot;</span>);
   <span class="type">QQuickView</span> view;
   view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
   view<span class="operator">.</span>setSource(<span class="type">QUrl</span>(<span class="string">&quot;qrc:///scenegraph/simplematerial/main.qml&quot;</span>));
   view<span class="operator">.</span>show();
   <span class="keyword">return</span> app<span class="operator">.</span>exec();
   }
   <span class="preprocessor">#include &quot;simplematerial.moc&quot;</span></pre>

.. raw:: html

   <p>

The main() function of the application adds the custom QML type using
qmlRegisterType() and opens up a QQuickView with our QML file.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import SimpleMaterial 1.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">320</span>
   <span class="name">height</span>: <span class="number">480</span>
   <span class="name">color</span>: <span class="string">&quot;black&quot;</span></pre>

.. raw:: html

   <p>

In the QML file, we import our custom type so we can instantiate it.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="type">SimpleMaterialItem</span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>;
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>;
   <span class="name">color</span>: <span class="string">&quot;steelblue&quot;</span>
   }
   <span class="type">SimpleMaterialItem</span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>;
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>;
   <span class="name">color</span>: <span class="string">&quot;darkorchid&quot;</span>
   }
   <span class="type">SimpleMaterialItem</span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>;
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>;
   <span class="name">color</span>: <span class="string">&quot;springgreen&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

Then we create a column containing three instances of our custom item,
each with a different color.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>, <span class="number">0</span>, <span class="number">0</span>, <span class="number">0.8</span>)
   <span class="name">radius</span>: <span class="number">10</span>
   <span class="name">antialiasing</span>: <span class="number">true</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="name">border</span>.color: <span class="string">&quot;black&quot;</span>
   <span class="name">anchors</span>.fill: <span class="name">label</span>
   <span class="name">anchors</span>.margins: -<span class="number">10</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">label</span>
   <span class="name">color</span>: <span class="string">&quot;white&quot;</span>
   <span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
   <span class="name">text</span>: <span class="string">&quot;These three gradient boxes are colorized using a custom material.&quot;</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">anchors</span>.margins: <span class="number">20</span>
   }
   }</pre>

.. raw:: html

   <p>

And finally we overlay a short descriptive text.

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

scenegraph/simplematerial/main.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/simplematerial/simplematerial.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/simplematerial/simplematerial.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/simplematerial/simplematerial.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@scenegraph/simplematerial -->
