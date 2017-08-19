Ubuntu.Components.Styles.ComboButtonStyle
=========================================

.. raw:: html

   <p>

Style API for ComboButton component. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ComboButtonStyle -->

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

import Ubuntu.Components.Styles 1.3

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

comboListHolder : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

comboListMargin : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

comboListPanel : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

defaultColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

defaultDropdownColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

defaultFont : font

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

defaultGradient : Gradient

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dropDownSeparatorWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dropDownWidth : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ComboButtonStyle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component defines the style API for the ComboButton component.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ComboButtonStyle -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$comboListHolder -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="comboListHolder-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

comboListHolder : Item

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

The item which will hold the combo list data. Implementations can point
both this and comboListPanel to the same component, however separate
items should be used if a gap between the panel and the content is
required. See Ambiance theme.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@comboListHolder -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="comboListMargin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

comboListMargin : real

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

Distance between the combo list and the main button.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@comboListMargin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="comboListPanel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

comboListPanel : Item

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

The item pointing to the panel holding the combo list and additional
design artifacts. It is used by the component to drive the expansion
size.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@comboListPanel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaultColor : color

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

Default color for the main button.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultDropdownColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaultDropdownColor : color

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

Default color for the dropdown button and the combo list both when
expanded and collapsed. Implementations can define different color for
expanded/collapsed using the styledItem.expanded property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultDropdownColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultFont-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaultFont : font

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

Default font used in the main button.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultFont -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultGradient-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

defaultGradient : Gradient

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

Default gradient for the main button.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultGradient -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dropDownSeparatorWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dropDownSeparatorWidth : real

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

Width of the dropdown button separator.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dropDownSeparatorWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dropDownWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dropDownWidth : real

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

Width of the drop down button.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dropDownWidth -->


