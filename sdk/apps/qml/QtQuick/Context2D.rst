.. _sdk_qtquick_context2d:
QtQuick Context2D
=================

Provides 2D context for shapes on a Canvas item

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.0               |
+---------------------+----------------------+

Properties
----------

-  :ref:`canvas <sdk_qtquick_context2d_canvas-prop>` :
   QtQuick::Canvas
-  :ref:`fillRule <sdk_qtquick_context2d_fillRule-prop>` :
   enumeration
-  :ref:`fillStyle <sdk_qtquick_context2d_fillStyle-prop>` :
   variant
-  :ref:`font <sdk_qtquick_context2d_font-prop>` : string
-  :ref:`globalAlpha <sdk_qtquick_context2d_globalAlpha-prop>` :
   real
-  :ref:`globalCompositeOperation <sdk_qtquick_context2d_globalCompositeOperation-prop>`
   : string
-  :ref:`lineCap <sdk_qtquick_context2d_lineCap-prop>` : string
-  :ref:`lineJoin <sdk_qtquick_context2d_lineJoin-prop>` : string
-  :ref:`lineWidth <sdk_qtquick_context2d_lineWidth-prop>` : real
-  :ref:`miterLimit <sdk_qtquick_context2d_miterLimit-prop>` : real
-  :ref:`shadowBlur <sdk_qtquick_context2d_shadowBlur-prop>` : real
-  :ref:`shadowColor <sdk_qtquick_context2d_shadowColor-prop>` :
   string
-  :ref:`shadowOffsetX <sdk_qtquick_context2d_shadowOffsetX-prop>`
   : qreal
-  :ref:`shadowOffsetY <sdk_qtquick_context2d_shadowOffsetY-prop>`
   : qreal
-  :ref:`strokeStyle <sdk_qtquick_context2d_strokeStyle-prop>` :
   variant
-  :ref:`textAlign <sdk_qtquick_context2d_textAlign-prop>` : string
-  :ref:`textBaseline <sdk_qtquick_context2d_textBaseline-prop>` :
   string

Methods
-------

-  object :ref:`arc <sdk_qtquick_context2d_arc-method>`\ (real *x*,
   real *y*, real *radius*, real *startAngle*, real *endAngle*, bool
   *anticlockwise*)
-  object :ref:`arcTo <sdk_qtquick_context2d_arcTo-method>`\ (real
   *x1*, real *y1*, real *x2*, real *y2*, real *radius*)
-  object
   **:ref:`beginPath <sdk_qtquick_context2d#beginPath-method>`**\ ()
-  object
   **:ref:`bezierCurveTo <sdk_qtquick_context2d#bezierCurveTo-method>`**\ (real
   *cp1x*, real *cp1y*, real *cp2x*, real *cp2y*, real *x*, real *y*)
-  object
   **:ref:`clearRect <sdk_qtquick_context2d#clearRect-method>`**\ (real
   *x*, real *y*, real *w*, real *h*)
-  object :ref:`clip <sdk_qtquick_context2d_clip-method>`\ ()
-  object
   **:ref:`closePath <sdk_qtquick_context2d#closePath-method>`**\ ()
-  object
   **:ref:`createConicalGradient <sdk_qtquick_context2d#createConicalGradient-method>`**\ (real
   *x*, real *y*, real *angle*)
-  CanvasImageData
   **:ref:`createImageData <sdk_qtquick_context2d#createImageData-method-3>`**\ (Url
   *imageUrl*)
-  CanvasImageData
   **:ref:`createImageData <sdk_qtquick_context2d#createImageData-method-2>`**\ (CanvasImageData
   *imageData*)
-  CanvasImageData
   **:ref:`createImageData <sdk_qtquick_context2d#createImageData-method>`**\ (real
   *sw*, real *sh*)
-  object
   **:ref:`createLinearGradient <sdk_qtquick_context2d#createLinearGradient-method>`**\ (real
   *x0*, real *y0*, real *x1*, real *y1*)
-  variant
   **:ref:`createPattern <sdk_qtquick_context2d#createPattern-method-2>`**\ (Image
   *image*, string *repetition*)
-  variant
   **:ref:`createPattern <sdk_qtquick_context2d#createPattern-method>`**\ (color
   *color*, enumeration *patternMode*)
-  object
   **:ref:`createRadialGradient <sdk_qtquick_context2d#createRadialGradient-method>`**\ (real
   *x0*, real *y0*, real *r0*, real *x1*, real *y1*, real *r1*)
-  :ref:`drawImage <sdk_qtquick_context2d_drawImage-method-3>`\ (variant
   *image*, real *sx*, real *sy*, real *sw*, real *sh*, real *dx*, real
   *dy*, real *dw*, real *dh*)
-  :ref:`drawImage <sdk_qtquick_context2d_drawImage-method-2>`\ (variant
   *image*, real *dx*, real *dy*, real *dw*, real *dh*)
-  :ref:`drawImage <sdk_qtquick_context2d_drawImage-method>`\ (variant
   *image*, real *dx*, real *dy*)
-  object
   **:ref:`ellipse <sdk_qtquick_context2d#ellipse-method>`**\ (real
   *x*, real *y*, real *w*, real *h*)
-  object :ref:`fill <sdk_qtquick_context2d_fill-method>`\ ()
-  object
   **:ref:`fillRect <sdk_qtquick_context2d#fillRect-method>`**\ (real
   *x*, real *y*, real *w*, real *h*)
-  object
   **:ref:`fillText <sdk_qtquick_context2d#fillText-method>`**\ (text,
   x, y)
-  CanvasImageData
   **:ref:`getImageData <sdk_qtquick_context2d#getImageData-method>`**\ (real
   *sx*, real *sy*, real *sw*, real *sh*)
-  object
   **:ref:`isPointInPath <sdk_qtquick_context2d#isPointInPath-method>`**\ (real
   *x*, real *y*)
-  object
   **:ref:`lineTo <sdk_qtquick_context2d#lineTo-method>`**\ (real *x*,
   real *y*)
-  object
   **:ref:`measureText <sdk_qtquick_context2d#measureText-method>`**\ (text)
-  object
   **:ref:`moveTo <sdk_qtquick_context2d#moveTo-method>`**\ (real *x*,
   real *y*)
