Ubuntu.Components.TabBar
========================

.. raw:: html

   <p>

Tab bar that will be shown in the header when Tabs is active. This
component does not need to be instantiated by the developer, it is
automatically created by the Tabs. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TabBar -->

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

StyledItem

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

alwaysSelectionMode : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

animate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : var

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectedIndex : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectionMode : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TabBar-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TabBar -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$alwaysSelectionMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="alwaysSelectionMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

alwaysSelectionMode : bool

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

Do not deactivate the tab bar after a specified idle time or when the
user selects a new tab. Off by default.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alwaysSelectionMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="animate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

animate : bool

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

Show animations when the state changes. Default: true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@animate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="model-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

model : TabBar. The tabs are visualized by the style, displaying
controlling elements based on the data specified by the roles. The
default style mandates the existence of either the title or tab role,
but different styles may require to have other roles (e.g. image,
color). The order the role existence is checked is also determined by
the style component, Default style checks the existence of the tab role
first, and if not defined will use the title role.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@model -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

read-onlypressed : bool

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

The user is interacting with the tab bar. Depends on the style pressed
property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectedIndex-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectedIndex : int

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

The property holds the index of the selected Tab item. Note: Setting
this property is DEPRECATED. Set the selectedIndex of the model instead.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectionMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selectionMode : bool

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

An inactive tab bar only displays the currently selected tab, and an
active tab bar can be interacted with to select a tab.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectionMode -->


