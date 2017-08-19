QtQuick.ShaderEffect
====================

.. raw:: html

   <p>

Applies custom shaders to a rectangle More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ShaderEffect -->

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

blending : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cullMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fragmentShader : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

log : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mesh : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

supportsAtlasTextures : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

vertexShader : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ShaderEffect-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The ShaderEffect type applies a custom OpenGL vertex and fragment shader
to a rectangle. It allows you to write effects such as drop shadow,
blur, colorize and page curl directly in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two types of input to the vertexShader: uniform variables and
attributes. Some are predefined:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

uniform mat4 qt\_Matrix - combined transformation matrix, the product of
the matrices from the root item to this ShaderEffect, and an orthogonal
projection.

.. raw:: html

   </li>

.. raw:: html

   <li>

uniform float qt\_Opacity - combined opacity, the product of the
opacities from the root item to this ShaderEffect.

.. raw:: html

   </li>

.. raw:: html

   <li>

attribute vec4 qt\_Vertex - vertex position, the top-left vertex has
position (0, 0), the bottom-right (width, height).

.. raw:: html

   </li>

.. raw:: html

   <li>

attribute vec2 qt\_MultiTexCoord0 - texture coordinate, the top-left
coordinate is (0, 0), the bottom-right (1, 1). If supportsAtlasTextures
is true, coordinates will be based on position in the atlas instead.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

In addition, any property that can be mapped to an OpenGL Shading
Language (GLSL) type is available as a uniform variable. The following
list shows how properties are mapped to GLSL uniform variables:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

bool, int, qreal -> bool, int, float - If the type in the shader is not
the same as in QML, the value is converted automatically.

.. raw:: html

   </li>

.. raw:: html

   <li>

QColor -> vec4 - When colors are passed to the shader, they are first
premultiplied. Thus Qt.rgba(0.2, 0.6, 1.0, 0.5) becomes vec4(0.1, 0.3,
0.5, 0.5) in the shader, for example.

.. raw:: html

   </li>

.. raw:: html

   <li>

QRect, QRectF -> vec4 - Qt.rect(x, y, w, h) becomes vec4(x, y, w, h) in
the shader.

.. raw:: html

   </li>

.. raw:: html

   <li>

QPoint, QPointF, QSize, QSizeF -> vec2

.. raw:: html

   </li>

.. raw:: html

   <li>

QVector3D -> vec3

.. raw:: html

   </li>

.. raw:: html

   <li>

QVector4D -> vec4

.. raw:: html

   </li>

.. raw:: html

   <li>

QTransform -> mat3

.. raw:: html

   </li>

.. raw:: html

   <li>

QMatrix4x4 -> mat4

.. raw:: html

   </li>

.. raw:: html

   <li>

QQuaternion -> vec4, scalar value is w.

.. raw:: html

   </li>

.. raw:: html

   <li>

Image, ShaderEffectSource -> sampler2D - Origin is in the top-left
corner, and the color values are premultiplied.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The QML scene graph back-end may choose to allocate textures in texture
atlases. If a texture allocated in an atlas is passed to a ShaderEffect,
it is by default copied from the texture atlas into a stand-alone
texture so that the texture coordinates span from 0 to 1, and you get
the expected wrap modes. However, this will increase the memory usage.
To avoid the texture copy, set supportsAtlasTextures for simple shaders
using qt\_MultiTexCoord0, or for each "uniform sampler2D <name>" declare
a "uniform vec4 qt\_SubRect\_<name>" which will be assigned the
texture's normalized source rectangle. For stand-alone textures, the
source rectangle is [0, 1]x[0, 1]. For textures in an atlas, the source
rectangle corresponds to the part of the texture atlas where the texture
is stored. The correct way to calculate the texture coordinate for a
texture called "source" within a texture atlas is
"qt\_SubRect\_source.xy + qt\_SubRect\_source.zw \* qt\_MultiTexCoord0".

.. raw:: html

   </p>

.. raw:: html

   <p>

The output from the fragmentShader should be premultiplied. If blending
is enabled, source-over blending is used. However, additive blending can
be achieved by outputting zero in the alpha channel.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">img</span>; <span class="type">sourceSize</span> { <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> } <span class="name">source</span>: <span class="string">&quot;qt-logo.png&quot;</span> }
   <span class="type"><a href="index.html">ShaderEffect</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   property <span class="type">variant</span> <span class="name">src</span>: <span class="name">img</span>
   <span class="name">vertexShader</span>: <span class="string">&quot;
   uniform highp mat4 qt_Matrix;
   attribute highp vec4 qt_Vertex;
   attribute highp vec2 qt_MultiTexCoord0;
   varying highp vec2 coord;
   void main() {
   coord = qt_MultiTexCoord0;
   gl_Position = qt_Matrix * qt_Vertex;
   }&quot;</span>
   <span class="name">fragmentShader</span>: <span class="string">&quot;
   varying highp vec2 coord;
   uniform sampler2D src;
   uniform lowp float qt_Opacity;
   void main() {
   lowp vec4 tex = texture2D(src, coord);
   gl_FragColor = vec4(vec3(dot(tex.rgb, vec3(0.344, 0.5, 0.156))), tex.a) * qt_Opacity;
   }&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

By default, the ShaderEffect consists of four vertices, one for each
corner. For non-linear vertex transformations, like page curl, you can
specify a fine grid of vertices by specifying a mesh resolution.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="shadereffect-and-item-layers">

ShaderEffect and Item Layers

.. raw:: html

   </h2>

.. raw:: html

   <p>

The ShaderEffect type can be combined with layered items.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Layer with effect disabled

