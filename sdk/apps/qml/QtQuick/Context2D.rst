Provides 2D context for shapes on a Canvas item

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.0               |
+---------------------+----------------------+

Properties
----------

-  ****`canvas </sdk/apps/qml/QtQuick/Context2D#canvas-prop>`__**** :
   QtQuick::Canvas
-  ****`fillRule </sdk/apps/qml/QtQuick/Context2D#fillRule-prop>`__****
   : enumeration
-  ****`fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__****
   : variant
-  ****`font </sdk/apps/qml/QtQuick/Context2D#font-prop>`__**** : string
-  ****`globalAlpha </sdk/apps/qml/QtQuick/Context2D#globalAlpha-prop>`__****
   : real
-  ****`globalCompositeOperation </sdk/apps/qml/QtQuick/Context2D#globalCompositeOperation-prop>`__****
   : string
-  ****`lineCap </sdk/apps/qml/QtQuick/Context2D#lineCap-prop>`__**** :
   string
-  ****`lineJoin </sdk/apps/qml/QtQuick/Context2D#lineJoin-prop>`__****
   : string
-  ****`lineWidth </sdk/apps/qml/QtQuick/Context2D#lineWidth-prop>`__****
   : real
-  ****`miterLimit </sdk/apps/qml/QtQuick/Context2D#miterLimit-prop>`__****
   : real
-  ****`shadowBlur </sdk/apps/qml/QtQuick/Context2D#shadowBlur-prop>`__****
   : real
-  ****`shadowColor </sdk/apps/qml/QtQuick/Context2D#shadowColor-prop>`__****
   : string
-  ****`shadowOffsetX </sdk/apps/qml/QtQuick/Context2D#shadowOffsetX-prop>`__****
   : qreal
-  ****`shadowOffsetY </sdk/apps/qml/QtQuick/Context2D#shadowOffsetY-prop>`__****
   : qreal
-  ****`strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__****
   : variant
-  ****`textAlign </sdk/apps/qml/QtQuick/Context2D#textAlign-prop>`__****
   : string
-  ****`textBaseline </sdk/apps/qml/QtQuick/Context2D#textBaseline-prop>`__****
   : string

Methods
-------

-  object
   ****`arc </sdk/apps/qml/QtQuick/Context2D#arc-method>`__****\ (real
   *x*, real *y*, real *radius*, real *startAngle*, real *endAngle*,
   bool *anticlockwise*)
-  object
   ****`arcTo </sdk/apps/qml/QtQuick/Context2D#arcTo-method>`__****\ (real
   *x1*, real *y1*, real *x2*, real *y2*, real *radius*)
-  object
   ****`beginPath </sdk/apps/qml/QtQuick/Context2D#beginPath-method>`__****\ ()
-  object
   ****`bezierCurveTo </sdk/apps/qml/QtQuick/Context2D#bezierCurveTo-method>`__****\ (real
   *cp1x*, real *cp1y*, real *cp2x*, real *cp2y*, real *x*, real *y*)
-  object
   ****`clearRect </sdk/apps/qml/QtQuick/Context2D#clearRect-method>`__****\ (real
   *x*, real *y*, real *w*, real *h*)
-  object
   ****`clip </sdk/apps/qml/QtQuick/Context2D#clip-method>`__****\ ()
-  object
   ****`closePath </sdk/apps/qml/QtQuick/Context2D#closePath-method>`__****\ ()
-  object
   ****`createConicalGradient </sdk/apps/qml/QtQuick/Context2D#createConicalGradient-method>`__****\ (real
   *x*, real *y*, real *angle*)
-  CanvasImageData
   ****`createImageData </sdk/apps/qml/QtQuick/Context2D#createImageData-method-3>`__****\ (Url
   *imageUrl*)
-  CanvasImageData
   ****`createImageData </sdk/apps/qml/QtQuick/Context2D#createImageData-method-2>`__****\ (CanvasImageData
   *imageData*)
-  CanvasImageData
   ****`createImageData </sdk/apps/qml/QtQuick/Context2D#createImageData-method>`__****\ (real
   *sw*, real *sh*)
-  object
   ****`createLinearGradient </sdk/apps/qml/QtQuick/Context2D#createLinearGradient-method>`__****\ (real
   *x0*, real *y0*, real *x1*, real *y1*)
-  variant
   ****`createPattern </sdk/apps/qml/QtQuick/Context2D#createPattern-method-2>`__****\ (Image
   *image*, string *repetition*)
-  variant
   ****`createPattern </sdk/apps/qml/QtQuick/Context2D#createPattern-method>`__****\ (color
   *color*, enumeration *patternMode*)
