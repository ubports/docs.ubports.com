.. _sdk_qtquick_shadereffectsource:

QtQuick ShaderEffectSource
==========================

Renders a Qt Quick item into a texture and displays it

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.0                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`format <sdk_qtquick_shadereffectsource_format>` : enumeration
-  :ref:`hideSource <sdk_qtquick_shadereffectsource_hideSource>` : bool
-  :ref:`live <sdk_qtquick_shadereffectsource_live>` : bool
-  :ref:`mipmap <sdk_qtquick_shadereffectsource_mipmap>` : bool
-  :ref:`recursive <sdk_qtquick_shadereffectsource_recursive>` : bool
-  :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` : Item
-  :ref:`sourceRect <sdk_qtquick_shadereffectsource_sourceRect>` : rect
-  :ref:`textureSize <sdk_qtquick_shadereffectsource_textureSize>` : size
-  :ref:`wrapMode <sdk_qtquick_shadereffectsource_wrapMode>` : enumeration

Methods
-------

-  :ref:`scheduleUpdate <sdk_qtquick_shadereffectsource_scheduleUpdate>`\ ()

Detailed Description
--------------------

The :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` type renders :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` into a texture and displays it in the scene. :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` is drawn into the texture as though it was a fully opaque root item. Thus :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` itself can be invisible, but still appear in the texture.

:ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` can be used as:

