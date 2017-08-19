QtQuick.qtquick-scenegraph-openglunderqml-example
=================================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The OpenGL under QML example shows how an application can make use of
the QQuickWindow::beforeRendering() signal to draw custom OpenGL content
under a Qt Quick scene. This signal is emitted at the start of every
frame, before the scene graph starts its rendering, thus any OpenGL draw
calls that are made as a response to this signal, will stack under the
Qt Quick items.

.. raw:: html

   </p>

.. raw:: html

   <p>

As an alternative, applications that wish to render OpenGL content on
top of the Qt Quick scene, can do so by connecting to the
QQuickWindow::afterRendering() signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

In this example, we will also see how it is possible to have values that
are exposed to QML which affect the OpenGL rendering. We animate the
threshold value using a NumberAnimation in the QML file and this value
is used by the OpenGL shader program that draws the squircles.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Squircle : <span class="keyword">public</span> <span class="type">QQuickItem</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">qreal</span> t READ t WRITE setT NOTIFY tChanged)
   <span class="keyword">public</span>:
   Squircle();
   <span class="type">qreal</span> t() <span class="keyword">const</span> { <span class="keyword">return</span> m_t; }
   <span class="type">void</span> setT(<span class="type">qreal</span> t);
   <span class="keyword">signals</span>:
   <span class="type">void</span> tChanged();
   <span class="keyword">public</span> <span class="keyword">slots</span>:
   <span class="type">void</span> sync();
   <span class="type">void</span> cleanup();
   <span class="keyword">private</span> <span class="keyword">slots</span>:
   <span class="type">void</span> handleWindowChanged(<span class="type">QQuickWindow</span> <span class="operator">*</span>win);
   <span class="keyword">private</span>:
   <span class="type">qreal</span> m_t;
   SquircleRenderer <span class="operator">*</span>m_renderer;
   };</pre>

.. raw:: html

   <p>

First of all, we need an object we can expose to QML. This is a subclass
of QQuickItem so we can easily access QQuickItem::window().

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> SquircleRenderer : <span class="keyword">public</span> <span class="type">QObject</span><span class="operator">,</span> <span class="keyword">protected</span> <span class="type">QOpenGLFunctions</span>
   {
   Q_OBJECT
   <span class="keyword">public</span>:
   SquircleRenderer() : m_t(<span class="number">0</span>)<span class="operator">,</span> m_program(<span class="number">0</span>) { }
   <span class="operator">~</span>SquircleRenderer();
   <span class="type">void</span> setT(<span class="type">qreal</span> t) { m_t <span class="operator">=</span> t; }
   <span class="type">void</span> setViewportSize(<span class="keyword">const</span> <span class="type">QSize</span> <span class="operator">&amp;</span>size) { m_viewportSize <span class="operator">=</span> size; }
   <span class="keyword">public</span> <span class="keyword">slots</span>:
   <span class="type">void</span> paint();
   <span class="keyword">private</span>:
   <span class="type">QSize</span> m_viewportSize;
   <span class="type">qreal</span> m_t;
   <span class="type">QOpenGLShaderProgram</span> <span class="operator">*</span>m_program;
   };</pre>

.. raw:: html

   <p>

Then we need an object to take care of the rendering. This instance
needs to be separated from the QQuickItem because the item lives in the
GUI thread and the rendering potentially happens on the render thread.
Since we want to connect to QQuickWindow::beforeRendering(), we make the
renderer a QObject. The renderer contains a copy of all the state it
needs, independent of the GUI thread.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Don't be tempted to merge the two objects into one. QQuickItems
may be deleted on the GUI thread while the render thread is rendering.

.. raw:: html

   </p>

.. raw:: html

   <p>

Lets move on to the implementation.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Squircle<span class="operator">::</span>Squircle()
   : m_t(<span class="number">0</span>)
   <span class="operator">,</span> m_renderer(<span class="number">0</span>)
   {
   connect(<span class="keyword">this</span><span class="operator">,</span> SIGNAL(windowChanged(<span class="type">QQuickWindow</span><span class="operator">*</span>))<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleWindowChanged(<span class="type">QQuickWindow</span><span class="operator">*</span>)));
   }</pre>

.. raw:: html

   <p>

The constructor of the Squircle class simply initializes the values and
connects to the window changed signal which we will use to prepare our
renderer.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> Squircle<span class="operator">::</span>handleWindowChanged(<span class="type">QQuickWindow</span> <span class="operator">*</span>win)
   {
   <span class="keyword">if</span> (win) {
   connect(win<span class="operator">,</span> SIGNAL(beforeSynchronizing())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(sync())<span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>DirectConnection);
   connect(win<span class="operator">,</span> SIGNAL(sceneGraphInvalidated())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(cleanup())<span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>DirectConnection);</pre>

.. raw:: html

   <p>

Once we have a window, we attach to the
QQuickWindow::beforeSynchronizing() signal which we will use to create
the renderer and to copy state into it safely. We also connect to the
QQuickWindow::sceneGraphInvalidated() signal to handle the cleanup of
the renderer.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Since the Squircle object has affinity to the GUI thread and the
signals are emitted from the rendering thread, it is crucial that the
connections are made with Qt::DirectConnection. Failing to do so, will
result in that the slots are invoked on the wrong thread with no OpenGL
context present.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">        win<span class="operator">-</span><span class="operator">&gt;</span>setClearBeforeRendering(<span class="keyword">false</span>);
   }
   }</pre>

