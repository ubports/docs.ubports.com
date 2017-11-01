Renders a Qt Quick item into a texture and displays it

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

-  ****`format </sdk/apps/qml/QtQuick/ShaderEffectSource#format-prop>`__****
   : enumeration
-  ****`hideSource </sdk/apps/qml/QtQuick/ShaderEffectSource#hideSource-prop>`__****
   : bool
-  ****`live </sdk/apps/qml/QtQuick/ShaderEffectSource#live-prop>`__****
   : bool
-  ****`mipmap </sdk/apps/qml/QtQuick/ShaderEffectSource#mipmap-prop>`__****
   : bool
-  ****`recursive </sdk/apps/qml/QtQuick/ShaderEffectSource#recursive-prop>`__****
   : bool
-  ****`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__****
   : Item
-  ****`sourceRect </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceRect-prop>`__****
   : rect
-  ****`textureSize </sdk/apps/qml/QtQuick/ShaderEffectSource#textureSize-prop>`__****
   : size
-  ****`wrapMode </sdk/apps/qml/QtQuick/ShaderEffectSource#wrapMode-prop>`__****
   : enumeration

Methods
-------

-  ****`scheduleUpdate </sdk/apps/qml/QtQuick/ShaderEffectSource#scheduleUpdate-method>`__****\ ()

Detailed Description
--------------------

The `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__
type renders
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
into a texture and displays it in the scene.
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
is drawn into the texture as though it was a fully opaque root item.
Thus
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
itself can be invisible, but still appear in the texture.

`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__ can
be used as:

-  a texture source in a
   `ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__. This allows
   you to apply custom shader effects to any `Qt
   Quick </sdk/apps/qml/QtQuick/qtquick-index/>`__ item.
-  a cache for a complex item. The complex item can be rendered once
   into the texture, which can then be animated freely without the need
   to render the complex item again every frame.
-  an opacity layer.
   `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__
   allows you to apply an opacity to items as a group rather than each
   item individually.

