Provides a 2D canvas item enabling drawing via JavaScript

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.0                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`available </sdk/apps/qml/QtQuick/Canvas#available-prop>`__**** :
   bool
-  ****`canvasSize </sdk/apps/qml/QtQuick/Canvas#canvasSize-prop>`__****
   : size
-  ****`canvasWindow </sdk/apps/qml/QtQuick/Canvas#canvasWindow-prop>`__****
   : rect
-  ****`context </sdk/apps/qml/QtQuick/Canvas#context-prop>`__**** :
   object
-  ****`contextType </sdk/apps/qml/QtQuick/Canvas#contextType-prop>`__****
   : string
-  ****`renderStrategy </sdk/apps/qml/QtQuick/Canvas#renderStrategy-prop>`__****
   : enumeration
-  ****`renderTarget </sdk/apps/qml/QtQuick/Canvas#renderTarget-prop>`__****
   : enumeration
-  ****`tileSize </sdk/apps/qml/QtQuick/Canvas#tileSize-prop>`__**** :
   size

Signals
-------

-  ****`imageLoaded </sdk/apps/qml/QtQuick/Canvas#imageLoaded-signal>`__****\ ()
-  ****`paint </sdk/apps/qml/QtQuick/Canvas#paint-signal>`__****\ (rect
   *region*)
-  ****`painted </sdk/apps/qml/QtQuick/Canvas#painted-signal>`__****\ ()

Methods
-------

-  ****`cancelRequestAnimationFrame </sdk/apps/qml/QtQuick/Canvas#cancelRequestAnimationFrame-method>`__****\ (long
   *handle*)
-  object
   ****`getContext </sdk/apps/qml/QtQuick/Canvas#getContext-method>`__****\ (string
   *contextId*, ... *args*)
-  ****`isImageError </sdk/apps/qml/QtQuick/Canvas#isImageError-method>`__****\ (url
   *image*)
-  ****`isImageLoaded </sdk/apps/qml/QtQuick/Canvas#isImageLoaded-method>`__****\ (url
   *image*)
-  ****`isImageLoading </sdk/apps/qml/QtQuick/Canvas#isImageLoading-method>`__****\ (url
   *image*)
-  ****`loadImage </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__****\ (url
   *image*)
-  ****`markDirty </sdk/apps/qml/QtQuick/Canvas#markDirty-method>`__****\ (rect
   *area*)
-  long
   ****`requestAnimationFrame </sdk/apps/qml/QtQuick/Canvas#requestAnimationFrame-method>`__****\ (callback)
-  ****`requestPaint </sdk/apps/qml/QtQuick/Canvas#requestPaint-method>`__****\ ()
-  bool
   ****`save </sdk/apps/qml/QtQuick/Canvas#save-method>`__****\ (string
   *filename*)
-  string
   ****`toDataURL </sdk/apps/qml/QtQuick/Canvas#toDataURL-method>`__****\ (string
   *mimeType*)
-  ****`unloadImage </sdk/apps/qml/QtQuick/Canvas#unloadImage-method>`__****\ (url
   *image*)

Detailed Description
--------------------

The Canvas item allows drawing of straight and curved lines, simple and
complex shapes, graphs, and referenced graphic images. It can also add
text, colors, shadows, gradients, and patterns, and do low level pixel
operations. The Canvas output may be saved as an image file or
serialized to a URL.

To define a drawing area in the Canvas item set the ``width`` and
``height`` properties. For example, the following code creates a Canvas
item which has a drawing area with a height of 100 pixels and width of
200 pixels:

.. code:: qml

    import QtQuick 2.0
    Canvas {
        id: mycanvas
        width: 100
        height: 200
    }

Currently the Canvas item only supports the two-dimensional rendering
context.

Threaded Rendering and Render Target
------------------------------------

The Canvas item supports two render targets: ``Canvas.Image`` and
``Canvas.FramebufferObject``.

The ``Canvas.Image`` render target is a *QImage* object. This render
target supports background thread rendering, allowing complex or long
running painting to be executed without blocking the UI.

The Canvas.FramebufferObject render target utilizes OpenGL hardware
acceleration rather than rendering into system memory, which in many
cases results in faster rendering. Canvas.FramebufferObject relies on
the OpenGL extensions ``GL_EXT_framebuffer_multisample`` and
``GL_EXT_framebuffer_blit`` for antialiasing. It will also use more
graphics memory when rendering strategy is anything other than
Canvas.Cooperative.

