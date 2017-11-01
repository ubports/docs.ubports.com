Rounded rectangle containing a source image blended over a background
color.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  ****`aspect </sdk/apps/qml/Ubuntu.Components/UbuntuShape#aspect-prop>`__****
   : enumeration
-  ****`backgroundColor </sdk/apps/qml/Ubuntu.Components/UbuntuShape#backgroundColor-prop>`__****
   : color
-  ****`backgroundMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#backgroundMode-prop>`__****
   : enumeration
-  ****`radius </sdk/apps/qml/Ubuntu.Components/UbuntuShape#radius-prop>`__****
   : string
-  ****`relativeRadius </sdk/apps/qml/Ubuntu.Components/UbuntuShape#relativeRadius-prop>`__****
   : real
-  ****`secondaryBackgroundColor </sdk/apps/qml/Ubuntu.Components/UbuntuShape#secondaryBackgroundColor-prop>`__****
   : color
-  ****`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__****
   : variant
-  ****`sourceFillMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceFillMode-prop>`__****
   : enumeration
-  ****`sourceHorizontalAlignment </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceHorizontalAlignment-prop>`__****
   : enumeration
-  ****`sourceHorizontalWrapMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceHorizontalWrapMode-prop>`__****
   : enumeration
-  ****`sourceOpacity </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceOpacity-prop>`__****
   : real
-  ****`sourceScale </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceScale-prop>`__****
   : vector2d
-  ****`sourceTranslation </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceTranslation-prop>`__****
   : vector2d
-  ****`sourceVerticalAlignment </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceVerticalAlignment-prop>`__****
   : enumeration
-  ****`sourceVerticalWrapMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceVerticalWrapMode-prop>`__****
   : enumeration

Detailed Description
--------------------

The `UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__ is a
rounded rectangle (based on a
`squircle <https://en.wikipedia.org/wiki/Squircle>`__) containing an
optional source image blended over a background color (solid or linear
gradient). Different properties allow to change the look of the shape.

Examples:

.. code:: qml

    import Ubuntu.Components 1.2
    UbuntuShape {
        backgroundColor: "green"
    }