-  object
   ****`createRadialGradient </sdk/apps/qml/QtQuick/Context2D#createRadialGradient-method>`__****\ (real
   *x0*, real *y0*, real *r0*, real *x1*, real *y1*, real *r1*)
-  ****`drawImage </sdk/apps/qml/QtQuick/Context2D#drawImage-method-3>`__****\ (variant
   *image*, real *sx*, real *sy*, real *sw*, real *sh*, real *dx*, real
   *dy*, real *dw*, real *dh*)
-  ****`drawImage </sdk/apps/qml/QtQuick/Context2D#drawImage-method-2>`__****\ (variant
   *image*, real *dx*, real *dy*, real *dw*, real *dh*)
-  ****`drawImage </sdk/apps/qml/QtQuick/Context2D#drawImage-method>`__****\ (variant
   *image*, real *dx*, real *dy*)
-  object
   ****`ellipse </sdk/apps/qml/QtQuick/Context2D#ellipse-method>`__****\ (real
   *x*, real *y*, real *w*, real *h*)
-  object
   ****`fill </sdk/apps/qml/QtQuick/Context2D#fill-method>`__****\ ()
-  object
   ****`fillRect </sdk/apps/qml/QtQuick/Context2D#fillRect-method>`__****\ (real
   *x*, real *y*, real *w*, real *h*)
-  object
   ****`fillText </sdk/apps/qml/QtQuick/Context2D#fillText-method>`__****\ (text,
   x, y)
-  CanvasImageData
   ****`getImageData </sdk/apps/qml/QtQuick/Context2D#getImageData-method>`__****\ (real
   *sx*, real *sy*, real *sw*, real *sh*)
-  object
   ****`isPointInPath </sdk/apps/qml/QtQuick/Context2D#isPointInPath-method>`__****\ (real
   *x*, real *y*)
-  object
   ****`lineTo </sdk/apps/qml/QtQuick/Context2D#lineTo-method>`__****\ (real
   *x*, real *y*)
-  object
   ****`measureText </sdk/apps/qml/QtQuick/Context2D#measureText-method>`__****\ (text)
-  object
   ****`moveTo </sdk/apps/qml/QtQuick/Context2D#moveTo-method>`__****\ (real
   *x*, real *y*)
-  object
   ****`putImageData </sdk/apps/qml/QtQuick/Context2D#putImageData-method>`__****\ (CanvasImageData
   *imageData*, real *dx*, real *dy*, real *dirtyX*, real *dirtyY*, real
   *dirtyWidth*, real *dirtyHeight*)
-  object
   ****`quadraticCurveTo </sdk/apps/qml/QtQuick/Context2D#quadraticCurveTo-method>`__****\ (real
   *cpx*, real *cpy*, real *x*, real *y*)
-  object
   ****`rect </sdk/apps/qml/QtQuick/Context2D#rect-method>`__****\ (real
   *x*, real *y*, real *w*, real *h*)
-  object
   ****`reset </sdk/apps/qml/QtQuick/Context2D#reset-method>`__****\ ()
-  object
   ****`resetTransform </sdk/apps/qml/QtQuick/Context2D#resetTransform-method>`__****\ ()
-  object
   ****`restore </sdk/apps/qml/QtQuick/Context2D#restore-method>`__****\ ()
-  object
   ****`rotate </sdk/apps/qml/QtQuick/Context2D#rotate-method>`__****\ (real
   *angle*)
-  object
   ****`roundedRect </sdk/apps/qml/QtQuick/Context2D#roundedRect-method>`__****\ (real
   *x*, real *y*, real *w*, real *h*, real *xRadius*, real *yRadius*)
-  object
   ****`save </sdk/apps/qml/QtQuick/Context2D#save-method>`__****\ ()
-  object
   ****`scale </sdk/apps/qml/QtQuick/Context2D#scale-method>`__****\ (real
   *x*, real *y*)
-  object
   ****`setTransform </sdk/apps/qml/QtQuick/Context2D#setTransform-method>`__****\ (real
   *a*, real *b*, real *c*, real *d*, real *e*, real *f*)
-  object
   ****`shear </sdk/apps/qml/QtQuick/Context2D#shear-method>`__****\ (real
   *sh*, real *sv*)
-  object
   ****`stroke </sdk/apps/qml/QtQuick/Context2D#stroke-method>`__****\ ()
-  object
   ****`strokeRect </sdk/apps/qml/QtQuick/Context2D#strokeRect-method>`__****\ (real
   *x*, real *y*, real *w*, real *h*)
-  object
   ****`strokeText </sdk/apps/qml/QtQuick/Context2D#strokeText-method>`__****\ (text,
   x, y)
-  object
   ****`text </sdk/apps/qml/QtQuick/Context2D#text-method>`__****\ (string
   *text*, real *x*, real *y*)
