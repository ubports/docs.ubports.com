Ubuntu.Components.StyledItem
============================

.. raw:: html

   <p>

The StyledItem class allows items to be styled by the theme. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StyledItem -->

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

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.1

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

ActionBar, BottomEdge, DatePicker, Dialer, DialerHand, Header, MainView,
Page, Picker, PullToRefresh, ScrollView, Sections, and Toolbar.

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

   <!-- $$$StyledItem-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

StyledItem provides facilities for making an Item stylable by the theme.

.. raw:: html

   </p>

.. raw:: html

   <p>

In order to make an Item stylable by the theme, it is enough to make the
Item inherit from StyledItem and set its style property to be the result
of the appropriate call to theme.createStyleComponent().

.. raw:: html

   </p>

.. raw:: html

   <p>

Example definition of a custom Item MyItem.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">StyledItem</a></span> {
   <span class="name">id</span>: <span class="name">myItem</span>
   <span class="name">styleName</span>: <span class="string">&quot;MyItemStyle&quot;</span>
   }</pre>

.. raw:: html

   <p>

The style set on styleName is instantiated and placed below everything
else that the Item contains. When the style is defined in this way, the
style is taken from the current theme the StyledItem is themed with.
Another way tpo set the style of a component is to set the style
property. This property expects a component and it has precedence over
the styleName, meaning that when both styleName and style are set, the
style will be created from the style componment.

.. raw:: html

   </p>

.. raw:: html

   <p>

A reference to the Item being styled is accessible from the style and
named 'styledItem'.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Theme.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StyledItem -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$style -->

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

Style component instantiated immediately and placed below everything
else. Has precedence over the styleName. When both set, the style will
be created from the component given as property value, and can be reset
to the theme style when set to null or reset (set to undefined).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Press to reset&quot;</span>
   <span class="name">style</span>: <span class="name">Rectangle</span> {
   <span class="name">color</span>: <span class="string">&quot;tan&quot;</span>
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="type">anchors</span> {
   <span class="name">fill</span>: <span class="name">parent</span>
   <span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   }
   <span class="name">text</span>: <span class="name">styledItem</span>.<span class="name">text</span>
   }
   }
   <span class="name">onClicked</span>: <span class="name">style</span> <span class="operator">=</span> <span class="name">undefined</span>
   }</pre>

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

The property specifies the component style name. The style name is a
document in the current theme, and should not contain the qml file
extension. If specified an error will be shown.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">StyledItem</a></span> {
   <span class="name">id</span>: <span class="name">myItem</span>
   <span class="name">styleName</span>: <span class="string">&quot;MyItemStyle&quot;</span>
   }</pre>

.. raw:: html

   <p>

Note: style property has precedence over styleName.

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

The property configures the theme the component and all its
sub-components will use. By default it is set to the closest ancestor
StyledItem's theme if any, or to the system default theme.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@theme -->