-  object
   **:ref:`putImageData <sdk_qtquick_context2d#putImageData-method>`**\ (CanvasImageData
   *imageData*, real *dx*, real *dy*, real *dirtyX*, real *dirtyY*, real
   *dirtyWidth*, real *dirtyHeight*)
-  object
   **:ref:`quadraticCurveTo <sdk_qtquick_context2d#quadraticCurveTo-method>`**\ (real
   *cpx*, real *cpy*, real *x*, real *y*)
-  object :ref:`rect <sdk_qtquick_context2d_rect-method>`\ (real
   *x*, real *y*, real *w*, real *h*)
-  object :ref:`reset <sdk_qtquick_context2d_reset-method>`\ ()
-  object
   **:ref:`resetTransform <sdk_qtquick_context2d#resetTransform-method>`**\ ()
-  object :ref:`restore <sdk_qtquick_context2d_restore-method>`\ ()
-  object
   **:ref:`rotate <sdk_qtquick_context2d#rotate-method>`**\ (real
   *angle*)
-  object
   **:ref:`roundedRect <sdk_qtquick_context2d#roundedRect-method>`**\ (real
   *x*, real *y*, real *w*, real *h*, real *xRadius*, real *yRadius*)
-  object :ref:`save <sdk_qtquick_context2d_save-method>`\ ()
-  object :ref:`scale <sdk_qtquick_context2d_scale-method>`\ (real
   *x*, real *y*)
-  object
   **:ref:`setTransform <sdk_qtquick_context2d#setTransform-method>`**\ (real
   *a*, real *b*, real *c*, real *d*, real *e*, real *f*)
-  object :ref:`shear <sdk_qtquick_context2d_shear-method>`\ (real
   *sh*, real *sv*)
-  object :ref:`stroke <sdk_qtquick_context2d_stroke-method>`\ ()
-  object
   **:ref:`strokeRect <sdk_qtquick_context2d#strokeRect-method>`**\ (real
   *x*, real *y*, real *w*, real *h*)
-  object
   **:ref:`strokeText <sdk_qtquick_context2d#strokeText-method>`**\ (text,
   x, y)
-  object :ref:`text <sdk_qtquick_context2d_text-method>`\ (string
   *text*, real *x*, real *y*)
-  object
   **:ref:`transform <sdk_qtquick_context2d#transform-method>`**\ (real
   *a*, real *b*, real *c*, real *d*, real *e*, real *f*)
-  object
   **:ref:`translate <sdk_qtquick_context2d#translate-method>`**\ (real
   *x*, real *y*)

Detailed Description
--------------------

The :ref:`Context2D <sdk_qtquick_context2d>` object can be created by
``Canvas`` item's ``getContext()`` method:

.. code:: cpp

    Canvas {
      id:canvas
      onPaint:{
         var ctx = canvas.getContext('2d');
         //...
      }
    }

The :ref:`Context2D <sdk_qtquick_context2d>` API implements the same `W3C
Canvas 2D Context API standard <http://www.w3.org/TR/2dcontext>`_  with
some enhanced features.

The :ref:`Context2D <sdk_qtquick_context2d>` API provides the rendering
**context** which defines the methods and attributes needed to draw on
the ``Canvas`` item. The following assigns the canvas rendering context
to a ``context`` variable:

.. code:: cpp

    var context = mycanvas.getContext("2d")

The :ref:`Context2D <sdk_qtquick_context2d>` API renders the canvas as a
coordinate system whose origin (0,0) is at the top left corner, as shown
in the figure below. Coordinates increase along the ``x`` axis from left
to right and along the ``y`` axis from top to bottom of the canvas.

|image0|

Property Documentation
----------------------

.. _sdk_qtquick_context2d_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ canvas : `QtQuick::Canvas <sdk_qtquick_canvas>`            |
+--------------------------------------------------------------------------+

Holds the canvas item that the context paints on.

This property is read only.

| 

.. _sdk_qtquick_context2d_fillRule-prop:

+--------------------------------------------------------------------------+
|        \ fillRule : enumeration                                          |
+--------------------------------------------------------------------------+

Holds the current fill rule used for filling shapes. The following fill
rules supported:

-  Qt.OddEvenFill
-  Qt.WindingFill

Note: Unlike the QPainterPath, the Canvas API uses the winding fill as
the default fill rule. The fillRule property is part of the context
rendering state.

**See also** :ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`.

| 

.. _sdk_qtquick_context2d_fillStyle-prop:

+--------------------------------------------------------------------------+
|        \ fillStyle : variant                                             |
+--------------------------------------------------------------------------+

Holds the current style used for filling shapes. The style can be either
a string containing a CSS color, a
:ref:`CanvasGradient <sdk_qtquick_canvasgradient>` or CanvasPattern object.
Invalid values are ignored. This property accepts several color
syntaxes:

-  'rgb(red, green, blue)' - for example: 'rgb(255, 100, 55)' or
   'rgb(100%, 70%, 30%)'
-  'rgba(red, green, blue, alpha)' - for example: 'rgb(255, 100, 55,
   1.0)' or 'rgb(100%, 70%, 30%, 0.5)'
-  'hsl(hue, saturation, lightness)'
-  'hsla(hue, saturation, lightness, alpha)'
-  '#RRGGBB' - for example: '#00FFCC'
-  Qt.rgba(red, green, blue, alpha) - for example: Qt.rgba(0.3, 0.7, 1,
   1.0)

If the ``fillStyle`` or
:ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>` is assigned
many times in a loop, the last Qt.rgba() syntax should be chosen, as it
has the best performance, because it's already a valid QColor value,
does not need to be parsed everytime.

The default value is '#000000'.

**See also**
:ref:`createLinearGradient() <sdk_qtquick_context2d#createLinearGradient-method>`,
:ref:`createRadialGradient() <sdk_qtquick_context2d#createRadialGradient-method>`,
:ref:`createPattern() <sdk_qtquick_context2d#createPattern-method>`, and
:ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>`.

| 

.. _sdk_qtquick_context2d_font-prop:

+--------------------------------------------------------------------------+
|        \ font : string                                                   |
+--------------------------------------------------------------------------+

Holds the current font settings.

A subset of the `w3C 2d context standard for
font <http://www.w3.org/TR/2dcontext/#dom-context-2d-font>`_  is
supported:

