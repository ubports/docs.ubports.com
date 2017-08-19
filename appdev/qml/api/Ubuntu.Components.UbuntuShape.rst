Ubuntu.Components.UbuntuShape
=============================

.. raw:: html

   <p>

Rounded rectangle containing a source image blended over a background
color. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UbuntuShape -->

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

import Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Obsolete members

.. raw:: html

   </li>

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

aspect : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

backgroundColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

backgroundMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

radius : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeRadius : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

secondaryBackgroundColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceFillMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceHorizontalAlignment : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceHorizontalWrapMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceOpacity : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceScale : vector2d

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceTranslation : vector2d

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceVerticalAlignment : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceVerticalWrapMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$UbuntuShape-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The UbuntuShape is a rounded rectangle (based on a squircle) containing
an optional source image blended over a background color (solid or
linear gradient). Different properties allow to change the look of the
shape.

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Ubuntu.Components 1.2
   <span class="type"><a href="index.html">UbuntuShape</a></span> {
   <span class="name">backgroundColor</span>: <span class="string">&quot;green&quot;</span>
   }</pre>

.. raw:: html

   <pre class="qml">import Ubuntu.Components 1.2
   <span class="type"><a href="index.html">UbuntuShape</a></span> {
   <span class="name">source</span>: <span class="name">Image</span> {
   <span class="name">source</span>: <span class="string">&quot;ubuntu.png&quot;</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@UbuntuShape -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$aspect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="aspect-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

aspect : enumeration

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

This property defines the graphical style of the UbuntuShape. The
default value is UbuntuShape.Inset.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated borderSource
property. Use the UbuntuShapeOverlay item in order to provide the inset
"pressed" aspect previously supported by that property.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

UbuntuShape.Flat - no effects applied

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.Inset - inner shadow slightly moved downwards and bevelled
bottom

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@aspect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="backgroundColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

backgroundColor : color

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

This property defines the background color. The default value is
transparent black.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated color and
gradientColor properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@backgroundColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="backgroundMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

backgroundMode : enumeration

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

This property defines the background rendering mode. The default value
is UbuntuShape.SolidColor.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated color and
gradientColor properties.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

UbuntuShape.SolidColor - the color is backgroundColor

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.VerticalGradient - the color is a vertical gradient from
backgroundColor to secondaryBackgroundColor.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@backgroundMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="radius-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

radius : string

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

This property defines the corner radius. Three fixed values are
supported: "small", "medium" and "large". The default value is "small".

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting a non-zero relativeRadius value disables this property
temporarily.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@radius -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeRadius-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeRadius : real

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

This property defines a radius relative to the size of the UbuntuShape.
It is specified as a number between 0.0 (0%) and 0.75 (75%)
corresponding to the proportion of the radius with regards to the
smallest side (divided by 2 since a side has 2 angles). The default
value is 0.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting a non-zero value takes over the radius property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeRadius -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="secondaryBackgroundColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

secondaryBackgroundColor : color

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

This property defines the secondary background color. It is used when
backgroundMode is set to UbuntuShape.VerticalGradient. The default value
is transparent black.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated color and
gradientColor properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@secondaryBackgroundColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : variant

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

This property sets the source provider of a texture rendered in the
UbuntuShape. Supported types are Image, AnimatedImage (to render a GIF
image for instance) and ShaderEffectSource (to embed a UI previously
rendered with QML). It is blended over the background color. The default
value is null.

.. raw:: html

   </p>

.. raw:: html

   <p>

It can be set either with an inlined Image:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="index.html">UbuntuShape</a></span> {
   <span class="name">source</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;ubuntu.png&quot;</span> }
   }
   }</pre>

.. raw:: html

   <p>

or with an Image id:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">img</span>
   <span class="name">visible</span>: <span class="number">false</span>
   <span class="name">source</span>: <span class="string">&quot;ubuntu.png&quot;</span>
   }
   <span class="type"><a href="index.html">UbuntuShape</a></span> {
   <span class="name">source</span>: <span class="name">img</span>
   }
   }</pre>

.. raw:: html

   <p>

Note that in this case, the Image is stored in the scene tree as any
other items. So setting it as not visible might be needed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The sampling filter is set through the given Item's smooth property. Set
it to false for nearest-neighbor filtering or to true for bilinear
filtering.

.. raw:: html

   </p>

.. raw:: html

   <p>

The fill modes and alignments set on the Image and AnimatedImage are not
monitored, use the appropriate UbuntuShape properties instead
(sourceFillMode, sourceHorizontalAlignment and sourceVerticalAlignment).

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated image property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceFillMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceFillMode : enumeration

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