-  object
   ****`transform </sdk/apps/qml/QtQuick/Context2D#transform-method>`__****\ (real
   *a*, real *b*, real *c*, real *d*, real *e*, real *f*)
-  object
   ****`translate </sdk/apps/qml/QtQuick/Context2D#translate-method>`__****\ (real
   *x*, real *y*)

Detailed Description
--------------------

The `Context2D </sdk/apps/qml/QtQuick/Context2D/>`__ object can be
created by ``Canvas`` item's ``getContext()`` method:

.. code:: cpp

    Canvas {
      id:canvas
      onPaint:{
         var ctx = canvas.getContext('2d');
         //...
      }
    }

The `Context2D </sdk/apps/qml/QtQuick/Context2D/>`__ API implements the
same `W3C Canvas 2D Context API
standard <http://www.w3.org/TR/2dcontext>`__ with some enhanced
features.

The `Context2D </sdk/apps/qml/QtQuick/Context2D/>`__ API provides the
rendering **context** which defines the methods and attributes needed to
draw on the ``Canvas`` item. The following assigns the canvas rendering
context to a ``context`` variable:

.. code:: cpp

    var context = mycanvas.getContext("2d")

The `Context2D </sdk/apps/qml/QtQuick/Context2D/>`__ API renders the
canvas as a coordinate system whose origin (0,0) is at the top left
corner, as shown in the figure below. Coordinates increase along the
``x`` axis from left to right and along the ``y`` axis from top to
bottom of the canvas.

|image0|

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ canvas : `QtQuick::Canvas </sdk/apps/qml/QtQuick/Canvas/>`__    |
+--------------------------------------------------------------------------+

Holds the canvas item that the context paints on.

This property is read only.

| 

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

**See also**
`fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ fillStyle : variant                                             |
+--------------------------------------------------------------------------+

Holds the current style used for filling shapes. The style can be either
a string containing a CSS color, a
`CanvasGradient </sdk/apps/qml/QtQuick/CanvasGradient/>`__ or
CanvasPattern object. Invalid values are ignored. This property accepts
several color syntaxes:

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
`strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__ is
assigned many times in a loop, the last Qt.rgba() syntax should be
chosen, as it has the best performance, because it's already a valid
QColor value, does not need to be parsed everytime.

The default value is '#000000'.

**See also**
`createLinearGradient() </sdk/apps/qml/QtQuick/Context2D#createLinearGradient-method>`__,
`createRadialGradient() </sdk/apps/qml/QtQuick/Context2D#createRadialGradient-method>`__,
`createPattern() </sdk/apps/qml/QtQuick/Context2D#createPattern-method>`__,
and `strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ font : string                                                   |
+--------------------------------------------------------------------------+

Holds the current font settings.

A subset of the `w3C 2d context standard for
font <http://www.w3.org/TR/2dcontext#dom-context-2d-font>`__ is
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

+--------------------------------------------------------------------------+
|        \ globalAlpha : real                                              |
+--------------------------------------------------------------------------+

Holds the current alpha value applied to rendering operations. The value
must be in the range from ``0.0`` (fully transparent) to ``1.0`` (fully
opaque). The default value is ``1.0``.

| 

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

+--------------------------------------------------------------------------+
|        \ lineWidth : real                                                |
+--------------------------------------------------------------------------+

Holds the current line width. Values that are not finite values greater
than zero are ignored.

| 

+--------------------------------------------------------------------------+
|        \ miterLimit : real                                               |
+--------------------------------------------------------------------------+

Holds the current miter limit ratio. The default miter limit value is
10.0.

| 

+--------------------------------------------------------------------------+
|        \ shadowBlur : real                                               |
+--------------------------------------------------------------------------+

Holds the current level of blur applied to shadows

| 

+--------------------------------------------------------------------------+
|        \ shadowColor : string                                            |
+--------------------------------------------------------------------------+

Holds the current shadow color.

| 

+--------------------------------------------------------------------------+
|        \ shadowOffsetX : qreal                                           |
+--------------------------------------------------------------------------+

Holds the current shadow offset in the positive horizontal distance.

**See also**
`shadowOffsetY </sdk/apps/qml/QtQuick/Context2D#shadowOffsetY-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ shadowOffsetY : qreal                                           |
+--------------------------------------------------------------------------+

Holds the current shadow offset in the positive vertical distance.

**See also**
`shadowOffsetX </sdk/apps/qml/QtQuick/Context2D#shadowOffsetX-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ strokeStyle : variant                                           |
+--------------------------------------------------------------------------+

Holds the current color or style to use for the lines around shapes, The
style can be either a string containing a CSS color, a
`CanvasGradient </sdk/apps/qml/QtQuick/CanvasGradient/>`__ or
CanvasPattern object. Invalid values are ignored.