The default render target is Canvas.Image and the default
`renderStrategy </sdk/apps/qml/QtQuick/Canvas#renderStrategy-prop>`__ is
Canvas.Immediate.

Tiled Canvas
------------

The Canvas item supports tiled rendering by setting
`canvasSize </sdk/apps/qml/QtQuick/Canvas#canvasSize-prop>`__,
`tileSize </sdk/apps/qml/QtQuick/Canvas#tileSize-prop>`__ and
`canvasWindow </sdk/apps/qml/QtQuick/Canvas#canvasWindow-prop>`__
properties.

Tiling allows efficient display of a very large virtual canvas via a
smaller canvas window. The actual memory consumption is in relation to
the canvas window size. The painting code can draw within the virtual
canvas without handling coordinate system transformations.

The tiles overlapping with the canvas window may be cached eliminating
the need to redraw, which can lead to significantly improved performance
in some situations.

Pixel Operations
----------------

All HTML5 2D context pixel operations are supported. In order to ensure
improved pixel reading/writing performance the *Canvas.Image* render
target should be chosen. The *Canvas.FramebufferObject* render target
requires the pixel data to be exchanged between the system memory and
the graphic card, which is significantly more expensive. Rendering may
also be synchronized with the V-sync signal (to avoid `screen
tearing <http://en.wikipedia.org/wiki/Screen_tearing>`__) which will
further impact pixel operations with ``Canvas.FrambufferObject`` render
target.

Tips for Porting Existing HTML5 Canvas Applications
---------------------------------------------------

Although the Canvas item is provides a HTML5 like API, HTML5 canvas
applications need to be modified to run in the Canvas item:

-  Replace all DOM API calls with QML property bindings or Canvas item
   methods.
-  Replace all HTML event handlers with the
   `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ item.
-  Change setInterval/setTimeout function calls with the Timer item or
   the use of
   `requestAnimationFrame() </sdk/apps/qml/QtQuick/Canvas#requestAnimationFrame-method>`__.
-  Place painting code into the ``onPaint`` handler and trigger painting
   by calling the
   `markDirty() </sdk/apps/qml/QtQuick/Canvas#markDirty-method>`__ or
   `requestPaint() </sdk/apps/qml/QtQuick/Canvas#requestPaint-method>`__
   methods.
-  To draw images, load them by calling the Canvas's
   `loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__
   method and then request to paint them in the ``onImageLoaded``
   handler.

Starting Qt 5.4, the Canvas is a texture provider and can be used
directly in ShaderEffects and other classes that consume texture
providers.

**See also** `Context2D </sdk/apps/qml/QtQuick/Context2D/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ available : bool                                                |
+--------------------------------------------------------------------------+

Indicates when Canvas is able to provide a drawing context to operate
on.

| 

+--------------------------------------------------------------------------+
|        \ canvasSize : size                                               |
+--------------------------------------------------------------------------+

Holds the logical canvas size that the context paints on.

By default, the canvas size is the same size as the current canvas item
size.

By setting the canvasSize,
`tileSize </sdk/apps/qml/QtQuick/Canvas#tileSize-prop>`__ and
`canvasWindow </sdk/apps/qml/QtQuick/Canvas#canvasWindow-prop>`__, the
Canvas item can act as a large virtual canvas with many separately
rendered tile rectangles. Only those tiles within the current canvas
window are painted by the Canvas render engine.

**See also** `tileSize </sdk/apps/qml/QtQuick/Canvas#tileSize-prop>`__
and `canvasWindow </sdk/apps/qml/QtQuick/Canvas#canvasWindow-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ canvasWindow : rect                                             |
+--------------------------------------------------------------------------+

Holds the current canvas visible window.

By default the canvasWindow size is the same as the Canvas item size
with the top-left point as (0, 0).

If the `canvasSize </sdk/apps/qml/QtQuick/Canvas#canvasSize-prop>`__ is
different to the Canvas item size, the Canvas item can display different
visible areas by changing the canvas windowSize and/or position.

**See also**
`canvasSize </sdk/apps/qml/QtQuick/Canvas#canvasSize-prop>`__ and
`tileSize </sdk/apps/qml/QtQuick/Canvas#tileSize-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ context : object                                                |
+--------------------------------------------------------------------------+

Holds the active drawing context.

If the canvas is ready and there has been a successful call to
`getContext() </sdk/apps/qml/QtQuick/Canvas#getContext-method>`__ or the
`contextType </sdk/apps/qml/QtQuick/Canvas#contextType-prop>`__ property
has been set with a supported context type, this property will contain
the current drawing context, otherwise null.