.. raw:: html

   <p>

The default behavior of the scene graph is to clear the framebuffer
before rendering. Since we render before the scene graph, we need to
turn this clearing off. This means that we need to clear ourselves in
the paint() function.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> Squircle<span class="operator">::</span>sync()
   {
   <span class="keyword">if</span> (<span class="operator">!</span>m_renderer) {
   m_renderer <span class="operator">=</span> <span class="keyword">new</span> SquircleRenderer();
   connect(window()<span class="operator">,</span> SIGNAL(beforeRendering())<span class="operator">,</span> m_renderer<span class="operator">,</span> SLOT(paint())<span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>DirectConnection);
   }
   m_renderer<span class="operator">-</span><span class="operator">&gt;</span>setViewportSize(window()<span class="operator">-</span><span class="operator">&gt;</span>size() <span class="operator">*</span> window()<span class="operator">-</span><span class="operator">&gt;</span>devicePixelRatio());
   m_renderer<span class="operator">-</span><span class="operator">&gt;</span>setT(m_t);
   }</pre>

.. raw:: html

   <p>

We use the sync() function to initialize the renderer and to copy the
state in our item into the renderer. When the renderer is created, we
also connect the QQuickWindow::beforeRendering() to the renderer's
paint() slot.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The QQuickWindow::beforeSynchronizing() signal is emitted on the
rendering thread while the GUI thread is blocked, so it is safe to
simply copy the value without any additional protection.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> Squircle<span class="operator">::</span>cleanup()
   {
   <span class="keyword">if</span> (m_renderer) {
   <span class="keyword">delete</span> m_renderer;
   m_renderer <span class="operator">=</span> <span class="number">0</span>;
   }
   }
   SquircleRenderer<span class="operator">::</span><span class="operator">~</span>SquircleRenderer()
   {
   <span class="keyword">delete</span> m_program;
   }</pre>

.. raw:: html

   <p>

In the cleanup() function we delete the renderer which in turn cleans up
its own resources.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> Squircle<span class="operator">::</span>setT(<span class="type">qreal</span> t)
   {
   <span class="keyword">if</span> (t <span class="operator">=</span><span class="operator">=</span> m_t)
   <span class="keyword">return</span>;
   m_t <span class="operator">=</span> t;
   <span class="keyword">emit</span> tChanged();
   <span class="keyword">if</span> (window())
   window()<span class="operator">-</span><span class="operator">&gt;</span>update();
   }</pre>

.. raw:: html

   <p>

