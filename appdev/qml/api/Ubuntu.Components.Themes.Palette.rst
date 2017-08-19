Ubuntu.Components.Themes.Palette
================================

.. raw:: html

   <p>

Provides the palette of colors from the theme that widgets use to draw
themselves. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Palette -->

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

import Ubuntu.Components.Themes 1.3

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

QtObject

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

disabled : PaletteValues

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

focused : PaletteValues

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlighted : PaletteValues

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

normal : PaletteValues

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selected : PaletteValues

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectedDisabled : PaletteValues

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Palette-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Palette provides access to colors defined by the current theme. The
actual color palette to use depends on the state of the widget being
drawn.

.. raw:: html

   </p>

.. raw:: html

   <p>

A color palette (PaletteValues) has various roles to choose from
depending on what part of the widget is being drawn (the base of the
widget, the foreground, etc.).

.. raw:: html

   </p>

.. raw:: html

   <p>

For each color there is a corresponding 'text' color that is guaranteed
to provide good legibility for text or icons placed on top of a
background of the corresponding color.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of a Text on top of a background Rectangle:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">base</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">baseText</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@Palette -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$disabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="disabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

disabled : PaletteValues

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

Color palette to use when the widget is in the disabled (enabled: false)
state.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components.Themes 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@disabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="focused-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

focused : PaletteValues

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

Color palette to use when the widget is focused.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@focused -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlighted-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlighted : PaletteValues

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

Color palette values to use when the widget is highlighted.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components.Themes 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlighted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="normal-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

normal : PaletteValues

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

Color palette to use when the widget is in the default state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@normal -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selected-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selected : PaletteValues

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

Color palette to use when the widget is selected, for example when a tab
is the current one.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selected -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectedDisabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectedDisabled : PaletteValues

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

Color palette to use when the widget is selected and disabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components.Themes 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedDisabled -->