-  font-style (optional): normal \| italic \| oblique
-  font-variant (optional): normal \| small-caps
-  font-weight (optional): normal \| bold \| 0 ... 99
-  font-size: Npx \| Npt (where N is a positive number)
-  font-family: See
   http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family

**Note:** The font-size and font-family properties are mandatory and
must be in the order they are shown in above. In addition, a font family
with spaces in its name must be quoted.

The default font value is "10px sans-serif".

| 

.. _sdk_qtquick_context2d_globalAlpha-prop:

+--------------------------------------------------------------------------+
|        \ globalAlpha : real                                              |
+--------------------------------------------------------------------------+

Holds the current alpha value applied to rendering operations. The value
must be in the range from ``0.0`` (fully transparent) to ``1.0`` (fully
opaque). The default value is ``1.0``.

| 

.. _sdk_qtquick_context2d_globalCompositeOperation-prop:

+--------------------------------------------------------------------------+
|        \ globalCompositeOperation : string                               |
+--------------------------------------------------------------------------+

Holds the current the current composition operation, from the list
below:

-  source-atop - A atop B. Display the source image wherever both images
   are opaque. Display the destination image wherever the destination
   image is opaque but the source image is transparent. Display
   transparency elsewhere.
-  source-in - A in B. Display the source image wherever both the source
   image and destination image are opaque. Display transparency
   elsewhere.
-  source-out - A out B. Display the source image wherever the source
   image is opaque and the destination image is transparent. Display
   transparency elsewhere.
-  source-over - (default) A over B. Display the source image wherever
   the source image is opaque. Display the destination image elsewhere.
-  destination-atop - B atop A. Same as source-atop but using the
   destination image instead of the source image and vice versa.
-  destination-in - B in A. Same as source-in but using the destination
   image instead of the source image and vice versa.
-  destination-out - B out A. Same as source-out but using the
   destination image instead of the source image and vice versa.
-  destination-over - B over A. Same as source-over but using the
   destination image instead of the source image and vice versa.
-  lighter - A plus B. Display the sum of the source image and
   destination image, with color values approaching 255 (100%) as a
   limit.
-  copy - A (B is ignored). Display the source image instead of the
   destination image.
-  xor - A xor B. Exclusive OR of the source image and destination
   image.

Additionally, this property also accepts the compositon modes listed in
QPainter::CompositionMode. According to the W3C standard, these
extension composition modes are provided as "vendorName-operationName"
syntax, for example: QPainter::CompositionMode\_Exclusion is provided as
"qt-exclusion".

| 

.. _sdk_qtquick_context2d_lineCap-prop:

+--------------------------------------------------------------------------+
|        \ lineCap : string                                                |
+--------------------------------------------------------------------------+

Holds the current line cap style. The possible line cap styles are:

-  butt - the end of each line has a flat edge perpendicular to the
   direction of the line, this is the default line cap value.
-  round - a semi-circle with the diameter equal to the width of the
   line must then be added on to the end of the line.
-  square - a rectangle with the length of the line width and the width
   of half the line width, placed flat against the edge perpendicular to
   the direction of the line.

Other values are ignored.

| 

.. _sdk_qtquick_context2d_lineJoin-prop:

+--------------------------------------------------------------------------+
|        \ lineJoin : string                                               |
+--------------------------------------------------------------------------+

Holds the current line join style. A join exists at any point in a
subpath shared by two consecutive lines. When a subpath is closed, then
a join also exists at its first point (equivalent to its last point)
connecting the first and last lines in the subpath.

The possible line join styles are:

-  bevel - this is all that is rendered at joins.
-  round - a filled arc connecting the two aforementioned corners of the
   join, abutting (and not overlapping) the aforementioned triangle,
   with the diameter equal to the line width and the origin at the point
   of the join, must be rendered at joins.
-  miter - a second filled triangle must (if it can given the miter
   length) be rendered at the join, this is the default line join style.

Other values are ignored.

| 

.. _sdk_qtquick_context2d_lineWidth-prop:

+--------------------------------------------------------------------------+
|        \ lineWidth : real                                                |
+--------------------------------------------------------------------------+

Holds the current line width. Values that are not finite values greater
than zero are ignored.

| 

.. _sdk_qtquick_context2d_miterLimit-prop:

+--------------------------------------------------------------------------+
|        \ miterLimit : real                                               |
+--------------------------------------------------------------------------+

Holds the current miter limit ratio. The default miter limit value is
10.0.

| 

.. _sdk_qtquick_context2d_shadowBlur-prop:

+--------------------------------------------------------------------------+
|        \ shadowBlur : real                                               |
+--------------------------------------------------------------------------+

Holds the current level of blur applied to shadows

| 

.. _sdk_qtquick_context2d_shadowColor-prop:

+--------------------------------------------------------------------------+
|        \ shadowColor : string                                            |
+--------------------------------------------------------------------------+

Holds the current shadow color.

| 

.. _sdk_qtquick_context2d_shadowOffsetX-prop:

+--------------------------------------------------------------------------+
|        \ shadowOffsetX : qreal                                           |
+--------------------------------------------------------------------------+

Holds the current shadow offset in the positive horizontal distance.

**See also**
:ref:`shadowOffsetY <sdk_qtquick_context2d#shadowOffsetY-prop>`.

| 

.. _sdk_qtquick_context2d_shadowOffsetY-prop:

+--------------------------------------------------------------------------+
|        \ shadowOffsetY : qreal                                           |
+--------------------------------------------------------------------------+

Holds the current shadow offset in the positive vertical distance.

**See also**
:ref:`shadowOffsetX <sdk_qtquick_context2d#shadowOffsetX-prop>`.

| 

.. _sdk_qtquick_context2d_strokeStyle-prop:

+--------------------------------------------------------------------------+
|        \ strokeStyle : variant                                           |
+--------------------------------------------------------------------------+

Holds the current color or style to use for the lines around shapes, The
style can be either a string containing a CSS color, a
:ref:`CanvasGradient <sdk_qtquick_canvasgradient>` or CanvasPattern object.
Invalid values are ignored.

The default value is '#000000'.

