Ubuntu.Components.ListItems.MultiValue
======================================

.. raw:: html

   <p>

List item displaying multiple values. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MultiValue -->

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

Base

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

values : variant

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MultiValue-description -->

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

Examples:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Ubuntu.Components.ListItems 1.3 as ListItem
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.MultiValue {
   <span class="name">text</span>: <span class="string">&quot;Label&quot;</span>
   <span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
   <span class="name">onClicked</span>: <span class="name">selected</span> <span class="operator">=</span> !<span class="name">selected</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.MultiValue {
   <span class="name">text</span>: <span class="string">&quot;Label&quot;</span>
   <span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
   <span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
   <span class="name">progression</span>: <span class="number">true</span>
   <span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked&quot;</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@MultiValue -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$values -->

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


