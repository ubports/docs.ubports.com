QtQuick.qtquick-visualcanvas-scenegraph
=======================================

.. raw:: html

   <h2 id="the-scene-graph-in-qt-quick">

The Scene Graph in Qt Quick

.. raw:: html

   </h2>

.. raw:: html

   <p>

Qt Quick 2 makes use of a dedicated scene graph based on OpenGL ES 2.0
or OpenGL 2.0 for its rendering. Using a scene graph for graphics rather
than the traditional imperative painting systems (QPainter and similar),
means the scene to be rendered can be retained between frames and the
complete set of primitives to render is known before rendering starts.
This opens up for a number of optimizations, such as batch rendering to
minimize state changes and discarding obscured primitives.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, say a user-interface contains a list of ten items where
each item has a background color, an icon and a text. Using the
traditional drawing techniques, this would result in 30 draw calls and a
similar amount of state changes. A scene graph, on the other hand, could
reorganize the primitives to render such that all backgrounds are drawn
in one call, then all icons, then all the text, reducing the total
amount of draw calls to only 3. Batching and state change reduction like
this can greatly improve performance on some hardware.

.. raw:: html

   </p>

.. raw:: html

   <p>

The scene graph is closely tied to Qt Quick 2.0 and can not be used
stand-alone. The scene graph is managed and rendered by the QQuickWindow
class and custom Item types can add their graphical primitives into the
scene graph through a call to QQuickItem::updatePaintNode().

.. raw:: html

   </p>

.. raw:: html

   <p>

The scene graph is a graphical representation of the Item scene, an
independent structure that contains enough information to render all the
items. Once it has been set up, it can be manipulated and rendered
independently of the state of the items. On many platforms, the scene
graph will even be rendered on a dedicated render thread while the GUI
thread is preparing the next frame's state.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qt-quick-scene-graph-structure">

Qt Quick Scene Graph Structure

.. raw:: html

   </h2>

.. raw:: html

   <p>

The scene graph is composed of a number of predefined node types, each
serving a dedicated purpose. Although we refer to it as a scene graph, a
more precise definition is node tree. The tree is built from QQuickItem
types in the QML scene and internally the scene is then processed by a
renderer which draws the scene. The nodes themselves do not contain any
active drawing code nor virtual paint() function.

.. raw:: html

   </p>

.. raw:: html

   <p>

Even though the node tree is mostly built internally by the existing Qt
Quick QML types, it is possible for users to also add complete subtrees
with their own content, including subtrees that represent 3D models.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Nodes

.. raw:: html

   </h3>

.. raw:: html

   <p>

The most important node for users is the QSGGeometryNode. It is used to
define custom graphics by defining its geometry and material. The
geometry is defined using QSGGeometry and describes the shape or mesh of
the graphical primitive. It can be a line, a rectangle, a polygon, many
disconnected rectangles, or complex 3D mesh. The material defines how
the pixels in this shape are filled.

.. raw:: html

   </p>

.. raw:: html

   <p>

A node can have any number of children and geometry nodes will be
rendered so they appear in child-order with parents behind their
children.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This does not say anything about the actual rendering order in the
renderer. Only the visual output is guaranteed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The available nodes are:

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGClipNode

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Implements the clipping functionality in the scene graph

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGGeometryNode

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Used for all rendered content in the scene graph

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGNode

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

The base class for all nodes in the scene graph

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGOpacityNode

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Used to change opacity of nodes

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGTransformNode

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Implements transformations in the scene graph

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   </p>

.. raw:: html

   <p>

Custom nodes are added to the scene graph by subclassing
QQuickItem::updatePaintNode() and setting the
QQuickItem::ItemHasContents flag.

.. raw:: html

   </p>

.. raw:: html

   <p>

Warning: It is crucial that OpenGL operations and interaction with the
scene graph happens exclusively on the render thread, primarily during
the updatePaintNode() call. The rule of thumb is to only use classes
with the "QSG" prefix inside the QQuickItem::updatePaintNode() function.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details, see the Scene Graph - Custom Geometry.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Preprocessing