**See also**
:ref:`createLinearGradient() <sdk_qtquick_context2d#createLinearGradient-method>`,
:ref:`createRadialGradient() <sdk_qtquick_context2d#createRadialGradient-method>`,
:ref:`createPattern() <sdk_qtquick_context2d#createPattern-method>`, and
:ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`.

| 

.. _sdk_qtquick_context2d_textAlign-prop:

+--------------------------------------------------------------------------+
|        \ textAlign : string                                              |
+--------------------------------------------------------------------------+

Holds the current text alignment settings. The possible values are:

-  start
-  end
-  left
-  right
-  center

Other values are ignored. The default value is "start".

| 

.. _sdk_qtquick_context2d_textBaseline-prop:

+--------------------------------------------------------------------------+
|        \ textBaseline : string                                           |
+--------------------------------------------------------------------------+

Holds the current baseline alignment settings. The possible values are:

-  top
-  hanging
-  middle
-  alphabetic
-  ideographic
-  bottom

Other values are ignored. The default value is "alphabetic".

| 

Method Documentation
--------------------

.. _sdk_qtquick_context2d_object arc-method:

+--------------------------------------------------------------------------+
|        \ object arc(real *x*, real *y*, real *radius*, real              |
| *startAngle*, real *endAngle*, bool *anticlockwise*)                     |
+--------------------------------------------------------------------------+

Adds an arc to the current subpath that lies on the circumference of the
circle whose center is at the point (*x*, *y*) and whose radius is
*radius*.

Both ``startAngle`` and ``endAngle`` are measured from the x-axis in
radians.

[Missing image qml-item-canvas-arc.png]

|image1|

The *anticlockwise* parameter is ``true`` for each arc in the figure
above because they are all drawn in the anticlockwise direction.

**See also** :ref:`arcTo <sdk_qtquick_context2d#arcTo-method>` and `W3C's
2D Context Standard for
arc() <http://www.w3.org/TR/2dcontext/#dom-context-2d-arc>`_ .

| 

.. _sdk_qtquick_context2d_object arcTo-method:

+--------------------------------------------------------------------------+
|        \ object arcTo(real *x1*, real *y1*, real *x2*, real *y2*, real   |
| *radius*)                                                                |
+--------------------------------------------------------------------------+

Adds an arc with the given control points and radius to the current
subpath, connected to the previous point by a straight line. To draw an
arc, you begin with the same steps you followed to create a line:

-  Call the :ref:`beginPath() <sdk_qtquick_context2d#beginPath-method>`
   method to set a new path.
-  Call the :ref:`moveTo <sdk_qtquick_context2d#moveTo-method>`\ (``x``,
   ``y``) method to set your starting position on the canvas at the
   point (``x``, ``y``).
-  To draw an arc or circle, call the arcTo(\ *x1*, *y1*, *x2*, *y2*,
   *radius*) method. This adds an arc with starting point (*x1*, *y1*),
   ending point (*x2*, *y2*), and *radius* to the current subpath and
   connects it to the previous subpath by a straight line.

|image2|

**See also** :ref:`arc <sdk_qtquick_context2d#arc-method>` and `W3C's 2D
Context Standard for
arcTo() <http://www.w3.org/TR/2dcontext/#dom-context-2d-arcto>`_ .

| 

.. _sdk_qtquick_context2d_object beginPath-method:

+--------------------------------------------------------------------------+
|        \ object beginPath()                                              |
+--------------------------------------------------------------------------+

Resets the current path to a new path.

| 

.. _sdk_qtquick_context2d_object bezierCurveTo-method:

+--------------------------------------------------------------------------+
|        \ object bezierCurveTo(real *cp1x*, real *cp1y*, real *cp2x*,     |
| real *cp2y*, real *x*, real *y*)                                         |
+--------------------------------------------------------------------------+

Adds a cubic bezier curve between the current position and the given
endPoint using the control points specified by (``cp1x``, cp1y), and
(``cp2x``, ``cp2y``). After the curve is added, the current position is
updated to be at the end point (``x``, ``y``) of the curve. The
following code produces the path shown below:

.. code:: cpp

    ctx.strokeStyle = Qt.rgba(0, 0, 0, 1);
    ctx.lineWidth = 1;
    ctx.beginPath();
    ctx.moveTo(20, 0);//start point
    ctx.bezierCurveTo(-10, 90, 210, 90, 180, 0);
    ctx.stroke();

|image3|

**See also** `W3C 2d context standard for
bezierCurveTo <http://www.w3.org/TR/2dcontext/#dom-context-2d-beziercurveto>`_ 
and `The beautiful flower demo by using
bezierCurveTo <http://www.openrise.com/lab/FlowerPower/>`_ .

| 

.. _sdk_qtquick_context2d_object clearRect-method:

+--------------------------------------------------------------------------+
|        \ object clearRect(real *x*, real *y*, real *w*, real *h*)        |
+--------------------------------------------------------------------------+

Clears all pixels on the canvas in the given rectangle to transparent
black.

| 

.. _sdk_qtquick_context2d_object clip-method:

+--------------------------------------------------------------------------+
|        \ object clip()                                                   |
+--------------------------------------------------------------------------+

Creates the clipping region from the current path. Any parts of the
shape outside the clipping path are not displayed. To create a complex
shape using the ``clip()`` method:

#. Call the ``context.beginPath()`` method to set the clipping path.
#. Define the clipping path by calling any combination of the
   ``lineTo``, ``arcTo``, ``arc``, ``moveTo``, etc and ``closePath``
   methods.
#. Call the ``context.clip()`` method.

The new shape displays. The following shows how a clipping path can
modify how an image displays:

|image4|

**See also** :ref:`beginPath() <sdk_qtquick_context2d#beginPath-method>`,
:ref:`closePath() <sdk_qtquick_context2d#closePath-method>`,
:ref:`stroke() <sdk_qtquick_context2d#stroke-method>`,
:ref:`fill() <sdk_qtquick_context2d#fill-method>`, and `W3C 2d context
standard for
clip <http://www.w3.org/TR/2dcontext/#dom-context-2d-clip>`_ .

| 

.. _sdk_qtquick_context2d_object closePath-method:

+--------------------------------------------------------------------------+
|        \ object closePath()                                              |
+--------------------------------------------------------------------------+

Closes the current subpath by drawing a line to the beginning of the
subpath, automatically starting a new path. The current point of the new
path is the previous subpath's first point.

**See also** `W3C 2d context standard for
closePath <http://www.w3.org/TR/2dcontext/#dom-context-2d-closepath>`_ .

