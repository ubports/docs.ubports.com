Ubuntu.Components.Popups.Dialog
===============================

.. raw:: html

   <p>

The Dialog caters for cases in which the application requires the user
to determine between optional actions. The Dialog will interrupt the
user flow and lock the view for further interaction before the user has
selected a desired action. It can only be closed by selecting an
optional action confirming or cancelling the operation. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Dialog -->

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

callerMargin : real

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

contents : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

edgeMargins : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

modal : bool

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

text : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

theme : ThemeSettings

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

title : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Dialog-description -->

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
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">dialog</span>
   <span class="type"><a href="index.html">Dialog</a></span> {
   <span class="name">id</span>: <span class="name">dialogue</span>
   <span class="name">title</span>: <span class="string">&quot;Save file&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Are you sure that you want to save this file?&quot;</span>
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;cancel&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialogue</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;overwrite previous version&quot;</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialogue</span>)
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;save a copy&quot;</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialogue</span>)
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">id</span>: <span class="name">saveButton</span>
   <span class="name">text</span>: <span class="string">&quot;save&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">dialog</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@Dialog -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$callerMargin -->

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

The property holds the margin from the dialog's caller. The property is
themed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@callerMargin -->

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

Specifies the height of the dialog content.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

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

Specifies the width of the dialog content.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contents-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] contents : list<Object>

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

Content will be put inside a column in the foreround of the Dialog.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contents -->

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

The property holds the margins from the dialog's dismissArea. The
property is themed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@edgeMargins -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="modal-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

modal : bool

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

The property controls whether the dialog is modal or not. Modal dialogs
block event propagation to items under dismissArea, when non-modal ones
let these events passed to these items. In addition, non-modal dialogs
do not dim the dismissArea.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@modal -->

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

The style of the foreground of the Dialog. This property takes
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

The style name of the foreground of the Dialog.

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

   <tr valign="top" id="text-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

text : string

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

The question to the user.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

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

Configure the theme of the Dialog foreground and all its subcomponents.
Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   import Ubuntu.Components.Popups 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
   <span class="comment">// make sure the main theme is Ambiance</span>
   <span class="name">theme</span>.name: <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">dialogComponent</span>
   <span class="type"><a href="index.html">Dialog</a></span> {
   <span class="name">id</span>: <span class="name">dialog</span>
   <span class="name">title</span>: <span class="string">&quot;Input dialog&quot;</span>
   <span class="comment">// the dialog and its children will use SuruDark</span>
   <span class="name">theme</span>: <span class="name">ThemeSettings</span> {
   <span class="name">name</span>: <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">placeholderText</span>: <span class="string">&quot;enter text&quot;</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Close&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialog</span>)
   }
   }
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Open dialog&quot;</span>
   <span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">dialogComponent</span>)
   }
   }</pre>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also StyledItem::theme.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@theme -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="title-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

title : string

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

The title of the question to ask the user.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@title -->


