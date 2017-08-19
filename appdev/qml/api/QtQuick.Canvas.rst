QtQuick.Canvas
==============

.. raw:: html

   <p>

Provides a 2D canvas item enabling drawing via JavaScript More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Canvas -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQuick 2.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt 5.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

available : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

canvasSize : size

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

canvasWindow : rect

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

context : object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contextType : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

renderStrategy : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

renderTarget : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tileSize : size

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

imageLoaded()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paint(rect region)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

painted()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

cancelRequestAnimationFrame(long handle)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object getContext(string contextId, ... args)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isImageError(url image)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isImageLoaded(url image)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isImageLoading(url image)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loadImage(url image)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

markDirty(rect area)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

long requestAnimationFrame(callback)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

requestPaint()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool save(string filename)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string toDataURL(string mimeType)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

unloadImage(url image)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Canvas-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Canvas item allows drawing of straight and curved lines, simple and
complex shapes, graphs, and referenced graphic images. It can also add
text, colors, shadows, gradients, and patterns, and do low level pixel
operations. The Canvas output may be saved as an image file or
serialized to a URL.

.. raw:: html

   </p>

.. raw:: html

   <p>

To define a drawing area in the Canvas item set the width and height
properties. For example, the following code creates a Canvas item which
has a drawing area with a height of 100 pixels and width of 200 pixels:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Canvas</a></span> {
   <span class="name">id</span>: <span class="name">mycanvas</span>
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">200</span>
   }</pre>

.. raw:: html

   <p>

Currently the Canvas item only supports the two-dimensional rendering
context.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="threaded-rendering-and-render-target">

Threaded Rendering and Render Target

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Canvas item supports two render targets: Canvas.Image and
Canvas.FramebufferObject.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Canvas.Image render target is a QImage object. This render target
supports background thread rendering, allowing complex or long running
painting to be executed without blocking the UI.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Canvas.FramebufferObject render target utilizes OpenGL hardware
acceleration rather than rendering into system memory, which in many
cases results in faster rendering. Canvas.FramebufferObject relies on
the OpenGL extensions GL\_EXT\_framebuffer\_multisample and
GL\_EXT\_framebuffer\_blit for antialiasing. It will also use more
graphics memory when rendering strategy is anything other than
Canvas.Cooperative.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default render target is Canvas.Image and the default renderStrategy
is Canvas.Immediate.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="tiled-canvas">

Tiled Canvas

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Canvas item supports tiled rendering by setting canvasSize, tileSize
and canvasWindow properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

Tiling allows efficient display of a very large virtual canvas via a
smaller canvas window. The actual memory consumption is in relation to
the canvas window size. The painting code can draw within the virtual
canvas without handling coordinate system transformations.

.. raw:: html

   </p>

.. raw:: html

   <p>

The tiles overlapping with the canvas window may be cached eliminating
the need to redraw, which can lead to significantly improved performance
in some situations.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="pixel-operations">

Pixel Operations

.. raw:: html

   </h2>

.. raw:: html

   <p>

All HTML5 2D context pixel operations are supported. In order to ensure
improved pixel reading/writing performance the Canvas.Image render
target should be chosen. The Canvas.FramebufferObject render target
requires the pixel data to be exchanged between the system memory and
the graphic card, which is significantly more expensive. Rendering may
also be synchronized with the V-sync signal (to avoid screen tearing)
which will further impact pixel operations with Canvas.FrambufferObject
render target.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="tips-for-porting-existing-html5-canvas-applications">

Tips for Porting Existing HTML5 Canvas Applications

.. raw:: html

   </h2>

.. raw:: html

   <p>

Although the Canvas item is provides a HTML5 like API, HTML5 canvas
applications need to be modified to run in the Canvas item:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Replace all DOM API calls with QML property bindings or Canvas item
methods.

.. raw:: html

   </li>

.. raw:: html

   <li>

Replace all HTML event handlers with the MouseArea item.

.. raw:: html

   </li>

.. raw:: html

   <li>

Change setInterval/setTimeout function calls with the Timer item or the
use of requestAnimationFrame().

.. raw:: html

   </li>

.. raw:: html

   <li>

Place painting code into the onPaint handler and trigger painting by
calling the markDirty() or requestPaint() methods.

.. raw:: html

   </li>

.. raw:: html

   <li>

To draw images, load them by calling the Canvas's loadImage() method and
then request to paint them in the onImageLoaded handler.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Starting Qt 5.4, the Canvas is a texture provider and can be used
directly in ShaderEffects and other classes that consume texture
providers.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Context2D.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Canvas -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$available -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="available-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

available : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Indicates when Canvas is able to provide a drawing context to operate
on.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@available -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="canvasSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

canvasSize : size

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Holds the logical canvas size that the context paints on.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the canvas size is the same size as the current canvas item
size.

.. raw:: html

   </p>

.. raw:: html

   <p>

By setting the canvasSize, tileSize and canvasWindow, the Canvas item
can act as a large virtual canvas with many separately rendered tile
rectangles. Only those tiles within the current canvas window are
painted by the Canvas render engine.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also tileSize and canvasWindow.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@canvasSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="canvasWindow-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

canvasWindow : rect

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Holds the current canvas visible window.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default the canvasWindow size is the same as the Canvas item size
with the top-left point as (0, 0).

.. raw:: html

   </p>

.. raw:: html

   <p>

If the canvasSize is different to the Canvas item size, the Canvas item
can display different visible areas by changing the canvas windowSize
and/or position.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also canvasSize and tileSize.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@canvasWindow -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="context-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

