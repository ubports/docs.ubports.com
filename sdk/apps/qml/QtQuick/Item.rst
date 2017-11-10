.. _sdk_qtquick_item:

QtQuick Item
============

A basic visual QML type

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Instantiates:                                                                                                                                          | QQuickItem                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | AnimatedSprite, BorderImage, Canvas, Column, Flickable, Flipable, Flow, FocusScope, Grid, Image, Loader, MouseArea, MultiPointTouchArea,               |
|                                                                                                                                                        | ParticlePainter, PathView, PinchArea, Rectangle, Repeater, Row, ShaderEffect, ShaderEffectSource, SignalSpy, SpriteSequence, TestCase, Text, TextEdit, |
|                                                                                                                                                        | and TextInput.                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`activeFocus <sdk_qtquick_item_activeFocus>` : bool
-  :ref:`activeFocusOnTab <sdk_qtquick_item_activeFocusOnTab>` : bool
-  :ref:`anchors <sdk_qtquick_item_anchors>`

   -  :ref:`anchors.top <sdk_qtquick_item_anchors_top>` : AnchorLine
   -  :ref:`anchors.bottom <sdk_qtquick_item_anchors_bottom>` : AnchorLine
   -  :ref:`anchors.left <sdk_qtquick_item_anchors_left>` : AnchorLine
   -  :ref:`anchors.right <sdk_qtquick_item_anchors_right>` : AnchorLine
   -  :ref:`anchors.horizontalCenter <sdk_qtquick_item_anchors_horizontalCenter>` : AnchorLine
   -  :ref:`anchors.verticalCenter <sdk_qtquick_item_anchors_verticalCenter>` : AnchorLine
   -  :ref:`anchors.baseline <sdk_qtquick_item_anchors_baseline>` : AnchorLine
   -  :ref:`anchors.fill <sdk_qtquick_item_anchors_fill>` : Item
   -  :ref:`anchors.centerIn <sdk_qtquick_item_anchors_centerIn>` : Item
   -  :ref:`anchors.margins <sdk_qtquick_item_anchors_margins>` : real
   -  :ref:`anchors.topMargin <sdk_qtquick_item_anchors_topMargin>` : real
   -  :ref:`anchors.bottomMargin <sdk_qtquick_item_anchors_bottomMargin>` : real
   -  :ref:`anchors.leftMargin <sdk_qtquick_item_anchors_leftMargin>` : real
   -  :ref:`anchors.rightMargin <sdk_qtquick_item_anchors_rightMargin>` : real
   -  :ref:`anchors.horizontalCenterOffset <sdk_qtquick_item_anchors_horizontalCenterOffset>` : real
   -  :ref:`anchors.verticalCenterOffset <sdk_qtquick_item_anchors_verticalCenterOffset>` : real
   -  :ref:`anchors.baselineOffset <sdk_qtquick_item_anchors_baselineOffset>` : real
   -  :ref:`anchors.alignWhenCentered <sdk_qtquick_item_anchors_alignWhenCentered>` : bool

-  :ref:`antialiasing <sdk_qtquick_item_antialiasing>` : bool
-  :ref:`baselineOffset <sdk_qtquick_item_baselineOffset>` : int
-  :ref:`children <sdk_qtquick_item_children>` : list<Item>
-  :ref:`childrenRect <sdk_qtquick_item_childrenRect>`

   -  :ref:`childrenRect.x <sdk_qtquick_item_childrenRect_x>` : real
   -  :ref:`childrenRect.y <sdk_qtquick_item_childrenRect_y>` : real
   -  :ref:`childrenRect.width <sdk_qtquick_item_childrenRect_width>` : real
   -  :ref:`childrenRect.height <sdk_qtquick_item_childrenRect_height>` : real

-  :ref:`clip <sdk_qtquick_item_clip>` : bool
-  :ref:`data <sdk_qtquick_item_data>` : list<Object>
-  :ref:`enabled <sdk_qtquick_item_enabled>` : bool
-  :ref:`focus <sdk_qtquick_item_focus>` : bool
-  :ref:`height <sdk_qtquick_item_height>` : real
-  :ref:`implicitHeight <sdk_qtquick_item_implicitHeight>` : real
-  :ref:`implicitWidth <sdk_qtquick_item_implicitWidth>` : real
-  :ref:`layer.effect <sdk_qtquick_item_layer_effect>` : Component
-  :ref:`layer.enabled <sdk_qtquick_item_layer_enabled>` : bool
-  :ref:`layer.format <sdk_qtquick_item_layer_format>` : enumeration
-  :ref:`layer.mipmap <sdk_qtquick_item_layer_mipmap>` : bool
-  :ref:`layer.samplerName <sdk_qtquick_item_layer_samplerName>` : string
-  :ref:`layer.smooth <sdk_qtquick_item_layer_smooth>` : bool
-  :ref:`layer.sourceRect <sdk_qtquick_item_layer_sourceRect>` : rect
-  :ref:`layer.textureSize <sdk_qtquick_item_layer_textureSize>` : size
-  :ref:`layer.wrapMode <sdk_qtquick_item_layer_wrapMode>` : enumeration
-  :ref:`opacity <sdk_qtquick_item_opacity>` : real
-  :ref:`parent <sdk_qtquick_item_parent>` : Item
-  :ref:`resources <sdk_qtquick_item_resources>` : list<Object>
-  :ref:`rotation <sdk_qtquick_item_rotation>` : real
-  :ref:`scale <sdk_qtquick_item_scale>` : real
-  :ref:`smooth <sdk_qtquick_item_smooth>` : bool
-  :ref:`state <sdk_qtquick_item_state>` : string
-  :ref:`states <sdk_qtquick_item_states>` : list<State>
-  :ref:`transform <sdk_qtquick_item_transform>` : list<Transform>
-  :ref:`transformOrigin <sdk_qtquick_item_transformOrigin>` : enumeration
-  :ref:`transitions <sdk_qtquick_item_transitions>` : list<Transition>
-  :ref:`visible <sdk_qtquick_item_visible>` : bool
-  :ref:`visibleChildren <sdk_qtquick_item_visibleChildren>` : list<Item>
-  :ref:`width <sdk_qtquick_item_width>` : real
-  :ref:`x <sdk_qtquick_item_x>` : real
-  :ref:`y <sdk_qtquick_item_y>` : real
-  :ref:`z <sdk_qtquick_item_z>` : real

