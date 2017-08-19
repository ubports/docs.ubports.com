Ubuntu.Components.ListItems.Base
================================

.. raw:: html

   <p>

Parent class of various list item classes that can have an icon and a
progression symbol. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Base -->

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

import Ubuntu.Components.ListItems 1.3

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

Empty

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

MultiValue, SingleValue, and Subtitled.

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

fallbackIconName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fallbackIconSource : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iconFrame : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

progression : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Base-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The component is deprecated. Use ListItem component instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples: See subclasses

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Base -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$fallbackIconName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fallbackIconName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fallbackIconName : string

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

The icon shown in the list item if iconName failed to load (optional).

.. raw:: html

   </p>

.. raw:: html

   <p>

If both fallbackIconSource and fallbackIconName are defined,
fallbackIconName will be ignored.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The complete list of icons available in Ubuntu is not published
yet. For now please refer to the folders where the icon themes are
installed:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Ubuntu Touch: /usr/share/icons/suru

.. raw:: html

   </li>

.. raw:: html

   <li>

Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These 2 separate icon themes will be merged soon.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fallbackIconName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fallbackIconSource-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fallbackIconSource : url

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

The location of the icon to show in the list item if iconSource failed
to load (optional).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fallbackIconSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iconFrame-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iconFrame : bool

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

Show or hide the frame around the icon

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@iconFrame -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="progression-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

progression : bool

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

Show or hide the progression symbol.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@progression -->


