Ubuntu.Components.ListItems.SingleControl
=========================================

.. raw:: html

   <p>

A list item containing a single control More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SingleControl -->

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

   </ul>

.. raw:: html

   <!-- $$$SingleControl-description -->

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

   <pre class="qml">import Ubuntu.Components 1.3
   import Ubuntu.Components.ListItems 1.3 as ListItem
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.SingleControl {
   <span class="name">control</span>: <span class="name">Button</span> {
   <span class="type">anchors</span> {
   <span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="name">fill</span>: <span class="name">parent</span>
   }
   <span class="name">text</span>: <span class="string">&quot;Large button&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@SingleControl -->

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

The control of this SingleControl list item. The control will
automatically be re-parented to, and centered in, this list item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@control -->