-  a texture source in a :ref:`ShaderEffect <sdk_qtquick_shadereffect>`. This allows you to apply custom shader effects to any `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  item.
-  a cache for a complex item. The complex item can be rendered once into the texture, which can then be animated freely without the need to render the complex item again every frame.
-  an opacity layer. :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` allows you to apply an opacity to items as a group rather than each item individually.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     import QtQuick 2.0                                                                                                                                 |
|                                                                                                                                                        |     Rectangle {                                                                                                                                        |
|                                                                                                                                                        |         width: 200                                                                                                                                     |
|                                                                                                                                                        |         height: 100                                                                                                                                    |
|                                                                                                                                                        |         gradient: Gradient {                                                                                                                           |
|                                                                                                                                                        |             GradientStop { position: 0; color: "white" }                                                                                               |
|                                                                                                                                                        |             GradientStop { position: 1; color: "black" }                                                                                               |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |         Row {                                                                                                                                          |
|                                                                                                                                                        |             opacity: 0.5                                                                                                                               |
|                                                                                                                                                        |             Item {                                                                                                                                     |
|                                                                                                                                                        |                 id: foo                                                                                                                                |
|                                                                                                                                                        |                 width: 100; height: 100                                                                                                                |
|                                                                                                                                                        |                 Rectangle { x: 5; y: 5; width: 60; height: 60; color: "red" }                                                                          |
|                                                                                                                                                        |                 Rectangle { x: 20; y: 20; width: 60; height: 60; color: "orange" }                                                                     |
|                                                                                                                                                        |                 Rectangle { x: 35; y: 35; width: 60; height: 60; color: "yellow" }                                                                     |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |             ShaderEffectSource {                                                                                                                       |
|                                                                                                                                                        |                 width: 100; height: 100                                                                                                                |
|                                                                                                                                                        |                 sourceItem: foo                                                                                                                        |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` type does not redirect any mouse or keyboard input to :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>`. If you hide the :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` by setting :ref:`visible <sdk_qtquick_item_visible>` to false or :ref:`opacity <sdk_qtquick_item_opacity>` to zero, it will no longer react to input. In cases where the :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` is meant to replace the :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>`, you typically want to hide the :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` while still handling input. For this, you can use the :ref:`hideSource <sdk_qtquick_shadereffectsource_hideSource>` property.

**Note:** If :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` is a :ref:`Rectangle <sdk_qtquick_rectangle>` with border, by default half the border width falls outside the texture. To get the whole border, you can extend the :ref:`sourceRect <sdk_qtquick_shadereffectsource_sourceRect>`.

**Note:** The :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` relies on FBO multisampling support to antialias edges. If the underlying hardware does not support this, which is the case for most embedded graphics chips, edges rendered inside a :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` will not be antialiased. One way to remedy this is to double the size of the effect source and render it with ``smooth: true`` (this is the default value of smooth). This will be equivalent to 4x multisampling, at the cost of lower performance and higher memory use.

**Warning:** In most cases, using a :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` will decrease performance, and in all cases, it will increase video memory usage. Rendering through a :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` might also lead to lower quality since some OpenGL implementations support multisampled backbuffer, but not multisampled framebuffer objects.

Property Documentation
----------------------

.. _sdk_qtquick_shadereffectsource_format:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| format : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the internal OpenGL format of the texture. Modifying this property makes most sense when the item is used as a source texture of a :ref:`ShaderEffect <sdk_qtquick_shadereffect>`. Depending on the OpenGL implementation, this property might allow you to save some texture memory.

-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.Alpha - GL\_ALPHA
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.RGB - GL\_RGB
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.RGBA - GL\_RGBA

**Note:** Some OpenGL implementations do not support the GL\_ALPHA format.

.. _sdk_qtquick_shadereffectsource_hideSource:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hideSource : bool                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If this property is true, the :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` is hidden, though it will still be rendered into the texture. As opposed to hiding the :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` by setting :ref:`visible <sdk_qtquick_item_visible>` to false, setting this property to true will not prevent mouse or keyboard input from reaching :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>`. The property is useful when the :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` is anchored on top of, and meant to replace the :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>`.

.. _sdk_qtquick_shadereffectsource_live:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| live : bool                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If this property is true, the texture is updated whenever the :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` updates. Otherwise, it will be a frozen image, even if :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` is assigned a new item. The property is true by default.

.. _sdk_qtquick_shadereffectsource_mipmap:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mipmap : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If this property is true, mipmaps are generated for the texture.

**Note:** Some OpenGL ES 2 implementations do not support mipmapping of non-power-of-two textures.

.. _sdk_qtquick_shadereffectsource_recursive:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| recursive : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this property to true if the :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` has a dependency on itself. ShaderEffectSources form a dependency chain, where one :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` can be part of the :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` of another. If there is a loop in this chain, a :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` could end up trying to render into the same texture it is using as source, which is not allowed by OpenGL. When this property is set to true, an extra texture is allocated so that :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` can keep a copy of the texture from the previous frame. It can then render into one texture and use the texture from the previous frame as source.

Setting both this property and :ref:`live <sdk_qtquick_shadereffectsource_live>` to true will cause the scene graph to render continuously. Since the :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>` depends on itself, updating it means that it immediately becomes dirty again.

.. _sdk_qtquick_shadereffectsource_sourceItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the item to be rendered into the texture. Setting this to null while :ref:`live <sdk_qtquick_shadereffectsource_live>` is true, will release the texture resources.

.. _sdk_qtquick_shadereffectsource_sourceRect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceRect : rect                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines which rectangular area of the :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` to render into the texture. The source rectangle can be larger than :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` itself. If the rectangle is null, which is the default, the whole :ref:`sourceItem <sdk_qtquick_shadereffectsource_sourceItem>` is rendered to texture.

.. _sdk_qtquick_shadereffectsource_textureSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| textureSize : size                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the requested size of the texture. If it is empty, which is the default, the size of the source rectangle is used.

**Note:** Some platforms have a limit on how small framebuffer objects can be, which means the actual texture size might be larger than the requested size.

.. _sdk_qtquick_shadereffectsource_wrapMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| wrapMode : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the OpenGL wrap modes associated with the texture. Modifying this property makes most sense when the item is used as a source texture of a :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.

-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.ClampToEdge - GL\_CLAMP\_TO\_EDGE both horizontally and vertically
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.RepeatHorizontally - GL\_REPEAT horizontally, GL\_CLAMP\_TO\_EDGE vertically
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.RepeatVertically - GL\_CLAMP\_TO\_EDGE horizontally, GL\_REPEAT vertically
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.Repeat - GL\_REPEAT both horizontally and vertically

**Note:** Some OpenGL ES 2 implementations do not support the GL\_REPEAT wrap mode with non-power-of-two textures.

Method Documentation
--------------------

.. _sdk_qtquick_shadereffectsource_scheduleUpdate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| scheduleUpdate()                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Schedules a re-rendering of the texture for the next frame. Use this to update the texture when :ref:`live <sdk_qtquick_shadereffectsource_live>` is false.

