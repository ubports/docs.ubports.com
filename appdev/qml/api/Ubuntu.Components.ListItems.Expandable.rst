Ubuntu.Components.ListItems.Expandable
======================================

.. raw:: html

   <p>

An expandable list item with no contents. The Expandable class can be
used for generic list items containing other components such as buttons.
It subclasses Empty and thus brings all that functionality, but
additionally provides means to expand and collapse the item. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Expandable -->

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

children : QtObject

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

collapseOnClick : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

collapsedHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expanded : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expandedHeight : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Expandable-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

When used together with an UbuntuListView or ExpandablesColumn it can
coordinate with other items in the list to make sure it is scrolled
while expanding to be fully visible in the view. Additionally it is made
sure that only one Expandable item is expanded at a time and it is
collapsed when the user clicks outside the item.

.. raw:: html

   </p>

.. raw:: html

   <p>

You can set expanded to true/false to expand/collapse the item.

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
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="QtQml.ListModel.md">ListModel</a></span> {
   <span class="name">id</span>: <span class="name">listModel</span>
   }
   <span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.UbuntuListView {
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">24</span>)
   <span class="name">model</span>: <span class="name">listModel</span>
   <span class="name">delegate</span>: <span class="name">ListItem</span>.Expandable {
   <span class="name">id</span>: <span class="name">expandingItem</span>
   <span class="name">expandedHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">onClicked</span>: {
   <span class="name">expanded</span> <span class="operator">=</span> <span class="number">true</span>;
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@Expandable -->

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

Reparent any content to inside the Flickable

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@children -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collapseOnClick-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

collapseOnClick : bool

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

If set to true, the item will collapse again when the user clicks
somewhere in the always visible (when collapsed) area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collapseOnClick -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collapsedHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

collapsedHeight : real

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

The collapsed (normal) height of the item. Defaults to the standard
height for list items.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collapsedHeight -->

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

Reflects the expanded state. Set this to true/false to expand/collapse
the item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expanded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expandedHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

expandedHeight : real

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

The expanded height of the item's content. Defaults to the same as
collapsedHeight which disables the expanding feature. In order for the
item to be expandable, set this to the expanded size. Note that the
actual expanded size can be smaller if there is not enough space in the
containing list. In that case the item becomes flickable automatically.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expandedHeight -->