.. raw:: html

   </h4>

.. raw:: html

   <p>

Nodes have a virtual QSGNode::preprocess() function, which will be
called before the scene graph is rendered. Node subclasses can set the
flag QSGNode::UsePreprocess and override the QSGNode::preprocess()
function to do final preparation of their node. For example, dividing a
bezier curve into the correct level of detail for the current scale
factor or updating a section of a texture.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Node Ownership

.. raw:: html

   </h4>

.. raw:: html

   <p>

Ownership of the nodes is either done explicitly by the creator or by
the scene graph by setting the flag QSGNode::OwnedByParent. Assigning
ownership to the scene graph is often preferable as it simplifies
cleanup when the scene graph lives outside the GUI thread.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Materials

.. raw:: html

   </h3>

.. raw:: html

   <p>

The material describes how the interior of a geometry in a
QSGGeometryNode is filled. It encapsulates an OpenGL shader program and
provides ample flexibility in what can be achieved, though most of the
Qt Quick items themselves only use very basic materials, such as solid
color and texture fills.

.. raw:: html

   </p>

.. raw:: html

   <p>

For users who just want to apply custom shading to a QML Item type, it
is possible to do this directly in QML using the ShaderEffect type.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below is a complete list of material classes:

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGFlatColorMaterial

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenient way of rendering solid colored geometry in the scene graph

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGMaterial

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Encapsulates rendering state for a shader program

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGMaterialShader

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents an OpenGL shader program in the renderer

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGMaterialType

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Used as a unique type token in combination with QSGMaterial

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGOpaqueTextureMaterial

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenient way of rendering textured geometry in the scene graph

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGSimpleMaterial

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Template generated class used to store the state used with a
QSGSimpleMateralShader

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGSimpleMaterialShader

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenient way of building custom materials for the scene graph

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGTextureMaterial

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenient way of rendering textured geometry in the scene graph

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSGVertexColorMaterial

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenient way of rendering per-vertex colored geometry in the scene
graph

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   </p>

.. raw:: html

   <p>

For more details, see the Scene Graph - Simple Material

.. raw:: html

   </p>

.. raw:: html

   <h3>

Convenience Nodes

.. raw:: html

   </h3>

.. raw:: html

   <p>

The scene graph API is very low-level and focuses on performance rather
than convenience. Writing custom geometries and materials from scratch,
even the most basic ones, requires a non-trivial amount of code. For
this reason, the API includes a few convenience classes to make the most
common custom nodes readily available.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QSGSimpleRectNode - a QSGGeometryNode subclass which defines a
rectangular geometry with a solid color material.

.. raw:: html

   </li>

.. raw:: html

   <li>

QSGSimpleTextureNode - a QSGGeometryNode subclass which defines a
rectangular geometry with a texture material.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="scene-graph-and-rendering">

Scene Graph and Rendering

.. raw:: html

   </h2>

.. raw:: html

   <p>

The rendering of the scene graph happens internally in the QQuickWindow
class, and there is no public API to access it. There are however, a few
places in the rendering pipeline where the user can attach application
code. This can be to add custom scene graph content or render raw OpenGL
content. The integration points are defined by the render loop.

.. raw:: html

   </p>

.. raw:: html

   <p>

For detailed description of how the scene graph renderer works, see Qt
Quick Scene Graph Renderer.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Threaded Render Loop

.. raw:: html

   </h3>

.. raw:: html

   <p>

On many configurations, the scene graph rendering will happen on a
dedicated render thread. This is done to increase parallelism of
multi-core processors and make better use of stall times such as waiting
for a blocking swap buffer call. This offers significant performance
improvements, but imposes certain restrictions on where and when
interaction with the scene graph can happen.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following is a simple outline of how a frame gets composed with the
threaded render loop.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

A change occurs in the QML scene, causing QQuickItem::update() to be
called. This can be the result of for instance an animation or user
input. An event is posted to the render thread to initiate a new frame.

.. raw:: html

   </li>

.. raw:: html

   <li>

The render thread prepares to draw a new frame and makes the OpenGL
context current and initiates a blocks on the GUI thread.