.. code:: qml

    import Ubuntu.Components 1.2
    UbuntuShape {
        source: Image {
            source: "ubuntu.png"
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ aspect : enumeration                                            |
+--------------------------------------------------------------------------+

This property defines the graphical style of the
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__. The
default value is ``UbuntuShape.Inset``.

**Note:** Setting this disables support for the deprecated borderSource
property. Use the UbuntuShapeOverlay item in order to provide the inset
"pressed" aspect previously supported by that property.

-  **UbuntuShape.Flat** - no effects applied
-  **UbuntuShape.Inset** - inner shadow slightly moved downwards and
   bevelled bottom

| 

+--------------------------------------------------------------------------+
|        \ backgroundColor : color                                         |
+--------------------------------------------------------------------------+

This property defines the background color. The default value is
transparent black.

**Note:** Setting this disables support for the deprecated color and
gradientColor properties.

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ backgroundMode : enumeration                                    |
+--------------------------------------------------------------------------+

This property defines the background rendering mode. The default value
is ``UbuntuShape.SolidColor``.

**Note:** Setting this disables support for the deprecated color and
gradientColor properties.

-  **UbuntuShape.SolidColor** - the color is
   `backgroundColor </sdk/apps/qml/Ubuntu.Components/UbuntuShape#backgroundColor-prop>`__
-  **UbuntuShape.VerticalGradient** - the color is a vertical gradient
   from
   `backgroundColor </sdk/apps/qml/Ubuntu.Components/UbuntuShape#backgroundColor-prop>`__
   to
   `secondaryBackgroundColor </sdk/apps/qml/Ubuntu.Components/UbuntuShape#secondaryBackgroundColor-prop>`__.

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ radius : string                                                 |
+--------------------------------------------------------------------------+

This property defines the corner radius. Three fixed values are
supported: ``"small"``, ``"medium"`` and ``"large"``. The default value
is ``"small"``.

**Note:** Setting a non-zero
`relativeRadius </sdk/apps/qml/Ubuntu.Components/UbuntuShape#relativeRadius-prop>`__
value disables this property temporarily.

| 

+--------------------------------------------------------------------------+
|        \ relativeRadius : real                                           |
+--------------------------------------------------------------------------+

This property defines a radius relative to the size of the
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__. It is
specified as a number between 0.0 (0%) and 0.75 (75%) corresponding to
the proportion of the radius with regards to the smallest side (divided
by 2 since a side has 2 angles). The default value is 0.0.

**Note:** Setting a non-zero value takes over the
`radius </sdk/apps/qml/Ubuntu.Components/UbuntuShape#radius-prop>`__
property.

This QML property was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ secondaryBackgroundColor : color                                |
+--------------------------------------------------------------------------+

This property defines the secondary background color. It is used when
`backgroundMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#backgroundMode-prop>`__
is set to ``UbuntuShape.VerticalGradient``. The default value is
transparent black.

**Note:** Setting this disables support for the deprecated color and
gradientColor properties.

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ source : `variant <http://doc.qt.io/qt-5/qml-variant.html>`__   |
+--------------------------------------------------------------------------+

This property sets the source provider of a texture rendered in the
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__.
Supported types are ``Image``, ``AnimatedImage`` (to render a GIF image
for instance) and ``ShaderEffectSource`` (to embed a UI previously
rendered with QML). It is blended over the background color. The default
value is ``null``.

It can be set either with an inlined ``Image``:

.. code:: qml

    Item {
        UbuntuShape {
            source: Image { source: "ubuntu.png" }
        }
    }

or with an ``Image`` ``id``:

.. code:: qml

    Item {
        Image {
            id: img
            visible: false
            source: "ubuntu.png"
        }
        UbuntuShape {
            source: img
        }
    }

Note that in this case, the ``Image`` is stored in the scene tree as any
other items. So setting it as not visible might be needed.

The `sampling
filter <https://en.wikipedia.org/wiki/Texture_filtering>`__ is set
through the given Item's ``smooth`` property. Set it to ``false`` for
nearest-neighbor filtering or to ``true`` for bilinear filtering.

The fill modes and alignments set on the ``Image`` and ``AnimatedImage``
are not monitored, use the appropriate
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__
properties instead
(`sourceFillMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceFillMode-prop>`__,
`sourceHorizontalAlignment </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceHorizontalAlignment-prop>`__
and
`sourceVerticalAlignment </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceVerticalAlignment-prop>`__).

**Note:** Setting this disables support for the deprecated image
property.

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ sourceFillMode : enumeration                                    |
+--------------------------------------------------------------------------+

This properties defines how the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture fills the
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__. The
modes are the same as the ones used by ``Image``, minus the tiling which
is exposed through wrapping properties
(`sourceHorizontalWrapMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceHorizontalWrapMode-prop>`__
and
`sourceVerticalWrapMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceVerticalWrapMode-prop>`__).
The default value is ``UbuntuShape.Stretch``.

**Note:** Setting this disables support for the deprecated image
property.

-  **UbuntuShape.Stretch** - the source is scaled non-uniformly to fit
-  **UbuntuShape.PreserveAspectFit** - the source is scaled uniformly to
   fit without cropping
-  **UbuntuShape.PreserveAspectCrop** - the source is scaled uniformly
   to fit with cropping
-  **UbuntuShape.Pad** - the source is not scaled

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ sourceHorizontalAlignment : enumeration                         |
+--------------------------------------------------------------------------+

This property defines how the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture is horizontally aligned inside the
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__ area. The
default value is ``UbuntuShape.AlignLeft``.

**Note:** Setting this disables support for the deprecated image
property.

-  **UbuntuShape.AlignLeft** - the source is aligned to the left
-  **UbuntuShape.AlignHCenter** - the source is aligned to the
   horizontal center
-  **UbuntuShape.AlignRight** - the source is aligned to the right

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ sourceHorizontalWrapMode : enumeration                          |
+--------------------------------------------------------------------------+

When the
`sourceFillMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceFillMode-prop>`__
is set to ``UbuntuShape.Pad`` or ``UbuntuShape.PreserveAspectFit`` or
when the
`sourceScale </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceScale-prop>`__
and/or
`sourceTranslation </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceTranslation-prop>`__
properties are changed, the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture might not cover the entire
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__ area.
This property defines how the source texture wraps outside of its
content area. The default value is ``UbuntuShape.Transparent``.

Ensure ``UbuntuShape.Repeat`` is used only when necessary (in case of an
``Image`` or ``AnimatedImage`` source) as it requires the underlying
texture to be extracted from its atlas. That slows down the rendering
speed since it prevents the
`QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`__ renderer to
batch the `UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__
with others.

**Note:** Some OpenGL ES 2 implementations do not support
``UbuntuShape.Repeat`` with non-power-of-two sized source textures.

**Note:** Setting this disables support for the deprecated image
property.

-  **UbuntuShape.Transparent** - the source is clamped to transparent
-  **UbuntuShape.Repeat** - the source is repeated indefinitely

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ sourceOpacity : real                                            |
+--------------------------------------------------------------------------+

This property holds the opacity of the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture. Opacity is specified as a number between 0.0 (fully
transparent) and 1.0 (fully opaque). The default value is 1.0.

**Note:** Setting this disables support for the deprecated image
property.

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ sourceScale :                                                   |
| `vector2d <http://doc.qt.io/qt-5/qml-vector2d.html>`__                   |
+--------------------------------------------------------------------------+

This property defines the two-component vector used to scale the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture. The texture is scaled at the alignment point defined by
`sourceHorizontalAlignment </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceHorizontalAlignment-prop>`__
and
`sourceVerticalAlignment </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceVerticalAlignment-prop>`__.
The default value is ``Qt.vector2d(1.0,1.0)``.

That can be used to change the size of the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture, to flip it horizontally and/or vertically, to achieve pulsing
animations, etc.

Here is a code sample showing how to apply an horizontal flip:

.. code:: qml

    UbuntuShape {
        source: Image { source: "ubuntu.png" }
        sourceScale: Qt.vector2d(-1.0, 1.0)
    }

**Note:** Setting this disables support for the deprecated image
property.

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ sourceTranslation :                                             |
| `vector2d <http://doc.qt.io/qt-5/qml-vector2d.html>`__                   |
+--------------------------------------------------------------------------+

This property defines the two-component vector in normalized item
coordinates used to translate the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture. The default value is ``Qt.vector2d(0.0,0.0)``.

That can be used to put the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture at a precise position, to create infinite scrolling animations
(using the ``UbuntuShape.Repeat`` wrap mode), etc.

**Note:** Setting this disables support for the deprecated image
property.

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ sourceVerticalAlignment : enumeration                           |
+--------------------------------------------------------------------------+

This property defines how the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture is vertically aligned inside the
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__ area. The
default value is ``UbuntuShape.AlignTop``.

**Note:** Setting this disables support for the deprecated image
property.

-  **UbuntuShape.AlignTop** - the source is aligned to the top
-  **UbuntuShape.AlignVCenter** - the source is aligned to the vertical
   center
-  **UbuntuShape.AlignBottom** - the source is aligned to the bottom

This QML property was introduced in Ubuntu.Components 1.2.

| 

+--------------------------------------------------------------------------+
|        \ sourceVerticalWrapMode : enumeration                            |
+--------------------------------------------------------------------------+

When the
`sourceFillMode </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceFillMode-prop>`__
is set to ``UbuntuShape.Pad`` or ``UbuntuShape.PreserveAspectFit`` or
when the
`sourceScale </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceScale-prop>`__
and/or
`sourceTranslation </sdk/apps/qml/Ubuntu.Components/UbuntuShape#sourceTranslation-prop>`__
properties are changed, the
`source </sdk/apps/qml/Ubuntu.Components/UbuntuShape#source-prop>`__
texture might not cover the entire
`UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__ area.
This property defines how the source texture wraps outside of its
content area. The default value is ``UbuntuShape.Transparent``.

Ensure ``UbuntuShape.Repeat`` is used only when necessary (in case of an
``Image`` or ``AnimatedImage`` source) as it requires the underlying
texture to be extracted from its atlas. That slows down the rendering
speed since it prevents the
`QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`__ renderer to
batch the `UbuntuShape </sdk/apps/qml/Ubuntu.Components/UbuntuShape/>`__
with others.

**Note:** Some OpenGL ES 2 implementations do not support
``UbuntuShape.Repeat`` with non-power-of-two sized source textures.

**Note:** Setting this disables support for the deprecated image
property.

-  **UbuntuShape.Transparent** - the source is clamped to transparent
-  **UbuntuShape.Repeat** - the source is repeated indefinitely

This QML property was introduced in Ubuntu.Components 1.2.

| 