The default value is '#000000'.

**See also**
`createLinearGradient() </sdk/apps/qml/QtQuick/Context2D#createLinearGradient-method>`__,
`createRadialGradient() </sdk/apps/qml/QtQuick/Context2D#createRadialGradient-method>`__,
`createPattern() </sdk/apps/qml/QtQuick/Context2D#createPattern-method>`__,
and `fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__.

| 

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

**See also** `arcTo </sdk/apps/qml/QtQuick/Context2D#arcTo-method>`__
and `W3C's 2D Context Standard for
arc() <http://www.w3.org/TR/2dcontext#dom-context-2d-arc>`__.

| 

+--------------------------------------------------------------------------+
|        \ object arcTo(real *x1*, real *y1*, real *x2*, real *y2*, real   |
| *radius*)                                                                |
+--------------------------------------------------------------------------+

Adds an arc with the given control points and radius to the current
subpath, connected to the previous point by a straight line. To draw an
arc, you begin with the same steps you followed to create a line:

-  Call the
   `beginPath() </sdk/apps/qml/QtQuick/Context2D#beginPath-method>`__
   method to set a new path.
-  Call the
   `moveTo </sdk/apps/qml/QtQuick/Context2D#moveTo-method>`__\ (``x``,
   ``y``) method to set your starting position on the canvas at the
   point (``x``, ``y``).
-  To draw an arc or circle, call the arcTo(\ *x1*, *y1*, *x2*, *y2*,
   *radius*) method. This adds an arc with starting point (*x1*, *y1*),
   ending point (*x2*, *y2*), and *radius* to the current subpath and
   connects it to the previous subpath by a straight line.

|image2|

**See also** `arc </sdk/apps/qml/QtQuick/Context2D#arc-method>`__ and
`W3C's 2D Context Standard for
arcTo() <http://www.w3.org/TR/2dcontext#dom-context-2d-arcto>`__.

| 

+--------------------------------------------------------------------------+
|        \ object beginPath()                                              |
+--------------------------------------------------------------------------+

Resets the current path to a new path.

| 

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
bezierCurveTo <http://www.w3.org/TR/2dcontext#dom-context-2d-beziercurveto>`__
and `The beautiful flower demo by using
bezierCurveTo <http://www.openrise.com/lab/FlowerPower/>`__.

| 

+--------------------------------------------------------------------------+
|        \ object clearRect(real *x*, real *y*, real *w*, real *h*)        |
+--------------------------------------------------------------------------+

Clears all pixels on the canvas in the given rectangle to transparent
black.

| 

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

**See also**
`beginPath() </sdk/apps/qml/QtQuick/Context2D#beginPath-method>`__,
`closePath() </sdk/apps/qml/QtQuick/Context2D#closePath-method>`__,
`stroke() </sdk/apps/qml/QtQuick/Context2D#stroke-method>`__,
`fill() </sdk/apps/qml/QtQuick/Context2D#fill-method>`__, and `W3C 2d
context standard for
clip <http://www.w3.org/TR/2dcontext#dom-context-2d-clip>`__.

| 

+--------------------------------------------------------------------------+
|        \ object closePath()                                              |
+--------------------------------------------------------------------------+

Closes the current subpath by drawing a line to the beginning of the
subpath, automatically starting a new path. The current point of the new
path is the previous subpath's first point.

**See also** `W3C 2d context standard for
closePath <http://www.w3.org/TR/2dcontext#dom-context-2d-closepath>`__.

| 

+--------------------------------------------------------------------------+
|        \ object createConicalGradient(real *x*, real *y*, real *angle*)  |
+--------------------------------------------------------------------------+

Returns a `CanvasGradient </sdk/apps/qml/QtQuick/CanvasGradient/>`__
object that represents a conical gradient that interpolate colors
counter-clockwise around a center point (``x``, ``y``) with start angle
``angle`` in units of radians.

**See also**
`CanvasGradient::addColorStop() </sdk/apps/qml/QtQuick/CanvasGradient#addColorStop-method>`__,
`createLinearGradient() </sdk/apps/qml/QtQuick/Context2D#createLinearGradient-method>`__,
`createRadialGradient() </sdk/apps/qml/QtQuick/Context2D#createRadialGradient-method>`__,
`createPattern() </sdk/apps/qml/QtQuick/Context2D#createPattern-method>`__,
`fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__, and
`strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__    |
| createImageData(Url *imageUrl*)                                          |
+--------------------------------------------------------------------------+