| 

.. _sdk_qtquick_context2d_object createConicalGradient-method:

+--------------------------------------------------------------------------+
|        \ object createConicalGradient(real *x*, real *y*, real *angle*)  |
+--------------------------------------------------------------------------+

Returns a :ref:`CanvasGradient <sdk_qtquick_canvasgradient>` object that
represents a conical gradient that interpolate colors counter-clockwise
around a center point (``x``, ``y``) with start angle ``angle`` in units
of radians.

**See also**
:ref:`CanvasGradient::addColorStop() <sdk_qtquick_canvasgradient#addColorStop-method>`,
:ref:`createLinearGradient() <sdk_qtquick_context2d#createLinearGradient-method>`,
:ref:`createRadialGradient() <sdk_qtquick_context2d#createRadialGradient-method>`,
:ref:`createPattern() <sdk_qtquick_context2d#createPattern-method>`,
:ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`, and
:ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>`.

| 

.. _sdk_qtquick_context2d_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ `CanvasImageData <sdk_qtquick_canvasimagedata>`            |
| createImageData(Url *imageUrl*)                                          |
+--------------------------------------------------------------------------+

Creates a :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object with
the given image loaded from *imageUrl*.

**Note:** The *imageUrl* must be already loaded before this function
call, otherwise an empty
:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` obect will be
returned.

**See also**
:ref:`Canvas::loadImage() <sdk_qtquick_canvas#loadImage-method>`,
:ref:`QtQuick::Canvas::unloadImage() <sdk_qtquick_canvas#unloadImage-method>`,
and
:ref:`QtQuick::Canvas::isImageLoaded <sdk_qtquick_canvas#isImageLoaded-method>`.

| 

