.. _sdk_qtquick_canvas:
QtQuick Canvas
==============

Provides a 2D canvas item enabling drawing via JavaScript

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.0                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Item <sdk_qtquick_item>`       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`available <sdk_qtquick_canvas_available-prop>` : bool
-  :ref:`canvasSize <sdk_qtquick_canvas_canvasSize-prop>` : size
-  :ref:`canvasWindow <sdk_qtquick_canvas_canvasWindow-prop>` :
   rect
-  :ref:`context <sdk_qtquick_canvas_context-prop>` : object
-  :ref:`contextType <sdk_qtquick_canvas_contextType-prop>` :
   string
-  :ref:`renderStrategy <sdk_qtquick_canvas_renderStrategy-prop>` :
   enumeration
-  :ref:`renderTarget <sdk_qtquick_canvas_renderTarget-prop>` :
   enumeration
-  :ref:`tileSize <sdk_qtquick_canvas_tileSize-prop>` : size

Signals
-------

-  :ref:`imageLoaded <sdk_qtquick_canvas_imageLoaded-signal>`\ ()
-  :ref:`paint <sdk_qtquick_canvas_paint-signal>`\ (rect *region*)
-  :ref:`painted <sdk_qtquick_canvas_painted-signal>`\ ()

Methods
-------

-  :ref:`cancelRequestAnimationFrame <sdk_qtquick_canvas_cancelRequestAnimationFrame-method>`\ (long
   *handle*)
-  object
   **:ref:`getContext <sdk_qtquick_canvas#getContext-method>`**\ (string
   *contextId*, ... *args*)
-  :ref:`isImageError <sdk_qtquick_canvas_isImageError-method>`\ (url
   *image*)
-  :ref:`isImageLoaded <sdk_qtquick_canvas_isImageLoaded-method>`\ (url
   *image*)
-  :ref:`isImageLoading <sdk_qtquick_canvas_isImageLoading-method>`\ (url
   *image*)
-  :ref:`loadImage <sdk_qtquick_canvas_loadImage-method>`\ (url
   *image*)
-  :ref:`markDirty <sdk_qtquick_canvas_markDirty-method>`\ (rect
   *area*)
-  long
   **:ref:`requestAnimationFrame <sdk_qtquick_canvas#requestAnimationFrame-method>`**\ (callback)
-  :ref:`requestPaint <sdk_qtquick_canvas_requestPaint-method>`\ ()
-  bool :ref:`save <sdk_qtquick_canvas_save-method>`\ (string
   *filename*)
-  string
   **:ref:`toDataURL <sdk_qtquick_canvas#toDataURL-method>`**\ (string
   *mimeType*)
