A basic visual QML type

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Instantiates:                        | QQuickItem                           |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | AnimatedSprite, BorderImage, Canvas, |
|                                      | Column, Flickable, Flipable, Flow,   |
|                                      | FocusScope, Grid, Image, Loader,     |
|                                      | MouseArea, MultiPointTouchArea,      |
|                                      | ParticlePainter, PathView,           |
|                                      | PinchArea, Rectangle, Repeater, Row, |
|                                      | ShaderEffect, ShaderEffectSource,    |
|                                      | SignalSpy, SpriteSequence, TestCase, |
|                                      | Text, TextEdit, and TextInput.       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`activeFocus </sdk/apps/qml/QtQuick/Item#activeFocus-prop>`__****
   : bool
-  ****`activeFocusOnTab </sdk/apps/qml/QtQuick/Item#activeFocusOnTab-prop>`__****
   : bool
-  ****`anchors </sdk/apps/qml/QtQuick/Item#anchors-prop>`__****

   -  ****`anchors.top </sdk/apps/qml/QtQuick/Item#anchors.top-prop>`__****
      : AnchorLine
   -  ****`anchors.bottom </sdk/apps/qml/QtQuick/Item#anchors.bottom-prop>`__****
      : AnchorLine
   -  ****`anchors.left </sdk/apps/qml/QtQuick/Item#anchors.left-prop>`__****
      : AnchorLine
   -  ****`anchors.right </sdk/apps/qml/QtQuick/Item#anchors.right-prop>`__****
      : AnchorLine
   -  ****`anchors.horizontalCenter </sdk/apps/qml/QtQuick/Item#anchors.horizontalCenter-prop>`__****
      : AnchorLine
   -  ****`anchors.verticalCenter </sdk/apps/qml/QtQuick/Item#anchors.verticalCenter-prop>`__****
      : AnchorLine
   -  ****`anchors.baseline </sdk/apps/qml/QtQuick/Item#anchors.baseline-prop>`__****
      : AnchorLine
   -  ****`anchors.fill </sdk/apps/qml/QtQuick/Item#anchors.fill-prop>`__****
      : Item
   -  ****`anchors.centerIn </sdk/apps/qml/QtQuick/Item#anchors.centerIn-prop>`__****
      : Item
   -  ****`anchors.margins </sdk/apps/qml/QtQuick/Item#anchors.margins-prop>`__****
      : real
   -  ****`anchors.topMargin </sdk/apps/qml/QtQuick/Item#anchors.topMargin-prop>`__****
      : real
   -  ****`anchors.bottomMargin </sdk/apps/qml/QtQuick/Item#anchors.bottomMargin-prop>`__****
      : real
   -  ****`anchors.leftMargin </sdk/apps/qml/QtQuick/Item#anchors.leftMargin-prop>`__****
      : real
   -  ****`anchors.rightMargin </sdk/apps/qml/QtQuick/Item#anchors.rightMargin-prop>`__****
      : real
   -  ****`anchors.horizontalCenterOffset </sdk/apps/qml/QtQuick/Item#anchors.horizontalCenterOffset-prop>`__****
      : real
   -  ****`anchors.verticalCenterOffset </sdk/apps/qml/QtQuick/Item#anchors.verticalCenterOffset-prop>`__****
      : real
   -  ****`anchors.baselineOffset </sdk/apps/qml/QtQuick/Item#anchors.baselineOffset-prop>`__****
      : real
   -  ****`anchors.alignWhenCentered </sdk/apps/qml/QtQuick/Item#anchors.alignWhenCentered-prop>`__****
      : bool

-  ****`antialiasing </sdk/apps/qml/QtQuick/Item#antialiasing-prop>`__****
   : bool
-  ****`baselineOffset </sdk/apps/qml/QtQuick/Item#baselineOffset-prop>`__****
   : int
-  ****`children </sdk/apps/qml/QtQuick/Item#children-prop>`__**** :
   list<Item>
-  ****`childrenRect </sdk/apps/qml/QtQuick/Item#childrenRect-prop>`__****

   -  ****`childrenRect.x </sdk/apps/qml/QtQuick/Item#childrenRect.x-prop>`__****
      : real
   -  ****`childrenRect.y </sdk/apps/qml/QtQuick/Item#childrenRect.y-prop>`__****
      : real
   -  ****`childrenRect.width </sdk/apps/qml/QtQuick/Item#childrenRect.width-prop>`__****
      : real
   -  ****`childrenRect.height </sdk/apps/qml/QtQuick/Item#childrenRect.height-prop>`__****
      : real

-  ****`clip </sdk/apps/qml/QtQuick/Item#clip-prop>`__**** : bool
-  ****`data </sdk/apps/qml/QtQuick/Item#data-prop>`__**** :
   list<Object>
-  ****`enabled </sdk/apps/qml/QtQuick/Item#enabled-prop>`__**** : bool
-  ****`focus </sdk/apps/qml/QtQuick/Item#focus-prop>`__**** : bool
-  ****`height </sdk/apps/qml/QtQuick/Item#height-prop>`__**** : real
-  ****`implicitHeight </sdk/apps/qml/QtQuick/Item#implicitHeight-prop>`__****
   : real
-  ****`implicitWidth </sdk/apps/qml/QtQuick/Item#implicitWidth-prop>`__****
   : real
-  ****`layer.effect </sdk/apps/qml/QtQuick/Item#layer.effect-prop>`__****
   : Component
-  ****`layer.enabled </sdk/apps/qml/QtQuick/Item#layer.enabled-prop>`__****
   : bool
-  ****`layer.format </sdk/apps/qml/QtQuick/Item#layer.format-prop>`__****
   : enumeration
-  ****`layer.mipmap </sdk/apps/qml/QtQuick/Item#layer.mipmap-prop>`__****
   : bool
-  ****`layer.samplerName </sdk/apps/qml/QtQuick/Item#layer.samplerName-prop>`__****
   : string
-  ****`layer.smooth </sdk/apps/qml/QtQuick/Item#layer.smooth-prop>`__****
   : bool
-  ****`layer.sourceRect </sdk/apps/qml/QtQuick/Item#layer.sourceRect-prop>`__****
   : rect
