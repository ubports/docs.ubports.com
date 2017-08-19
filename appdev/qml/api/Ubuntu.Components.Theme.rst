Ubuntu.Components.Theme
=======================

.. raw:: html

   <p>

The Theme class provides facilities to interact with the current theme.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Theme -->

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

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

palette : Palette

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

Component createStyleComponent(string styleName, object parent)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Theme-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A global instance is exposed as the Theme context property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The theme defines the visual aspect of the Ubuntu components.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example changing the current theme:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">onClicked</span>: <span class="name">Theme</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

Example creating a style component:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></span> {
   <span class="name">id</span>: <span class="name">myItem</span>
   <span class="name">style</span>: <span class="name">Theme</span>.<span class="name">createStyleComponent</span>(<span class="string">&quot;MyItemStyle.qml&quot;</span>, <span class="name">myItem</span>)
   }</pre>

.. raw:: html

   <p>

See also StyledItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Theme -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

The name of the current theme.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="palette-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

palette : Palette

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

The palette of the current theme.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@palette -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$createStyleComponent -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createStyleComponent-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

Component createStyleComponent(string styleName, object parent)

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

Returns an instance of the style component named styleName.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createStyleComponent -->


