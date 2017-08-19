QtQuick.ShaderEffectSource
==========================

.. raw:: html

   <p>

Renders a Qt Quick item into a texture and displays it More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ShaderEffectSource -->

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

format : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hideSource : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

live : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mipmap : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

recursive : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceRect : rect

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

textureSize : size

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

wrapMode : enumeration

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

scheduleUpdate()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ShaderEffectSource-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The ShaderEffectSource type renders sourceItem into a texture and
displays it in the scene. sourceItem is drawn into the texture as though
it was a fully opaque root item. Thus sourceItem itself can be
invisible, but still appear in the texture.

.. raw:: html

   </p>

.. raw:: html

   <p>

ShaderEffectSource can be used as:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

a texture source in a ShaderEffect. This allows you to apply custom
shader effects to any Qt Quick item.

.. raw:: html

   </li>

.. raw:: html

   <li>

a cache for a complex item. The complex item can be rendered once into
the texture, which can then be animated freely without the need to
render the complex item again every frame.

.. raw:: html

   </li>

.. raw:: html

   <li>

an opacity layer. ShaderEffectSource allows you to apply an opacity to
items as a group rather than each item individually.

.. raw:: html

   </li>

.. raw:: html

   </ul>

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
   <span class="name">width</span>: <span class="number">200</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">gradient</span>: <span class="name">Gradient</span> {
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0</span>; <span class="name">color</span>: <span class="string">&quot;white&quot;</span> }
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1</span>; <span class="name">color</span>: <span class="string">&quot;black&quot;</span> }
   }
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">opacity</span>: <span class="number">0.5</span>
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">foo</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">x</span>: <span class="number">5</span>; <span class="name">y</span>: <span class="number">5</span>; <span class="name">width</span>: <span class="number">60</span>; <span class="name">height</span>: <span class="number">60</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">x</span>: <span class="number">20</span>; <span class="name">y</span>: <span class="number">20</span>; <span class="name">width</span>: <span class="number">60</span>; <span class="name">height</span>: <span class="number">60</span>; <span class="name">color</span>: <span class="string">&quot;orange&quot;</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">x</span>: <span class="number">35</span>; <span class="name">y</span>: <span class="number">35</span>; <span class="name">width</span>: <span class="number">60</span>; <span class="name">height</span>: <span class="number">60</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
   }
   <span class="type"><a href="index.html">ShaderEffectSource</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">sourceItem</span>: <span class="name">foo</span>
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

The ShaderEffectSource type does not redirect any mouse or keyboard
input to sourceItem. If you hide the sourceItem by setting visible to
false or opacity to zero, it will no longer react to input. In cases
where the ShaderEffectSource is meant to replace the sourceItem, you
typically want to hide the sourceItem while still handling input. For
this, you can use the hideSource property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: If sourceItem is a Rectangle with border, by default half the
border width falls outside the texture. To get the whole border, you can
extend the sourceRect.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The ShaderEffectSource relies on FBO multisampling support to
antialias edges. If the underlying hardware does not support this, which
is the case for most embedded graphics chips, edges rendered inside a
ShaderEffectSource will not be antialiased. One way to remedy this is to
double the size of the effect source and render it with smooth: true
(this is the default value of smooth). This will be equivalent to 4x
multisampling, at the cost of lower performance and higher memory use.

.. raw:: html

   </p>

.. raw:: html

   <p>

Warning: In most cases, using a ShaderEffectSource will decrease
performance, and in all cases, it will increase video memory usage.
Rendering through a ShaderEffectSource might also lead to lower quality
since some OpenGL implementations support multisampled backbuffer, but
not multisampled framebuffer objects.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ShaderEffectSource -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$format -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="format-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

format : enumeration

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

This property defines the internal OpenGL format of the texture.
Modifying this property makes most sense when the item is used as a
source texture of a ShaderEffect. Depending on the OpenGL
implementation, this property might allow you to save some texture
memory.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ShaderEffectSource.Alpha - GL\_ALPHA

.. raw:: html

   </li>

.. raw:: html

   <li>

ShaderEffectSource.RGB - GL\_RGB

.. raw:: html

   </li>

.. raw:: html

   <li>

ShaderEffectSource.RGBA - GL\_RGBA

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: Some OpenGL implementations do not support the GL\_ALPHA format.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@format -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hideSource-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hideSource : bool

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

If this property is true, the sourceItem is hidden, though it will still
be rendered into the texture. As opposed to hiding the sourceItem by
setting visible to false, setting this property to true will not prevent
mouse or keyboard input from reaching sourceItem. The property is useful
when the ShaderEffectSource is anchored on top of, and meant to replace
the sourceItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hideSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="live-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

live : bool

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

If this property is true, the texture is updated whenever the sourceItem
updates. Otherwise, it will be a frozen image, even if sourceItem is
assigned a new item. The property is true by default.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@live -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mipmap-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mipmap : bool

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

If this property is true, mipmaps are generated for the texture.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Some OpenGL ES 2 implementations do not support mipmapping of
non-power-of-two textures.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mipmap -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="recursive-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

recursive : bool

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

Set this property to true if the ShaderEffectSource has a dependency on
itself. ShaderEffectSources form a dependency chain, where one
ShaderEffectSource can be part of the sourceItem of another. If there is
a loop in this chain, a ShaderEffectSource could end up trying to render
into the same texture it is using as source, which is not allowed by
OpenGL. When this property is set to true, an extra texture is allocated
so that ShaderEffectSource can keep a copy of the texture from the
previous frame. It can then render into one texture and use the texture
from the previous frame as source.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting both this property and live to true will cause the scene graph
to render continuously. Since the ShaderEffectSource depends on itself,
updating it means that it immediately becomes dirty again.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@recursive -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceItem : Item

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

This property holds the item to be rendered into the texture. Setting
this to null while live is true, will release the texture resources.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceRect-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceRect : rect

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

This property defines which rectangular area of the sourceItem to render
into the texture. The source rectangle can be larger than sourceItem
itself. If the rectangle is null, which is the default, the whole
sourceItem is rendered to texture.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceRect -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="textureSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

textureSize : size

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

This property holds the requested size of the texture. If it is empty,
which is the default, the size of the source rectangle is used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Some platforms have a limit on how small framebuffer objects can
be, which means the actual texture size might be larger than the
requested size.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@textureSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="wrapMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

wrapMode : enumeration

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

This property defines the OpenGL wrap modes associated with the texture.
Modifying this property makes most sense when the item is used as a
source texture of a ShaderEffect.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ShaderEffectSource.ClampToEdge - GL\_CLAMP\_TO\_EDGE both horizontally
and vertically

.. raw:: html

   </li>

.. raw:: html

   <li>

ShaderEffectSource.RepeatHorizontally - GL\_REPEAT horizontally,
GL\_CLAMP\_TO\_EDGE vertically

.. raw:: html

   </li>

.. raw:: html

   <li>

ShaderEffectSource.RepeatVertically - GL\_CLAMP\_TO\_EDGE horizontally,
GL\_REPEAT vertically

.. raw:: html

   </li>

.. raw:: html

   <li>

ShaderEffectSource.Repeat - GL\_REPEAT both horizontally and vertically

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note: Some OpenGL ES 2 implementations do not support the GL\_REPEAT
wrap mode with non-power-of-two textures.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@wrapMode -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$scheduleUpdate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="scheduleUpdate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

scheduleUpdate()

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

Schedules a re-rendering of the texture for the next frame. Use this to
update the texture when live is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@scheduleUpdate -->