Methods
-------

-  :ref:`childAt <sdk_qtquick_item_childAt>`\ (real *x*, real *y*)
-  object :ref:`contains <sdk_qtquick_item_contains>`\ (point *point*)
-  :ref:`forceActiveFocus <sdk_qtquick_item_forceActiveFocus>`\ (Qt::FocusReason *reason*)
-  :ref:`forceActiveFocus <sdk_qtquick_item_forceActiveFocus>`\ ()
-  bool :ref:`grabToImage <sdk_qtquick_item_grabToImage>`\ (callback, targetSize)
-  object :ref:`mapFromItem <sdk_qtquick_item_mapFromItem>`\ (Item *item*, real *x*, real *y*, real *width*, real *height*)
-  object :ref:`mapFromItem <sdk_qtquick_item_mapFromItem>`\ (Item *item*, real *x*, real *y*)
-  object :ref:`mapToItem <sdk_qtquick_item_mapToItem>`\ (Item *item*, real *x*, real *y*, real *width*, real *height*)
-  object :ref:`mapToItem <sdk_qtquick_item_mapToItem>`\ (Item *item*, real *x*, real *y*)
-  :ref:`nextItemInFocusChain <sdk_qtquick_item_nextItemInFocusChain>`\ (bool *forward*)

Detailed Description
--------------------

The Item type is the base type for all visual items in Qt Quick.

All visual items in Qt Quick inherit from Item. Although an Item object has no visual appearance, it defines all the attributes that are common across visual items, such as x and y position, width and height, `anchoring </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/>`_  and key handling support.

The Item type can be useful for grouping several items under a single root visual item. For example:

.. code:: qml

    import QtQuick 2.0
    Item {
        Image {
            source: "tile.png"
        }
        Image {
            x: 80
            width: 100
            height: 100
            source: "tile.png"
        }
        Image {
            x: 190
            width: 100
            height: 100
            fillMode: Image.Tile
            source: "tile.png"
        }
    }

Key Handling
~~~~~~~~~~~~

Key handling is available to all Item-based visual types via the :ref:`Keys <sdk_qtquick_keys>` attached property. The *Keys* attached property provides basic signals such as :ref:`pressed <sdk_qtquick_keys_pressed>` and :ref:`released <sdk_qtquick_keys_released>`, as well as signals for specific keys, such as :ref:`spacePressed <sdk_qtquick_keys_spacePressed>`. The example below assigns `keyboard focus </sdk/apps/qml/QtQuick/qtquick-input-focus/>`_  to the item and handles the left key via the general ``onPressed`` handler and the return key via the ``onReturnPressed`` handler:

.. code:: qml

    import QtQuick 2.0
    Item {
        focus: true
        Keys.onPressed: {
            if (event.key == Qt.Key_Left) {
                console.log("move left");
                event.accepted = true;
            }
        }
        Keys.onReturnPressed: console.log("Pressed return");
    }

See the :ref:`Keys <sdk_qtquick_keys>` attached property for detailed documentation.

Layout Mirroring
~~~~~~~~~~~~~~~~

Item layouts can be mirrored using the :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>` attached property. This causes :ref:`anchors <sdk_qtquick_item_anchors.top>` to be horizontally reversed, and also causes items that lay out or position their children (such as :ref:`ListView <sdk_qtquick_listview>` or `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_ ) to horizontally reverse the direction of their layouts.

See :ref:`LayoutMirroring <sdk_qtquick_layoutmirroring>` for more details.

Item Layers
-----------

An Item will normally be rendered directly into the window it belongs to. However, by setting :ref:`layer.enabled <sdk_qtquick_item_layer_enabled>`, it is possible to delegate the item and its entire subtree into an offscreen surface. Only the offscreen surface, a texture, will be then drawn into the window.

If it is desired to have a texture size different from that of the item, this is possible using :ref:`layer.textureSize <sdk_qtquick_item_layer_textureSize>`. To render only a section of the item into the texture, use :ref:`layer.sourceRect <sdk_qtquick_item_layer_sourceRect>`. It is also possible to specify :ref:`layer.sourceRect <sdk_qtquick_item_layer_sourceRect>` so it extends beyond the bounds of the item. In this case, the exterior will be padded with transparent pixels.

The item will use linear interpolation for scaling if :ref:`layer.smooth <sdk_qtquick_item_layer_smooth>` is set to ``true`` and will use mipmap for downsampling if :ref:`layer.mipmap <sdk_qtquick_item_layer_mipmap>` is set to ``true``. Mipmapping may improve visual quality of downscaled items. For mipmapping of single Image items, prefer :ref:`Image::mipmap <sdk_qtquick_image_mipmap>`.

Layer Opacity vs Item Opacity
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When applying `opacity </sdk/apps/qml/QtQuick/qtquick-effects-topic/#opacity>`_  to an item hierarchy the opacity is applied to each item individually. This can lead to undesired visual results when the opacity is applied to a subtree. Consider the following example:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | **Non-layered Opacity**                                                                                                                                        |
|                                                                                                                                                        | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         id: nonLayered                                                                                                                                 |
|                                                                                                                                                        |         opacity: 0.5                                                                                                                                   |
|                                                                                                                                                        |         width: 100                                                                                                                                     |
|                                                                                                                                                        |         height: 100                                                                                                                                    |
|                                                                                                                                                        |         Rectangle { width: 80; height: 80; border.width: 1 }                                                                                           |
|                                                                                                                                                        |         Rectangle { x: 20; y: 20; width: 80; height: 80; border.width: 1 }                                                                             |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