| 

+--------------------------------------------------------------------------+
|        \ contextType : string                                            |
+--------------------------------------------------------------------------+

The type of drawing context to use.

This property is set to the name of the active context type.

If set explicitly the canvas will attempt to create a context of the
named type after becoming available.

The type name is the same as used in the
`getContext() </sdk/apps/qml/QtQuick/Canvas#getContext-method>`__ call,
for the 2d canvas the value will be "2d".

**See also**
`getContext() </sdk/apps/qml/QtQuick/Canvas#getContext-method>`__ and
`available </sdk/apps/qml/QtQuick/Canvas#available-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ renderStrategy : enumeration                                    |
+--------------------------------------------------------------------------+

Holds the current canvas rendering strategy.

-  Canvas.Immediate - context will perform graphics commands immediately
   in the main UI thread.
-  Canvas.Threaded - context will defer graphics commands to a private
   rendering thread.
-  Canvas.Cooperative - context will defer graphics commands to the
   applications global render thread.

This hint is supplied along with
`renderTarget </sdk/apps/qml/QtQuick/Canvas#renderTarget-prop>`__ to the
graphics context to determine the method of rendering. A renderStrategy,
`renderTarget </sdk/apps/qml/QtQuick/Canvas#renderTarget-prop>`__ or a
combination may not be supported by a graphics context, in which case
the context will choose appropriate options and Canvas will signal the
change to the properties.

Configuration or runtime tests may cause the QML Scene Graph to render
in the GUI thread. Selecting ``Canvas.Cooperative``, does not guarantee
rendering will occur on a thread separate from the GUI thread.

The default value is ``Canvas.Immediate``.

**See also**
`renderTarget </sdk/apps/qml/QtQuick/Canvas#renderTarget-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ renderTarget : enumeration                                      |
+--------------------------------------------------------------------------+

Holds the current canvas render target.

-  Canvas.Image - render to an in memory image buffer.
-  Canvas.FramebufferObject - render to an OpenGL frame buffer

This hint is supplied along with
`renderStrategy </sdk/apps/qml/QtQuick/Canvas#renderStrategy-prop>`__ to
the graphics context to determine the method of rendering. A
`renderStrategy </sdk/apps/qml/QtQuick/Canvas#renderStrategy-prop>`__,
renderTarget or a combination may not be supported by a graphics
context, in which case the context will choose appropriate options and
Canvas will signal the change to the properties.

The default render target is ``Canvas.Image``.

| 

+--------------------------------------------------------------------------+
|        \ tileSize : size                                                 |
+--------------------------------------------------------------------------+

Holds the canvas rendering tile size.

The Canvas item enters tiled mode by setting
`canvasSize </sdk/apps/qml/QtQuick/Canvas#canvasSize-prop>`__, tileSize
and the
`canvasWindow </sdk/apps/qml/QtQuick/Canvas#canvasWindow-prop>`__. This
can improve rendering performance by rendering and caching tiles instead
of rendering the whole canvas every time.

Memory will be consumed only by those tiles within the current visible
region.

By default the tileSize is the same as the
`canvasSize </sdk/apps/qml/QtQuick/Canvas#canvasSize-prop>`__.

**See also**
`canvasSize </sdk/apps/qml/QtQuick/Canvas#canvasSize-prop>`__ and
`canvasWindow </sdk/apps/qml/QtQuick/Canvas#canvasWindow-prop>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ imageLoaded()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when an image has been loaded.

The corresponding handler is ``onImageLoaded``.

**See also**
`loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ paint(rect *region*)                                            |
+--------------------------------------------------------------------------+

This signal is emitted when the *region* needs to be rendered. If a
context is active it can be referenced from the context property.

This signal can be triggered by markdirty(),
`requestPaint() </sdk/apps/qml/QtQuick/Canvas#requestPaint-method>`__ or
by changing the current canvas window.

The corresponding handler is ``onPaint``.

| 

+--------------------------------------------------------------------------+
|        \ painted()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted after all context painting commands are executed
and the Canvas has been rendered.

The corresponding handler is ``onPainted``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancelRequestAnimationFrame(long *handle*)                      |
+--------------------------------------------------------------------------+

This function will cancel the animation callback referenced by *handle*.

