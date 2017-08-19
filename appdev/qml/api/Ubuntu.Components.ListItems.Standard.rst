Ubuntu.Components.ListItems.Standard
====================================

.. raw:: html

   <p>

The standard list item class. It shows a basic list item with a label
(text), and optionally an icon, a progression arrow, and it can have an
embedded Item (control) that can be used for including Buttons, Switches
etc. inside the list item. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Standard -->

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

control : Item

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

progression : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Standard-description -->

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

See also the Design Guidelines on List Items.

.. raw:: html

   </p>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Ubuntu.Components 1.3
   import Ubuntu.Components.ListItems 1.3 as ListItem
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
   <span class="name">text</span>: <span class="string">&quot;Selectable standard list item&quot;</span>
   <span class="name">selected</span>: <span class="number">false</span>
   <span class="name">onClicked</span>: <span class="name">selected</span> <span class="operator">=</span> !<span class="name">selected</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
   <span class="name">text</span>: <span class="string">&quot;List item with icon&quot;</span>
   <span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
   <span class="name">text</span>: <span class="string">&quot;With a progression arrow&quot;</span>
   <span class="name">progression</span>: <span class="number">true</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
   <span class="name">text</span>: <span class="string">&quot;Control&quot;</span>
   <span class="name">control</span>: <span class="name">Button</span> {
   <span class="name">text</span>: <span class="string">&quot;Click me&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">19</span>)
   <span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;Clicked&quot;</span>)
   }
   <span class="name">progression</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@Standard -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$control -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="control-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

control : Item

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

An optional control that is displayed inside the list item. The width of
the control must be specified in order to determine the layout of the
list item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@control -->

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