-  ****`layer.textureSize </sdk/apps/qml/QtQuick/Item#layer.textureSize-prop>`__****
   : size
-  ****`layer.wrapMode </sdk/apps/qml/QtQuick/Item#layer.wrapMode-prop>`__****
   : enumeration
-  ****`opacity </sdk/apps/qml/QtQuick/Item#opacity-prop>`__**** : real
-  ****`parent </sdk/apps/qml/QtQuick/Item#parent-prop>`__**** : Item
-  ****`resources </sdk/apps/qml/QtQuick/Item#resources-prop>`__**** :
   list<Object>
-  ****`rotation </sdk/apps/qml/QtQuick/Item#rotation-prop>`__**** :
   real
-  ****`scale </sdk/apps/qml/QtQuick/Item#scale-prop>`__**** : real
-  ****`smooth </sdk/apps/qml/QtQuick/Item#smooth-prop>`__**** : bool
-  ****`state </sdk/apps/qml/QtQuick/Item#state-prop>`__**** : string
-  ****`states </sdk/apps/qml/QtQuick/Item#states-prop>`__**** :
   list<State>
-  ****`transform </sdk/apps/qml/QtQuick/Item#transform-prop>`__**** :
   list<Transform>
-  ****`transformOrigin </sdk/apps/qml/QtQuick/Item#transformOrigin-prop>`__****
   : enumeration
-  ****`transitions </sdk/apps/qml/QtQuick/Item#transitions-prop>`__****
   : list<Transition>
-  ****`visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__**** : bool
-  ****`visibleChildren </sdk/apps/qml/QtQuick/Item#visibleChildren-prop>`__****
   : list<Item>
-  ****`width </sdk/apps/qml/QtQuick/Item#width-prop>`__**** : real
-  ****`x </sdk/apps/qml/QtQuick/Item#x-prop>`__**** : real
-  ****`y </sdk/apps/qml/QtQuick/Item#y-prop>`__**** : real
-  ****`z </sdk/apps/qml/QtQuick/Item#z-prop>`__**** : real

Methods
-------

-  ****`childAt </sdk/apps/qml/QtQuick/Item#childAt-method>`__****\ (real
   *x*, real *y*)
-  object
   ****`contains </sdk/apps/qml/QtQuick/Item#contains-method>`__****\ (point
   *point*)
-  ****`forceActiveFocus </sdk/apps/qml/QtQuick/Item#forceActiveFocus-method-2>`__****\ (Qt::FocusReason
   *reason*)
-  ****`forceActiveFocus </sdk/apps/qml/QtQuick/Item#forceActiveFocus-method>`__****\ ()
-  bool
   ****`grabToImage </sdk/apps/qml/QtQuick/Item#grabToImage-method>`__****\ (callback,
   targetSize)
-  object
   ****`mapFromItem </sdk/apps/qml/QtQuick/Item#mapFromItem-method-2>`__****\ (Item
   *item*, real *x*, real *y*, real *width*, real *height*)
-  object
   ****`mapFromItem </sdk/apps/qml/QtQuick/Item#mapFromItem-method>`__****\ (Item
   *item*, real *x*, real *y*)
-  object
   ****`mapToItem </sdk/apps/qml/QtQuick/Item#mapToItem-method-2>`__****\ (Item
   *item*, real *x*, real *y*, real *width*, real *height*)
-  object
   ****`mapToItem </sdk/apps/qml/QtQuick/Item#mapToItem-method>`__****\ (Item
   *item*, real *x*, real *y*)
-  ****`nextItemInFocusChain </sdk/apps/qml/QtQuick/Item#nextItemInFocusChain-method>`__****\ (bool
   *forward*)

Detailed Description
--------------------

The Item type is the base type for all visual items in Qt Quick.

All visual items in Qt Quick inherit from Item. Although an Item object
has no visual appearance, it defines all the attributes that are common
across visual items, such as x and y position, width and height,
`anchoring </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/>`__ and
key handling support.

The Item type can be useful for grouping several items under a single
root visual item. For example:

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

Key handling is available to all Item-based visual types via the
`Keys </sdk/apps/qml/QtQuick/Keys/>`__ attached property. The *Keys*
attached property provides basic signals such as
`pressed </sdk/apps/qml/QtQuick/Keys#pressed-signal>`__ and
`released </sdk/apps/qml/QtQuick/Keys#released-signal>`__, as well as
signals for specific keys, such as
`spacePressed </sdk/apps/qml/QtQuick/Keys#spacePressed-signal>`__. The
example below assigns `keyboard
focus </sdk/apps/qml/QtQuick/qtquick-input-focus/>`__ to the item and
handles the left key via the general ``onPressed`` handler and the
return key via the ``onReturnPressed`` handler:

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

See the `Keys </sdk/apps/qml/QtQuick/Keys/>`__ attached property for
detailed documentation.

Layout Mirroring
~~~~~~~~~~~~~~~~

