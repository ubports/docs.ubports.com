QtQuick.SystemPalette
=====================

.. raw:: html

   <p>

Provides access to the Qt palettes More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SystemPalette -->

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

alternateBase : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

base : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

button : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

buttonText : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

colorGroup : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dark : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlight : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightedText : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

light : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mid : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

midlight : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shadow : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

window : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

windowText : color

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SystemPalette-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The SystemPalette type provides access to the Qt application palettes.
This provides information about the standard colors used for application
windows, buttons and other features. These colors are grouped into three
color groups: Active, Inactive, and Disabled. See the QPalette
documentation for details about color groups and the properties provided
by SystemPalette.

.. raw:: html

   </p>

.. raw:: html

   <p>

This can be used to color items in a way that provides a more native
look and feel.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example creates a palette from the Active color group and
uses this to color the window and text items appropriately:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="type"><a href="index.html">SystemPalette</a></span> { <span class="name">id</span>: <span class="name">myPalette</span>; <span class="name">colorGroup</span>: <span class="name">SystemPalette</span>.<span class="name">Active</span> }
   <span class="name">width</span>: <span class="number">640</span>; <span class="name">height</span>: <span class="number">480</span>
   <span class="name">color</span>: <span class="name">myPalette</span>.<span class="name">window</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Hello!&quot;</span>; <span class="name">color</span>: <span class="name">myPalette</span>.<span class="name">windowText</span>
   }
   }</pre>

.. raw:: html

   <p>

See also QPalette.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SystemPalette -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$alternateBase -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="alternateBase-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

alternateBase : color

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

The alternate base color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alternateBase -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="base-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

base : color

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

The base color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@base -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="button-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

button : color

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

The button color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@button -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="buttonText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

buttonText : color

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

The button text foreground color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@buttonText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="colorGroup-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

colorGroup : enumeration

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

The color group of the palette. This can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

SystemPalette.Active (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

SystemPalette.Inactive

.. raw:: html

   </li>

.. raw:: html

   <li>

SystemPalette.Disabled

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QPalette::ColorGroup.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@colorGroup -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dark-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dark : color

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

The dark color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dark -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlight : color

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

The highlight color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlightedText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightedText : color

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

The highlighted text color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlightedText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="light-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

light : color

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

The light color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@light -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mid-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mid : color

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

The mid color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mid -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="midlight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

midlight : color

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

The midlight color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@midlight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shadow-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

shadow : color

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

The shadow color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shadow -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="text-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

text : color

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

The text color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="window-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

window : color

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

The window (general background) color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@window -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="windowText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

windowText : color

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

The window text (general foreground) color of the current color group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QPalette::ColorRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@windowText -->