.. raw:: html

   </li>

.. raw:: html

   <li>

While the render thread is preparing the new frame, the GUI thread calls
QQuickItem::updatePolish() to do final touch-up of items before they are
rendered.

.. raw:: html

   </li>

.. raw:: html

   <li>

GUI thread is blocked.

.. raw:: html

   </li>

.. raw:: html

   <li>

The QQuickWindow::beforeSynchronizing() signal is emitted. Applications
can make direct connections (using Qt::DirectConnection) to this signal
to do any preparation required before calls to
QQuickItem::updatePaintNode().

.. raw:: html

   </li>

.. raw:: html

   <li>

Synchronization of the QML state into the scene graph. This is done by
calling the QQuickItem::updatePaintNode() function on all items that
have changed since the previous frame. This is the only time the QML
items and the nodes in the scene graph interact.

.. raw:: html

   </li>

.. raw:: html

   <li>

GUI thread block is released.

.. raw:: html

   </li>

.. raw:: html

   <li>

The scene graph is rendered:

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

The QQuickWindow::beforeRendering() signal is emitted. Applications can
make direct connections (using Qt::DirectConnection) to this signal to
use custom OpenGL calls which will then stack visually beneath the QML
scene.

.. raw:: html

   </li>

.. raw:: html

   <li>

Items that have specified QSGNode::UsePreprocess, will have their
QSGNode::preprocess() function invoked.

.. raw:: html

   </li>

.. raw:: html

   <li>

The renderer processes the nodes and calls OpenGL functions.

.. raw:: html

   </li>

.. raw:: html

   <li>

The QQuickWindow::afterRendering() signal is emitted. Applications can
make direct connections (using Qt::DirectConnection) to this signal to
use custom OpenGL calls which will then stack visually over the QML
scene.

.. raw:: html

   </li>

.. raw:: html

   <li>

The rendered frame is swapped and QQuickWindow::frameSwapped() is
emitted.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   </li>

.. raw:: html

   <li>

While the render thread is rendering, the GUI is free to advance
animations, process events, etc.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

The threaded renderer is currently used by default on Linux with
non-Mesa based drivers, OS X and EGLFS based QPA platforms, but this is
subject to change. It is possible to force use of the threaded renderer
by setting QSG\_RENDER\_LOOP=threaded in the environment.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Non-threaded Render Loop

.. raw:: html

   </h3>

.. raw:: html

   <p>

The non-threaded render loop is currently used by default on Windows and
non-EGLFS based embedded platforms. This is mostly a precautionary
measure, as not all combinations of OpenGL drivers and windowing systems
have been tested.

.. raw:: html

   </p>

.. raw:: html

   <p>

Even when using the non-threaded render loop, you should write your code
as if you are using the threaded renderer, as failing to do so will make
the code non-portable.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following is a simplified illustration of the frame rendering
sequence in the non-threaded renderer.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h3>

Custom control over rendering with QQuickRenderControl

.. raw:: html

   </h3>

.. raw:: html

   <p>

When using QQuickRenderControl, the responsibility for driving the
rendering loop is transferred to the application. In this case no
built-in render loop is used. Instead, it is up to the application to
invoke the polish, synchronize and rendering steps at the appropriate
time. It is possible to implement either a threaded or non-threaded
behavior similar to the ones shown above.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Mixing Scene Graph and OpenGL

.. raw:: html

   </h3>

.. raw:: html

   <p>

The scene graph offers two methods for integrating OpenGL content: by
calling OpenGL commands directly and by creating a textured node in the
scene graph.

.. raw:: html

   </p>

.. raw:: html

   <p>

By connecting to the QQuickWindow::beforeRendering() and
QQuickWindow::afterRendering() signals, applications can make OpenGL
calls directly into the same context as the scene graph is rendering to.
As the signal names indicate, the user can then render OpenGL content
either under a Qt Quick scene or over it. The benefit of integrating in
this manner is that no extra framebuffer nor memory is needed to perform
the rendering. The downside is that Qt Quick decides when to call the
signals and this is the only time the OpenGL application is allowed to
draw.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Scene Graph - OpenGL Under QML example gives an example on how to
use these signals.