+--------------------------------------+--------------------------------------+
| |image0|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     import QtQuick 2.0               |
|                                      |     Rectangle {                      |
|                                      |         width: 200                   |
|                                      |         height: 100                  |
|                                      |         gradient: Gradient {         |
|                                      |             GradientStop { position: |
|                                      |  0; color: "white" }                 |
|                                      |             GradientStop { position: |
|                                      |  1; color: "black" }                 |
|                                      |         }                            |
|                                      |         Row {                        |
|                                      |             opacity: 0.5             |
|                                      |             Item {                   |
|                                      |                 id: foo              |
|                                      |                 width: 100; height:  |
|                                      | 100                                  |
|                                      |                 Rectangle { x: 5; y: |
|                                      |  5; width: 60; height: 60; color: "r |
|                                      | ed" }                                |
|                                      |                 Rectangle { x: 20; y |
|                                      | : 20; width: 60; height: 60; color:  |
|                                      | "orange" }                           |
|                                      |                 Rectangle { x: 35; y |
|                                      | : 35; width: 60; height: 60; color:  |
|                                      | "yellow" }                           |
|                                      |             }                        |
|                                      |             ShaderEffectSource {     |
|                                      |                 width: 100; height:  |
|                                      | 100                                  |
|                                      |                 sourceItem: foo      |
|                                      |             }                        |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

The `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__
type does not redirect any mouse or keyboard input to
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__.
If you hide the
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
by setting `visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__ to
false or `opacity </sdk/apps/qml/QtQuick/Item#opacity-prop>`__ to zero,
it will no longer react to input. In cases where the
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__ is
meant to replace the
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__,
you typically want to hide the
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
while still handling input. For this, you can use the
`hideSource </sdk/apps/qml/QtQuick/ShaderEffectSource#hideSource-prop>`__
property.

**Note:** If
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
is a `Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ with border, by
default half the border width falls outside the texture. To get the
whole border, you can extend the
`sourceRect </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceRect-prop>`__.

**Note:** The
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__
relies on FBO multisampling support to antialias edges. If the
underlying hardware does not support this, which is the case for most
embedded graphics chips, edges rendered inside a
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__ will
not be antialiased. One way to remedy this is to double the size of the
effect source and render it with ``smooth: true`` (this is the default
value of smooth). This will be equivalent to 4x multisampling, at the
cost of lower performance and higher memory use.

**Warning:** In most cases, using a
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__ will
decrease performance, and in all cases, it will increase video memory
usage. Rendering through a
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__ might
also lead to lower quality since some OpenGL implementations support
multisampled backbuffer, but not multisampled framebuffer objects.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ format : enumeration                                            |
+--------------------------------------------------------------------------+

This property defines the internal OpenGL format of the texture.
Modifying this property makes most sense when the item is used as a
source texture of a
`ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__. Depending on the
OpenGL implementation, this property might allow you to save some
texture memory.

-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.Alpha
   - GL\_ALPHA
-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.RGB
   - GL\_RGB
-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.RGBA
   - GL\_RGBA

**Note:** Some OpenGL implementations do not support the GL\_ALPHA
format.

| 

+--------------------------------------------------------------------------+
|        \ hideSource : bool                                               |
+--------------------------------------------------------------------------+

If this property is true, the
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
is hidden, though it will still be rendered into the texture. As opposed
to hiding the
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
by setting `visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__ to
false, setting this property to true will not prevent mouse or keyboard
input from reaching
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__.
The property is useful when the
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__ is
anchored on top of, and meant to replace the
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ live : bool                                                     |
+--------------------------------------------------------------------------+

If this property is true, the texture is updated whenever the
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
updates. Otherwise, it will be a frozen image, even if
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
is assigned a new item. The property is true by default.

| 

+--------------------------------------------------------------------------+
|        \ mipmap : bool                                                   |
+--------------------------------------------------------------------------+

If this property is true, mipmaps are generated for the texture.

**Note:** Some OpenGL ES 2 implementations do not support mipmapping of
non-power-of-two textures.

| 

+--------------------------------------------------------------------------+
|        \ recursive : bool                                                |
+--------------------------------------------------------------------------+

Set this property to true if the
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__ has a
dependency on itself. ShaderEffectSources form a dependency chain, where
one `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__
can be part of the
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
of another. If there is a loop in this chain, a
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__ could
end up trying to render into the same texture it is using as source,
which is not allowed by OpenGL. When this property is set to true, an
extra texture is allocated so that
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__ can
keep a copy of the texture from the previous frame. It can then render
into one texture and use the texture from the previous frame as source.

Setting both this property and
`live </sdk/apps/qml/QtQuick/ShaderEffectSource#live-prop>`__ to true
will cause the scene graph to render continuously. Since the
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__
depends on itself, updating it means that it immediately becomes dirty
again.

| 

+--------------------------------------------------------------------------+
|        \ sourceItem : `Item </sdk/apps/qml/QtQuick/Item/>`__             |
+--------------------------------------------------------------------------+

This property holds the item to be rendered into the texture. Setting
this to null while
`live </sdk/apps/qml/QtQuick/ShaderEffectSource#live-prop>`__ is true,
will release the texture resources.

| 

+--------------------------------------------------------------------------+
|        \ sourceRect : rect                                               |
+--------------------------------------------------------------------------+

This property defines which rectangular area of the
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
to render into the texture. The source rectangle can be larger than
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
itself. If the rectangle is null, which is the default, the whole
`sourceItem </sdk/apps/qml/QtQuick/ShaderEffectSource#sourceItem-prop>`__
is rendered to texture.

| 

+--------------------------------------------------------------------------+
|        \ textureSize : size                                              |
+--------------------------------------------------------------------------+

This property holds the requested size of the texture. If it is empty,
which is the default, the size of the source rectangle is used.

**Note:** Some platforms have a limit on how small framebuffer objects
can be, which means the actual texture size might be larger than the
requested size.

| 

+--------------------------------------------------------------------------+
|        \ wrapMode : enumeration                                          |
+--------------------------------------------------------------------------+

This property defines the OpenGL wrap modes associated with the texture.
Modifying this property makes most sense when the item is used as a
source texture of a
`ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__.

-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.ClampToEdge
   - GL\_CLAMP\_TO\_EDGE both horizontally and vertically
-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.RepeatHorizontally
   - GL\_REPEAT horizontally, GL\_CLAMP\_TO\_EDGE vertically
-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.RepeatVertically
   - GL\_CLAMP\_TO\_EDGE horizontally, GL\_REPEAT vertically
-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.Repeat
   - GL\_REPEAT both horizontally and vertically

**Note:** Some OpenGL ES 2 implementations do not support the GL\_REPEAT
wrap mode with non-power-of-two textures.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ scheduleUpdate()                                                |
+--------------------------------------------------------------------------+

Schedules a re-rendering of the texture for the next frame. Use this to
update the texture when
`live </sdk/apps/qml/QtQuick/ShaderEffectSource#live-prop>`__ is false.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/ShaderEffectSource/images/declarative-shadereffectsource.png