Creates a `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__
object with the given image loaded from *imageUrl*.

**Note:** The *imageUrl* must be already loaded before this function
call, otherwise an empty
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ obect will
be returned.

**See also**
`Canvas::loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__,
`QtQuick::Canvas::unloadImage() </sdk/apps/qml/QtQuick/Canvas#unloadImage-method>`__,
and
`QtQuick::Canvas::isImageLoaded </sdk/apps/qml/QtQuick/Canvas#isImageLoaded-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__    |
| createImageData(`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/ |
| >`__                                                                     |
| *imageData*)                                                             |
+--------------------------------------------------------------------------+

Creates a `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__
object with the same dimensions as the argument.

| 

+--------------------------------------------------------------------------+
|        \ `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__    |
| createImageData(real *sw*, real *sh*)                                    |
+--------------------------------------------------------------------------+

Creates a `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__
object with the given dimensions(\ *sw*, *sh*).

| 

+--------------------------------------------------------------------------+
|        \ object createLinearGradient(real *x0*, real *y0*, real *x1*,    |
| real *y1*)                                                               |
+--------------------------------------------------------------------------+

Returns a `CanvasGradient </sdk/apps/qml/QtQuick/CanvasGradient/>`__
object that represents a linear gradient that transitions the color
along a line between the start point (*x0*, *y0*) and the end point
(*x1*, *y1*).

A gradient is a smooth transition between colors. There are two types of
gradients: linear and radial. Gradients must have two or more color
stops, representing color shifts positioned from 0 to 1 between to the
gradient's starting and end points or circles.

**See also**
`CanvasGradient::addColorStop() </sdk/apps/qml/QtQuick/CanvasGradient#addColorStop-method>`__,
`createRadialGradient() </sdk/apps/qml/QtQuick/Context2D#createRadialGradient-method>`__,
`createConicalGradient() </sdk/apps/qml/QtQuick/Context2D#createConicalGradient-method>`__,
`createPattern() </sdk/apps/qml/QtQuick/Context2D#createPattern-method>`__,
`fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__, and
`strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ variant createPattern(`Image </sdk/apps/qml/QtQuick/Image/>`__  |
| *image*, string *repetition*)                                            |
+--------------------------------------------------------------------------+

Returns a CanvasPattern object that uses the given image and repeats in
the direction(s) given by the repetition argument.

The *image* parameter must be a valid Image item, a valid
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ object or
loaded image url, if there is no image data, throws an
INVALID\_STATE\_ERR exception.

The allowed values for *repetition* are:

-  "repeat" - both directions
-  "repeat-x - horizontal only
-  "repeat-y" - vertical only
-  "no-repeat" - neither

If the repetition argument is empty or null, the value "repeat" is used.

**See also**
`strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__ and
`fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__.

| 

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

+--------------------------------------------------------------------------+
|        \ object createRadialGradient(real *x0*, real *y0*, real *r0*,    |
| real *x1*, real *y1*, real *r1*)                                         |
+--------------------------------------------------------------------------+

Returns a `CanvasGradient </sdk/apps/qml/QtQuick/CanvasGradient/>`__
object that represents a radial gradient that paints along the cone
given by the start circle with origin (x0, y0) and radius r0, and the
end circle with origin (x1, y1) and radius r1.

**See also**
`CanvasGradient::addColorStop() </sdk/apps/qml/QtQuick/CanvasGradient#addColorStop-method>`__,
`createLinearGradient() </sdk/apps/qml/QtQuick/Context2D#createLinearGradient-method>`__,
`createConicalGradient() </sdk/apps/qml/QtQuick/Context2D#createConicalGradient-method>`__,
`createPattern() </sdk/apps/qml/QtQuick/Context2D#createPattern-method>`__,
`fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__, and
`strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ drawImage(variant *image*, real *sx*, real *sy*, real *sw*,     |
| real *sh*, real *dx*, real *dy*, real *dw*, real *dh*)                   |
+--------------------------------------------------------------------------+

This is an overloaded function. Draws the given item as *image* from
source point (*sx*, *sy*) and source width *sw*, source height *sh* onto
the canvas at point (*dx*, *dy*) and with width *dw*, height *dh*.

Note: The *image* type can be an Image or Canvas item, an image url or a
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ object.
When given as Image item, if the image isn't fully loaded, this method
draws nothing. When given as url string, the image should be loaded by
calling Canvas item's
`Canvas::loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__
method first. This image been drawing is subject to the current context
clip path, even the given ``image`` is a
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ object.

**See also**
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__,
`Image </sdk/apps/qml/QtQuick/imageelements#image>`__,
`Canvas::loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__,
`Canvas::isImageLoaded </sdk/apps/qml/QtQuick/Canvas#isImageLoaded-method>`__,
`Canvas::imageLoaded </sdk/apps/qml/QtQuick/Canvas#imageLoaded-signal>`__,
and `W3C 2d context standard for
drawImage <http://www.w3.org/TR/2dcontext#dom-context-2d-drawimage>`__.

