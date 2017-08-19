QtQuick.Context2D
=================

.. raw:: html

   <p>

Provides 2D context for shapes on a Canvas item More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Context2D -->

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

canvas : QtQuick::Canvas

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fillRule : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fillStyle : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

globalAlpha : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

globalCompositeOperation : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lineCap : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lineJoin : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

lineWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

miterLimit : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shadowBlur : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shadowColor : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shadowOffsetX : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shadowOffsetY : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

strokeStyle : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

textAlign : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

textBaseline : string

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

object arc(real x, real y, real radius, real startAngle, real endAngle,
bool anticlockwise)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object arcTo(real x1, real y1, real x2, real y2, real radius)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object beginPath()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object bezierCurveTo(real cp1x, real cp1y, real cp2x, real cp2y, real x,
real y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object clearRect(real x, real y, real w, real h)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object clip()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object closePath()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object createConicalGradient(real x, real y, real angle)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

CanvasImageData createImageData(Url imageUrl)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

CanvasImageData createImageData(CanvasImageData imageData)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

CanvasImageData createImageData(real sw, real sh)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object createLinearGradient(real x0, real y0, real x1, real y1)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

variant createPattern(Image image, string repetition)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

variant createPattern(color color, enumeration patternMode)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object createRadialGradient(real x0, real y0, real r0, real x1, real y1,
real r1)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drawImage(variant image, real sx, real sy, real sw, real sh, real dx,
real dy, real dw, real dh)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drawImage(variant image, real dx, real dy, real dw, real dh)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drawImage(variant image, real dx, real dy)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object ellipse(real x, real y, real w, real h)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object fill()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object fillRect(real x, real y, real w, real h)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object fillText(text, x, y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

CanvasImageData getImageData(real sx, real sy, real sw, real sh)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object isPointInPath(real x, real y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object lineTo(real x, real y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object measureText(text)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object moveTo(real x, real y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object putImageData(CanvasImageData imageData, real dx, real dy, real
dirtyX, real dirtyY, real dirtyWidth, real dirtyHeight)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object quadraticCurveTo(real cpx, real cpy, real x, real y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object rect(real x, real y, real w, real h)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object reset()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object resetTransform()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object restore()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object rotate(real angle)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object roundedRect(real x, real y, real w, real h, real xRadius, real
yRadius)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object save()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object scale(real x, real y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object setTransform(real a, real b, real c, real d, real e, real f)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object shear(real sh, real sv)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object stroke()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object strokeRect(real x, real y, real w, real h)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object strokeText(text, x, y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object text(string text, real x, real y)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object transform(real a, real b, real c, real d, real e, real f)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object translate(real x, real y)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Context2D-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Context2D object can be created by Canvas item's getContext()
method:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Canvas {
   id:canvas
   onPaint:{
   var ctx <span class="operator">=</span> canvas<span class="operator">.</span>getContext(<span class="char">'2d'</span>);
   <span class="comment">//...</span>
   }
   }</pre>

.. raw:: html

   <p>

The Context2D API implements the same W3C Canvas 2D Context API standard
with some enhanced features.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Context2D API provides the rendering context which defines the
methods and attributes needed to draw on the Canvas item. The following
assigns the canvas rendering context to a context variable:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">var context <span class="operator">=</span> mycanvas<span class="operator">.</span>getContext(<span class="string">&quot;2d&quot;</span>)</pre>

.. raw:: html

   <p>

The Context2D API renders the canvas as a coordinate system whose origin
(0,0) is at the top left corner, as shown in the figure below.
Coordinates increase along the x axis from left to right and along the y
axis from top to bottom of the canvas.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Context2D -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$canvas -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="canvas-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

canvas : QtQuick::Canvas

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

Holds the canvas item that the context paints on.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@canvas -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fillRule-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fillRule : enumeration

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

Holds the current fill rule used for filling shapes. The following fill
rules supported:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.OddEvenFill

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.WindingFill

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: Unlike the QPainterPath, the Canvas API uses the winding fill as
the default fill rule. The fillRule property is part of the context
rendering state.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also fillStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fillRule -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fillStyle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fillStyle : variant

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

Holds the current style used for filling shapes. The style can be either
a string containing a CSS color, a CanvasGradient or CanvasPattern
object. Invalid values are ignored. This property accepts several color
syntaxes:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

'rgb(red, green, blue)' - for example: 'rgb(255, 100, 55)' or 'rgb(100%,
70%, 30%)'

.. raw:: html

   </li>

.. raw:: html

   <li>

'rgba(red, green, blue, alpha)' - for example: 'rgb(255, 100, 55, 1.0)'
or 'rgb(100%, 70%, 30%, 0.5)'

.. raw:: html

   </li>

.. raw:: html

   <li>

'hsl(hue, saturation, lightness)'

.. raw:: html

   </li>

.. raw:: html

   <li>

'hsla(hue, saturation, lightness, alpha)'

.. raw:: html

   </li>

.. raw:: html

   <li>

'#RRGGBB' - for example: '#00FFCC'

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.rgba(red, green, blue, alpha) - for example: Qt.rgba(0.3, 0.7, 1,
1.0)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If the fillStyle or strokeStyle is assigned many times in a loop, the
last Qt.rgba() syntax should be chosen, as it has the best performance,
because it's already a valid QColor value, does not need to be parsed
everytime.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is '#000000'.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also createLinearGradient(), createRadialGradient(),
createPattern(), and strokeStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fillStyle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font : string

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

Holds the current font settings.

.. raw:: html

   </p>

.. raw:: html

   <p>

A subset of the w3C 2d context standard for font is supported:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

font-style (optional): normal \| italic \| oblique

.. raw:: html

   </li>

.. raw:: html

   <li>

font-variant (optional): normal \| small-caps

.. raw:: html

   </li>

.. raw:: html

   <li>

font-weight (optional): normal \| bold \| 0 ... 99

.. raw:: html

   </li>

.. raw:: html

   <li>

font-size: Npx \| Npt (where N is a positive number)

.. raw:: html

   </li>

.. raw:: html

   <li>

font-family: See
http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: The font-size and font-family properties are mandatory and must be
in the order they are shown in above. In addition, a font family with
spaces in its name must be quoted.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default font value is "10px sans-serif".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="globalAlpha-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

globalAlpha : real

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

Holds the current alpha value applied to rendering operations. The value
must be in the range from 0.0 (fully transparent) to 1.0 (fully opaque).
The default value is 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@globalAlpha -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="globalCompositeOperation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

globalCompositeOperation : string

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

Holds the current the current composition operation, from the list
below:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

source-atop - A atop B. Display the source image wherever both images
are opaque. Display the destination image wherever the destination image
is opaque but the source image is transparent. Display transparency
elsewhere.

.. raw:: html

   </li>

.. raw:: html

   <li>

source-in - A in B. Display the source image wherever both the source
image and destination image are opaque. Display transparency elsewhere.

.. raw:: html

   </li>

.. raw:: html

   <li>

source-out - A out B. Display the source image wherever the source image
is opaque and the destination image is transparent. Display transparency
elsewhere.

.. raw:: html

   </li>

.. raw:: html

   <li>

source-over - (default) A over B. Display the source image wherever the
source image is opaque. Display the destination image elsewhere.

.. raw:: html

   </li>

.. raw:: html

   <li>

destination-atop - B atop A. Same as source-atop but using the
destination image instead of the source image and vice versa.

.. raw:: html

   </li>

.. raw:: html

   <li>

destination-in - B in A. Same as source-in but using the destination
image instead of the source image and vice versa.

.. raw:: html

   </li>

.. raw:: html

   <li>

destination-out - B out A. Same as source-out but using the destination
image instead of the source image and vice versa.

.. raw:: html

   </li>

.. raw:: html

   <li>

destination-over - B over A. Same as source-over but using the
destination image instead of the source image and vice versa.

.. raw:: html

   </li>

.. raw:: html

   <li>

lighter - A plus B. Display the sum of the source image and destination
image, with color values approaching 255 (100%) as a limit.

.. raw:: html

   </li>

.. raw:: html

   <li>

copy - A (B is ignored). Display the source image instead of the
destination image.

.. raw:: html

   </li>

.. raw:: html

   <li>

xor - A xor B. Exclusive OR of the source image and destination image.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Additionally, this property also accepts the compositon modes listed in
QPainter::CompositionMode. According to the W3C standard, these
extension composition modes are provided as "vendorName-operationName"
syntax, for example: QPainter::CompositionMode\_Exclusion is provided as
"qt-exclusion".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@globalCompositeOperation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineCap-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lineCap : string

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

Holds the current line cap style. The possible line cap styles are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

butt - the end of each line has a flat edge perpendicular to the
direction of the line, this is the default line cap value.

.. raw:: html

   </li>

.. raw:: html

   <li>

round - a semi-circle with the diameter equal to the width of the line
must then be added on to the end of the line.

.. raw:: html

   </li>

.. raw:: html

   <li>

square - a rectangle with the length of the line width and the width of
half the line width, placed flat against the edge perpendicular to the
direction of the line.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Other values are ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineCap -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineJoin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lineJoin : string

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

Holds the current line join style. A join exists at any point in a
subpath shared by two consecutive lines. When a subpath is closed, then
a join also exists at its first point (equivalent to its last point)
connecting the first and last lines in the subpath.

.. raw:: html

   </p>

.. raw:: html

   <p>

The possible line join styles are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

bevel - this is all that is rendered at joins.

.. raw:: html

   </li>

.. raw:: html

   <li>

round - a filled arc connecting the two aforementioned corners of the
join, abutting (and not overlapping) the aforementioned triangle, with
the diameter equal to the line width and the origin at the point of the
join, must be rendered at joins.

.. raw:: html

   </li>

.. raw:: html

   <li>

miter - a second filled triangle must (if it can given the miter length)
be rendered at the join, this is the default line join style.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Other values are ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineJoin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lineWidth : real

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

Holds the current line width. Values that are not finite values greater
than zero are ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="miterLimit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

miterLimit : real

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

Holds the current miter limit ratio. The default miter limit value is
10.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@miterLimit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shadowBlur-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

shadowBlur : real

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

Holds the current level of blur applied to shadows

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shadowBlur -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shadowColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

shadowColor : string

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

Holds the current shadow color.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shadowColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shadowOffsetX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

shadowOffsetX : qreal

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

Holds the current shadow offset in the positive horizontal distance.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also shadowOffsetY.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shadowOffsetX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shadowOffsetY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

shadowOffsetY : qreal

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

Holds the current shadow offset in the positive vertical distance.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also shadowOffsetX.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shadowOffsetY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="strokeStyle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

strokeStyle : variant

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

Holds the current color or style to use for the lines around shapes, The
style can be either a string containing a CSS color, a CanvasGradient or
CanvasPattern object. Invalid values are ignored.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is '#000000'.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also createLinearGradient(), createRadialGradient(),
createPattern(), and fillStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@strokeStyle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="textAlign-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

textAlign : string

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

Holds the current text alignment settings. The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

start

.. raw:: html

   </li>

.. raw:: html

   <li>

end

.. raw:: html

   </li>

.. raw:: html

   <li>

left

.. raw:: html

   </li>

.. raw:: html

   <li>

right

.. raw:: html

   </li>

.. raw:: html

   <li>

center

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Other values are ignored. The default value is "start".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@textAlign -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="textBaseline-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

textBaseline : string

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

Holds the current baseline alignment settings. The possible values are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

top

.. raw:: html

   </li>

.. raw:: html

   <li>

hanging

.. raw:: html

   </li>

.. raw:: html

   <li>

middle

.. raw:: html

   </li>

.. raw:: html

   <li>

alphabetic

.. raw:: html

   </li>

.. raw:: html

   <li>

ideographic

.. raw:: html

   </li>

.. raw:: html

   <li>

bottom

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Other values are ignored. The default value is "alphabetic".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@textBaseline -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$arc -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="arc-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object arc(real x, real y, real radius, real startAngle, real endAngle,
bool anticlockwise)

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

Adds an arc to the current subpath that lies on the circumference of the
circle whose center is at the point (x, y) and whose radius is radius.

.. raw:: html

   </p>

.. raw:: html

   <p>

Both startAngle and endAngle are measured from the x-axis in radians.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

[Missing image qml-item-canvas-arc.png]

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The anticlockwise parameter is true for each arc in the figure above
because they are all drawn in the anticlockwise direction.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also arcTo and W3C's 2D Context Standard for arc().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@arc -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="arcTo-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object arcTo(real x1, real y1, real x2, real y2, real radius)

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

Adds an arc with the given control points and radius to the current
subpath, connected to the previous point by a straight line. To draw an
arc, you begin with the same steps you followed to create a line:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Call the beginPath() method to set a new path.

.. raw:: html

   </li>

.. raw:: html

   <li>

Call the moveTo(x, y) method to set your starting position on the canvas
at the point (x, y).

.. raw:: html

   </li>

.. raw:: html

   <li>

To draw an arc or circle, call the arcTo(x1, y1, x2, y2, radius) method.
This adds an arc with starting point (x1, y1), ending point (x2, y2),
and radius to the current subpath and connects it to the previous
subpath by a straight line.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

See also arc and W3C's 2D Context Standard for arcTo().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@arcTo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="beginPath-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object beginPath()

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

Resets the current path to a new path.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@beginPath -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="bezierCurveTo-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object bezierCurveTo(real cp1x, real cp1y, real cp2x, real cp2y, real x,
real y)

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

Adds a cubic bezier curve between the current position and the given
endPoint using the control points specified by (cp1x, cp1y), and (cp2x,
cp2y). After the curve is added, the current position is updated to be
at the end point (x, y) of the curve. The following code produces the
path shown below:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">ctx<span class="operator">.</span>strokeStyle <span class="operator">=</span> <span class="type">Qt</span><span class="operator">.</span>rgba(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">1</span>);
   ctx<span class="operator">.</span>lineWidth <span class="operator">=</span> <span class="number">1</span>;
   ctx<span class="operator">.</span><a href="#beginPath-method">beginPath</a>();
   ctx<span class="operator">.</span><a href="#moveTo-method">moveTo</a>(<span class="number">20</span><span class="operator">,</span> <span class="number">0</span>);<span class="comment">//start point</span>
   ctx<span class="operator">.</span>bezierCurveTo(<span class="operator">-</span><span class="number">10</span><span class="operator">,</span> <span class="number">90</span><span class="operator">,</span> <span class="number">210</span><span class="operator">,</span> <span class="number">90</span><span class="operator">,</span> <span class="number">180</span><span class="operator">,</span> <span class="number">0</span>);
   ctx<span class="operator">.</span><a href="#stroke-method">stroke</a>();</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

See also W3C 2d context standard for bezierCurveTo and The beautiful
flower demo by using bezierCurveTo.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bezierCurveTo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clearRect-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object clearRect(real x, real y, real w, real h)

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

Clears all pixels on the canvas in the given rectangle to transparent
black.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clearRect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clip-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object clip()

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

Creates the clipping region from the current path. Any parts of the
shape outside the clipping path are not displayed. To create a complex
shape using the clip() method:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

Call the context.beginPath() method to set the clipping path.

.. raw:: html

   </li>

.. raw:: html

   <li>

Define the clipping path by calling any combination of the lineTo,
arcTo, arc, moveTo, etc and closePath methods.

.. raw:: html

   </li>

.. raw:: html

   <li>

Call the context.clip() method.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

The new shape displays. The following shows how a clipping path can
modify how an image displays:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

See also beginPath(), closePath(), stroke(), fill(), and W3C 2d context
standard for clip.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clip -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="closePath-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object closePath()

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

Closes the current subpath by drawing a line to the beginning of the
subpath, automatically starting a new path. The current point of the new
path is the previous subpath's first point.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also W3C 2d context standard for closePath.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@closePath -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createConicalGradient-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object createConicalGradient(real x, real y, real angle)

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

Returns a CanvasGradient object that represents a conical gradient that
interpolate colors counter-clockwise around a center point (x, y) with
start angle angle in units of radians.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also CanvasGradient::addColorStop(), createLinearGradient(),
createRadialGradient(), createPattern(), fillStyle, and strokeStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createConicalGradient -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createImageData-method-3">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

CanvasImageData createImageData(Url imageUrl)

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

Creates a CanvasImageData object with the given image loaded from
imageUrl.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The imageUrl must be already loaded before this function call,
otherwise an empty CanvasImageData obect will be returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Canvas::loadImage(), QtQuick::Canvas::unloadImage(), and
QtQuick::Canvas::isImageLoaded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createImageData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createImageData-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

CanvasImageData createImageData(CanvasImageData imageData)

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

Creates a CanvasImageData object with the same dimensions as the
argument.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createImageData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createImageData-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

CanvasImageData createImageData(real sw, real sh)

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

Creates a CanvasImageData object with the given dimensions(sw, sh).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createImageData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createLinearGradient-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object createLinearGradient(real x0, real y0, real x1, real y1)

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

Returns a CanvasGradient object that represents a linear gradient that
transitions the color along a line between the start point (x0, y0) and
the end point (x1, y1).

.. raw:: html

   </p>

.. raw:: html

   <p>

A gradient is a smooth transition between colors. There are two types of
gradients: linear and radial. Gradients must have two or more color
stops, representing color shifts positioned from 0 to 1 between to the
gradient's starting and end points or circles.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also CanvasGradient::addColorStop(), createRadialGradient(),
createConicalGradient(), createPattern(), fillStyle, and strokeStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createLinearGradient -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createPattern-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

variant createPattern(Image image, string repetition)

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

Returns a CanvasPattern object that uses the given image and repeats in
the direction(s) given by the repetition argument.

.. raw:: html

   </p>

.. raw:: html

   <p>

The image parameter must be a valid Image item, a valid CanvasImageData
object or loaded image url, if there is no image data, throws an
INVALID\_STATE\_ERR exception.

.. raw:: html

   </p>

.. raw:: html

   <p>

The allowed values for repetition are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

"repeat" - both directions

.. raw:: html

   </li>

.. raw:: html

   <li>

"repeat-x - horizontal only

.. raw:: html

   </li>

.. raw:: html

   <li>

"repeat-y" - vertical only

.. raw:: html

   </li>

.. raw:: html

   <li>

"no-repeat" - neither

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If the repetition argument is empty or null, the value "repeat" is used.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also strokeStyle and fillStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createPattern -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createPattern-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

variant createPattern(color color, enumeration patternMode)

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

This is a overload function. Returns a CanvasPattern object that uses
the given color and patternMode. The valid pattern modes are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.SolidPattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Dense1Pattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Dense2Pattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Dense3Pattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Dense4Pattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Dense5Pattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Dense6Pattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Dense7Pattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.HorPattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.VerPattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.CrossPattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.BDiagPattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.FDiagPattern

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.DiagCrossPattern

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Qt::BrushStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createPattern -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createRadialGradient-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object createRadialGradient(real x0, real y0, real r0, real x1, real y1,
real r1)

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

Returns a CanvasGradient object that represents a radial gradient that
paints along the cone given by the start circle with origin (x0, y0) and
radius r0, and the end circle with origin (x1, y1) and radius r1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also CanvasGradient::addColorStop(), createLinearGradient(),
createConicalGradient(), createPattern(), fillStyle, and strokeStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createRadialGradient -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="drawImage-method-3">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

drawImage(variant image, real sx, real sy, real sw, real sh, real dx,
real dy, real dw, real dh)

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

This is an overloaded function. Draws the given item as image from
source point (sx, sy) and source width sw, source height sh onto the
canvas at point (dx, dy) and with width dw, height dh.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The image type can be an Image or Canvas item, an image url or a
CanvasImageData object. When given as Image item, if the image isn't
fully loaded, this method draws nothing. When given as url string, the
image should be loaded by calling Canvas item's Canvas::loadImage()
method first. This image been drawing is subject to the current context
clip path, even the given image is a CanvasImageData object.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also CanvasImageData, Image, Canvas::loadImage(),
Canvas::isImageLoaded, Canvas::imageLoaded, and W3C 2d context standard
for drawImage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@drawImage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="drawImage-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

drawImage(variant image, real dx, real dy, real dw, real dh)

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

This is an overloaded function. Draws the given item as image onto the
canvas at point (dx, dy) and with width dw, height dh.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The image type can be an Image item, an image url or a
CanvasImageData object. When given as Image item, if the image isn't
fully loaded, this method draws nothing. When given as url string, the
image should be loaded by calling Canvas item's Canvas::loadImage()
method first. This image been drawing is subject to the current context
clip path, even the given image is a CanvasImageData object.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also CanvasImageData, Image, Canvas::loadImage(),
Canvas::isImageLoaded, Canvas::imageLoaded, and W3C 2d context standard
for drawImage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@drawImage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="drawImage-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

drawImage(variant image, real dx, real dy)

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

Draws the given image on the canvas at position (dx, dy). Note: The
image type can be an Image item, an image url or a CanvasImageData
object. When given as Image item, if the image isn't fully loaded, this
method draws nothing. When given as url string, the image should be
loaded by calling Canvas item's Canvas::loadImage() method first. This
image been drawing is subject to the current context clip path, even the
given image is a CanvasImageData object.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also CanvasImageData, Image, Canvas::loadImage,
Canvas::isImageLoaded, Canvas::imageLoaded, and W3C 2d context standard
for drawImage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@drawImage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ellipse-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object ellipse(real x, real y, real w, real h)

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

Creates an ellipse within the bounding rectangle defined by its top-left
corner at (x, y), width w and height h, and adds it to the path as a
closed subpath.

.. raw:: html

   </p>

.. raw:: html

   <p>

The ellipse is composed of a clockwise curve, starting and finishing at
zero degrees (the 3 o'clock position).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ellipse -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fill-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object fill()

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

Fills the subpaths with the current fill style.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also W3C 2d context standard for fill and fillStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fill -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fillRect-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object fillRect(real x, real y, real w, real h)

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

Paint the specified rectangular area using the fillStyle.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also fillStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fillRect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fillText-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object fillText(text, x, y)

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

Fills the given text at the given position.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also font, textAlign, textBaseline, and strokeText.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fillText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="getImageData-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

CanvasImageData getImageData(real sx, real sy, real sw, real sh)

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

Returns an CanvasImageData object containing the image data for the
given rectangle of the canvas.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@getImageData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isPointInPath-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object isPointInPath(real x, real y)

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

Returns true if the given point is in the current path.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also W3C 2d context standard for isPointInPath.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isPointInPath -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lineTo-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object lineTo(real x, real y)

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

Draws a line from the current position to the point (x, y).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@lineTo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="measureText-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object measureText(text)

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

Returns an object with a width property, whose value is equivalent to
calling QFontMetrics::width() with the given text in the current font.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@measureText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moveTo-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object moveTo(real x, real y)

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

Creates a new subpath with the given point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moveTo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="putImageData-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object putImageData(CanvasImageData imageData, real dx, real dy, real
dirtyX, real dirtyY, real dirtyWidth, real dirtyHeight)

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

Paints the data from the given ImageData object onto the canvas. If a
dirty rectangle (dirtyX, dirtyY, dirtyWidth, dirtyHeight) is provided,
only the pixels from that rectangle are painted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@putImageData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="quadraticCurveTo-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object quadraticCurveTo(real cpx, real cpy, real x, real y)

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

Adds a quadratic bezier curve between the current point and the endpoint
(x, y) with the control point specified by (cpx, cpy).

.. raw:: html

   </p>

.. raw:: html

   <p>

See W3C 2d context standard for quadraticCurveTo

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@quadraticCurveTo -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rect-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object rect(real x, real y, real w, real h)

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

Adds a rectangle at position (x, y), with the given width w and height
h, as a closed subpath.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reset-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object reset()

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

Resets the context state and properties to the default values.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reset -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resetTransform-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object resetTransform()

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

Reset the transformation matrix to the default value (equivalent to
calling setTransform(1, 0, 0, 1, 0, 0)).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also transform(), setTransform(), and reset().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resetTransform -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="restore-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object restore()

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

Pops the top state on the stack, restoring the context to that state.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also save().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@restore -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rotate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object rotate(real angle)

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

Rotate the canvas around the current origin by angle in radians and
clockwise direction.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">ctx<span class="operator">.</span>rotate(Math<span class="operator">.</span>PI<span class="operator">/</span><span class="number">2</span>);</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The rotation transformation matrix is as follows:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

where the angle of rotation is in radians.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="roundedRect-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object roundedRect(real x, real y, real w, real h, real xRadius, real
yRadius)

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

Adds the given rectangle rect with rounded corners to the path. The
xRadius and yRadius arguments specify the radius of the ellipses
defining the corners of the rounded rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@roundedRect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="save-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object save()

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

Pushes the current state onto the state stack.

.. raw:: html

   </p>

.. raw:: html

   <p>

Before changing any state attributes, you should save the current state
for future reference. The context maintains a stack of drawing states.
Each state consists of the current transformation matrix, clipping
region, and values of the following attributes:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

strokeStyle

.. raw:: html

   </li>

.. raw:: html

   <li>

fillStyle

.. raw:: html

   </li>

.. raw:: html

   <li>

fillRule

.. raw:: html

   </li>

.. raw:: html

   <li>

globalAlpha

.. raw:: html

   </li>

.. raw:: html

   <li>

lineWidth

.. raw:: html

   </li>

.. raw:: html

   <li>

lineCap

.. raw:: html

   </li>

.. raw:: html

   <li>

lineJoin

.. raw:: html

   </li>

.. raw:: html

   <li>

miterLimit

.. raw:: html

   </li>

.. raw:: html

   <li>

shadowOffsetX

.. raw:: html

   </li>

.. raw:: html

   <li>

shadowOffsetY

.. raw:: html

   </li>

.. raw:: html

   <li>

shadowBlur

.. raw:: html

   </li>

.. raw:: html

   <li>

shadowColor

.. raw:: html

   </li>

.. raw:: html

   <li>

globalCompositeOperation

.. raw:: html

   </li>

.. raw:: html

   <li>

font

.. raw:: html

   </li>

.. raw:: html

   <li>

textAlign

.. raw:: html

   </li>

.. raw:: html

   <li>

textBaseline

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The current path is NOT part of the drawing state. The path can be reset
by invoking the beginPath() method.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@save -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="scale-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object scale(real x, real y)

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

Increases or decreases the size of each unit in the canvas grid by
multiplying the scale factors to the current tranform matrix. x is the
scale factor in the horizontal direction and y is the scale factor in
the vertical direction.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following code doubles the horizontal size of an object drawn on the
canvas and halves its vertical size:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">ctx<span class="operator">.</span>scale(<span class="number">2.0</span><span class="operator">,</span> <span class="number">0.5</span>);</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@scale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setTransform-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object setTransform(real a, real b, real c, real d, real e, real f)

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

Changes the transformation matrix to the matrix given by the arguments
as described below.

.. raw:: html

   </p>

.. raw:: html

   <p>

Modifying the transformation matrix directly enables you to perform
scaling, rotating, and translating transformations in a single step.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each point on the canvas is multiplied by the matrix before anything is
drawn. The HTML Canvas 2D Context specification defines the
transformation matrix as:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

where:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

a is the scale factor in the horizontal (x) direction

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

c is the skew factor in the x direction

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

e is the translation in the x direction

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

b is the skew factor in the y (vertical) direction

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

d is the scale factor in the y direction

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

f is the translation in the y direction

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

the last row remains constant

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The scale factors and skew factors are multiples; e and f are coordinate
space units, just like the units in the translate(x,y) method.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also transform().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setTransform -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shear-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object shear(real sh, real sv)

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

Shears the transformation matrix by sh in the horizontal direction and
sv in the vertical direction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shear -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stroke-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object stroke()

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

Strokes the subpaths with the current stroke style.

.. raw:: html

   </p>

.. raw:: html

   <p>

See W3C 2d context standard for stroke

.. raw:: html

   </p>

.. raw:: html

   <p>

See also strokeStyle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stroke -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="strokeRect-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object strokeRect(real x, real y, real w, real h)

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

Stroke the specified rectangle's path using the strokeStyle, lineWidth,
lineJoin, and (if appropriate) miterLimit attributes.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also strokeStyle, lineWidth, lineJoin, and miterLimit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@strokeRect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="strokeText-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object strokeText(text, x, y)

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

Strokes the given text at the given position.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also font, textAlign, textBaseline, and fillText.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@strokeText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="text-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object text(string text, real x, real y)

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

Adds the given text to the path as a set of closed subpaths created from
the current context font supplied. The subpaths are positioned so that
the left end of the text's baseline lies at the point specified by (x,
y).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="transform-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object transform(real a, real b, real c, real d, real e, real f)

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

This method is very similar to setTransform(), but instead of replacing
the old transform matrix, this method applies the given tranform matrix
to the current matrix by multiplying to it.

.. raw:: html

   </p>

.. raw:: html

   <p>

The setTransform(a, b, c, d, e, f) method actually resets the current
transform to the identity matrix, and then invokes the transform(a, b,
c, d, e, f) method with the same arguments.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also setTransform().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@transform -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="translate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object translate(real x, real y)

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

Translates the origin of the canvas by a horizontal distance of x, and a
vertical distance of y, in coordinate space units.

.. raw:: html

   </p>

.. raw:: html

   <p>

Translating the origin enables you to draw patterns of different objects
on the canvas without having to measure the coordinates manually for
each shape.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@translate -->