This properties defines how the source texture fills the UbuntuShape.
The modes are the same as the ones used by Image, minus the tiling which
is exposed through wrapping properties (sourceHorizontalWrapMode and
sourceVerticalWrapMode). The default value is UbuntuShape.Stretch.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated image property.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

UbuntuShape.Stretch - the source is scaled non-uniformly to fit

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.PreserveAspectFit - the source is scaled uniformly to fit
without cropping

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.PreserveAspectCrop - the source is scaled uniformly to fit
with cropping

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.Pad - the source is not scaled

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceFillMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceHorizontalAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceHorizontalAlignment : enumeration

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

This property defines how the source texture is horizontally aligned
inside the UbuntuShape area. The default value is UbuntuShape.AlignLeft.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated image property.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

UbuntuShape.AlignLeft - the source is aligned to the left

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.AlignHCenter - the source is aligned to the horizontal
center

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.AlignRight - the source is aligned to the right

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceHorizontalAlignment -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceHorizontalWrapMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceHorizontalWrapMode : enumeration

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

When the sourceFillMode is set to UbuntuShape.Pad or
UbuntuShape.PreserveAspectFit or when the sourceScale and/or
sourceTranslation properties are changed, the source texture might not
cover the entire UbuntuShape area. This property defines how the source
texture wraps outside of its content area. The default value is
UbuntuShape.Transparent.

.. raw:: html

   </p>

.. raw:: html

   <p>

Ensure UbuntuShape.Repeat is used only when necessary (in case of an
Image or AnimatedImage source) as it requires the underlying texture to
be extracted from its atlas. That slows down the rendering speed since
it prevents the QtQuick renderer to batch the UbuntuShape with others.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Some OpenGL ES 2 implementations do not support UbuntuShape.Repeat
with non-power-of-two sized source textures.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated image property.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

UbuntuShape.Transparent - the source is clamped to transparent

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.Repeat - the source is repeated indefinitely

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceHorizontalWrapMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceOpacity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceOpacity : real

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

This property holds the opacity of the source texture. Opacity is
specified as a number between 0.0 (fully transparent) and 1.0 (fully
opaque). The default value is 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated image property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceOpacity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceScale-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceScale : vector2d

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

This property defines the two-component vector used to scale the source
texture. The texture is scaled at the alignment point defined by
sourceHorizontalAlignment and sourceVerticalAlignment. The default value
is Qt.vector2d(1.0,1.0).

.. raw:: html

   </p>

.. raw:: html

   <p>

That can be used to change the size of the source texture, to flip it
horizontally and/or vertically, to achieve pulsing animations, etc.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a code sample showing how to apply an horizontal flip:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">UbuntuShape</a></span> {
   <span class="name">source</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;ubuntu.png&quot;</span> }
   <span class="name">sourceScale</span>: <span class="name">Qt</span>.<span class="name">vector2d</span>(-<span class="number">1.0</span>, <span class="number">1.0</span>)
   }</pre>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated image property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceScale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceTranslation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceTranslation : vector2d

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

This property defines the two-component vector in normalized item
coordinates used to translate the source texture. The default value is
Qt.vector2d(0.0,0.0).

.. raw:: html

   </p>

.. raw:: html

   <p>

That can be used to put the source texture at a precise position, to
create infinite scrolling animations (using the UbuntuShape.Repeat wrap
mode), etc.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated image property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceTranslation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceVerticalAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceVerticalAlignment : enumeration

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

This property defines how the source texture is vertically aligned
inside the UbuntuShape area. The default value is UbuntuShape.AlignTop.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated image property.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

UbuntuShape.AlignTop - the source is aligned to the top

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.AlignVCenter - the source is aligned to the vertical center

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.AlignBottom - the source is aligned to the bottom

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceVerticalAlignment -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceVerticalWrapMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceVerticalWrapMode : enumeration

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

When the sourceFillMode is set to UbuntuShape.Pad or
UbuntuShape.PreserveAspectFit or when the sourceScale and/or
sourceTranslation properties are changed, the source texture might not
cover the entire UbuntuShape area. This property defines how the source
texture wraps outside of its content area. The default value is
UbuntuShape.Transparent.

.. raw:: html

   </p>

.. raw:: html

   <p>

Ensure UbuntuShape.Repeat is used only when necessary (in case of an
Image or AnimatedImage source) as it requires the underlying texture to
be extracted from its atlas. That slows down the rendering speed since
it prevents the QtQuick renderer to batch the UbuntuShape with others.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Some OpenGL ES 2 implementations do not support UbuntuShape.Repeat
with non-power-of-two sized source textures.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated image property.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

UbuntuShape.Transparent - the source is clamped to transparent

.. raw:: html

   </li>

.. raw:: html

   <li>

UbuntuShape.Repeat - the source is repeated indefinitely

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceVerticalWrapMode -->


