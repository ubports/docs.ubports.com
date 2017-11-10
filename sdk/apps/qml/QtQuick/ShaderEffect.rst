.. _sdk_qtquick_shadereffect:

QtQuick ShaderEffect
====================

Applies custom shaders to a rectangle

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`blending <sdk_qtquick_shadereffect_blending>` : bool
-  :ref:`cullMode <sdk_qtquick_shadereffect_cullMode>` : enumeration
-  :ref:`fragmentShader <sdk_qtquick_shadereffect_fragmentShader>` : string
-  :ref:`log <sdk_qtquick_shadereffect_log>` : string
-  :ref:`mesh <sdk_qtquick_shadereffect_mesh>` : variant
-  :ref:`status <sdk_qtquick_shadereffect_status>` : enumeration
-  :ref:`supportsAtlasTextures <sdk_qtquick_shadereffect_supportsAtlasTextures>` : bool
-  :ref:`vertexShader <sdk_qtquick_shadereffect_vertexShader>` : string

Detailed Description
--------------------

The :ref:`ShaderEffect <sdk_qtquick_shadereffect>` type applies a custom OpenGL :ref:`vertex <sdk_qtquick_shadereffect_vertexShader>` and :ref:`fragment <sdk_qtquick_shadereffect_fragmentShader>` shader to a rectangle. It allows you to write effects such as drop shadow, blur, colorize and page curl directly in QML.

There are two types of input to the :ref:`vertexShader <sdk_qtquick_shadereffect_vertexShader>`: uniform variables and attributes. Some are predefined:

-  uniform mat4 qt\_Matrix - combined transformation matrix, the product of the matrices from the root item to this :ref:`ShaderEffect <sdk_qtquick_shadereffect>`, and an orthogonal projection.
-  uniform float qt\_Opacity - combined opacity, the product of the opacities from the root item to this :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.
-  attribute vec4 qt\_Vertex - vertex position, the top-left vertex has position (0, 0), the bottom-right (:ref:`width <sdk_qtquick_item_width>`, :ref:`height <sdk_qtquick_item_height>`).
-  attribute vec2 qt\_MultiTexCoord0 - texture coordinate, the top-left coordinate is (0, 0), the bottom-right (1, 1). If :ref:`supportsAtlasTextures <sdk_qtquick_shadereffect_supportsAtlasTextures>` is true, coordinates will be based on position in the atlas instead.

In addition, any property that can be mapped to an OpenGL Shading Language (GLSL) type is available as a uniform variable. The following list shows how properties are mapped to GLSL uniform variables:

-  bool, int, qreal -> bool, int, float - If the type in the shader is not the same as in QML, the value is converted automatically.
-  QColor -> vec4 - When colors are passed to the shader, they are first premultiplied. Thus Qt.rgba(0.2, 0.6, 1.0, 0.5) becomes vec4(0.1, 0.3, 0.5, 0.5) in the shader, for example.
-  QRect, QRectF -> vec4 - Qt.rect(x, y, w, h) becomes vec4(x, y, w, h) in the shader.
-  QPoint, QPointF, QSize, QSizeF -> vec2
-  QVector3D -> vec3
-  QVector4D -> vec4
-  QTransform -> mat3
-  QMatrix4x4 -> mat4
-  QQuaternion -> vec4, scalar value is ``w``.
-  `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ , :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` -> sampler2D - Origin is in the top-left corner, and the color values are premultiplied.

The QML scene graph back-end may choose to allocate textures in texture atlases. If a texture allocated in an atlas is passed to a :ref:`ShaderEffect <sdk_qtquick_shadereffect>`, it is by default copied from the texture atlas into a stand-alone texture so that the texture coordinates span from 0 to 1, and you get the expected wrap modes. However, this will increase the memory usage. To avoid the texture copy, set :ref:`supportsAtlasTextures <sdk_qtquick_shadereffect_supportsAtlasTextures>` for simple shaders using qt\_MultiTexCoord0, or for each "uniform sampler2D <name>" declare a "uniform vec4 qt\_SubRect\_<name>" which will be assigned the texture's normalized source rectangle. For stand-alone textures, the source rectangle is [0, 1]x[0, 1]. For textures in an atlas, the source rectangle corresponds to the part of the texture atlas where the texture is stored. The correct way to calculate the texture coordinate for a texture called "source" within a texture atlas is "qt\_SubRect\_source.xy + qt\_SubRect\_source.zw \* qt\_MultiTexCoord0".