When the value of t changes, we call QQuickWindow::update() rather than
QQuickItem::update() because the former will force the entire window to
be redrawn, even when the scene graph has not changed since the last
frame.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">void</span> SquircleRenderer<span class="operator">::</span>paint()
   {
   <span class="keyword">if</span> (<span class="operator">!</span>m_program) {
   initializeOpenGLFunctions();
   m_program <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QOpenGLShaderProgram</span>();
   m_program<span class="operator">-</span><span class="operator">&gt;</span>addShaderFromSourceCode(<span class="type">QOpenGLShader</span><span class="operator">::</span>Vertex<span class="operator">,</span>
   <span class="string">&quot;attribute highp vec4 vertices;&quot;</span>
   <span class="string">&quot;varying highp vec2 coords;&quot;</span>
   <span class="string">&quot;void main() {&quot;</span>
   <span class="string">&quot;    gl_Position = vertices;&quot;</span>
   <span class="string">&quot;    coords = vertices.xy;&quot;</span>
   <span class="string">&quot;}&quot;</span>);
   m_program<span class="operator">-</span><span class="operator">&gt;</span>addShaderFromSourceCode(<span class="type">QOpenGLShader</span><span class="operator">::</span>Fragment<span class="operator">,</span>
   <span class="string">&quot;uniform lowp float t;&quot;</span>
   <span class="string">&quot;varying highp vec2 coords;&quot;</span>
   <span class="string">&quot;void main() {&quot;</span>
   <span class="string">&quot;    lowp float i = 1. - (pow(abs(coords.x), 4.) + pow(abs(coords.y), 4.));&quot;</span>
   <span class="string">&quot;    i = smoothstep(t - 0.8, t + 0.8, i);&quot;</span>
   <span class="string">&quot;    i = floor(i * 20.) / 20.;&quot;</span>
   <span class="string">&quot;    gl_FragColor = vec4(coords * .5 + .5, i, i);&quot;</span>
   <span class="string">&quot;}&quot;</span>);
   m_program<span class="operator">-</span><span class="operator">&gt;</span>bindAttributeLocation(<span class="string">&quot;vertices&quot;</span><span class="operator">,</span> <span class="number">0</span>);
   m_program<span class="operator">-</span><span class="operator">&gt;</span>link();
   }</pre>

.. raw:: html

   <p>

In the SquircleRenderer's paint() function we start by initializing the
shader program. By initializing the shader program here, we make sure
that the OpenGL context is bound and that we are on the correct thread.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    m_program<span class="operator">-</span><span class="operator">&gt;</span>bind();
   m_program<span class="operator">-</span><span class="operator">&gt;</span>enableAttributeArray(<span class="number">0</span>);
   <span class="type">float</span> values<span class="operator">[</span><span class="operator">]</span> <span class="operator">=</span> {
   <span class="operator">-</span><span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span><span class="operator">,</span>
   <span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span><span class="operator">,</span>
   <span class="operator">-</span><span class="number">1</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span>
   <span class="number">1</span><span class="operator">,</span> <span class="number">1</span>
   };
   m_program<span class="operator">-</span><span class="operator">&gt;</span>setAttributeArray(<span class="number">0</span><span class="operator">,</span> GL_FLOAT<span class="operator">,</span> values<span class="operator">,</span> <span class="number">2</span>);
   m_program<span class="operator">-</span><span class="operator">&gt;</span>setUniformValue(<span class="string">&quot;t&quot;</span><span class="operator">,</span> (<span class="type">float</span>) m_t);
   glViewport(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> m_viewportSize<span class="operator">.</span>width()<span class="operator">,</span> m_viewportSize<span class="operator">.</span>height());
   glDisable(GL_DEPTH_TEST);
   glClearColor(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">1</span>);
   glClear(GL_COLOR_BUFFER_BIT);
   glEnable(GL_BLEND);
   glBlendFunc(GL_SRC_ALPHA<span class="operator">,</span> GL_ONE);
   glDrawArrays(GL_TRIANGLE_STRIP<span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">4</span>);
   m_program<span class="operator">-</span><span class="operator">&gt;</span>disableAttributeArray(<span class="number">0</span>);
   m_program<span class="operator">-</span><span class="operator">&gt;</span>release();
   }</pre>

.. raw:: html

   <p>

We use the shader program to draw the squircle. At the end of the paint
function we release the program and disable the attributes we used so
that the OpenGL context is in a "clean" state for the scene graph to
pick it up.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: If tracking the changes in the OpenGL context's state is not
feasible, one can use the function QQuickWindow::resetOpenGLState()
which will reset all state that the scene graph relies on.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span>argv)
   {
   <span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
   qmlRegisterType<span class="operator">&lt;</span>Squircle<span class="operator">&gt;</span>(<span class="string">&quot;OpenGLUnderQML&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;Squircle&quot;</span>);
   <span class="type">QQuickView</span> view;
   view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
   view<span class="operator">.</span>setSource(<span class="type">QUrl</span>(<span class="string">&quot;qrc:///scenegraph/openglunderqml/main.qml&quot;</span>));
   view<span class="operator">.</span>show();
   <span class="keyword">return</span> app<span class="operator">.</span>exec();
   }</pre>

.. raw:: html

   <p>

The application's main() function instantiates a QQuickView and launches
the main.qml file. The only thing worth noting is that we export the
Squircle class to QML using the qmlRegisterType() macro.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import OpenGLUnderQML 1.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">320</span>
   <span class="name">height</span>: <span class="number">480</span>
   <span class="type">Squircle</span> {
   SequentialAnimation on <span class="name">t</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">1</span>; <span class="name">duration</span>: <span class="number">2500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InQuad</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">2500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutQuad</span> }
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="name">running</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

We import the Squircle QML type with the name we registered in the
main() function. We then instantiate it and create a running
NumberAnimation on its t property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">1</span>, <span class="number">1</span>, <span class="number">1</span>, <span class="number">0.7</span>)
   <span class="name">radius</span>: <span class="number">10</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="name">border</span>.color: <span class="string">&quot;white&quot;</span>
   <span class="name">anchors</span>.fill: <span class="name">label</span>
   <span class="name">anchors</span>.margins: -<span class="number">10</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">label</span>
   <span class="name">color</span>: <span class="string">&quot;black&quot;</span>
   <span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
   <span class="name">text</span>: <span class="string">&quot;The background here is a squircle rendered with raw OpenGL using the 'beforeRender()' signal in QQuickWindow. This text label and its border is rendered using QML&quot;</span>
   <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">anchors</span>.margins: <span class="number">20</span>
   }
   }</pre>

.. raw:: html

   <p>

Then we overlay a short descriptive text, so that it is clearly visible
that we are in fact rendering OpenGL under our Qt Quick scene.

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

scenegraph/openglunderqml/main.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/openglunderqml/squircle.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/openglunderqml/squircle.h

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/openglunderqml/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/openglunderqml/openglunderqml.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

scenegraph/openglunderqml/openglunderqml.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@scenegraph/openglunderqml -->