A layer is rendered with the root item's opacity being 1, and then the root item's opacity is applied to the texture when it is drawn. This means that fading in a large item hierarchy from transparent to opaque, or vice versa, can be done without the overlap artifacts that the normal item by item alpha blending has. Here is the same example with layer enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | **Layered Opacity**                                                                                                                                            |
|                                                                                                                                                        | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         id: layered                                                                                                                                    |
|                                                                                                                                                        |         opacity: 0.5                                                                                                                                   |
|                                                                                                                                                        |         layer.enabled: true                                                                                                                            |
|                                                                                                                                                        |         width: 100                                                                                                                                     |
|                                                                                                                                                        |         height: 100                                                                                                                                    |
|                                                                                                                                                        |         Rectangle { width: 80; height: 80; border.width: 1 }                                                                                           |
|                                                                                                                                                        |         Rectangle { x: 20; y: 20; width: 80; height: 80; border.width: 1 }                                                                             |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Combined with ShaderEffects
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Setting layer.enabled to true will turn the item into a texture provider, making it possible to use the item directly as a texture, for instance in combination with the ShaderEffect type.

It is possible to apply an effect on a layer at runtime using layer.effect:

.. code:: qml

    Item {
        id: layerRoot
        layer.enabled: true
        layer.effect: ShaderEffect {
            fragmentShader: "
                uniform lowp sampler2D source; // this item
                uniform lowp float qt_Opacity; // inherited opacity of this item
                varying highp vec2 qt_TexCoord0;
                void main() {
                    lowp vec4 p = texture2D(source, qt_TexCoord0);
                    lowp float g = dot(p.xyz, vec3(0.344, 0.5, 0.156));
                    gl_FragColor = vec4(g, g, g, p.a) * qt_Opacity;
                }"
        }

In this example, we implement the shader effect manually. The Qt Graphical Effects module contains a suite of ready-made effects for use with Qt Quick.

See :ref:`ShaderEffect <sdk_qtquick_shadereffect>` for more information about using effects.

**Note:** :ref:`layer.enabled <sdk_qtquick_item_layer_enabled>` is actually just a more convenient way of using :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.

Memory and Performance
~~~~~~~~~~~~~~~~~~~~~~

When an item's layer is enabled, the scene graph will allocate memory in the GPU equal to ``width x height x 4``. In memory constrained configurations, large layers should be used with care.

In the QPainter / QWidget world, it is some times favorable to cache complex content in a pixmap, image or texture. In Qt Quick, because of the techniques already applied by the `scene graph renderer </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph-renderer/>`_ , this will in most cases not be the case. Excessive draw calls are already reduced because of batching and a cache will in most cases end up blending more pixels than the original content. The overhead of rendering to an offscreen and the blending involved with drawing the resulting texture is therefore often more costly than simply letting the item and its children be drawn normally.

Also, an item using a layer can not be `batched </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph-renderer/#batching>`_  during rendering. This means that a scene with many layered items may have performance problems.

Layering can be convenient and useful for visual effects, but should in most cases be enabled for the duration of the effect and disabled afterwards.

Property Documentation
----------------------

.. _sdk_qtquick_item_activeFocus:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| activeFocus : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property indicates whether the item has active focus.

If activeFocus is true, either this item is the one that currently receives keyboard input, or it is a :ref:`FocusScope <sdk_qtquick_focusscope>` ancestor of the item that currently receives keyboard input.

Usually, activeFocus is gained by setting :ref:`focus <sdk_qtquick_item_focus>` on an item and its enclosing :ref:`FocusScope <sdk_qtquick_focusscope>` objects. In the following example, the ``input`` and ``focusScope`` objects will have active focus, while the root rectangle object will not.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        FocusScope {
            id: focusScope
            focus: true
            TextInput {
                id: input
                focus: true
            }
        }
    }

**See also** :ref:`focus <sdk_qtquick_item_focus>` and `Keyboard Focus in Qt Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`_ .

.. _sdk_qtquick_item_activeFocusOnTab:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| activeFocusOnTab : bool                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the item wants to be in tab focus chain. By default this is set to false.

The tab focus chain traverses elements by visiting first the parent, and then its children in the order they occur in the children property. Pressing the tab key on an item in the tab focus chain will move keyboard focus to the next item in the chain. Pressing BackTab (normally Shift+Tab) will move focus to the previous item.

To set up a manual tab focus chain, see :ref:`KeyNavigation <sdk_qtquick_keynavigation>`. Tab key events used by Keys or :ref:`KeyNavigation <sdk_qtquick_keynavigation>` have precedence over focus chain behavior, ignore the events in other key handlers to allow it to propagate.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **anchors group**                                                                                                                                                                                                                                                                                               |
+=================================================================================================================================================================================================================================================================================================================+
| anchors.top : AnchorLine                                                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.bottom : AnchorLine                                                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.left : AnchorLine                                                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.right : AnchorLine                                                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.horizontalCenter : AnchorLine                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.verticalCenter : AnchorLine                                                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.baseline : AnchorLine                                                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.fill : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.centerIn : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.margins : real                                                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.topMargin : real                                                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.bottomMargin : real                                                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.leftMargin : real                                                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.rightMargin : real                                                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.horizontalCenterOffset : real                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.verticalCenterOffset : real                                                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.baselineOffset : real                                                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchors.alignWhenCentered : bool                                                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Anchors provide a way to position an item by specifying its relationship with other items.