| 

+--------------------------------------------------------------------------+
|        \ object getContext(string *contextId*, ... *args*)               |
+--------------------------------------------------------------------------+

Returns a drawing context, or ``null`` if no context is available.

The *contextId* parameter names the required context. The Canvas item
will return a context that implements the required drawing mode. After
the first call to getContext, any subsequent call to getContext with the
same contextId will return the same context object.

If the context type is not supported or the canvas has previously been
requested to provide a different and incompatible context type, ``null``
will be returned.

Canvas only supports a 2d context.

| 

+--------------------------------------------------------------------------+
|        \ isImageError(url *image*)                                       |
+--------------------------------------------------------------------------+

Returns true if the *image* failed to load.

**See also**
`loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ isImageLoaded(url *image*)                                      |
+--------------------------------------------------------------------------+

Returns true if the *image* is successfully loaded and ready to use.

**See also**
`loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ isImageLoading(url *image*)                                     |
+--------------------------------------------------------------------------+

Returns true if the *image* is currently loading.

**See also**
`loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ loadImage(url *image*)                                          |
+--------------------------------------------------------------------------+

Loads the given ``image`` asynchronously.

When the image is ready,
`imageLoaded </sdk/apps/qml/QtQuick/Canvas#imageLoaded-signal>`__ will
be emitted. The loaded image can be unloaded by the
`unloadImage() </sdk/apps/qml/QtQuick/Canvas#unloadImage-method>`__
method.

Note: Only loaded images can be painted on the Canvas item.

**See also**
`unloadImage </sdk/apps/qml/QtQuick/Canvas#unloadImage-method>`__,
`imageLoaded </sdk/apps/qml/QtQuick/Canvas#imageLoaded-signal>`__,
`isImageLoaded() </sdk/apps/qml/QtQuick/Canvas#isImageLoaded-method>`__,
`Context2D::createImageData() </sdk/apps/qml/QtQuick/Context2D#createImageData-method>`__,
and
`Context2D::drawImage() </sdk/apps/qml/QtQuick/Context2D#drawImage-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ markDirty(rect *area*)                                          |
+--------------------------------------------------------------------------+

Mark the given *area* as dirty, so that when this area is visible the
canvas renderer will redraw it. This will trigger the ``paint`` signal.

**See also** `paint </sdk/apps/qml/QtQuick/Canvas#paint-signal>`__ and
`requestPaint() </sdk/apps/qml/QtQuick/Canvas#requestPaint-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ long requestAnimationFrame(callback)                            |
+--------------------------------------------------------------------------+

This function schedules callback to be invoked before composing the Qt
Quick scene.

| 

+--------------------------------------------------------------------------+
|        \ requestPaint()                                                  |
+--------------------------------------------------------------------------+

Request the entire visible region be re-drawn.

**See also**
`markDirty() </sdk/apps/qml/QtQuick/Canvas#markDirty-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ bool save(string *filename*)                                    |
+--------------------------------------------------------------------------+

Save the current canvas content into an image file *filename*. The saved
image format is automatically decided by the *filename*'s suffix.

Note: calling this method will force painting the whole canvas, not just
the current canvas visible window.

**See also**
`canvasWindow </sdk/apps/qml/QtQuick/Canvas#canvasWindow-prop>`__,
`canvasSize </sdk/apps/qml/QtQuick/Canvas#canvasSize-prop>`__, and
`toDataURL() </sdk/apps/qml/QtQuick/Canvas#toDataURL-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ string toDataURL(string *mimeType*)                             |
+--------------------------------------------------------------------------+

Returns a data URL for the image in the canvas.

The default *mimeType* is "image/png".

**See also** `save() </sdk/apps/qml/QtQuick/Canvas#save-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ unloadImage(url *image*)                                        |
+--------------------------------------------------------------------------+

Unloads the ``image``.

Once an image is unloaded it cannot be painted by the canvas context
unless it is loaded again.

**See also**
`loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__,
`imageLoaded </sdk/apps/qml/QtQuick/Canvas#imageLoaded-signal>`__,
`isImageLoaded() </sdk/apps/qml/QtQuick/Canvas#isImageLoaded-method>`__,
`Context2D::createImageData() </sdk/apps/qml/QtQuick/Context2D#createImageData-method>`__,
and
`Context2D::drawImage </sdk/apps/qml/QtQuick/Context2D#drawImage-method>`__.

| 