| 

+--------------------------------------------------------------------------+
|        \ drawImage(variant *image*, real *dx*, real *dy*, real *dw*,     |
| real *dh*)                                                               |
+--------------------------------------------------------------------------+

This is an overloaded function. Draws the given item as *image* onto the
canvas at point (*dx*, *dy*) and with width *dw*, height *dh*.

Note: The *image* type can be an Image item, an image url or a
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ object.
When given as Image item, if the image isn't fully loaded, this method
draws nothing. When given as url string, the image should be loaded by
calling Canvas item's
`Canvas::loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__
method first. This image been drawing is subject to the current context
clip path, even the given ``image`` is a
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ object.

**See also**
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__,
`Image </sdk/apps/qml/QtQuick/imageelements#image>`__,
`Canvas::loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__,
`Canvas::isImageLoaded </sdk/apps/qml/QtQuick/Canvas#isImageLoaded-method>`__,
`Canvas::imageLoaded </sdk/apps/qml/QtQuick/Canvas#imageLoaded-signal>`__,
and `W3C 2d context standard for
drawImage <http://www.w3.org/TR/2dcontext#dom-context-2d-drawimage>`__.

| 

+--------------------------------------------------------------------------+
|        \ drawImage(variant *image*, real *dx*, real *dy*)                |
+--------------------------------------------------------------------------+

Draws the given *image* on the canvas at position (*dx*, *dy*). Note:
The *image* type can be an Image item, an image url or a
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ object.
When given as Image item, if the image isn't fully loaded, this method
draws nothing. When given as url string, the image should be loaded by
calling Canvas item's
`Canvas::loadImage() </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__
method first. This image been drawing is subject to the current context
clip path, even the given ``image`` is a
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ object.

**See also**
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__,
`Image </sdk/apps/qml/QtQuick/imageelements#image>`__,
`Canvas::loadImage </sdk/apps/qml/QtQuick/Canvas#loadImage-method>`__,
`Canvas::isImageLoaded </sdk/apps/qml/QtQuick/Canvas#isImageLoaded-method>`__,
`Canvas::imageLoaded </sdk/apps/qml/QtQuick/Canvas#imageLoaded-signal>`__,
and `W3C 2d context standard for
drawImage <http://www.w3.org/TR/2dcontext#dom-context-2d-drawimage>`__.

| 

+--------------------------------------------------------------------------+
|        \ object ellipse(real *x*, real *y*, real *w*, real *h*)          |
+--------------------------------------------------------------------------+

Creates an ellipse within the bounding rectangle defined by its top-left
corner at (*x*, y), width *w* and height *h*, and adds it to the path as
a closed subpath.

