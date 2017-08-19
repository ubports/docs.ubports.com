Ubuntu.Components.ListItems.ValueSelector
=========================================

.. raw:: html

   <p>

List item displaying single selected value when not expanded, where
expanding it opens a listing of all the possible values for selection.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ValueSelector -->

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

expanded : bool

.. raw:: html

   </li>

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

selectedIndex : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

values : variant

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ValueSelector-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   <p>

\*\*\*\*DEPRECATED! PLEASE USE ITEM SELECTOR OR FOR THE UBUNTU SHAPE
VERSION THE OPTION SELECTOR.\*\*\*\*

.. raw:: html

   </p>

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Ubuntu.Components.ListItems 1.3 as ListItem
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">width</span>: <span class="number">250</span>
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ValueSelector {
   <span class="name">text</span>: <span class="string">&quot;Standard&quot;</span>
   <span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ValueSelector {
   <span class="name">text</span>: <span class="string">&quot;Disabled&quot;</span>
   <span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
   <span class="name">enabled</span>: <span class="number">false</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ValueSelector {
   <span class="name">text</span>: <span class="string">&quot;Expanded&quot;</span>
   <span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
   <span class="name">expanded</span>: <span class="number">true</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ValueSelector {
   <span class="name">text</span>: <span class="string">&quot;Icon&quot;</span>
   <span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
   <span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
   <span class="name">selectedIndex</span>: <span class="number">2</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@ValueSelector -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$expanded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expanded-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

expanded : bool

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

Specifies whether the selector is 'open' or 'closed'.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expanded -->

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

The index of the currently selected element from the values array.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="values-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

values : variant

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

The list of values that will be shown under the label text

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@values -->