Margins apply to top, bottom, left, right, and fill anchors. The :ref:`anchors.margins <sdk_qtquick_item_anchors_margins>` property can be used to set all of the various margins at once, to the same value. It will not override a specific margin that has been previously set; to clear an explicit margin set its value to ``undefined``. Note that margins are anchor-specific and are not applied if an item does not use anchors.

Offsets apply for horizontal center, vertical center, and baseline anchors.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | Text anchored to Image, horizontally centered and vertically below, with a margin.                                                                             |
|                                                                                                                                                        | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         Image {                                                                                                                                        |
|                                                                                                                                                        |             id: pic                                                                                                                                    |
|                                                                                                                                                        |             // ...                                                                                                                                     |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |         Text {                                                                                                                                         |
|                                                                                                                                                        |             id: label                                                                                                                                  |
|                                                                                                                                                        |             anchors.horizontalCenter: pic.horizontalCenter                                                                                             |
|                                                                                                                                                        |             anchors.top: pic.bottom                                                                                                                    |
|                                                                                                                                                        |             anchors.topMargin: 5                                                                                                                       |
|                                                                                                                                                        |             // ...                                                                                                                                     |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | Left of Text anchored to right of Image, with a margin. The y property of both defaults to 0.                                                                  |
|                                                                                                                                                        | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         Image {                                                                                                                                        |
|                                                                                                                                                        |             id: pic                                                                                                                                    |
|                                                                                                                                                        |             // ...                                                                                                                                     |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |         Text {                                                                                                                                         |
|                                                                                                                                                        |             id: label                                                                                                                                  |
|                                                                                                                                                        |             anchors.left: pic.right                                                                                                                    |
|                                                                                                                                                        |             anchors.leftMargin: 5                                                                                                                      |
|                                                                                                                                                        |             // ...                                                                                                                                     |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

:ref:`anchors.fill <sdk_qtquick_item_anchors_fill>` provides a convenient way for one item to have the same geometry as another item, and is equivalent to connecting all four directional anchors.

To clear an anchor value, set it to ``undefined``.

:ref:`anchors.alignWhenCentered <sdk_qtquick_item_anchors_alignWhenCentered>` (default ``true``) forces centered anchors to align to a whole pixel; if the item being centered has an odd :ref:`width <sdk_qtquick_item_width>` or :ref:`height <sdk_qtquick_item_height>`, the item will be positioned on a whole pixel rather than being placed on a half-pixel. This ensures the item is painted crisply. There are cases where this is not desirable, for example when rotating the item jitters may be apparent as the center is rounded.

**Note:** You can only anchor an item to siblings or a parent.

For more information see `Anchor Layouts </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/#anchor-layout>`_ .

.. _sdk_qtquick_item_antialiasing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| antialiasing : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Used by visual elements to decide if the item should use antialiasing or not. In some cases items with antialiasing require more memory and are potentially slower to render (see `Antialiasing </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph-renderer/#antialiasing>`_  for more details).

The default is false, but may be overridden by derived elements.

.. _sdk_qtquick_item_baselineOffset:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| baselineOffset : int                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the position of the item's baseline in local coordinates.

The baseline of a `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  item is the imaginary line on which the text sits. Controls containing text usually set their baseline to the baseline of their text.

For non-text items, a default baseline offset of 0 is used.

.. _sdk_qtquick_item_children:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| children : list<:ref:`Item <sdk_qtquick_item>`>                                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The children property contains the list of visual children of this item. The resources property contains non-visual resources that you want to reference by name.

It is not generally necessary to refer to these properties when adding child items or resources, as the default :ref:`data <sdk_qtquick_item_data>` property will automatically assign child objects to the ``children`` and ``resources`` properties as appropriate. See the :ref:`data <sdk_qtquick_item_data>` documentation for details.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **childrenRect group**                                                                                                                                                                                                                                                                                       |
+==============================================================================================================================================================================================================================================================================================================+
| childrenRect.x : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| childrenRect.y : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| childrenRect.width : real                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| childrenRect.height : real                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the collective position and size of the item's children.

This property is useful if you need to access the collective geometry of an item's children in order to correctly size the item.

.. _sdk_qtquick_item_clip:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clip : bool                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether clipping is enabled. The default clip value is ``false``.

If clipping is enabled, an item will clip its own painting, as well as the painting of its children, to its bounding rectangle.

.. _sdk_qtquick_item_data:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] data : list<Object>                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The data property allows you to freely mix visual children and resources in an item. If you assign a visual item to the data list it becomes a child and if you assign any other object type, it is added as a resource.

So you can write:

.. code:: qml

    Item {
        Text {}
        Rectangle {}
        Timer {}
    }

instead of:

.. code:: qml

    Item {
        children: [
            Text {},
            Rectangle {}
        ]
        resources: [
            Timer {}
        ]
    }

It should not generally be necessary to refer to the ``data`` property, as it is the default property for Item and thus all child items are automatically assigned to this property.

.. _sdk_qtquick_item_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the item receives mouse and keyboard events. By default this is true.

Setting this property directly affects the ``enabled`` value of child items. When set to ``false``, the ``enabled`` values of all child items also become ``false``. When set to ``true``, the ``enabled`` values of child items are returned to ``true``, unless they have explicitly been set to ``false``.

Setting this property to ``false`` automatically causes :ref:`activeFocus <sdk_qtquick_item_activeFocus>` to be set to ``false``, and this item will longer receive keyboard events.

**See also** :ref:`visible <sdk_qtquick_item_visible>`.

.. _sdk_qtquick_item_focus:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| focus : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the item has focus within the enclosing :ref:`FocusScope <sdk_qtquick_focusscope>`. If true, this item will gain active focus when the enclosing :ref:`FocusScope <sdk_qtquick_focusscope>` gains active focus.

In the following example, ``input`` will be given active focus when ``scope`` gains active focus:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        FocusScope {
            id: scope
            TextInput {
                id: input
                focus: true
            }
        }
    }

For the purposes of this property, the scene as a whole is assumed to act like a focus scope. On a practical level, that means the following QML will give active focus to ``input`` on startup.

.. code:: qml

    Rectangle {
        width: 100; height: 100
        TextInput {
              id: input
              focus: true
        }
    }

**See also** :ref:`activeFocus <sdk_qtquick_item_activeFocus>` and `Keyboard Focus in Qt Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`_ .

.. _sdk_qtquick_item_height:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| height : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the item's position and size.

The (x,y) position is relative to the :ref:`parent <sdk_qtquick_item_parent>`.

.. code:: qml

    Item { x: 100; y: 100; width: 100; height: 100 }

.. _sdk_qtquick_item_implicitHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| implicitHeight : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the natural width or height of the Item if no :ref:`width <sdk_qtquick_item_width>` or :ref:`height <sdk_qtquick_item_height>` is specified.

The default implicit size for most items is 0x0, however some items have an inherent implicit size which cannot be overridden, e.g. Image, Text.

Setting the implicit size is useful for defining components that have a preferred size based on their content, for example:

.. code:: qml

    // Label.qml
    import QtQuick 2.0
    Item {
        property alias icon: image.source
        property alias label: text.text
        implicitWidth: text.implicitWidth + image.implicitWidth
        implicitHeight: Math.max(text.implicitHeight, image.implicitHeight)
        Image { id: image }
        Text {
            id: text
            wrapMode: Text.Wrap
            anchors.left: image.right; anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
        }
    }

**Note**: using :ref:`implicitWidth <sdk_qtquick_item_implicitWidth>` of Text or :ref:`TextEdit <sdk_qtquick_textedit>` and setting the width explicitly incurs a performance penalty as the text must be laid out twice.

.. _sdk_qtquick_item_implicitWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| implicitWidth : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the natural width or height of the Item if no :ref:`width <sdk_qtquick_item_width>` or :ref:`height <sdk_qtquick_item_height>` is specified.

The default implicit size for most items is 0x0, however some items have an inherent implicit size which cannot be overridden, e.g. Image, Text.

Setting the implicit size is useful for defining components that have a preferred size based on their content, for example:

.. code:: qml

    // Label.qml
    import QtQuick 2.0
    Item {
        property alias icon: image.source
        property alias label: text.text
        implicitWidth: text.implicitWidth + image.implicitWidth
        implicitHeight: Math.max(text.implicitHeight, image.implicitHeight)
        Image { id: image }
        Text {
            id: text
            wrapMode: Text.Wrap
            anchors.left: image.right; anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
        }
    }

**Note**: using implicitWidth of Text or :ref:`TextEdit <sdk_qtquick_textedit>` and setting the width explicitly incurs a performance penalty as the text must be laid out twice.

.. _sdk_qtquick_item_layer_effect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layer.effect : Component                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Holds the effect that is applied to this layer.

The effect is typically a :ref:`ShaderEffect <sdk_qtquick_shadereffect>` component, although any :ref:`Item <sdk_qtquick_item>` component can be assigned. The effect should have a source texture property with a name matching :ref:`layer.samplerName <sdk_qtquick_item_layer_samplerName>`.

**See also** :ref:`layer.samplerName <sdk_qtquick_item_layer_samplerName>`.

.. _sdk_qtquick_item_layer_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layer.enabled : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Holds whether the item is layered or not. Layering is disabled by default.

A layered item is rendered into an offscreen surface and cached until it is changed. Enabling layering for complex QML item hierarchies can sometimes be an optimization.

None of the other layer properties have any effect when the layer is disabled.

.. _sdk_qtquick_item_layer_format:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layer.format : enumeration                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the internal OpenGL format of the texture. Modifying this property makes most sense when the *layer.effect* is also specified. Depending on the OpenGL implementation, this property might allow you to save some texture memory.

-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.Alpha - GL\_ALPHA;
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.RGB - GL\_RGB
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.RGBA - GL\_RGBA

**Note:** :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.RGB and :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.Alpha should be used with caution, as support for these formats in the underlying hardare and driver is often not present.

.. _sdk_qtquick_item_layer_mipmap:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layer.mipmap : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If this property is true, mipmaps are generated for the texture.

**Note:** Some OpenGL ES 2 implementations do not support mipmapping of non-power-of-two textures.

.. _sdk_qtquick_item_layer_samplerName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layer.samplerName : string                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Holds the name of the effect's source texture property.

This value must match the name of the effect's source texture property so that the Item can pass the layer's offscreen surface to the effect correctly.

**See also** :ref:`layer.effect <sdk_qtquick_item_layer_effect>` and :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.

.. _sdk_qtquick_item_layer_smooth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layer.smooth : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Holds whether the layer is smoothly transformed.

.. _sdk_qtquick_item_layer_sourceRect:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layer.sourceRect : rect                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the rectangular area of the item that should be rendered into the texture. The source rectangle can be larger than the item itself. If the rectangle is null, which is the default, then the whole item is rendered to the texture.

.. _sdk_qtquick_item_layer_textureSize:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layer.textureSize : size                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the requested pixel size of the layers texture. If it is empty, which is the default, the size of the item is used.

**Note:** Some platforms have a limit on how small framebuffer objects can be, which means the actual texture size might be larger than the requested size.

.. _sdk_qtquick_item_layer_wrapMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layer.wrapMode : enumeration                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the OpenGL wrap modes associated with the texture. Modifying this property makes most sense when the *layer.effect* is specified.

-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.ClampToEdge - GL\_CLAMP\_TO\_EDGE both horizontally and vertically
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.RepeatHorizontally - GL\_REPEAT horizontally, GL\_CLAMP\_TO\_EDGE vertically
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.RepeatVertically - GL\_CLAMP\_TO\_EDGE horizontally, GL\_REPEAT vertically
-  :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.Repeat - GL\_REPEAT both horizontally and vertically

**Note:** Some OpenGL ES 2 implementations do not support the GL\_REPEAT wrap mode with non-power-of-two textures.

.. _sdk_qtquick_item_opacity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| opacity : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the opacity of the item. Opacity is specified as a number between 0.0 (fully transparent) and 1.0 (fully opaque). The default value is 1.0.

When this property is set, the specified opacity is also applied individually to child items. This may have an unintended effect in some circumstances. For example in the second set of rectangles below, the red rectangle has specified an opacity of 0.5, which affects the opacity of its blue child rectangle even though the child has not specified an opacity.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             color: "red"                                                                                                                               |
|                                                                                                                                                        |             width: 100; height: 100                                                                                                                    |
|                                                                                                                                                        |             Rectangle {                                                                                                                                |
|                                                                                                                                                        |                 color: "blue"                                                                                                                          |
|                                                                                                                                                        |                 x: 50; y: 50; width: 100; height: 100                                                                                                  |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             opacity: 0.5                                                                                                                               |
|                                                                                                                                                        |             color: "red"                                                                                                                               |
|                                                                                                                                                        |             width: 100; height: 100                                                                                                                    |
|                                                                                                                                                        |             Rectangle {                                                                                                                                |
|                                                                                                                                                        |                 color: "blue"                                                                                                                          |
|                                                                                                                                                        |                 x: 50; y: 50; width: 100; height: 100                                                                                                  |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Changing an item's opacity does not affect whether the item receives user input events. (In contrast, setting :ref:`visible <sdk_qtquick_item_visible>` property to ``false`` stops mouse events, and setting the :ref:`enabled <sdk_qtquick_item_enabled>` property to ``false`` stops mouse and keyboard events, and also removes active focus from the item.)

**See also** :ref:`visible <sdk_qtquick_item_visible>`.

.. _sdk_qtquick_item_parent:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| parent : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the visual parent of the item.

**Note:** The concept of the *visual parent* differs from that of the *QObject parent*. An item's visual parent may not necessarily be the same as its object parent. See `Concepts - Visual Parent in Qt Quick </sdk/apps/qml/QtQuick/qtquick-visualcanvas-visualparent/>`_  for more details.

.. _sdk_qtquick_item_resources:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| resources : list<Object>                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The children property contains the list of visual children of this item. The resources property contains non-visual resources that you want to reference by name.

It is not generally necessary to refer to these properties when adding child items or resources, as the default :ref:`data <sdk_qtquick_item_data>` property will automatically assign child objects to the ``children`` and ``resources`` properties as appropriate. See the :ref:`data <sdk_qtquick_item_data>` documentation for details.

.. _sdk_qtquick_item_rotation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rotation : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the rotation of the item in degrees clockwise around its :ref:`transformOrigin <sdk_qtquick_item_transformOrigin>`.

The default value is 0 degrees (that is, no rotation).

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Rectangle {                                                                                                                                        |
|                                                                                                                                                        |         color: "blue"                                                                                                                                  |
|                                                                                                                                                        |         width: 100; height: 100                                                                                                                        |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             color: "red"                                                                                                                               |
|                                                                                                                                                        |             x: 25; y: 25; width: 50; height: 50                                                                                                        |
|                                                                                                                                                        |             rotation: 30                                                                                                                               |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`transform <sdk_qtquick_item_transform>` and :ref:`Rotation <sdk_qtquick_rotation>`.

.. _sdk_qtquick_item_scale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| scale : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the scale factor for this item.

A scale of less than 1.0 causes the item to be rendered at a smaller size, and a scale greater than 1.0 renders the item at a larger size. A negative scale causes the item to be mirrored when rendered.

The default value is 1.0.

Scaling is applied from the :ref:`transformOrigin <sdk_qtquick_item_transformOrigin>`.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     import QtQuick 2.0                                                                                                                                 |
|                                                                                                                                                        |     Rectangle {                                                                                                                                        |
|                                                                                                                                                        |         color: "blue"                                                                                                                                  |
|                                                                                                                                                        |         width: 100; height: 100                                                                                                                        |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             color: "green"                                                                                                                             |
|                                                                                                                                                        |             width: 25; height: 25                                                                                                                      |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             color: "red"                                                                                                                               |
|                                                                                                                                                        |             x: 25; y: 25; width: 50; height: 50                                                                                                        |
|                                                                                                                                                        |             scale: 1.4                                                                                                                                 |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`transform <sdk_qtquick_item_transform>` and :ref:`Scale <sdk_qtquick_scale>`.

.. _sdk_qtquick_item_smooth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| smooth : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Primarily used in image based items to decide if the item should use smooth sampling or not. Smooth sampling is performed using linear interpolation, while non-smooth is performed using nearest neighbor.

In Qt Quick 2.0, this property has minimal impact on performance.

By default is true.

.. _sdk_qtquick_item_state:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| state : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the current state of the item.

If the item is in its default state, that is, no explicit state has been set, then this property holds an empty string. Likewise, you can return an item to its default state by setting this property to an empty string.

**See also** `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ .

.. _sdk_qtquick_item_states:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| states : list<:ref:`State <sdk_qtquick_state>`>                                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of possible states for this item. To change the state of this item, set the :ref:`state <sdk_qtquick_item_state>` property to one of these states, or set the :ref:`state <sdk_qtquick_item_state>` property to an empty string to revert the item to its default state.

This property is specified as a list of :ref:`State <sdk_qtquick_state>` objects. For example, below is an item with "red\_color" and "blue\_color" states:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: root
        width: 100; height: 100
        states: [
            State {
                name: "red_color"
                PropertyChanges { target: root; color: "red" }
            },
            State {
                name: "blue_color"
                PropertyChanges { target: root; color: "blue" }
            }
        ]
    }

See `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_  and `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  for more details on using states and transitions.

**See also** `transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-topic/#transitions>`_ .

.. _sdk_qtquick_item_transform:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| transform : list<:ref:`Transform <sdk_qtquick_transform>`>                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of transformations to apply.

For more information see :ref:`Transform <sdk_qtquick_transform>`.

.. _sdk_qtquick_item_transformOrigin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| transformOrigin : enumeration                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the origin point around which scale and rotation transform.

Nine transform origins are available, as shown in the image below. The default transform origin is ``Item.Center``.

This example rotates an image around its bottom-right corner.

.. code:: qml

    Image {
        source: "myimage.png"
        transformOrigin: Item.BottomRight
        rotation: 45
    }

To set an arbitrary transform origin point use the :ref:`Scale <sdk_qtquick_scale>` or :ref:`Rotation <sdk_qtquick_rotation>` transform types with :ref:`transform <sdk_qtquick_item_transform>`.

.. _sdk_qtquick_item_transitions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| transitions : list<:ref:`Transition <sdk_qtquick_transition>`>                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of transitions for this item. These define the transitions to be applied to the item whenever it changes its :ref:`state <sdk_qtquick_item_state>`.

This property is specified as a list of `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  objects. For example:

.. code:: qml

    import QtQuick 2.0
    Item {
        transitions: [
            Transition {
                //...
            },
            Transition {
                //...
            }
        ]
    }

See `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_  and `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  for more details on using states and transitions.

**See also** `states </sdk/apps/qml/QtQuick/qtquick-statesanimations-topic/#states>`_ .

.. _sdk_qtquick_item_visible:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visible : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the item is visible. By default this is true.

Setting this property directly affects the ``visible`` value of child items. When set to ``false``, the ``visible`` values of all child items also become ``false``. When set to ``true``, the ``visible`` values of child items are returned to ``true``, unless they have explicitly been set to ``false``.

(Because of this flow-on behavior, using the ``visible`` property may not have the intended effect if a property binding should only respond to explicit property changes. In such cases it may be better to use the `opacity </sdk/apps/qml/QtQuick/qtquick-effects-topic/#opacity>`_  property instead.)

If this property is set to ``false``, the item will no longer receive mouse events, but will continue to receive key events and will retain the keyboard :ref:`focus <sdk_qtquick_item_focus>` if it has been set. (In contrast, setting the :ref:`enabled <sdk_qtquick_item_enabled>` property to ``false`` stops both mouse and keyboard events, and also removes focus from the item.)

**Note:** This property's value is only affected by changes to this property or the parent's ``visible`` property. It does not change, for example, if this item moves off-screen, or if the `opacity </sdk/apps/qml/QtQuick/qtquick-effects-topic/#opacity>`_  changes to 0.

**See also** `opacity </sdk/apps/qml/QtQuick/qtquick-effects-topic/#opacity>`_  and :ref:`enabled <sdk_qtquick_item_enabled>`.

.. _sdk_qtquick_item_visibleChildren:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visibleChildren : list<:ref:`Item <sdk_qtquick_item>`>                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property lists all of the item's children that are currently visible. Note that a child's visibility may have changed explicitly, or because the visibility of this (it's parent) item or another grandparent changed.

.. _sdk_qtquick_item_width:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| width : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the item's position and size.

The (x,y) position is relative to the :ref:`parent <sdk_qtquick_item_parent>`.

.. code:: qml

    Item { x: 100; y: 100; width: 100; height: 100 }

.. _sdk_qtquick_item_x:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| x : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the item's position and size.

The (x,y) position is relative to the :ref:`parent <sdk_qtquick_item_parent>`.

.. code:: qml

    Item { x: 100; y: 100; width: 100; height: 100 }

.. _sdk_qtquick_item_y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| y : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the item's position and size.

The (x,y) position is relative to the :ref:`parent <sdk_qtquick_item_parent>`.

.. code:: qml

    Item { x: 100; y: 100; width: 100; height: 100 }

.. _sdk_qtquick_item_z:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| z : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the stacking order of sibling items. By default the stacking order is 0.

Items with a higher stacking value are drawn on top of siblings with a lower stacking order. Items with the same stacking value are drawn bottom up in the order they appear. Items with a negative stacking value are drawn under their parent's content.

The following example shows the various effects of stacking order.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | Same ``z`` - later children above earlier children:                                                                                                            |
|                                                                                                                                                        | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             color: "red"                                                                                                                               |
|                                                                                                                                                        |             width: 100; height: 100                                                                                                                    |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             color: "blue"                                                                                                                              |
|                                                                                                                                                        |             x: 50; y: 50; width: 100; height: 100                                                                                                      |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                               | Higher ``z`` on top:                                                                                                                                            |
|                                                                                                                                                        | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             z: 1                                                                                                                                       |
|                                                                                                                                                        |             color: "red"                                                                                                                               |
|                                                                                                                                                        |             width: 100; height: 100                                                                                                                    |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             color: "blue"                                                                                                                              |
|                                                                                                                                                        |             x: 50; y: 50; width: 100; height: 100                                                                                                      |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                               | Same ``z`` - children above parents:                                                                                                                            |
|                                                                                                                                                        | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             color: "red"                                                                                                                               |
|                                                                                                                                                        |             width: 100; height: 100                                                                                                                    |
|                                                                                                                                                        |             Rectangle {                                                                                                                                |
|                                                                                                                                                        |                 color: "blue"                                                                                                                          |
|                                                                                                                                                        |                 x: 50; y: 50; width: 100; height: 100                                                                                                  |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                               | Lower ``z`` below:                                                                                                                                              |
|                                                                                                                                                        | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     Item {                                                                                                                                             |
|                                                                                                                                                        |         Rectangle {                                                                                                                                    |
|                                                                                                                                                        |             color: "red"                                                                                                                               |
|                                                                                                                                                        |             width: 100; height: 100                                                                                                                    |
|                                                                                                                                                        |             Rectangle {                                                                                                                                |
|                                                                                                                                                        |                 z: -1                                                                                                                                  |
|                                                                                                                                                        |                 color: "blue"                                                                                                                          |
|                                                                                                                                                        |                 x: 50; y: 50; width: 100; height: 100                                                                                                  |
|                                                                                                                                                        |             }                                                                                                                                          |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Method Documentation
--------------------

.. _sdk_qtquick_item_childAt:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| childAt(real *x*, real *y*)                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the first visible child item found at point (*x*, *y*) within the coordinate system of this item.

Returns ``null`` if there is no such item.

.. _sdk_qtquick_item_contains:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object contains(point *point*)                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if this item contains *point*, which is in local coordinates; returns false otherwise.

.. _sdk_qtquick_item_forceActiveFocus:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| forceActiveFocus(Qt::FocusReason *reason*)                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Forces active focus on the item with the given *reason*.

This method sets focus on the item and ensures that all ancestor :ref:`FocusScope <sdk_qtquick_focusscope>` objects in the object hierarchy are also given :ref:`focus <sdk_qtquick_item_focus>`.

This QML method was introduced in Qt 5.1.

**See also** :ref:`activeFocus <sdk_qtquick_item_activeFocus>` and Qt::FocusReason.

.. _sdk_qtquick_item_forceActiveFocus1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| forceActiveFocus()                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This is an overloaded function.

Forces active focus on the item.

This method sets focus on the item and ensures that all ancestor :ref:`FocusScope <sdk_qtquick_focusscope>` objects in the object hierarchy are also given :ref:`focus <sdk_qtquick_item_focus>`.

The reason for the focus change will be *Qt::OtherFocusReason*. Use the overloaded method to specify the focus reason to enable better handling of the focus change.

**See also** :ref:`activeFocus <sdk_qtquick_item_activeFocus>`.

.. _sdk_qtquick_item_grabToImage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool grabToImage(callback, targetSize)                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Grabs the item into an in-memory image.

The grab happens asynchronously and the JavaScript function *callback* is invoked when the grab is completed.

Use *targetSize* to specify the size of the target image. By default, the result will have the same size as the item.

If the grab could not be initiated, the function returns ``false``.

The following snippet shows how to grab an item and store the results to a file.

.. code:: qml

    Rectangle {
        id: source
        width: 100
        height: 100
        gradient: Gradient {
            GradientStop { position: 0; color: "steelblue" }
            GradientStop { position: 1; color: "black" }
        }
    }
        // ...
        source.grabToImage(function(result) {
                               result.saveToFile("something.png");
                           });

The following snippet shows how to grab an item and use the results in another image element.

.. code:: qml

    Image {
        id: image
    }
        // ...
        source.grabToImage(function(result) {
                               image.source = result.url;
                           },
                           Qt.size(50, 50));

**Note:** This function will render the item to an offscreen surface and copy that surface from the GPU's memory into the CPU's memory, which can be quite costly. For "live" preview, use :ref:`layers <sdk_qtquick_item_layer.enabled>` or :ref:`ShaderEffectSource <sdk_qtquick_shadereffectsource>`.

.. _sdk_qtquick_item_mapFromItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object mapFromItem(:ref:`Item <sdk_qtquick_item>` *item*, real *x*, real *y*, real *width*, real *height*)                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which is in *item*'s coordinate system, to this item's coordinate system, and returns an object with ``x`` and ``y`` (and optionally ``width`` and ``height``) properties matching the mapped coordinate.

If *item* is a ``null`` value, this maps the point or rect from the coordinate system of the root QML view.

.. _sdk_qtquick_item_mapFromItem1:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object mapFromItem(:ref:`Item <sdk_qtquick_item>` *item*, real *x*, real *y*)                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which is in *item*'s coordinate system, to this item's coordinate system, and returns an object with ``x`` and ``y`` (and optionally ``width`` and ``height``) properties matching the mapped coordinate.

If *item* is a ``null`` value, this maps the point or rect from the coordinate system of the root QML view.

.. _sdk_qtquick_item_mapToItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object mapToItem(:ref:`Item <sdk_qtquick_item>` *item*, real *x*, real *y*, real *width*, real *height*)                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which is in this item's coordinate system, to *item*'s coordinate system, and returns an object with ``x`` and ``y`` (and optionally ``width`` and ``height``) properties matching the mapped coordinate.

If *item* is a ``null`` value, this maps the point or rect to the coordinate system of the root QML view.

.. _sdk_qtquick_item_mapToItem1:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object mapToItem(:ref:`Item <sdk_qtquick_item>` *item*, real *x*, real *y*)                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which is in this item's coordinate system, to *item*'s coordinate system, and returns an object with ``x`` and ``y`` (and optionally ``width`` and ``height``) properties matching the mapped coordinate.

If *item* is a ``null`` value, this maps the point or rect to the coordinate system of the root QML view.

.. _sdk_qtquick_item_nextItemInFocusChain:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| nextItemInFocusChain(bool *forward*)                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the item in the focus chain which is next to this item. If *forward* is ``true``, or not supplied, it is the next item in the forwards direction. If *forward* is ``false``, it is the next item in the backwards direction.

This QML method was introduced in Qt 5.1.

