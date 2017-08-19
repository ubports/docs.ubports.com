Ubuntu.Components.ListItems.ExpandablesColumn
=============================================

.. raw:: html

   <p>

A column to be used together with the Expandable item. This lays out its
content just like a regular Column inside a Flickable but when used
together with items of type Expandable it provides additional features
like automatically positioning the expanding item when it expands and
collapsing it again when the user taps outside of it. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ExpandablesColumn -->

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

Flickable

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

children : QtObject

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expandedItem : Item

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

collapse()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expandItem(item)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ExpandablesColumn-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

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
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ExpandablesColumn {
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">24</span>)
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">8</span>
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Expandable {
   <span class="name">expandedHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">onClicked</span>: {
   <span class="name">expanded</span> <span class="operator">=</span> <span class="number">true</span>;
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@ExpandablesColumn -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$children -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="children-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] children : QtObject

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

Reparent any content to inside the Column.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@children -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expandedItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] expandedItem : Item

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

Points to the currently expanded item. Null if no item is expanded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expandedItem -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$collapse -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collapse-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

collapse()

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

Collapse the currently expanded item. If there isn't any item expanded,
this function does nothing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collapse -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expandItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

expandItem( item)

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

Expand the given item. The item must be a child of this ListView.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expandItem -->