context : object

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Holds the active drawing context.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the canvas is ready and there has been a successful call to
getContext() or the contextType property has been set with a supported
context type, this property will contain the current drawing context,
otherwise null.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@context -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contextType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contextType : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The type of drawing context to use.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is set to the name of the active context type.

.. raw:: html

   </p>

.. raw:: html

   <p>

If set explicitly the canvas will attempt to create a context of the
named type after becoming available.

.. raw:: html

   </p>

.. raw:: html

   <p>

The type name is the same as used in the getContext() call, for the 2d
canvas the value will be "2d".

.. raw:: html

   </p>

.. raw:: html

   <p>

See also getContext() and available.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contextType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="renderStrategy-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

renderStrategy : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Holds the current canvas rendering strategy.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Canvas.Immediate - context will perform graphics commands immediately in
the main UI thread.

.. raw:: html

   </li>

.. raw:: html

   <li>

Canvas.Threaded - context will defer graphics commands to a private
rendering thread.

.. raw:: html

   </li>

.. raw:: html

   <li>

Canvas.Cooperative - context will defer graphics commands to the
applications global render thread.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This hint is supplied along with renderTarget to the graphics context to
determine the method of rendering. A renderStrategy, renderTarget or a
combination may not be supported by a graphics context, in which case
the context will choose appropriate options and Canvas will signal the
change to the properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

Configuration or runtime tests may cause the QML Scene Graph to render
in the GUI thread. Selecting Canvas.Cooperative, does not guarantee
rendering will occur on a thread separate from the GUI thread.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is Canvas.Immediate.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also renderTarget.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@renderStrategy -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="renderTarget-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

renderTarget : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Holds the current canvas render target.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Canvas.Image - render to an in memory image buffer.

.. raw:: html

   </li>

.. raw:: html

   <li>

Canvas.FramebufferObject - render to an OpenGL frame buffer

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This hint is supplied along with renderStrategy to the graphics context
to determine the method of rendering. A renderStrategy, renderTarget or
a combination may not be supported by a graphics context, in which case
the context will choose appropriate options and Canvas will signal the
change to the properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default render target is Canvas.Image.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@renderTarget -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tileSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

tileSize : size

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Holds the canvas rendering tile size.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Canvas item enters tiled mode by setting canvasSize, tileSize and
the canvasWindow. This can improve rendering performance by rendering
and caching tiles instead of rendering the whole canvas every time.

.. raw:: html

   </p>

.. raw:: html

   <p>

Memory will be consumed only by those tiles within the current visible
region.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default the tileSize is the same as the canvasSize.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also canvasSize and canvasWindow.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tileSize -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$imageLoaded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="imageLoaded-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

imageLoaded()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when an image has been loaded.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onImageLoaded.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also loadImage().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@imageLoaded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="paint-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

paint(rect region)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when the region needs to be rendered. If a
context is active it can be referenced from the context property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This signal can be triggered by markdirty(), requestPaint() or by
changing the current canvas window.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPaint.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@paint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="painted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

painted()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted after all context painting commands are executed
and the Canvas has been rendered.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPainted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@painted -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancelRequestAnimationFrame -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancelRequestAnimationFrame-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancelRequestAnimationFrame(long handle)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This function will cancel the animation callback referenced by handle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancelRequestAnimationFrame -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="getContext-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object getContext(string contextId, ... args)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns a drawing context, or null if no context is available.

.. raw:: html

   </p>

.. raw:: html

   <p>

The contextId parameter names the required context. The Canvas item will
return a context that implements the required drawing mode. After the
first call to getContext, any subsequent call to getContext with the
same contextId will return the same context object.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the context type is not supported or the canvas has previously been
requested to provide a different and incompatible context type, null
will be returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

Canvas only supports a 2d context.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@getContext -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isImageError-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

isImageError(url image)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns true if the image failed to load.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also loadImage().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isImageError -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isImageLoaded-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

isImageLoaded(url image)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns true if the image is successfully loaded and ready to use.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also loadImage().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isImageLoaded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isImageLoading-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

isImageLoading(url image)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns true if the image is currently loading.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also loadImage().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isImageLoading -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loadImage-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

loadImage(url image)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Loads the given image asynchronously.

.. raw:: html

   </p>

.. raw:: html

   <p>

When the image is ready, imageLoaded will be emitted. The loaded image
can be unloaded by the unloadImage() method.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Only loaded images can be painted on the Canvas item.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also unloadImage, imageLoaded, isImageLoaded(),
Context2D::createImageData(), and Context2D::drawImage().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loadImage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="markDirty-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

markDirty(rect area)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Mark the given area as dirty, so that when this area is visible the
canvas renderer will redraw it. This will trigger the paint signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also paint and requestPaint().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@markDirty -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="requestAnimationFrame-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

long requestAnimationFrame(callback)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This function schedules callback to be invoked before composing the Qt
Quick scene.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@requestAnimationFrame -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="requestPaint-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

requestPaint()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Request the entire visible region be re-drawn.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also markDirty().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@requestPaint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="save-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool save(string filename)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Save the current canvas content into an image file filename. The saved
image format is automatically decided by the filename's suffix.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: calling this method will force painting the whole canvas, not just
the current canvas visible window.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also canvasWindow, canvasSize, and toDataURL().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@save -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toDataURL-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string toDataURL(string mimeType)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns a data URL for the image in the canvas.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default mimeType is "image/png".

.. raw:: html

   </p>

.. raw:: html

   <p>

See also save().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@toDataURL -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="unloadImage-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

unloadImage(url image)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Unloads the image.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once an image is unloaded it cannot be painted by the canvas context
unless it is loaded again.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also loadImage(), imageLoaded, isImageLoaded(),
Context2D::createImageData(), and Context2D::drawImage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@unloadImage -->