.. raw:: html

   </p>

.. raw:: html

   <p>

The other alternative is to create a QQuickFramebufferObject, render
into it, and let it be displayed in the scene graph as a texture. The
Scene Graph - Rendering FBOs example shows how this can be done. It is
also possible to combine multiple rendering contexts and multiple
threads to create content to be displayed in the scene graph. The Scene
Graph - Rendering FBOs in a thread examples show how this can be done.

.. raw:: html

   </p>

.. raw:: html

   <p>

Warning: When mixing OpenGL content with scene graph rendering, it is
important the application does not leave the OpenGL context in a state
with buffers bound, attributes enabled, special values in the z-buffer
or stencil-buffer or similar. Doing so can result in unpredictable
behavior.

.. raw:: html

   </p>

.. raw:: html

   <p>

Warning: The OpenGL rendering code must be thread aware, as the
rendering might be happening outside the GUI thread.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Custom Items using QPainter

.. raw:: html

   </h3>

.. raw:: html

   <p>

The QQuickItem provides a subclass, QQuickPaintedItem, which allows the
users to render content using QPainter.

.. raw:: html

   </p>

.. raw:: html

   <p>

Warning: Using QQuickPaintedItem uses an indirect 2D surface to render
its content, either using software rasterization or using an OpenGL
framebuffer object (FBO), so the rendering is a two-step operation.
First rasterize the surface, then draw the surface. Using scene graph
API directly is always significantly faster.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="logging-support">

Logging Support

.. raw:: html

   </h2>

.. raw:: html

   <p>

The scene graph has support for a number of logging categories. These
can be useful in tracking down both performance issues and bugs in
addition to being helpful to Qt contributors.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

qt.scenegraph.time.texture - logs the time spent doing texture uploads

.. raw:: html

   </li>

.. raw:: html

   <li>

qt.scenegraph.time.compilation - logs the time spent doing shader
compilation

.. raw:: html

   </li>

.. raw:: html

   <li>

qt.scenegraph.time.renderer - logs the time spent in the various steps
of the renderer

.. raw:: html

   </li>

.. raw:: html

   <li>

qt.scenegraph.time.renderloop - logs the time spent in the various steps
of the render loop

.. raw:: html

   </li>

.. raw:: html

   <li>

qt.scenegraph.time.glyph - logs the time spent preparing distance field
glyphs

.. raw:: html

   </li>

.. raw:: html

   <li>

qt.scenegraph.info - logs general information about various parts of the
scene graph and the graphics stack

.. raw:: html

   </li>

.. raw:: html

   <li>

qt.scenegraph.renderloop - creates a detailed log of the various stages
involved in rendering. This log mode is primarily useful for developers
working on Qt.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="scene-graph-backend">

Scene Graph Backend

.. raw:: html

   </h2>

.. raw:: html

   <p>

In addition to the public API, the scene graph has an adaptation layer
which opens up the implementation to do hardware specific adaptations.
This is an undocumented, internal and private plugin API, which lets
hardware adaptation teams make the most of their hardware. It includes:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Custom textures; specifically the implementation of
QQuickWindow::createTextureFromImage and the internal representation of
the texture used by Image and BorderImage types.

.. raw:: html

   </li>

.. raw:: html

   <li>

Custom renderer; the adaptation layer lets the plugin decide how the
scene graph is traversed and rendered, making it possible to optimize
the rendering algorithm for a specific hardware or to make use of
extensions which improve performance.

.. raw:: html

   </li>

.. raw:: html

   <li>

Custom scene graph implementation of many of the default QML types,
including its text and font rendering.

.. raw:: html

   </li>

.. raw:: html

   <li>

Custom animation driver; allows the animation system to hook into the
low-level display vertical refresh to get smooth rendering.

.. raw:: html

   </li>

.. raw:: html

   <li>

Custom render loop; allows better control over how QML deals with
multiple windows.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@qtquick-visualcanvas-scenegraph.html -->