Item layouts can be mirrored using the
`LayoutMirroring </sdk/apps/qml/QtQuick/LayoutMirroring/>`__ attached
property. This causes
`anchors </sdk/apps/qml/QtQuick/Item#anchors.top-prop>`__ to be
horizontally reversed, and also causes items that lay out or position
their children (such as `ListView </sdk/apps/qml/QtQuick/ListView/>`__
or `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__) to
horizontally reverse the direction of their layouts.

See `LayoutMirroring </sdk/apps/qml/QtQuick/LayoutMirroring/>`__ for
more details.

Item Layers
-----------

An Item will normally be rendered directly into the window it belongs
to. However, by setting
`layer.enabled </sdk/apps/qml/QtQuick/Item#layer.enabled-prop>`__, it is
possible to delegate the item and its entire subtree into an offscreen
surface. Only the offscreen surface, a texture, will be then drawn into
the window.

If it is desired to have a texture size different from that of the item,
this is possible using
`layer.textureSize </sdk/apps/qml/QtQuick/Item#layer.textureSize-prop>`__.
To render only a section of the item into the texture, use
`layer.sourceRect </sdk/apps/qml/QtQuick/Item#layer.sourceRect-prop>`__.
It is also possible to specify
`layer.sourceRect </sdk/apps/qml/QtQuick/Item#layer.sourceRect-prop>`__
so it extends beyond the bounds of the item. In this case, the exterior
will be padded with transparent pixels.

The item will use linear interpolation for scaling if
`layer.smooth </sdk/apps/qml/QtQuick/Item#layer.smooth-prop>`__ is set
to ``true`` and will use mipmap for downsampling if
`layer.mipmap </sdk/apps/qml/QtQuick/Item#layer.mipmap-prop>`__ is set
to ``true``. Mipmapping may improve visual quality of downscaled items.
For mipmapping of single Image items, prefer
`Image::mipmap </sdk/apps/qml/QtQuick/Image#mipmap-prop>`__.

Layer Opacity vs Item Opacity
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When applying
`opacity </sdk/apps/qml/QtQuick/qtquick-effects-topic#opacity>`__ to an
item hierarchy the opacity is applied to each item individually. This
can lead to undesired visual results when the opacity is applied to a
subtree. Consider the following example:

+--------------------------------------+--------------------------------------+
| |image0|                             | **Non-layered Opacity**              |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         id: nonLayered               |
|                                      |         opacity: 0.5                 |
|                                      |         width: 100                   |
|                                      |         height: 100                  |
|                                      |         Rectangle { width: 80; heigh |
|                                      | t: 80; border.width: 1 }             |
|                                      |         Rectangle { x: 20; y: 20; wi |
|                                      | dth: 80; height: 80; border.width: 1 |
|                                      |  }                                   |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

A layer is rendered with the root item's opacity being 1, and then the
root item's opacity is applied to the texture when it is drawn. This
means that fading in a large item hierarchy from transparent to opaque,
or vice versa, can be done without the overlap artifacts that the normal
item by item alpha blending has. Here is the same example with layer
enabled:

+--------------------------------------+--------------------------------------+
| |image1|                             | **Layered Opacity**                  |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         id: layered                  |
|                                      |         opacity: 0.5                 |
|                                      |         layer.enabled: true          |
|                                      |         width: 100                   |
|                                      |         height: 100                  |
|                                      |         Rectangle { width: 80; heigh |
|                                      | t: 80; border.width: 1 }             |
|                                      |         Rectangle { x: 20; y: 20; wi |
|                                      | dth: 80; height: 80; border.width: 1 |
|                                      |  }                                   |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

Combined with ShaderEffects
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Setting layer.enabled to true will turn the item into a texture
provider, making it possible to use the item directly as a texture, for
instance in combination with the ShaderEffect type.

It is possible to apply an effect on a layer at runtime using
layer.effect:

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

In this example, we implement the shader effect manually. The Qt
Graphical Effects module contains a suite of ready-made effects for use
with Qt Quick.

See `ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__ for more
information about using effects.

**Note:**
`layer.enabled </sdk/apps/qml/QtQuick/Item#layer.enabled-prop>`__ is
actually just a more convenient way of using
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.

Memory and Performance
~~~~~~~~~~~~~~~~~~~~~~

When an item's layer is enabled, the scene graph will allocate memory in
the GPU equal to ``width x height x 4``. In memory constrained
configurations, large layers should be used with care.

In the QPainter / QWidget world, it is some times favorable to cache
complex content in a pixmap, image or texture. In Qt Quick, because of
the techniques already applied by the `scene graph
renderer </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph-renderer/>`__,
this will in most cases not be the case. Excessive draw calls are
already reduced because of batching and a cache will in most cases end
up blending more pixels than the original content. The overhead of
rendering to an offscreen and the blending involved with drawing the
resulting texture is therefore often more costly than simply letting the
item and its children be drawn normally.

Also, an item using a layer can not be
`batched </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph-renderer#batching>`__
during rendering. This means that a scene with many layered items may
have performance problems.

Layering can be convenient and useful for visual effects, but should in
most cases be enabled for the duration of the effect and disabled
afterwards.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ activeFocus : bool                                              |
+--------------------------------------------------------------------------+

This read-only property indicates whether the item has active focus.

If activeFocus is true, either this item is the one that currently
receives keyboard input, or it is a
`FocusScope </sdk/apps/qml/QtQuick/FocusScope/>`__ ancestor of the item
that currently receives keyboard input.

Usually, activeFocus is gained by setting
`focus </sdk/apps/qml/QtQuick/Item#focus-prop>`__ on an item and its
enclosing `FocusScope </sdk/apps/qml/QtQuick/FocusScope/>`__ objects. In
the following example, the ``input`` and ``focusScope`` objects will
have active focus, while the root rectangle object will not.

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

**See also** `focus </sdk/apps/qml/QtQuick/Item#focus-prop>`__ and
`Keyboard Focus in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`__.

| 

+--------------------------------------------------------------------------+
|        \ activeFocusOnTab : bool                                         |
+--------------------------------------------------------------------------+

This property holds whether the item wants to be in tab focus chain. By
default this is set to false.

The tab focus chain traverses elements by visiting first the parent, and
then its children in the order they occur in the children property.
Pressing the tab key on an item in the tab focus chain will move
keyboard focus to the next item in the chain. Pressing BackTab (normally
Shift+Tab) will move focus to the previous item.

To set up a manual tab focus chain, see
`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__. Tab key events
used by Keys or `KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__
have precedence over focus chain behavior, ignore the events in other
key handlers to allow it to propagate.

| 

+--------------------------------------------------------------------------+
|        \ **anchors group**                                               |
+==========================================================================+
|        \ anchors.top : AnchorLine                                        |
+--------------------------------------------------------------------------+
|        \ anchors.bottom : AnchorLine                                     |
+--------------------------------------------------------------------------+
|        \ anchors.left : AnchorLine                                       |
+--------------------------------------------------------------------------+
|        \ anchors.right : AnchorLine                                      |
+--------------------------------------------------------------------------+
|        \ anchors.horizontalCenter : AnchorLine                           |
+--------------------------------------------------------------------------+
|        \ anchors.verticalCenter : AnchorLine                             |
+--------------------------------------------------------------------------+
|        \ anchors.baseline : AnchorLine                                   |
+--------------------------------------------------------------------------+
|        \ anchors.fill : `Item </sdk/apps/qml/QtQuick/Item/>`__           |
+--------------------------------------------------------------------------+
|        \ anchors.centerIn : `Item </sdk/apps/qml/QtQuick/Item/>`__       |
+--------------------------------------------------------------------------+
|        \ anchors.margins : real                                          |
+--------------------------------------------------------------------------+
|        \ anchors.topMargin : real                                        |
+--------------------------------------------------------------------------+
|        \ anchors.bottomMargin : real                                     |
+--------------------------------------------------------------------------+
|        \ anchors.leftMargin : real                                       |
+--------------------------------------------------------------------------+
|        \ anchors.rightMargin : real                                      |
+--------------------------------------------------------------------------+
|        \ anchors.horizontalCenterOffset : real                           |
+--------------------------------------------------------------------------+
|        \ anchors.verticalCenterOffset : real                             |
+--------------------------------------------------------------------------+
|        \ anchors.baselineOffset : real                                   |
+--------------------------------------------------------------------------+
|        \ anchors.alignWhenCentered : bool                                |
+--------------------------------------------------------------------------+

Anchors provide a way to position an item by specifying its relationship
with other items.

Margins apply to top, bottom, left, right, and fill anchors. The
`anchors.margins </sdk/apps/qml/QtQuick/Item#anchors.margins-prop>`__
property can be used to set all of the various margins at once, to the
same value. It will not override a specific margin that has been
previously set; to clear an explicit margin set its value to
``undefined``. Note that margins are anchor-specific and are not applied
if an item does not use anchors.

Offsets apply for horizontal center, vertical center, and baseline
anchors.

+--------------------------------------+--------------------------------------+
| |image2|                             | Text anchored to Image, horizontally |
|                                      | centered and vertically below, with  |
|                                      | a margin.                            |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         Image {                      |
|                                      |             id: pic                  |
|                                      |             // ...                   |
|                                      |         }                            |
|                                      |         Text {                       |
|                                      |             id: label                |
|                                      |             anchors.horizontalCenter |
|                                      | : pic.horizontalCenter               |
|                                      |             anchors.top: pic.bottom  |
|                                      |             anchors.topMargin: 5     |
|                                      |             // ...                   |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image3|                             | Left of Text anchored to right of    |
|                                      | Image, with a margin. The y property |
|                                      | of both defaults to 0.               |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         Image {                      |
|                                      |             id: pic                  |
|                                      |             // ...                   |
|                                      |         }                            |
|                                      |         Text {                       |
|                                      |             id: label                |
|                                      |             anchors.left: pic.right  |
|                                      |             anchors.leftMargin: 5    |
|                                      |             // ...                   |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

`anchors.fill </sdk/apps/qml/QtQuick/Item#anchors.fill-prop>`__ provides
a convenient way for one item to have the same geometry as another item,
and is equivalent to connecting all four directional anchors.

To clear an anchor value, set it to ``undefined``.

`anchors.alignWhenCentered </sdk/apps/qml/QtQuick/Item#anchors.alignWhenCentered-prop>`__
(default ``true``) forces centered anchors to align to a whole pixel; if
the item being centered has an odd
`width </sdk/apps/qml/QtQuick/Item#width-prop>`__ or
`height </sdk/apps/qml/QtQuick/Item#height-prop>`__, the item will be
positioned on a whole pixel rather than being placed on a half-pixel.
This ensures the item is painted crisply. There are cases where this is
not desirable, for example when rotating the item jitters may be
apparent as the center is rounded.

**Note:** You can only anchor an item to siblings or a parent.

For more information see `Anchor
Layouts </sdk/apps/qml/QtQuick/qtquick-positioning-anchors#anchor-layout>`__.

| 

+--------------------------------------------------------------------------+
|        \ antialiasing : bool                                             |
+--------------------------------------------------------------------------+

Used by visual elements to decide if the item should use antialiasing or
not. In some cases items with antialiasing require more memory and are
potentially slower to render (see
`Antialiasing </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph-renderer#antialiasing>`__
for more details).

The default is false, but may be overridden by derived elements.

| 

+--------------------------------------------------------------------------+
|        \ baselineOffset : int                                            |
+--------------------------------------------------------------------------+

Specifies the position of the item's baseline in local coordinates.

The baseline of a
`Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__ item is the
imaginary line on which the text sits. Controls containing text usually
set their baseline to the baseline of their text.

For non-text items, a default baseline offset of 0 is used.

| 

+--------------------------------------------------------------------------+
|        \ children : list<`Item </sdk/apps/qml/QtQuick/Item/>`__>         |
+--------------------------------------------------------------------------+

The children property contains the list of visual children of this item.
The resources property contains non-visual resources that you want to
reference by name.

It is not generally necessary to refer to these properties when adding
child items or resources, as the default
`data </sdk/apps/qml/QtQuick/Item#data-prop>`__ property will
automatically assign child objects to the ``children`` and ``resources``
properties as appropriate. See the
`data </sdk/apps/qml/QtQuick/Item#data-prop>`__ documentation for
details.

| 

+--------------------------------------------------------------------------+
|        \ **childrenRect group**                                          |
+==========================================================================+
|        \ childrenRect.x : real                                           |
+--------------------------------------------------------------------------+
|        \ childrenRect.y : real                                           |
+--------------------------------------------------------------------------+
|        \ childrenRect.width : real                                       |
+--------------------------------------------------------------------------+
|        \ childrenRect.height : real                                      |
+--------------------------------------------------------------------------+

This property holds the collective position and size of the item's
children.

This property is useful if you need to access the collective geometry of
an item's children in order to correctly size the item.

| 

+--------------------------------------------------------------------------+
|        \ clip : bool                                                     |
+--------------------------------------------------------------------------+

This property holds whether clipping is enabled. The default clip value
is ``false``.

If clipping is enabled, an item will clip its own painting, as well as
the painting of its children, to its bounding rectangle.

| 

+--------------------------------------------------------------------------+
|        \ [default] data : list<Object>                                   |
+--------------------------------------------------------------------------+

The data property allows you to freely mix visual children and resources
in an item. If you assign a visual item to the data list it becomes a
child and if you assign any other object type, it is added as a
resource.

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

It should not generally be necessary to refer to the ``data`` property,
as it is the default property for Item and thus all child items are
automatically assigned to this property.

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the item receives mouse and keyboard events.
By default this is true.

Setting this property directly affects the ``enabled`` value of child
items. When set to ``false``, the ``enabled`` values of all child items
also become ``false``. When set to ``true``, the ``enabled`` values of
child items are returned to ``true``, unless they have explicitly been
set to ``false``.

Setting this property to ``false`` automatically causes
`activeFocus </sdk/apps/qml/QtQuick/Item#activeFocus-prop>`__ to be set
to ``false``, and this item will longer receive keyboard events.

**See also** `visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ focus : bool                                                    |
+--------------------------------------------------------------------------+

This property holds whether the item has focus within the enclosing
`FocusScope </sdk/apps/qml/QtQuick/FocusScope/>`__. If true, this item
will gain active focus when the enclosing
`FocusScope </sdk/apps/qml/QtQuick/FocusScope/>`__ gains active focus.

In the following example, ``input`` will be given active focus when
``scope`` gains active focus:

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

For the purposes of this property, the scene as a whole is assumed to
act like a focus scope. On a practical level, that means the following
QML will give active focus to ``input`` on startup.

.. code:: qml

    Rectangle {
        width: 100; height: 100
        TextInput {
              id: input
              focus: true
        }
    }

**See also**
`activeFocus </sdk/apps/qml/QtQuick/Item#activeFocus-prop>`__ and
`Keyboard Focus in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-input-focus/>`__.

| 

+--------------------------------------------------------------------------+
|        \ height : real                                                   |
+--------------------------------------------------------------------------+

Defines the item's position and size.

The (x,y) position is relative to the
`parent </sdk/apps/qml/QtQuick/Item#parent-prop>`__.

.. code:: qml

    Item { x: 100; y: 100; width: 100; height: 100 }

| 

+--------------------------------------------------------------------------+
|        \ implicitHeight : real                                           |
+--------------------------------------------------------------------------+

Defines the natural width or height of the Item if no
`width </sdk/apps/qml/QtQuick/Item#width-prop>`__ or
`height </sdk/apps/qml/QtQuick/Item#height-prop>`__ is specified.

The default implicit size for most items is 0x0, however some items have
an inherent implicit size which cannot be overridden, e.g. Image, Text.

Setting the implicit size is useful for defining components that have a
preferred size based on their content, for example:

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

**Note**: using
`implicitWidth </sdk/apps/qml/QtQuick/Item#implicitWidth-prop>`__ of
Text or `TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ and setting the
width explicitly incurs a performance penalty as the text must be laid
out twice.

| 

+--------------------------------------------------------------------------+
|        \ implicitWidth : real                                            |
+--------------------------------------------------------------------------+

Defines the natural width or height of the Item if no
`width </sdk/apps/qml/QtQuick/Item#width-prop>`__ or
`height </sdk/apps/qml/QtQuick/Item#height-prop>`__ is specified.

The default implicit size for most items is 0x0, however some items have
an inherent implicit size which cannot be overridden, e.g. Image, Text.

Setting the implicit size is useful for defining components that have a
preferred size based on their content, for example:

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

**Note**: using implicitWidth of Text or
`TextEdit </sdk/apps/qml/QtQuick/TextEdit/>`__ and setting the width
explicitly incurs a performance penalty as the text must be laid out
twice.

| 

+--------------------------------------------------------------------------+
|        \ layer.effect : Component                                        |
+--------------------------------------------------------------------------+

Holds the effect that is applied to this layer.

The effect is typically a
`ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__ component,
although any `Item </sdk/apps/qml/QtQuick/Item/>`__ component can be
assigned. The effect should have a source texture property with a name
matching
`layer.samplerName </sdk/apps/qml/QtQuick/Item#layer.samplerName-prop>`__.

**See also**
`layer.samplerName </sdk/apps/qml/QtQuick/Item#layer.samplerName-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ layer.enabled : bool                                            |
+--------------------------------------------------------------------------+

Holds whether the item is layered or not. Layering is disabled by
default.

A layered item is rendered into an offscreen surface and cached until it
is changed. Enabling layering for complex QML item hierarchies can
sometimes be an optimization.

None of the other layer properties have any effect when the layer is
disabled.

| 

+--------------------------------------------------------------------------+
|        \ layer.format : enumeration                                      |
+--------------------------------------------------------------------------+

This property defines the internal OpenGL format of the texture.
Modifying this property makes most sense when the *layer.effect* is also
specified. Depending on the OpenGL implementation, this property might
allow you to save some texture memory.

-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.Alpha
   - GL\_ALPHA;
-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.RGB
   - GL\_RGB
-  `ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.RGBA
   - GL\_RGBA

**Note:**
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.RGB
and
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.Alpha
should be used with caution, as support for these formats in the
underlying hardare and driver is often not present.

| 

+--------------------------------------------------------------------------+
|        \ layer.mipmap : bool                                             |
+--------------------------------------------------------------------------+

If this property is true, mipmaps are generated for the texture.

**Note:** Some OpenGL ES 2 implementations do not support mipmapping of
non-power-of-two textures.

| 

+--------------------------------------------------------------------------+
|        \ layer.samplerName : string                                      |
+--------------------------------------------------------------------------+

Holds the name of the effect's source texture property.

This value must match the name of the effect's source texture property
so that the Item can pass the layer's offscreen surface to the effect
correctly.

**See also**
`layer.effect </sdk/apps/qml/QtQuick/Item#layer.effect-prop>`__ and
`ShaderEffect </sdk/apps/qml/QtQuick/ShaderEffect/>`__.

| 

+--------------------------------------------------------------------------+
|        \ layer.smooth : bool                                             |
+--------------------------------------------------------------------------+

Holds whether the layer is smoothly transformed.

| 

+--------------------------------------------------------------------------+
|        \ layer.sourceRect : rect                                         |
+--------------------------------------------------------------------------+

This property defines the rectangular area of the item that should be
rendered into the texture. The source rectangle can be larger than the
item itself. If the rectangle is null, which is the default, then the
whole item is rendered to the texture.

| 

+--------------------------------------------------------------------------+
|        \ layer.textureSize : size                                        |
+--------------------------------------------------------------------------+

This property holds the requested pixel size of the layers texture. If
it is empty, which is the default, the size of the item is used.

**Note:** Some platforms have a limit on how small framebuffer objects
can be, which means the actual texture size might be larger than the
requested size.

| 

+--------------------------------------------------------------------------+
|        \ layer.wrapMode : enumeration                                    |
+--------------------------------------------------------------------------+

This property defines the OpenGL wrap modes associated with the texture.
Modifying this property makes most sense when the *layer.effect* is
specified.

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

+--------------------------------------------------------------------------+
|        \ opacity : real                                                  |
+--------------------------------------------------------------------------+

This property holds the opacity of the item. Opacity is specified as a
number between 0.0 (fully transparent) and 1.0 (fully opaque). The
default value is 1.0.

When this property is set, the specified opacity is also applied
individually to child items. This may have an unintended effect in some
circumstances. For example in the second set of rectangles below, the
red rectangle has specified an opacity of 0.5, which affects the opacity
of its blue child rectangle even though the child has not specified an
opacity.

+--------------------------------------+--------------------------------------+
| |image4|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         Rectangle {                  |
|                                      |             color: "red"             |
|                                      |             width: 100; height: 100  |
|                                      |             Rectangle {              |
|                                      |                 color: "blue"        |
|                                      |                 x: 50; y: 50; width: |
|                                      |  100; height: 100                    |
|                                      |             }                        |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image5|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         Rectangle {                  |
|                                      |             opacity: 0.5             |
|                                      |             color: "red"             |
|                                      |             width: 100; height: 100  |
|                                      |             Rectangle {              |
|                                      |                 color: "blue"        |
|                                      |                 x: 50; y: 50; width: |
|                                      |  100; height: 100                    |
|                                      |             }                        |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

Changing an item's opacity does not affect whether the item receives
user input events. (In contrast, setting
`visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__ property to
``false`` stops mouse events, and setting the
`enabled </sdk/apps/qml/QtQuick/Item#enabled-prop>`__ property to
``false`` stops mouse and keyboard events, and also removes active focus
from the item.)

**See also** `visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ parent : `Item </sdk/apps/qml/QtQuick/Item/>`__                 |
+--------------------------------------------------------------------------+

This property holds the visual parent of the item.

**Note:** The concept of the *visual parent* differs from that of the
*QObject parent*. An item's visual parent may not necessarily be the
same as its object parent. See `Concepts - Visual Parent in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-visualcanvas-visualparent/>`__ for
more details.

| 

+--------------------------------------------------------------------------+
|        \ resources : list<Object>                                        |
+--------------------------------------------------------------------------+

The children property contains the list of visual children of this item.
The resources property contains non-visual resources that you want to
reference by name.

It is not generally necessary to refer to these properties when adding
child items or resources, as the default
`data </sdk/apps/qml/QtQuick/Item#data-prop>`__ property will
automatically assign child objects to the ``children`` and ``resources``
properties as appropriate. See the
`data </sdk/apps/qml/QtQuick/Item#data-prop>`__ documentation for
details.

| 

+--------------------------------------------------------------------------+
|        \ rotation : real                                                 |
+--------------------------------------------------------------------------+

This property holds the rotation of the item in degrees clockwise around
its
`transformOrigin </sdk/apps/qml/QtQuick/Item#transformOrigin-prop>`__.

The default value is 0 degrees (that is, no rotation).

+--------------------------------------+--------------------------------------+
| |image6|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     Rectangle {                      |
|                                      |         color: "blue"                |
|                                      |         width: 100; height: 100      |
|                                      |         Rectangle {                  |
|                                      |             color: "red"             |
|                                      |             x: 25; y: 25; width: 50; |
|                                      |  height: 50                          |
|                                      |             rotation: 30             |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

**See also** `transform </sdk/apps/qml/QtQuick/Item#transform-prop>`__
and `Rotation </sdk/apps/qml/QtQuick/Rotation/>`__.

| 

+--------------------------------------------------------------------------+
|        \ scale : real                                                    |
+--------------------------------------------------------------------------+

This property holds the scale factor for this item.

A scale of less than 1.0 causes the item to be rendered at a smaller
size, and a scale greater than 1.0 renders the item at a larger size. A
negative scale causes the item to be mirrored when rendered.

The default value is 1.0.

Scaling is applied from the
`transformOrigin </sdk/apps/qml/QtQuick/Item#transformOrigin-prop>`__.

+--------------------------------------+--------------------------------------+
| |image7|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     import QtQuick 2.0               |
|                                      |     Rectangle {                      |
|                                      |         color: "blue"                |
|                                      |         width: 100; height: 100      |
|                                      |         Rectangle {                  |
|                                      |             color: "green"           |
|                                      |             width: 25; height: 25    |
|                                      |         }                            |
|                                      |         Rectangle {                  |
|                                      |             color: "red"             |
|                                      |             x: 25; y: 25; width: 50; |
|                                      |  height: 50                          |
|                                      |             scale: 1.4               |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

**See also** `transform </sdk/apps/qml/QtQuick/Item#transform-prop>`__
and `Scale </sdk/apps/qml/QtQuick/Scale/>`__.

| 

+--------------------------------------------------------------------------+
|        \ smooth : bool                                                   |
+--------------------------------------------------------------------------+

Primarily used in image based items to decide if the item should use
smooth sampling or not. Smooth sampling is performed using linear
interpolation, while non-smooth is performed using nearest neighbor.

In Qt Quick 2.0, this property has minimal impact on performance.

By default is true.

| 

+--------------------------------------------------------------------------+
|        \ state : string                                                  |
+--------------------------------------------------------------------------+

This property holds the name of the current state of the item.

If the item is in its default state, that is, no explicit state has been
set, then this property holds an empty string. Likewise, you can return
an item to its default state by setting this property to an empty
string.

**See also** `Qt Quick
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__.

| 

+--------------------------------------------------------------------------+
|        \ states : list<`State </sdk/apps/qml/QtQuick/State/>`__>         |
+--------------------------------------------------------------------------+

This property holds the list of possible states for this item. To change
the state of this item, set the
`state </sdk/apps/qml/QtQuick/Item#state-prop>`__ property to one of
these states, or set the
`state </sdk/apps/qml/QtQuick/Item#state-prop>`__ property to an empty
string to revert the item to its default state.

This property is specified as a list of
`State </sdk/apps/qml/QtQuick/State/>`__ objects. For example, below is
an item with "red\_color" and "blue\_color" states:

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

See `Qt Quick
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__ and
`Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
for more details on using states and transitions.

**See also**
`transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-topic#transitions>`__.

| 

+--------------------------------------------------------------------------+
|        \ transform :                                                     |
| list<`Transform </sdk/apps/qml/QtQuick/Transform/>`__>                   |
+--------------------------------------------------------------------------+

This property holds the list of transformations to apply.

For more information see
`Transform </sdk/apps/qml/QtQuick/Transform/>`__.

| 

+--------------------------------------------------------------------------+
|        \ transformOrigin : enumeration                                   |
+--------------------------------------------------------------------------+

This property holds the origin point around which scale and rotation
transform.

Nine transform origins are available, as shown in the image below. The
default transform origin is ``Item.Center``.

|image8|

This example rotates an image around its bottom-right corner.

.. code:: qml

    Image {
        source: "myimage.png"
        transformOrigin: Item.BottomRight
        rotation: 45
    }

To set an arbitrary transform origin point use the
`Scale </sdk/apps/qml/QtQuick/Scale/>`__ or
`Rotation </sdk/apps/qml/QtQuick/Rotation/>`__ transform types with
`transform </sdk/apps/qml/QtQuick/Item#transform-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ transitions :                                                   |
| list<`Transition </sdk/apps/qml/QtQuick/Transition/>`__>                 |
+--------------------------------------------------------------------------+

This property holds the list of transitions for this item. These define
the transitions to be applied to the item whenever it changes its
`state </sdk/apps/qml/QtQuick/Item#state-prop>`__.

This property is specified as a list of
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
objects. For example:

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

See `Qt Quick
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__ and
`Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
for more details on using states and transitions.

**See also**
`states </sdk/apps/qml/QtQuick/qtquick-statesanimations-topic#states>`__.

| 

+--------------------------------------------------------------------------+
|        \ visible : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the item is visible. By default this is
true.

Setting this property directly affects the ``visible`` value of child
items. When set to ``false``, the ``visible`` values of all child items
also become ``false``. When set to ``true``, the ``visible`` values of
child items are returned to ``true``, unless they have explicitly been
set to ``false``.

(Because of this flow-on behavior, using the ``visible`` property may
not have the intended effect if a property binding should only respond
to explicit property changes. In such cases it may be better to use the
`opacity </sdk/apps/qml/QtQuick/qtquick-effects-topic#opacity>`__
property instead.)

If this property is set to ``false``, the item will no longer receive
mouse events, but will continue to receive key events and will retain
the keyboard `focus </sdk/apps/qml/QtQuick/Item#focus-prop>`__ if it has
been set. (In contrast, setting the
`enabled </sdk/apps/qml/QtQuick/Item#enabled-prop>`__ property to
``false`` stops both mouse and keyboard events, and also removes focus
from the item.)

**Note:** This property's value is only affected by changes to this
property or the parent's ``visible`` property. It does not change, for
example, if this item moves off-screen, or if the
`opacity </sdk/apps/qml/QtQuick/qtquick-effects-topic#opacity>`__
changes to 0.

**See also**
`opacity </sdk/apps/qml/QtQuick/qtquick-effects-topic#opacity>`__ and
`enabled </sdk/apps/qml/QtQuick/Item#enabled-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ visibleChildren : list<`Item </sdk/apps/qml/QtQuick/Item/>`__>  |
+--------------------------------------------------------------------------+

This read-only property lists all of the item's children that are
currently visible. Note that a child's visibility may have changed
explicitly, or because the visibility of this (it's parent) item or
another grandparent changed.

| 

+--------------------------------------------------------------------------+
|        \ width : real                                                    |
+--------------------------------------------------------------------------+

Defines the item's position and size.

The (x,y) position is relative to the
`parent </sdk/apps/qml/QtQuick/Item#parent-prop>`__.

.. code:: qml

    Item { x: 100; y: 100; width: 100; height: 100 }

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

Defines the item's position and size.

The (x,y) position is relative to the
`parent </sdk/apps/qml/QtQuick/Item#parent-prop>`__.

.. code:: qml

    Item { x: 100; y: 100; width: 100; height: 100 }

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

Defines the item's position and size.

The (x,y) position is relative to the
`parent </sdk/apps/qml/QtQuick/Item#parent-prop>`__.

.. code:: qml

    Item { x: 100; y: 100; width: 100; height: 100 }

| 

+--------------------------------------------------------------------------+
|        \ z : real                                                        |
+--------------------------------------------------------------------------+

Sets the stacking order of sibling items. By default the stacking order
is 0.

Items with a higher stacking value are drawn on top of siblings with a
lower stacking order. Items with the same stacking value are drawn
bottom up in the order they appear. Items with a negative stacking value
are drawn under their parent's content.

The following example shows the various effects of stacking order.

+--------------------------------------+--------------------------------------+
| |image9|                             | Same ``z`` - later children above    |
|                                      | earlier children:                    |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         Rectangle {                  |
|                                      |             color: "red"             |
|                                      |             width: 100; height: 100  |
|                                      |         }                            |
|                                      |         Rectangle {                  |
|                                      |             color: "blue"            |
|                                      |             x: 50; y: 50; width: 100 |
|                                      | ; height: 100                        |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image10|                            | Higher ``z`` on top:                 |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         Rectangle {                  |
|                                      |             z: 1                     |
|                                      |             color: "red"             |
|                                      |             width: 100; height: 100  |
|                                      |         }                            |
|                                      |         Rectangle {                  |
|                                      |             color: "blue"            |
|                                      |             x: 50; y: 50; width: 100 |
|                                      | ; height: 100                        |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image11|                            | Same ``z`` - children above parents: |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         Rectangle {                  |
|                                      |             color: "red"             |
|                                      |             width: 100; height: 100  |
|                                      |             Rectangle {              |
|                                      |                 color: "blue"        |
|                                      |                 x: 50; y: 50; width: |
|                                      |  100; height: 100                    |
|                                      |             }                        |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image12|                            | Lower ``z`` below:                   |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Item {                           |
|                                      |         Rectangle {                  |
|                                      |             color: "red"             |
|                                      |             width: 100; height: 100  |
|                                      |             Rectangle {              |
|                                      |                 z: -1                |
|                                      |                 color: "blue"        |
|                                      |                 x: 50; y: 50; width: |
|                                      |  100; height: 100                    |
|                                      |             }                        |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ childAt(real *x*, real *y*)                                     |
+--------------------------------------------------------------------------+

Returns the first visible child item found at point (*x*, *y*) within
the coordinate system of this item.

Returns ``null`` if there is no such item.

| 

+--------------------------------------------------------------------------+
|        \ object contains(point *point*)                                  |
+--------------------------------------------------------------------------+

Returns true if this item contains *point*, which is in local
coordinates; returns false otherwise.

| 

+--------------------------------------------------------------------------+
|        \ forceActiveFocus(Qt::FocusReason *reason*)                      |
+--------------------------------------------------------------------------+

Forces active focus on the item with the given *reason*.

This method sets focus on the item and ensures that all ancestor
`FocusScope </sdk/apps/qml/QtQuick/FocusScope/>`__ objects in the object
hierarchy are also given
`focus </sdk/apps/qml/QtQuick/Item#focus-prop>`__.

This QML method was introduced in Qt 5.1.

**See also**
`activeFocus </sdk/apps/qml/QtQuick/Item#activeFocus-prop>`__ and
Qt::FocusReason.

| 

+--------------------------------------------------------------------------+
|        \ forceActiveFocus()                                              |
+--------------------------------------------------------------------------+

This is an overloaded function.

Forces active focus on the item.

This method sets focus on the item and ensures that all ancestor
`FocusScope </sdk/apps/qml/QtQuick/FocusScope/>`__ objects in the object
hierarchy are also given
`focus </sdk/apps/qml/QtQuick/Item#focus-prop>`__.

The reason for the focus change will be *Qt::OtherFocusReason*. Use the
overloaded method to specify the focus reason to enable better handling
of the focus change.

**See also**
`activeFocus </sdk/apps/qml/QtQuick/Item#activeFocus-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ bool grabToImage(callback, targetSize)                          |
+--------------------------------------------------------------------------+

Grabs the item into an in-memory image.

The grab happens asynchronously and the JavaScript function *callback*
is invoked when the grab is completed.

Use *targetSize* to specify the size of the target image. By default,
the result will have the same size as the item.

If the grab could not be initiated, the function returns ``false``.

The following snippet shows how to grab an item and store the results to
a file.

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

The following snippet shows how to grab an item and use the results in
another image element.

.. code:: qml

    Image {
        id: image
    }
        // ...
        source.grabToImage(function(result) {
                               image.source = result.url;
                           },
                           Qt.size(50, 50));

**Note:** This function will render the item to an offscreen surface and
copy that surface from the GPU's memory into the CPU's memory, which can
be quite costly. For "live" preview, use
`layers </sdk/apps/qml/QtQuick/Item#layer.enabled-prop>`__ or
`ShaderEffectSource </sdk/apps/qml/QtQuick/ShaderEffectSource/>`__.

| 

+--------------------------------------------------------------------------+
|        \ object mapFromItem(`Item </sdk/apps/qml/QtQuick/Item/>`__       |
| *item*, real *x*, real *y*, real *width*, real *height*)                 |
+--------------------------------------------------------------------------+

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which
is in *item*'s coordinate system, to this item's coordinate system, and
returns an object with ``x`` and ``y`` (and optionally ``width`` and
``height``) properties matching the mapped coordinate.

If *item* is a ``null`` value, this maps the point or rect from the
coordinate system of the root QML view.

| 

+--------------------------------------------------------------------------+
|        \ object mapFromItem(`Item </sdk/apps/qml/QtQuick/Item/>`__       |
| *item*, real *x*, real *y*)                                              |
+--------------------------------------------------------------------------+

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which
is in *item*'s coordinate system, to this item's coordinate system, and
returns an object with ``x`` and ``y`` (and optionally ``width`` and
``height``) properties matching the mapped coordinate.

If *item* is a ``null`` value, this maps the point or rect from the
coordinate system of the root QML view.

| 

+--------------------------------------------------------------------------+
|        \ object mapToItem(`Item </sdk/apps/qml/QtQuick/Item/>`__ *item*, |
| real *x*, real *y*, real *width*, real *height*)                         |
+--------------------------------------------------------------------------+

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which
is in this item's coordinate system, to *item*'s coordinate system, and
returns an object with ``x`` and ``y`` (and optionally ``width`` and
``height``) properties matching the mapped coordinate.

If *item* is a ``null`` value, this maps the point or rect to the
coordinate system of the root QML view.

| 

+--------------------------------------------------------------------------+
|        \ object mapToItem(`Item </sdk/apps/qml/QtQuick/Item/>`__ *item*, |
| real *x*, real *y*)                                                      |
+--------------------------------------------------------------------------+

Maps the point (*x*, *y*) or rect (*x*, *y*, *width*, *height*), which
is in this item's coordinate system, to *item*'s coordinate system, and
returns an object with ``x`` and ``y`` (and optionally ``width`` and
``height``) properties matching the mapped coordinate.

If *item* is a ``null`` value, this maps the point or rect to the
coordinate system of the root QML view.

| 

+--------------------------------------------------------------------------+
|        \ nextItemInFocusChain(bool *forward*)                            |
+--------------------------------------------------------------------------+

Returns the item in the focus chain which is next to this item. If
*forward* is ``true``, or not supplied, it is the next item in the
forwards direction. If *forward* is ``false``, it is the next item in
the backwards direction.

This QML method was introduced in Qt 5.1.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Item/images/qml-blending-nonlayered.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Item/images/qml-blending-layered.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-anchors_example.png
.. |image3| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-anchors_example2.png
.. |image4| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-item_opacity1.png
.. |image5| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-item_opacity2.png
.. |image6| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-rotation.png
.. |image7| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-scale.png
.. |image8| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-transformorigin.png
.. |image9| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-item_stacking1.png
.. |image10| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-item_stacking2.png
.. |image11| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-item_stacking3.png
.. |image12| image:: /media/sdk/apps/qml/QtQuick/Item/images/declarative-item_stacking4.png