-  :ref:`unloadImage <sdk_qtquick_canvas_unloadImage-method>`\ (url
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
:ref:`renderStrategy <sdk_qtquick_canvas#renderStrategy-prop>` is
Canvas.Immediate.

Tiled Canvas
------------

The Canvas item supports tiled rendering by setting
:ref:`canvasSize <sdk_qtquick_canvas#canvasSize-prop>`,
:ref:`tileSize <sdk_qtquick_canvas#tileSize-prop>` and
:ref:`canvasWindow <sdk_qtquick_canvas#canvasWindow-prop>` properties.

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
tearing <http://en.wikipedia.org/wiki/Screen_tearing>`_ ) which will
further impact pixel operations with ``Canvas.FrambufferObject`` render
target.

Tips for Porting Existing HTML5 Canvas Applications
---------------------------------------------------

Although the Canvas item is provides a HTML5 like API, HTML5 canvas
applications need to be modified to run in the Canvas item:

-  Replace all DOM API calls with QML property bindings or Canvas item
   methods.
-  Replace all HTML event handlers with the
   :ref:`MouseArea <sdk_qtquick_mousearea>` item.
-  Change setInterval/setTimeout function calls with the Timer item or
   the use of
   :ref:`requestAnimationFrame() <sdk_qtquick_canvas#requestAnimationFrame-method>`.
-  Place painting code into the ``onPaint`` handler and trigger painting
   by calling the :ref:`markDirty() <sdk_qtquick_canvas#markDirty-method>`
   or :ref:`requestPaint() <sdk_qtquick_canvas#requestPaint-method>`
   methods.
-  To draw images, load them by calling the Canvas's
   :ref:`loadImage() <sdk_qtquick_canvas#loadImage-method>` method and then
   request to paint them in the ``onImageLoaded`` handler.

Starting Qt 5.4, the Canvas is a texture provider and can be used
directly in ShaderEffects and other classes that consume texture
providers.

**See also** :ref:`Context2D <sdk_qtquick_context2d>`.

Property Documentation
----------------------

.. _sdk_qtquick_canvas_available-prop:

+--------------------------------------------------------------------------+
|        \ available : bool                                                |
+--------------------------------------------------------------------------+

Indicates when Canvas is able to provide a drawing context to operate
on.

| 

.. _sdk_qtquick_canvas_canvasSize-prop:

+--------------------------------------------------------------------------+
|        \ canvasSize : size                                               |
+--------------------------------------------------------------------------+

Holds the logical canvas size that the context paints on.

By default, the canvas size is the same size as the current canvas item
size.

By setting the canvasSize,
:ref:`tileSize <sdk_qtquick_canvas#tileSize-prop>` and
:ref:`canvasWindow <sdk_qtquick_canvas#canvasWindow-prop>`, the Canvas item
can act as a large virtual canvas with many separately rendered tile
rectangles. Only those tiles within the current canvas window are
painted by the Canvas render engine.

**See also** :ref:`tileSize <sdk_qtquick_canvas#tileSize-prop>` and
:ref:`canvasWindow <sdk_qtquick_canvas#canvasWindow-prop>`.

| 

.. _sdk_qtquick_canvas_canvasWindow-prop:

+--------------------------------------------------------------------------+
|        \ canvasWindow : rect                                             |
+--------------------------------------------------------------------------+

Holds the current canvas visible window.

By default the canvasWindow size is the same as the Canvas item size
with the top-left point as (0, 0).

If the :ref:`canvasSize <sdk_qtquick_canvas#canvasSize-prop>` is different
to the Canvas item size, the Canvas item can display different visible
areas by changing the canvas windowSize and/or position.

**See also** :ref:`canvasSize <sdk_qtquick_canvas#canvasSize-prop>` and
:ref:`tileSize <sdk_qtquick_canvas#tileSize-prop>`.

| 

.. _sdk_qtquick_canvas_context-prop:

+--------------------------------------------------------------------------+
|        \ context : object                                                |
+--------------------------------------------------------------------------+

Holds the active drawing context.

If the canvas is ready and there has been a successful call to
:ref:`getContext() <sdk_qtquick_canvas#getContext-method>` or the
:ref:`contextType <sdk_qtquick_canvas#contextType-prop>` property has been
set with a supported context type, this property will contain the
current drawing context, otherwise null.

| 

.. _sdk_qtquick_canvas_contextType-prop:

+--------------------------------------------------------------------------+
|        \ contextType : string                                            |
+--------------------------------------------------------------------------+

The type of drawing context to use.

This property is set to the name of the active context type.

If set explicitly the canvas will attempt to create a context of the
named type after becoming available.

The type name is the same as used in the
:ref:`getContext() <sdk_qtquick_canvas#getContext-method>` call, for the 2d
canvas the value will be "2d".

**See also** :ref:`getContext() <sdk_qtquick_canvas#getContext-method>` and
:ref:`available <sdk_qtquick_canvas#available-prop>`.

| 

.. _sdk_qtquick_canvas_renderStrategy-prop:

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
:ref:`renderTarget <sdk_qtquick_canvas#renderTarget-prop>` to the graphics
context to determine the method of rendering. A renderStrategy,
:ref:`renderTarget <sdk_qtquick_canvas#renderTarget-prop>` or a combination
may not be supported by a graphics context, in which case the context
will choose appropriate options and Canvas will signal the change to the
properties.

Configuration or runtime tests may cause the QML Scene Graph to render
in the GUI thread. Selecting ``Canvas.Cooperative``, does not guarantee
rendering will occur on a thread separate from the GUI thread.

The default value is ``Canvas.Immediate``.

**See also** :ref:`renderTarget <sdk_qtquick_canvas#renderTarget-prop>`.

| 

.. _sdk_qtquick_canvas_renderTarget-prop:

+--------------------------------------------------------------------------+
|        \ renderTarget : enumeration                                      |
+--------------------------------------------------------------------------+

Holds the current canvas render target.

-  Canvas.Image - render to an in memory image buffer.
-  Canvas.FramebufferObject - render to an OpenGL frame buffer

This hint is supplied along with
:ref:`renderStrategy <sdk_qtquick_canvas#renderStrategy-prop>` to the
graphics context to determine the method of rendering. A
:ref:`renderStrategy <sdk_qtquick_canvas#renderStrategy-prop>`,
renderTarget or a combination may not be supported by a graphics
context, in which case the context will choose appropriate options and
Canvas will signal the change to the properties.

The default render target is ``Canvas.Image``.

| 

.. _sdk_qtquick_canvas_tileSize-prop:

+--------------------------------------------------------------------------+
|        \ tileSize : size                                                 |
+--------------------------------------------------------------------------+

Holds the canvas rendering tile size.

The Canvas item enters tiled mode by setting
:ref:`canvasSize <sdk_qtquick_canvas#canvasSize-prop>`, tileSize and the
:ref:`canvasWindow <sdk_qtquick_canvas#canvasWindow-prop>`. This can
improve rendering performance by rendering and caching tiles instead of
rendering the whole canvas every time.

Memory will be consumed only by those tiles within the current visible
region.

By default the tileSize is the same as the
:ref:`canvasSize <sdk_qtquick_canvas#canvasSize-prop>`.

**See also** :ref:`canvasSize <sdk_qtquick_canvas#canvasSize-prop>` and
:ref:`canvasWindow <sdk_qtquick_canvas#canvasWindow-prop>`.

| 

Signal Documentation
--------------------

.. _sdk_qtquick_canvas_imageLoaded()-prop:

+--------------------------------------------------------------------------+
|        \ imageLoaded()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when an image has been loaded.

The corresponding handler is ``onImageLoaded``.

**See also** :ref:`loadImage() <sdk_qtquick_canvas#loadImage-method>`.

| 

.. _sdk_qtquick_canvas_paint(rect *region*)-prop:

+--------------------------------------------------------------------------+
|        \ paint(rect *region*)                                            |
+--------------------------------------------------------------------------+

This signal is emitted when the *region* needs to be rendered. If a
context is active it can be referenced from the context property.

This signal can be triggered by markdirty(),
:ref:`requestPaint() <sdk_qtquick_canvas#requestPaint-method>` or by
changing the current canvas window.

The corresponding handler is ``onPaint``.

| 

.. _sdk_qtquick_canvas_painted()-prop:

+--------------------------------------------------------------------------+
|        \ painted()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted after all context painting commands are executed
and the Canvas has been rendered.

The corresponding handler is ``onPainted``.

| 

Method Documentation
--------------------

.. _sdk_qtquick_canvas_cancelRequestAnimationFrame-method:

+--------------------------------------------------------------------------+
|        \ cancelRequestAnimationFrame(long *handle*)                      |
+--------------------------------------------------------------------------+

This function will cancel the animation callback referenced by *handle*.

| 

.. _sdk_qtquick_canvas_object getContext-method:

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

.. _sdk_qtquick_canvas_isImageError-method:

+--------------------------------------------------------------------------+
|        \ isImageError(url *image*)                                       |
+--------------------------------------------------------------------------+

Returns true if the *image* failed to load.

**See also** :ref:`loadImage() <sdk_qtquick_canvas#loadImage-method>`.

| 

.. _sdk_qtquick_canvas_isImageLoaded-method:

+--------------------------------------------------------------------------+
|        \ isImageLoaded(url *image*)                                      |
+--------------------------------------------------------------------------+

Returns true if the *image* is successfully loaded and ready to use.

**See also** :ref:`loadImage() <sdk_qtquick_canvas#loadImage-method>`.

| 

.. _sdk_qtquick_canvas_isImageLoading-method:

+--------------------------------------------------------------------------+
|        \ isImageLoading(url *image*)                                     |
+--------------------------------------------------------------------------+

Returns true if the *image* is currently loading.

**See also** :ref:`loadImage() <sdk_qtquick_canvas#loadImage-method>`.

| 

.. _sdk_qtquick_canvas_loadImage-method:

+--------------------------------------------------------------------------+
|        \ loadImage(url *image*)                                          |
+--------------------------------------------------------------------------+

Loads the given ``image`` asynchronously.

When the image is ready,
:ref:`imageLoaded <sdk_qtquick_canvas#imageLoaded-signal>` will be emitted.
The loaded image can be unloaded by the
:ref:`unloadImage() <sdk_qtquick_canvas#unloadImage-method>` method.

Note: Only loaded images can be painted on the Canvas item.

**See also** :ref:`unloadImage <sdk_qtquick_canvas#unloadImage-method>`,
:ref:`imageLoaded <sdk_qtquick_canvas#imageLoaded-signal>`,
:ref:`isImageLoaded() <sdk_qtquick_canvas#isImageLoaded-method>`,
:ref:`Context2D::createImageData() <sdk_qtquick_context2d#createImageData-method>`,
and :ref:`Context2D::drawImage() <sdk_qtquick_context2d#drawImage-method>`.

| 

.. _sdk_qtquick_canvas_markDirty-method:

+--------------------------------------------------------------------------+
|        \ markDirty(rect *area*)                                          |
+--------------------------------------------------------------------------+

Mark the given *area* as dirty, so that when this area is visible the
canvas renderer will redraw it. This will trigger the ``paint`` signal.

**See also** :ref:`paint <sdk_qtquick_canvas#paint-signal>` and
:ref:`requestPaint() <sdk_qtquick_canvas#requestPaint-method>`.

| 

.. _sdk_qtquick_canvas_long requestAnimationFrame-method:

+--------------------------------------------------------------------------+
|        \ long requestAnimationFrame(callback)                            |
+--------------------------------------------------------------------------+

This function schedules callback to be invoked before composing the Qt
Quick scene.

| 

.. _sdk_qtquick_canvas_requestPaint-method:

+--------------------------------------------------------------------------+
|        \ requestPaint()                                                  |
+--------------------------------------------------------------------------+

Request the entire visible region be re-drawn.

**See also** :ref:`markDirty() <sdk_qtquick_canvas#markDirty-method>`.

| 

.. _sdk_qtquick_canvas_bool save-method:

+--------------------------------------------------------------------------+
|        \ bool save(string *filename*)                                    |
+--------------------------------------------------------------------------+

Save the current canvas content into an image file *filename*. The saved
image format is automatically decided by the *filename*'s suffix.

Note: calling this method will force painting the whole canvas, not just
the current canvas visible window.

**See also** :ref:`canvasWindow <sdk_qtquick_canvas#canvasWindow-prop>`,
:ref:`canvasSize <sdk_qtquick_canvas#canvasSize-prop>`, and
:ref:`toDataURL() <sdk_qtquick_canvas#toDataURL-method>`.

| 

.. _sdk_qtquick_canvas_string toDataURL-method:

+--------------------------------------------------------------------------+
|        \ string toDataURL(string *mimeType*)                             |
+--------------------------------------------------------------------------+

Returns a data URL for the image in the canvas.

The default *mimeType* is "image/png".

**See also** :ref:`save() <sdk_qtquick_canvas#save-method>`.

| 

.. _sdk_qtquick_canvas_unloadImage-method:

+--------------------------------------------------------------------------+
|        \ unloadImage(url *image*)                                        |
+--------------------------------------------------------------------------+

Unloads the ``image``.

Once an image is unloaded it cannot be painted by the canvas context
unless it is loaded again.

**See also** :ref:`loadImage() <sdk_qtquick_canvas#loadImage-method>`,
:ref:`imageLoaded <sdk_qtquick_canvas#imageLoaded-signal>`,
:ref:`isImageLoaded() <sdk_qtquick_canvas#isImageLoaded-method>`,
:ref:`Context2D::createImageData() <sdk_qtquick_context2d#createImageData-method>`,
and :ref:`Context2D::drawImage <sdk_qtquick_context2d#drawImage-method>`.

| 