.. _sdk_qtquick_context2d_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ `CanvasImageData <sdk_qtquick_canvasimagedata>`            |
| createImageData(:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>`        |
| *imageData*)                                                             |
+--------------------------------------------------------------------------+

Creates a :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object with
the same dimensions as the argument.

| 

.. _sdk_qtquick_context2d_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ `CanvasImageData <sdk_qtquick_canvasimagedata>`            |
| createImageData(real *sw*, real *sh*)                                    |
+--------------------------------------------------------------------------+

Creates a :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object with
the given dimensions(\ *sw*, *sh*).

| 

.. _sdk_qtquick_context2d_object createLinearGradient-method:

+--------------------------------------------------------------------------+
|        \ object createLinearGradient(real *x0*, real *y0*, real *x1*,    |
| real *y1*)                                                               |
+--------------------------------------------------------------------------+

Returns a :ref:`CanvasGradient <sdk_qtquick_canvasgradient>` object that
represents a linear gradient that transitions the color along a line
between the start point (*x0*, *y0*) and the end point (*x1*, *y1*).

A gradient is a smooth transition between colors. There are two types of
gradients: linear and radial. Gradients must have two or more color
stops, representing color shifts positioned from 0 to 1 between to the
gradient's starting and end points or circles.

**See also**
:ref:`CanvasGradient::addColorStop() <sdk_qtquick_canvasgradient#addColorStop-method>`,
:ref:`createRadialGradient() <sdk_qtquick_context2d#createRadialGradient-method>`,
:ref:`createConicalGradient() <sdk_qtquick_context2d#createConicalGradient-method>`,
:ref:`createPattern() <sdk_qtquick_context2d#createPattern-method>`,
:ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`, and
:ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>`.

| 

.. _sdk_qtquick_context2d_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ variant createPattern(`Image <sdk_qtquick_image>` *image*,    |
| string *repetition*)                                                     |
+--------------------------------------------------------------------------+

Returns a CanvasPattern object that uses the given image and repeats in
the direction(s) given by the repetition argument.

The *image* parameter must be a valid Image item, a valid
:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object or loaded image
url, if there is no image data, throws an INVALID\_STATE\_ERR exception.

The allowed values for *repetition* are:

-  "repeat" - both directions
-  "repeat-x - horizontal only
-  "repeat-y" - vertical only
-  "no-repeat" - neither

If the repetition argument is empty or null, the value "repeat" is used.

**See also** :ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>`
and :ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`.

| 

.. _sdk_qtquick_context2d_variant createPattern-method:

+--------------------------------------------------------------------------+
|        \ variant createPattern(color *color*, enumeration *patternMode*) |
+--------------------------------------------------------------------------+

This is a overload function. Returns a CanvasPattern object that uses
the given *color* and *patternMode*. The valid pattern modes are:

-  Qt.SolidPattern
-  Qt.Dense1Pattern
-  Qt.Dense2Pattern
-  Qt.Dense3Pattern
-  Qt.Dense4Pattern
-  Qt.Dense5Pattern
-  Qt.Dense6Pattern
-  Qt.Dense7Pattern
-  Qt.HorPattern
-  Qt.VerPattern
-  Qt.CrossPattern
-  Qt.BDiagPattern
-  Qt.FDiagPattern
-  Qt.DiagCrossPattern

**See also** Qt::BrushStyle.

| 

.. _sdk_qtquick_context2d_object createRadialGradient-method:

+--------------------------------------------------------------------------+
|        \ object createRadialGradient(real *x0*, real *y0*, real *r0*,    |
| real *x1*, real *y1*, real *r1*)                                         |
+--------------------------------------------------------------------------+

Returns a :ref:`CanvasGradient <sdk_qtquick_canvasgradient>` object that
represents a radial gradient that paints along the cone given by the
start circle with origin (x0, y0) and radius r0, and the end circle with
origin (x1, y1) and radius r1.

**See also**
:ref:`CanvasGradient::addColorStop() <sdk_qtquick_canvasgradient#addColorStop-method>`,
:ref:`createLinearGradient() <sdk_qtquick_context2d#createLinearGradient-method>`,
:ref:`createConicalGradient() <sdk_qtquick_context2d#createConicalGradient-method>`,
:ref:`createPattern() <sdk_qtquick_context2d#createPattern-method>`,
:ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`, and
:ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>`.

| 

.. _sdk_qtquick_context2d_drawImage-method:

+--------------------------------------------------------------------------+
|        \ drawImage(variant *image*, real *sx*, real *sy*, real *sw*,     |
| real *sh*, real *dx*, real *dy*, real *dw*, real *dh*)                   |
+--------------------------------------------------------------------------+

This is an overloaded function. Draws the given item as *image* from
source point (*sx*, *sy*) and source width *sw*, source height *sh* onto
the canvas at point (*dx*, *dy*) and with width *dw*, height *dh*.

Note: The *image* type can be an Image or Canvas item, an image url or a
:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object. When given as
Image item, if the image isn't fully loaded, this method draws nothing.
When given as url string, the image should be loaded by calling Canvas
item's :ref:`Canvas::loadImage() <sdk_qtquick_canvas#loadImage-method>`
method first. This image been drawing is subject to the current context
clip path, even the given ``image`` is a
:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object.

**See also** :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>`,
`Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ ,
:ref:`Canvas::loadImage() <sdk_qtquick_canvas#loadImage-method>`,
:ref:`Canvas::isImageLoaded <sdk_qtquick_canvas#isImageLoaded-method>`,
:ref:`Canvas::imageLoaded <sdk_qtquick_canvas#imageLoaded-signal>`, and
`W3C 2d context standard for
drawImage <http://www.w3.org/TR/2dcontext/#dom-context-2d-drawimage>`_ .

| 

.. _sdk_qtquick_context2d_drawImage-method:

+--------------------------------------------------------------------------+
|        \ drawImage(variant *image*, real *dx*, real *dy*, real *dw*,     |
| real *dh*)                                                               |
+--------------------------------------------------------------------------+

This is an overloaded function. Draws the given item as *image* onto the
canvas at point (*dx*, *dy*) and with width *dw*, height *dh*.

Note: The *image* type can be an Image item, an image url or a
:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object. When given as
Image item, if the image isn't fully loaded, this method draws nothing.
When given as url string, the image should be loaded by calling Canvas
item's :ref:`Canvas::loadImage() <sdk_qtquick_canvas#loadImage-method>`
method first. This image been drawing is subject to the current context
clip path, even the given ``image`` is a
:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object.

**See also** :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>`,
`Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ ,
:ref:`Canvas::loadImage() <sdk_qtquick_canvas#loadImage-method>`,
:ref:`Canvas::isImageLoaded <sdk_qtquick_canvas#isImageLoaded-method>`,
:ref:`Canvas::imageLoaded <sdk_qtquick_canvas#imageLoaded-signal>`, and
`W3C 2d context standard for
drawImage <http://www.w3.org/TR/2dcontext/#dom-context-2d-drawimage>`_ .

| 

.. _sdk_qtquick_context2d_drawImage-method:

+--------------------------------------------------------------------------+
|        \ drawImage(variant *image*, real *dx*, real *dy*)                |
+--------------------------------------------------------------------------+

Draws the given *image* on the canvas at position (*dx*, *dy*). Note:
The *image* type can be an Image item, an image url or a
:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object. When given as
Image item, if the image isn't fully loaded, this method draws nothing.
When given as url string, the image should be loaded by calling Canvas
item's :ref:`Canvas::loadImage() <sdk_qtquick_canvas#loadImage-method>`
method first. This image been drawing is subject to the current context
clip path, even the given ``image`` is a
:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object.

**See also** :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>`,
`Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ ,
:ref:`Canvas::loadImage <sdk_qtquick_canvas#loadImage-method>`,
:ref:`Canvas::isImageLoaded <sdk_qtquick_canvas#isImageLoaded-method>`,
:ref:`Canvas::imageLoaded <sdk_qtquick_canvas#imageLoaded-signal>`, and
`W3C 2d context standard for
drawImage <http://www.w3.org/TR/2dcontext/#dom-context-2d-drawimage>`_ .

| 

.. _sdk_qtquick_context2d_object ellipse-method:

+--------------------------------------------------------------------------+
|        \ object ellipse(real *x*, real *y*, real *w*, real *h*)          |
+--------------------------------------------------------------------------+

Creates an ellipse within the bounding rectangle defined by its top-left
corner at (*x*, y), width *w* and height *h*, and adds it to the path as
a closed subpath.

The ellipse is composed of a clockwise curve, starting and finishing at
zero degrees (the 3 o'clock position).

| 

.. _sdk_qtquick_context2d_object fill-method:

+--------------------------------------------------------------------------+
|        \ object fill()                                                   |
+--------------------------------------------------------------------------+

Fills the subpaths with the current fill style.

**See also** `W3C 2d context standard for
fill <http://www.w3.org/TR/2dcontext/#dom-context-2d-fill>`_  and
:ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`.

| 

.. _sdk_qtquick_context2d_object fillRect-method:

+--------------------------------------------------------------------------+
|        \ object fillRect(real *x*, real *y*, real *w*, real *h*)         |
+--------------------------------------------------------------------------+

Paint the specified rectangular area using the
:ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`.

**See also** :ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`.

| 

.. _sdk_qtquick_context2d_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ object fillText(`text <sdk_qtquick_context2d#text-method>`,   |
| x, y)                                                                    |
+--------------------------------------------------------------------------+

Fills the given text at the given position.

**See also** :ref:`font <sdk_qtquick_context2d#font-prop>`,
:ref:`textAlign <sdk_qtquick_context2d#textAlign-prop>`,
:ref:`textBaseline <sdk_qtquick_context2d#textBaseline-prop>`, and
:ref:`strokeText <sdk_qtquick_context2d#strokeText-method>`.

| 

.. _sdk_qtquick_context2d_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ `CanvasImageData <sdk_qtquick_canvasimagedata>`            |
| getImageData(real *sx*, real *sy*, real *sw*, real *sh*)                 |
+--------------------------------------------------------------------------+

Returns an :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object
containing the image data for the given rectangle of the canvas.

| 

.. _sdk_qtquick_context2d_object isPointInPath-method:

+--------------------------------------------------------------------------+
|        \ object isPointInPath(real *x*, real *y*)                        |
+--------------------------------------------------------------------------+

Returns true if the given point is in the current path.

**See also** `W3C 2d context standard for
isPointInPath <http://www.w3.org/TR/2dcontext/#dom-context-2d-ispointinpath>`_ .

| 

.. _sdk_qtquick_context2d_object lineTo-method:

+--------------------------------------------------------------------------+
|        \ object lineTo(real *x*, real *y*)                               |
+--------------------------------------------------------------------------+

Draws a line from the current position to the point (x, y).

| 

.. _sdk_qtquick_context2d_object-method:

+--------------------------------------------------------------------------+
|        \ object                                                          |
| measureText(:ref:`text <sdk_qtquick_context2d#text-method>`)                |
+--------------------------------------------------------------------------+

Returns an object with a ``width`` property, whose value is equivalent
to calling QFontMetrics::width() with the given *text* in the current
font.

| 

.. _sdk_qtquick_context2d_object moveTo-method:

+--------------------------------------------------------------------------+
|        \ object moveTo(real *x*, real *y*)                               |
+--------------------------------------------------------------------------+

Creates a new subpath with the given point.

| 

.. _sdk_qtquick_context2d_object-method:

+--------------------------------------------------------------------------+
|        \ object                                                          |
| putImageData(:ref:`CanvasImageData <sdk_qtquick_canvasimagedata>`           |
| *imageData*, real *dx*, real *dy*, real *dirtyX*, real *dirtyY*, real    |
| *dirtyWidth*, real *dirtyHeight*)                                        |
+--------------------------------------------------------------------------+

Paints the data from the given ImageData object onto the canvas. If a
dirty rectangle (*dirtyX*, *dirtyY*, *dirtyWidth*, *dirtyHeight*) is
provided, only the pixels from that rectangle are painted.

| 

.. _sdk_qtquick_context2d_object quadraticCurveTo-method:

+--------------------------------------------------------------------------+
|        \ object quadraticCurveTo(real *cpx*, real *cpy*, real *x*, real  |
| *y*)                                                                     |
+--------------------------------------------------------------------------+

Adds a quadratic bezier curve between the current point and the endpoint
(``x``, ``y``) with the control point specified by (``cpx``, ``cpy``).

See `W3C 2d context standard for
quadraticCurveTo <http://www.w3.org/TR/2dcontext/#dom-context-2d-quadraticcurveto>`_ 

| 

.. _sdk_qtquick_context2d_object rect-method:

+--------------------------------------------------------------------------+
|        \ object rect(real *x*, real *y*, real *w*, real *h*)             |
+--------------------------------------------------------------------------+

Adds a rectangle at position (``x``, ``y``), with the given width ``w``
and height ``h``, as a closed subpath.

| 

.. _sdk_qtquick_context2d_object reset-method:

+--------------------------------------------------------------------------+
|        \ object reset()                                                  |
+--------------------------------------------------------------------------+

Resets the context state and properties to the default values.

| 

.. _sdk_qtquick_context2d_object resetTransform-method:

+--------------------------------------------------------------------------+
|        \ object resetTransform()                                         |
+--------------------------------------------------------------------------+

Reset the transformation matrix to the default value (equivalent to
calling
:ref:`setTransform <sdk_qtquick_context2d#setTransform-method>`\ (``1``,
``0``, ``0``, ``1``, ``0``, ``0``)).

**See also** :ref:`transform() <sdk_qtquick_context2d#transform-method>`,
:ref:`setTransform() <sdk_qtquick_context2d#setTransform-method>`, and
:ref:`reset() <sdk_qtquick_context2d#reset-method>`.

| 

.. _sdk_qtquick_context2d_object restore-method:

+--------------------------------------------------------------------------+
|        \ object restore()                                                |
+--------------------------------------------------------------------------+

Pops the top state on the stack, restoring the context to that state.

**See also** :ref:`save() <sdk_qtquick_context2d#save-method>`.

| 

.. _sdk_qtquick_context2d_object rotate-method:

+--------------------------------------------------------------------------+
|        \ object rotate(real *angle*)                                     |
+--------------------------------------------------------------------------+

Rotate the canvas around the current origin by *angle* in radians and
clockwise direction.

.. code:: cpp

    ctx.rotate(Math.PI/2);

|image5|

The rotation transformation matrix is as follows:

|image6|

where the *angle* of rotation is in radians.

| 

.. _sdk_qtquick_context2d_object roundedRect-method:

+--------------------------------------------------------------------------+
|        \ object roundedRect(real *x*, real *y*, real *w*, real *h*, real |
| *xRadius*, real *yRadius*)                                               |
+--------------------------------------------------------------------------+

Adds the given rectangle rect with rounded corners to the path. The
``xRadius`` and ``yRadius`` arguments specify the radius of the ellipses
defining the corners of the rounded rectangle.

| 

.. _sdk_qtquick_context2d_object save-method:

+--------------------------------------------------------------------------+
|        \ object save()                                                   |
+--------------------------------------------------------------------------+

Pushes the current state onto the state stack.

Before changing any state attributes, you should save the current state
for future reference. The context maintains a stack of drawing states.
Each state consists of the current transformation matrix, clipping
region, and values of the following attributes:

-  :ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>`
-  :ref:`fillStyle <sdk_qtquick_context2d#fillStyle-prop>`
-  :ref:`fillRule <sdk_qtquick_context2d#fillRule-prop>`
-  :ref:`globalAlpha <sdk_qtquick_context2d#globalAlpha-prop>`
-  :ref:`lineWidth <sdk_qtquick_context2d#lineWidth-prop>`
-  :ref:`lineCap <sdk_qtquick_context2d#lineCap-prop>`
-  :ref:`lineJoin <sdk_qtquick_context2d#lineJoin-prop>`
-  :ref:`miterLimit <sdk_qtquick_context2d#miterLimit-prop>`
-  :ref:`shadowOffsetX <sdk_qtquick_context2d#shadowOffsetX-prop>`
-  :ref:`shadowOffsetY <sdk_qtquick_context2d#shadowOffsetY-prop>`
-  :ref:`shadowBlur <sdk_qtquick_context2d#shadowBlur-prop>`
-  :ref:`shadowColor <sdk_qtquick_context2d#shadowColor-prop>`
-  :ref:`globalCompositeOperation <sdk_qtquick_context2d#globalCompositeOperation-prop>`
-  :ref:`font <sdk_qtquick_context2d#font-prop>`
-  :ref:`textAlign <sdk_qtquick_context2d#textAlign-prop>`
-  :ref:`textBaseline <sdk_qtquick_context2d#textBaseline-prop>`

The current path is NOT part of the drawing state. The path can be reset
by invoking the :ref:`beginPath() <sdk_qtquick_context2d#beginPath-method>`
method.

| 

.. _sdk_qtquick_context2d_object scale-method:

+--------------------------------------------------------------------------+
|        \ object scale(real *x*, real *y*)                                |
+--------------------------------------------------------------------------+

Increases or decreases the size of each unit in the canvas grid by
multiplying the scale factors to the current tranform matrix. *x* is the
scale factor in the horizontal direction and *y* is the scale factor in
the vertical direction.

The following code doubles the horizontal size of an object drawn on the
canvas and halves its vertical size:

.. code:: cpp

    ctx.scale(2.0, 0.5);

|image7|

| 

.. _sdk_qtquick_context2d_object setTransform-method:

+--------------------------------------------------------------------------+
|        \ object setTransform(real *a*, real *b*, real *c*, real *d*,     |
| real *e*, real *f*)                                                      |
+--------------------------------------------------------------------------+

Changes the transformation matrix to the matrix given by the arguments
as described below.

Modifying the transformation matrix directly enables you to perform
scaling, rotating, and translating transformations in a single step.

Each point on the canvas is multiplied by the matrix before anything is
drawn. The `HTML Canvas 2D Context
specification <http://www.w3.org/TR/2dcontext/#transformations>`_ 
defines the transformation matrix as:

|image8|

where:

-  ``a`` is the scale factor in the horizontal (x) direction

   |image9|

-  ``c`` is the skew factor in the x direction

   |image10|

-  ``e`` is the translation in the x direction

   |image11|

-  ``b`` is the skew factor in the y (vertical) direction

   |image12|

-  ``d`` is the scale factor in the y direction

   |image13|

-  ``f`` is the translation in the y direction

   |image14|

-  the last row remains constant

The scale factors and skew factors are multiples; ``e`` and ``f`` are
coordinate space units, just like the units in the translate(x,y)
method.

**See also** :ref:`transform() <sdk_qtquick_context2d#transform-method>`.

| 

.. _sdk_qtquick_context2d_object shear-method:

+--------------------------------------------------------------------------+
|        \ object shear(real *sh*, real *sv*)                              |
+--------------------------------------------------------------------------+

Shears the transformation matrix by *sh* in the horizontal direction and
*sv* in the vertical direction.

| 

.. _sdk_qtquick_context2d_object stroke-method:

+--------------------------------------------------------------------------+
|        \ object stroke()                                                 |
+--------------------------------------------------------------------------+

Strokes the subpaths with the current stroke style.

See `W3C 2d context standard for
stroke <http://www.w3.org/TR/2dcontext/#dom-context-2d-stroke>`_ 

**See also** :ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>`.

| 

.. _sdk_qtquick_context2d_object strokeRect-method:

+--------------------------------------------------------------------------+
|        \ object strokeRect(real *x*, real *y*, real *w*, real *h*)       |
+--------------------------------------------------------------------------+

Stroke the specified rectangle's path using the
:ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>`,
:ref:`lineWidth <sdk_qtquick_context2d#lineWidth-prop>`,
:ref:`lineJoin <sdk_qtquick_context2d#lineJoin-prop>`, and (if appropriate)
:ref:`miterLimit <sdk_qtquick_context2d#miterLimit-prop>` attributes.

**See also** :ref:`strokeStyle <sdk_qtquick_context2d#strokeStyle-prop>`,
:ref:`lineWidth <sdk_qtquick_context2d#lineWidth-prop>`,
:ref:`lineJoin <sdk_qtquick_context2d#lineJoin-prop>`, and
:ref:`miterLimit <sdk_qtquick_context2d#miterLimit-prop>`.

| 

.. _sdk_qtquick_context2d_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ object strokeText(`text <sdk_qtquick_context2d#text-method>`, |
| x, y)                                                                    |
+--------------------------------------------------------------------------+

Strokes the given text at the given position.

**See also** :ref:`font <sdk_qtquick_context2d#font-prop>`,
:ref:`textAlign <sdk_qtquick_context2d#textAlign-prop>`,
:ref:`textBaseline <sdk_qtquick_context2d#textBaseline-prop>`, and
:ref:`fillText <sdk_qtquick_context2d#fillText-method>`.

| 

.. _sdk_qtquick_context2d_object text-method:

+--------------------------------------------------------------------------+
|        \ object text(string *text*, real *x*, real *y*)                  |
+--------------------------------------------------------------------------+

Adds the given ``text`` to the path as a set of closed subpaths created
from the current context font supplied. The subpaths are positioned so
that the left end of the text's baseline lies at the point specified by
(``x``, ``y``).

| 

.. _sdk_qtquick_context2d_object transform-method:

+--------------------------------------------------------------------------+
|        \ object transform(real *a*, real *b*, real *c*, real *d*, real   |
| *e*, real *f*)                                                           |
+--------------------------------------------------------------------------+

This method is very similar to
:ref:`setTransform() <sdk_qtquick_context2d#setTransform-method>`, but
instead of replacing the old transform matrix, this method applies the
given tranform matrix to the current matrix by multiplying to it.

The :ref:`setTransform <sdk_qtquick_context2d#setTransform-method>`\ (a, b,
c, d, e, f) method actually resets the current transform to the identity
matrix, and then invokes the transform(a, b, c, d, e, f) method with the
same arguments.

**See also**
:ref:`setTransform() <sdk_qtquick_context2d#setTransform-method>`.

| 

.. _sdk_qtquick_context2d_object translate-method:

+--------------------------------------------------------------------------+
|        \ object translate(real *x*, real *y*)                            |
+--------------------------------------------------------------------------+

Translates the origin of the canvas by a horizontal distance of *x*, and
a vertical distance of *y*, in coordinate space units.

Translating the origin enables you to draw patterns of different objects
on the canvas without having to measure the coordinates manually for
each shape.

| 

.. |image0| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-context.gif
.. |image1| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-startAngle.png
.. |image2| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-arcTo.png
.. |image3| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-bezierCurveTo.png
.. |image4| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-clip-complex.png
.. |image5| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-rotate.png
.. |image6| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-math-rotate.png
.. |image7| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-scale.png
.. |image8| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-math.png
.. |image9| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-scalex.png
.. |image10| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-skewx.png
.. |image11| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-translate.png
.. |image12| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-skewy.png
.. |image13| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-scaley.png
.. |image14| image:: /mediasdk_qtquick_context2dimages/qml-item-canvas-translatey.png