The ellipse is composed of a clockwise curve, starting and finishing at
zero degrees (the 3 o'clock position).

| 

+--------------------------------------------------------------------------+
|        \ object fill()                                                   |
+--------------------------------------------------------------------------+

Fills the subpaths with the current fill style.

**See also** `W3C 2d context standard for
fill <http://www.w3.org/TR/2dcontext#dom-context-2d-fill>`__ and
`fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ object fillRect(real *x*, real *y*, real *w*, real *h*)         |
+--------------------------------------------------------------------------+

Paint the specified rectangular area using the
`fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__.

**See also**
`fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ object                                                          |
| fillText(`text </sdk/apps/qml/QtQuick/Context2D#text-method>`__, x, y)   |
+--------------------------------------------------------------------------+

Fills the given text at the given position.

**See also** `font </sdk/apps/qml/QtQuick/Context2D#font-prop>`__,
`textAlign </sdk/apps/qml/QtQuick/Context2D#textAlign-prop>`__,
`textBaseline </sdk/apps/qml/QtQuick/Context2D#textBaseline-prop>`__,
and `strokeText </sdk/apps/qml/QtQuick/Context2D#strokeText-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__    |
| getImageData(real *sx*, real *sy*, real *sw*, real *sh*)                 |
+--------------------------------------------------------------------------+

Returns an `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__
object containing the image data for the given rectangle of the canvas.

| 

+--------------------------------------------------------------------------+
|        \ object isPointInPath(real *x*, real *y*)                        |
+--------------------------------------------------------------------------+

Returns true if the given point is in the current path.

**See also** `W3C 2d context standard for
isPointInPath <http://www.w3.org/TR/2dcontext#dom-context-2d-ispointinpath>`__.

| 

+--------------------------------------------------------------------------+
|        \ object lineTo(real *x*, real *y*)                               |
+--------------------------------------------------------------------------+

Draws a line from the current position to the point (x, y).

| 

+--------------------------------------------------------------------------+
|        \ object                                                          |
| measureText(`text </sdk/apps/qml/QtQuick/Context2D#text-method>`__)      |
+--------------------------------------------------------------------------+

Returns an object with a ``width`` property, whose value is equivalent
to calling QFontMetrics::width() with the given *text* in the current
font.

| 

+--------------------------------------------------------------------------+
|        \ object moveTo(real *x*, real *y*)                               |
+--------------------------------------------------------------------------+

Creates a new subpath with the given point.

| 

+--------------------------------------------------------------------------+
|        \ object                                                          |
| putImageData(`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`_ |
| _                                                                        |
| *imageData*, real *dx*, real *dy*, real *dirtyX*, real *dirtyY*, real    |
| *dirtyWidth*, real *dirtyHeight*)                                        |
+--------------------------------------------------------------------------+

Paints the data from the given ImageData object onto the canvas. If a
dirty rectangle (*dirtyX*, *dirtyY*, *dirtyWidth*, *dirtyHeight*) is
provided, only the pixels from that rectangle are painted.

| 

+--------------------------------------------------------------------------+
|        \ object quadraticCurveTo(real *cpx*, real *cpy*, real *x*, real  |
| *y*)                                                                     |
+--------------------------------------------------------------------------+

Adds a quadratic bezier curve between the current point and the endpoint
(``x``, ``y``) with the control point specified by (``cpx``, ``cpy``).

See `W3C 2d context standard for
quadraticCurveTo <http://www.w3.org/TR/2dcontext#dom-context-2d-quadraticcurveto>`__

| 

+--------------------------------------------------------------------------+
|        \ object rect(real *x*, real *y*, real *w*, real *h*)             |
+--------------------------------------------------------------------------+

Adds a rectangle at position (``x``, ``y``), with the given width ``w``
and height ``h``, as a closed subpath.

| 

+--------------------------------------------------------------------------+
|        \ object reset()                                                  |
+--------------------------------------------------------------------------+

Resets the context state and properties to the default values.

| 

+--------------------------------------------------------------------------+
|        \ object resetTransform()                                         |
+--------------------------------------------------------------------------+

Reset the transformation matrix to the default value (equivalent to
calling
`setTransform </sdk/apps/qml/QtQuick/Context2D#setTransform-method>`__\ (``1``,
``0``, ``0``, ``1``, ``0``, ``0``)).

**See also**
`transform() </sdk/apps/qml/QtQuick/Context2D#transform-method>`__,
`setTransform() </sdk/apps/qml/QtQuick/Context2D#setTransform-method>`__,
and `reset() </sdk/apps/qml/QtQuick/Context2D#reset-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ object restore()                                                |
+--------------------------------------------------------------------------+

Pops the top state on the stack, restoring the context to that state.

**See also** `save() </sdk/apps/qml/QtQuick/Context2D#save-method>`__.

| 

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

+--------------------------------------------------------------------------+
|        \ object roundedRect(real *x*, real *y*, real *w*, real *h*, real |
| *xRadius*, real *yRadius*)                                               |
+--------------------------------------------------------------------------+

Adds the given rectangle rect with rounded corners to the path. The
``xRadius`` and ``yRadius`` arguments specify the radius of the ellipses
defining the corners of the rounded rectangle.

| 

+--------------------------------------------------------------------------+
|        \ object save()                                                   |
+--------------------------------------------------------------------------+

Pushes the current state onto the state stack.

Before changing any state attributes, you should save the current state
for future reference. The context maintains a stack of drawing states.
Each state consists of the current transformation matrix, clipping
region, and values of the following attributes:

-  `strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__
-  `fillStyle </sdk/apps/qml/QtQuick/Context2D#fillStyle-prop>`__
-  `fillRule </sdk/apps/qml/QtQuick/Context2D#fillRule-prop>`__
-  `globalAlpha </sdk/apps/qml/QtQuick/Context2D#globalAlpha-prop>`__
-  `lineWidth </sdk/apps/qml/QtQuick/Context2D#lineWidth-prop>`__
-  `lineCap </sdk/apps/qml/QtQuick/Context2D#lineCap-prop>`__
-  `lineJoin </sdk/apps/qml/QtQuick/Context2D#lineJoin-prop>`__
-  `miterLimit </sdk/apps/qml/QtQuick/Context2D#miterLimit-prop>`__
-  `shadowOffsetX </sdk/apps/qml/QtQuick/Context2D#shadowOffsetX-prop>`__
-  `shadowOffsetY </sdk/apps/qml/QtQuick/Context2D#shadowOffsetY-prop>`__
-  `shadowBlur </sdk/apps/qml/QtQuick/Context2D#shadowBlur-prop>`__
-  `shadowColor </sdk/apps/qml/QtQuick/Context2D#shadowColor-prop>`__
-  `globalCompositeOperation </sdk/apps/qml/QtQuick/Context2D#globalCompositeOperation-prop>`__
-  `font </sdk/apps/qml/QtQuick/Context2D#font-prop>`__
-  `textAlign </sdk/apps/qml/QtQuick/Context2D#textAlign-prop>`__
-  `textBaseline </sdk/apps/qml/QtQuick/Context2D#textBaseline-prop>`__

The current path is NOT part of the drawing state. The path can be reset
by invoking the
`beginPath() </sdk/apps/qml/QtQuick/Context2D#beginPath-method>`__
method.

| 

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
specification <http://www.w3.org/TR/2dcontext#transformations>`__
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

**See also**
`transform() </sdk/apps/qml/QtQuick/Context2D#transform-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ object shear(real *sh*, real *sv*)                              |
+--------------------------------------------------------------------------+

Shears the transformation matrix by *sh* in the horizontal direction and
*sv* in the vertical direction.

| 

+--------------------------------------------------------------------------+
|        \ object stroke()                                                 |
+--------------------------------------------------------------------------+

Strokes the subpaths with the current stroke style.

See `W3C 2d context standard for
stroke <http://www.w3.org/TR/2dcontext#dom-context-2d-stroke>`__

**See also**
`strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ object strokeRect(real *x*, real *y*, real *w*, real *h*)       |
+--------------------------------------------------------------------------+

Stroke the specified rectangle's path using the
`strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__,
`lineWidth </sdk/apps/qml/QtQuick/Context2D#lineWidth-prop>`__,
`lineJoin </sdk/apps/qml/QtQuick/Context2D#lineJoin-prop>`__, and (if
appropriate)
`miterLimit </sdk/apps/qml/QtQuick/Context2D#miterLimit-prop>`__
attributes.

**See also**
`strokeStyle </sdk/apps/qml/QtQuick/Context2D#strokeStyle-prop>`__,
`lineWidth </sdk/apps/qml/QtQuick/Context2D#lineWidth-prop>`__,
`lineJoin </sdk/apps/qml/QtQuick/Context2D#lineJoin-prop>`__, and
`miterLimit </sdk/apps/qml/QtQuick/Context2D#miterLimit-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ object                                                          |
| strokeText(`text </sdk/apps/qml/QtQuick/Context2D#text-method>`__, x, y) |
+--------------------------------------------------------------------------+

Strokes the given text at the given position.

**See also** `font </sdk/apps/qml/QtQuick/Context2D#font-prop>`__,
`textAlign </sdk/apps/qml/QtQuick/Context2D#textAlign-prop>`__,
`textBaseline </sdk/apps/qml/QtQuick/Context2D#textBaseline-prop>`__,
and `fillText </sdk/apps/qml/QtQuick/Context2D#fillText-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ object text(string *text*, real *x*, real *y*)                  |
+--------------------------------------------------------------------------+

Adds the given ``text`` to the path as a set of closed subpaths created
from the current context font supplied. The subpaths are positioned so
that the left end of the text's baseline lies at the point specified by
(``x``, ``y``).

| 

+--------------------------------------------------------------------------+
|        \ object transform(real *a*, real *b*, real *c*, real *d*, real   |
| *e*, real *f*)                                                           |
+--------------------------------------------------------------------------+

This method is very similar to
`setTransform() </sdk/apps/qml/QtQuick/Context2D#setTransform-method>`__,
but instead of replacing the old transform matrix, this method applies
the given tranform matrix to the current matrix by multiplying to it.

The
`setTransform </sdk/apps/qml/QtQuick/Context2D#setTransform-method>`__\ (a,
b, c, d, e, f) method actually resets the current transform to the
identity matrix, and then invokes the transform(a, b, c, d, e, f) method
with the same arguments.

**See also**
`setTransform() </sdk/apps/qml/QtQuick/Context2D#setTransform-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ object translate(real *x*, real *y*)                            |
+--------------------------------------------------------------------------+

Translates the origin of the canvas by a horizontal distance of *x*, and
a vertical distance of *y*, in coordinate space units.

Translating the origin enables you to draw patterns of different objects
on the canvas without having to measure the coordinates manually for
each shape.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-context.gif
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-startAngle.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-arcTo.png
.. |image3| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-bezierCurveTo.png
.. |image4| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-clip-complex.png
.. |image5| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-rotate.png
.. |image6| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-math-rotate.png
.. |image7| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-scale.png
.. |image8| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-math.png
.. |image9| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-scalex.png
.. |image10| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-skewx.png
.. |image11| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-translate.png
.. |image12| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-skewy.png
.. |image13| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-scaley.png
.. |image14| image:: /media/sdk/apps/qml/QtQuick/Context2D/images/qml-item-canvas-translatey.png

