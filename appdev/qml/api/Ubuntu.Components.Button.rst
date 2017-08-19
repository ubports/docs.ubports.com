Ubuntu.Components.Button
========================

.. raw:: html

   <p>

Standard Ubuntu button. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Button -->

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

AbstractButton

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

color : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

font : font

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

gradient : Gradient

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iconPosition : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

strokeColor : color

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Button-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="index.html">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Send&quot;</span>
   <span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked text-only Button&quot;</span>)
   }
   <span class="type"><a href="index.html">Button</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
   <span class="name">gradient</span>: <span class="name">UbuntuColors</span>.<span class="name">greyGradient</span>
   <span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked icon-only Button&quot;</span>)
   }
   <span class="type"><a href="index.html">Button</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Icon on left&quot;</span>
   <span class="name">iconPosition</span>: <span class="string">&quot;left&quot;</span>
   <span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked text and icon Button&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

An Action can be used to specify clicked, iconSource and text. Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"> <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">id</span>: <span class="name">action1</span>
   <span class="name">text</span>: <span class="string">&quot;Click me&quot;</span>
   <span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;action!&quot;</span>)
   <span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
   }
   <span class="type"><a href="index.html">Button</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">action</span>: <span class="name">action1</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">warmGrey</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@Button -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="color-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

color : color

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

The background color of the button.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also gradient.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@color -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="font-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

font : font

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

The font used for the button's text.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@font -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="gradient-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

gradient : Gradient

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

The gradient used to fill the background of the button.

.. raw:: html

   </p>

.. raw:: html

   <p>

Standard Ubuntu gradients are defined in UbuntuColors.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both a gradient and a color are specified, the gradient will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also color.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gradient -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iconPosition-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iconPosition : string

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

The position of the icon relative to the text. Options are "left" and
"right". The default value is "left".

.. raw:: html

   </p>

.. raw:: html

   <p>

If only text or only an icon is defined, this property is ignored and
the text or icon is centered horizontally and vertically in the button.

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently this is a string value. We are waiting for support for enums:
https://bugreports.qt-project.org/browse/QTBUG-14861

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@iconPosition -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="strokeColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

strokeColor : color

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

If set to a color, the button has a stroke border instead of a filled
shape.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@strokeColor -->