The output from the :ref:`fragmentShader <sdk_qtquick_shadereffect_fragmentShader>` should be premultiplied. If :ref:`blending <sdk_qtquick_shadereffect_blending>` is enabled, source-over blending is used. However, additive blending can be achieved by outputting zero in the alpha channel.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     import QtQuick 2.0                                                                                                                                 |
|                                                                                                                                                        |     Rectangle {                                                                                                                                        |
|                                                                                                                                                        |         width: 200; height: 100                                                                                                                        |
|                                                                                                                                                        |         Row {                                                                                                                                          |
|                                                                                                                                                        |             Image { id: img; sourceSize { width: 100; height: 100 } source: "qt-logo.png" }                                                            |
|                                                                                                                                                        |             ShaderEffect {                                                                                                                             |
|                                                                                                                                                        |                 width: 100; height: 100                                                                                                                |
|                                                                                                                                                        |                 property variant src: img                                                                                                              |
|                                                                                                                                                        |                 vertexShader: "                                                                                                                        |
|                                                                                                                                                        |                     uniform highp mat4 qt_Matrix;                                                                                                      |
|                                                                                                                                                        |                     attribute highp vec4 qt_Vertex;                                                                                                    |
|                                                                                                                                                        |                     attribute highp vec2 qt_MultiTexCoord0;                                                                                            |
|                                                                                                                                                        |                     varying highp vec2 coord;                                                                                                          |
|                                                                                                                                                        |                     void main() {                                                                                                                      |
|                                                                                                                                                        |                         coord = qt_MultiTexCoord0;                                                                                                     |
|                                                                                                                                                        |                         gl_Position = qt_Matrix * qt_Vertex;                                                                                           |
|                                                                                                                                                        |                     }"                                                                                                                                 |
|                                                                                                                                                        |                 fragmentShader: "                                                                                                                      |
|                                                                                                                                                        |                     varying highp vec2 coord;                                                                                                          |
|                                                                                                                                                        |                     uniform sampler2D src;                                                                                                             |
|                                                                                                                                                        |                     uniform lowp float qt_Opacity;                                                                                                     |
|                                                                                                                                                        |                     void main() {                                                                                                                      |
|                                                                                                                                                        |                         lowp vec4 tex = texture2D(src, coord);                                                                                         |
|                                                                                                                                                        |                         gl_FragColor = vec4(vec3(dot(tex.rgb, vec3(0.344, 0.5, 0.156))), tex.a) * qt_Opacity;                                          |
|                                                                                                                                                        |                     }"                                                                                                                                 |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

By default, the :ref:`ShaderEffect <sdk_qtquick_shadereffect>` consists of four vertices, one for each corner. For non-linear vertex transformations, like page curl, you can specify a fine grid of vertices by specifying a :ref:`mesh <sdk_qtquick_shadereffect_mesh>` resolution.

ShaderEffect and Item Layers
----------------------------

The :ref:`ShaderEffect <sdk_qtquick_shadereffect>` type can be combined with :ref:`layered items <sdk_qtquick_item_item>`.

+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| **Layer with effect disabled**                                                               | **Layer with effect enabled**                                                                | .. code:: qml                                                                                                        |
|                                                                                                      |                                                                                                      |                                                                                                      |
|                                                                                                      |                                                                                                      |     Item {                                                                                           |
|                                                                                                      |                                                                                                      |         id: layerRoot                                                                                |
|                                                                                                      |                                                                                                      |         layer.enabled: true                                                                          |
|                                                                                                      |                                                                                                      |         layer.effect: ShaderEffect {                                                                 |
|                                                                                                      |                                                                                                      |             fragmentShader: "                                                                        |
|                                                                                                      |                                                                                                      |                 uniform lowp sampler2D source; // this item                                          |
|                                                                                                      |                                                                                                      |                 uniform lowp float qt_Opacity; // inherited opacity of this item                     |
|                                                                                                      |                                                                                                      |                 varying highp vec2 qt_TexCoord0;                                                     |
|                                                                                                      |                                                                                                      |                 void main() {                                                                        |
|                                                                                                      |                                                                                                      |                     lowp vec4 p = texture2D(source, qt_TexCoord0);                                   |
|                                                                                                      |                                                                                                      |                     lowp float g = dot(p.xyz, vec3(0.344, 0.5, 0.156));                              |
|                                                                                                      |                                                                                                      |                     gl_FragColor = vec4(g, g, g, p.a) * qt_Opacity;                                  |
|                                                                                                      |                                                                                                      |                 }"                                                                                   |
|                                                                                                      |                                                                                                      |         }                                                                                            |
+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+

It is also possible to combine multiple layered items:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             id: gradientRect;                                                                                                                          |
|                                                                                                                                                        |             width: 10                                                                                                                                  |
|                                                                                                                                                        |             height: 10                                                                                                                                 |
|                                                                                                                                                        |             gradient: Gradient {                                                                                                                       |
|                                                                                                                                                        |                 GradientStop { position: 0; color: "white" }                                                                                           |
|                                                                                                                                                        |                 GradientStop { position: 1; color: "steelblue" }                                                                                       |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |             visible: false; // should not be visible on screen.                                                                                        |
|                                                                                                                                                        |             layer.enabled: true;                                                                                                                       |
|                                                                                                                                                        |             layer.smooth: true                                                                                                                         |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |         Text {                                                                                                                                         |
|                                                                                                                                                        |             id: textItem                                                                                                                               |
|                                                                                                                                                        |             font.pixelSize: 48                                                                                                                         |
|                                                                                                                                                        |             text: "Gradient Text"                                                                                                                      |
|                                                                                                                                                        |             anchors.centerIn: parent                                                                                                                   |
|                                                                                                                                                        |             layer.enabled: true                                                                                                                        |
|                                                                                                                                                        |             // This item should be used as the 'mask'                                                                                                  |
|                                                                                                                                                        |             layer.samplerName: "maskSource"                                                                                                            |
|                                                                                                                                                        |             layer.effect: ShaderEffect {                                                                                                               |
|                                                                                                                                                        |                 property var colorSource: gradientRect;                                                                                                |
|                                                                                                                                                        |                 fragmentShader: "                                                                                                                      |
|                                                                                                                                                        |                     uniform lowp sampler2D colorSource;                                                                                                |
|                                                                                                                                                        |                     uniform lowp sampler2D maskSource;                                                                                                 |
|                                                                                                                                                        |                     uniform lowp float qt_Opacity;                                                                                                     |
|                                                                                                                                                        |                     varying highp vec2 qt_TexCoord0;                                                                                                   |
|                                                                                                                                                        |                     void main() {                                                                                                                      |
|                                                                                                                                                        |                         gl_FragColor =                                                                                                                 |
|                                                                                                                                                        |                             texture2D(colorSource, qt_TexCoord0)                                                                                       |
|                                                                                                                                                        |                             * texture2D(maskSource, qt_TexCoord0).a                                                                                    |
|                                                                                                                                                        |                             * qt_Opacity;                                                                                                              |
|                                                                                                                                                        |                     }                                                                                                                                  |
|                                                                                                                                                        |                 "                                                                                                                                      |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

The Qt Graphical Effects module contains several ready-made effects for using with Qt Quick applications.

**Note:** Scene Graph textures have origin in the top-left corner rather than bottom-left which is common in OpenGL.

For information about the GLSL version being used, see :ref:`QtQuick::OpenGLInfo <sdk_qtquick_openglinfo>`.

**See also** :ref:`Item Layers <sdk_qtquick_item_item>`.

Property Documentation
----------------------

.. _sdk_qtquick_shadereffect_blending:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| blending : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If this property is true, the output from the :ref:`fragmentShader <sdk_qtquick_shadereffect_fragmentShader>` is blended with the background using source-over blend mode. If false, the background is disregarded. Blending decreases the performance, so you should set this property to false when blending is not needed. The default value is true.

.. _sdk_qtquick_shadereffect_cullMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cullMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines which sides of the item should be visible.

-  :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.NoCulling - Both sides are visible
-  :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.BackFaceCulling - only front side is visible
-  :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.FrontFaceCulling - only back side is visible

The default is NoCulling.

.. _sdk_qtquick_shadereffect_fragmentShader:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fragmentShader : string                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the fragment shader's GLSL source code. The default shader passes the texture coordinate along to the fragment shader as "varying highp vec2 qt\_TexCoord0".

.. _sdk_qtquick_shadereffect_log:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| log : string                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a log of warnings and errors from the latest attempt at compiling and linking the OpenGL shader program. It is updated at the same time :ref:`status <sdk_qtquick_shadereffect_status>` is set to Compiled or Error.

**See also** :ref:`status <sdk_qtquick_shadereffect_status>`.

.. _sdk_qtquick_shadereffect_mesh:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mesh : variant                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the mesh used to draw the :ref:`ShaderEffect <sdk_qtquick_shadereffect>`. It can hold any :ref:`GridMesh <sdk_qtquick_gridmesh>` object. If a size value is assigned to this property, the :ref:`ShaderEffect <sdk_qtquick_shadereffect>` implicitly uses a :ref:`GridMesh <sdk_qtquick_gridmesh>` with the value as :ref:`mesh resolution <sdk_qtquick_gridmesh_resolution>`. By default, this property is the size 1x1.

**See also** :ref:`GridMesh <sdk_qtquick_gridmesh>`.

.. _sdk_qtquick_shadereffect_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property tells the current status of the OpenGL shader program.

-  :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.Compiled - the shader program was successfully compiled and linked.
-  :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.Uncompiled - the shader program has not yet been compiled.
-  :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.Error - the shader program failed to compile or link.

When setting the fragment or vertex shader source code, the status will become Uncompiled. The first time the :ref:`ShaderEffect <sdk_qtquick_shadereffect>` is rendered with new shader source code, the shaders are compiled and linked, and the status is updated to Compiled or Error.

**See also** :ref:`log <sdk_qtquick_shadereffect_log>`.

.. _sdk_qtquick_shadereffect_supportsAtlasTextures:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| supportsAtlasTextures : bool                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this property true to indicate that the :ref:`ShaderEffect <sdk_qtquick_shadereffect>` is able to use the default source texture without first removing it from an atlas. In this case the range of qt\_MultiTexCoord0 will based on the position of the texture within the atlas, rather than (0,0) to (1,1).

Setting this to true may enable some optimizations.

The default value is false.

This QML property was introduced in QtQuick 2.4.

.. _sdk_qtquick_shadereffect_vertexShader:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| vertexShader : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the vertex shader's GLSL source code. The default shader expects the texture coordinate to be passed from the vertex shader as "varying highp vec2 qt\_TexCoord0", and it samples from a sampler2D named "source".