.. raw:: html

   </td>

.. raw:: html

   <td>

Layer with effect enabled

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">layerRoot</span>
   <span class="name">layer</span>.enabled: <span class="number">true</span>
   <span class="name">layer</span>.effect: <span class="name">ShaderEffect</span> {
   <span class="name">fragmentShader</span>: <span class="string">&quot;
   uniform lowp sampler2D source; // this item
   uniform lowp float qt_Opacity; // inherited opacity of this item
   varying highp vec2 qt_TexCoord0;
   void main() {
   lowp vec4 p = texture2D(source, qt_TexCoord0);
   lowp float g = dot(p.xyz, vec3(0.344, 0.5, 0.156));
   gl_FragColor = vec4(g, g, g, p.a) * qt_Opacity;
   }&quot;</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

It is also possible to combine multiple layered items:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">gradientRect</span>;
   <span class="name">width</span>: <span class="number">10</span>
   <span class="name">height</span>: <span class="number">10</span>
   <span class="name">gradient</span>: <span class="name">Gradient</span> {
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0</span>; <span class="name">color</span>: <span class="string">&quot;white&quot;</span> }
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1</span>; <span class="name">color</span>: <span class="string">&quot;steelblue&quot;</span> }
   }
   <span class="name">visible</span>: <span class="number">false</span>; <span class="comment">// should not be visible on screen.</span>
   <span class="name">layer</span>.enabled: <span class="number">true</span>;
   <span class="name">layer</span>.smooth: <span class="number">true</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">textItem</span>
   <span class="name">font</span>.pixelSize: <span class="number">48</span>
   <span class="name">text</span>: <span class="string">&quot;Gradient Text&quot;</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">layer</span>.enabled: <span class="number">true</span>
   <span class="comment">// This item should be used as the 'mask'</span>
   <span class="name">layer</span>.samplerName: <span class="string">&quot;maskSource&quot;</span>
   <span class="name">layer</span>.effect: <span class="name">ShaderEffect</span> {
   property <span class="type">var</span> <span class="name">colorSource</span>: <span class="name">gradientRect</span>;
   <span class="name">fragmentShader</span>: <span class="string">&quot;
   uniform lowp sampler2D colorSource;
   uniform lowp sampler2D maskSource;
   uniform lowp float qt_Opacity;
   varying highp vec2 qt_TexCoord0;
   void main() {
   gl_FragColor =
   texture2D(colorSource, qt_TexCoord0)
   * texture2D(maskSource, qt_TexCoord0).a
   * qt_Opacity;
   }
   &quot;</span>
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The Qt Graphical Effects module contains several ready-made effects for
using with Qt Quick applications.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Scene Graph textures have origin in the top-left corner rather
than bottom-left which is common in OpenGL.

.. raw:: html

   </p>

.. raw:: html

   <p>

For information about the GLSL version being used, see
QtQuick::OpenGLInfo.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Item Layers.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ShaderEffect -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$blending -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="blending-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

blending : bool

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

If this property is true, the output from the fragmentShader is blended
with the background using source-over blend mode. If false, the
background is disregarded. Blending decreases the performance, so you
should set this property to false when blending is not needed. The
default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@blending -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cullMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cullMode : enumeration

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

This property defines which sides of the item should be visible.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ShaderEffect.NoCulling - Both sides are visible

.. raw:: html

   </li>

.. raw:: html

   <li>

ShaderEffect.BackFaceCulling - only front side is visible

.. raw:: html

   </li>

.. raw:: html

   <li>

ShaderEffect.FrontFaceCulling - only back side is visible

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default is NoCulling.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cullMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fragmentShader-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fragmentShader : string

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

This property holds the fragment shader's GLSL source code. The default
shader passes the texture coordinate along to the fragment shader as
"varying highp vec2 qt\_TexCoord0".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fragmentShader -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="log-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

log : string

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

This property holds a log of warnings and errors from the latest attempt
at compiling and linking the OpenGL shader program. It is updated at the
same time status is set to Compiled or Error.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also status.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@log -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mesh-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mesh : variant

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

This property defines the mesh used to draw the ShaderEffect. It can
hold any GridMesh object. If a size value is assigned to this property,
the ShaderEffect implicitly uses a GridMesh with the value as mesh
resolution. By default, this property is the size 1x1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also GridMesh.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mesh -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enumeration

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

This property tells the current status of the OpenGL shader program.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ShaderEffect.Compiled - the shader program was successfully compiled and
linked.

.. raw:: html

   </li>

.. raw:: html

   <li>

ShaderEffect.Uncompiled - the shader program has not yet been compiled.

.. raw:: html

   </li>

.. raw:: html

   <li>

ShaderEffect.Error - the shader program failed to compile or link.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When setting the fragment or vertex shader source code, the status will
become Uncompiled. The first time the ShaderEffect is rendered with new
shader source code, the shaders are compiled and linked, and the status
is updated to Compiled or Error.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also log.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supportsAtlasTextures-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

supportsAtlasTextures : bool

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

Set this property true to indicate that the ShaderEffect is able to use
the default source texture without first removing it from an atlas. In
this case the range of qt\_MultiTexCoord0 will based on the position of
the texture within the atlas, rather than (0,0) to (1,1).

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting this to true may enable some optimizations.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtQuick 2.4.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@supportsAtlasTextures -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="vertexShader-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

vertexShader : string

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

This property holds the vertex shader's GLSL source code. The default
shader expects the texture coordinate to be passed from the vertex
shader as "varying highp vec2 qt\_TexCoord0", and it samples from a
sampler2D named "source".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@vertexShader -->


