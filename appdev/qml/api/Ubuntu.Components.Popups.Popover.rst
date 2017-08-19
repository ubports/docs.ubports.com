Ubuntu.Components.Popups.Popover
================================

.. raw:: html

   <p>

A popover allows an application to present additional content without
changing the view. A popover has a fixed width and automatic height,
depending on is contents. It can be closed by clicking anywhere outside
of the popover area. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Popover -->

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

import Ubuntu.Components.Popups 1.3

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

PopupBase

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

ActionSelectionPopover.

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

autoClose : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

caller : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

callerMargin : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

container : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

edgeMargins : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

foregroundStyle : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pointerTarget : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

style : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

styleName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

theme : ThemeSettings

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

hide()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

show()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Popover-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Popups 1.3
   import Ubuntu.Components.ListItems 1.3 as Old_ListItem
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">background</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">popoverComponent</span>
   <span class="type"><a href="index.html">Popover</a></span> {
   <span class="name">id</span>: <span class="name">popover</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">containerLayout</span>
   <span class="type">anchors</span> {
   <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
   <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
   <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
   }
   <span class="comment">// there is no equivalent yet to ListItem.Header</span>
   <span class="type">Old_ListItem</span>.Header { <span class="name">text</span>: <span class="string">&quot;Standard list items&quot;</span> }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">somethingLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">somethingLayout</span>
   <span class="name">title</span>.text: <span class="string">&quot;Do somethings&quot;</span>
   }
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked on ListItem with onClicked implemented&quot;</span>)
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">somethingElseLayout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
   <span class="name">id</span>: <span class="name">somethingElseLayout</span>
   <span class="name">title</span>.text: <span class="string">&quot;Do somethings&quot;</span>
   <span class="name">subtitle</span>.text: <span class="string">&quot;else&quot;</span>
   }
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
   <span class="comment">// shall specify the height when Using ListItemLayout inside ListItem</span>
   <span class="name">height</span>: <span class="name">closeBtn</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">closeBtn</span>
   <span class="name">text</span>: <span class="string">&quot;Close button&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">popover</span>);
   }
   }
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">popoverButton</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;open&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">popoverComponent</span>, <span class="name">popoverButton</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@Popover -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$autoClose -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoClose-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoClose : bool

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

The property drives the automatic closing of the Popover when user taps
on the dismissArea. The default behavior is to close the Popover,
therefore set to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

When set to false, closing the Popover is the responsibility of the
caller. Also, the mouse and touch events are not blocked from the
dismissArea.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoClose -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="caller-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

caller : Item

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

The Item such as a Button that the user interacted with to open the
Dialog. This property will be used for the automatic positioning of the
Dialog next to the caller, if possible.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@caller -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="callerMargin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

callerMargin : real

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

The property holds the margin from the popover's caller. The property is
themed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@callerMargin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="container-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] container : list<Object>

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

Content will be put inside the foreround of the Popover.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@container -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentHeight : real

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

Use this property to override the default content height.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentWidth : real

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

Use this property to override the default content width.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="edgeMargins-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

edgeMargins : real

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

The property holds the margins from the popover's dismissArea. The
property is themed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@edgeMargins -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="foregroundStyle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

foregroundStyle : Component

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

Exposes the style property of the StyledItem contained in the Popover.
Refer to StyledItem how to use it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@foregroundStyle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pointerTarget-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pointerTarget : Item

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

The property holds the item to which the pointer should be anchored to.
This can be same as the caller or any child of the caller. By default
the property is set to caller.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pointerTarget -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="style-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

style : Component

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

The style of the foreground of the Popover. This property takes
precedence over styleName

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also StyledItem::style.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@style -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="styleName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

styleName : string

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

The style name of the foreground of the Popover.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also StyledItem::styleName.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@styleName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="theme-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

theme : ThemeSettings

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

Configure the theme of the Popover foreground and all its subcomponents.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also StyledItem::theme and Dialog::theme.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@theme -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$hide -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hide-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

hide()

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

Hide the popover. Only use this function if you handle memory
management. Otherwise use PopupUtils.close() to do it automatically.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hide -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="show-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

show()

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

Make the popover visible. Reparent to the background area object first
if needed. Only use this function if you handle memory management.
Otherwise use PopupUtils.open() to do it automatically.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@show -->


