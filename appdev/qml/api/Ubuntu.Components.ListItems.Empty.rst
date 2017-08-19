Ubuntu.Components.ListItems.Empty
=================================

.. raw:: html

   <p>

A list item with no contents. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Empty -->

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

AbstractButton

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

Base, Expandable, SingleControl, Standard, and ValueSelector.

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

backgroundIndicator : list<Item>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

confirmRemoval : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

divider : ThinDivider

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

highlightWhenPressed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selected : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

showDivider : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

swipingState : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

waitingConfirmationForRemoval : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

itemRemoved()

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

cancelItemRemoval()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Empty-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The component is deprecated. Use ListItem component instead. The
Empty class can be used for generic list items containing other
components such as buttons. It is selectable and can take mouse clicks.
It will attempt to detect if a thin dividing line at the bottom of the
item is suitable, but this behaviour can be overridden (using
showDivider). For specific types of list items, see its subclasses.

.. raw:: html

   </p>

.. raw:: html

   <p>

The item will still remain in memory after being removed from the list
so it is up to the application to destroy it. This can be handled by the
signal itemRemoved that is fired after all animation is done.

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
   <span class="type">Model</span> {
   <span class="name">id</span>: <span class="name">contactModel</span>
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">name</span>: <span class="string">&quot;Bill Smith&quot;</span>
   <span class="name">number</span>: <span class="string">&quot;555 3264&quot;</span>
   }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">name</span>: <span class="string">&quot;John Brown&quot;</span>
   <span class="name">number</span>: <span class="string">&quot;555 8426&quot;</span>
   }
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">model</span>: <span class="name">contactModel</span>
   <span class="name">delegate</span>: <span class="name">ListItem</span>.Empty {
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">6</span>)
   <span class="name">removable</span>: <span class="number">true</span>
   <span class="name">onItemRemoved</span>: <span class="name">contactModel</span>.<span class="name">remove</span>(<span class="name">index</span>)
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> <span class="name">number</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

See the documentation of the derived classes of Empty for more examples.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Empty -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$backgroundIndicator -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="backgroundIndicator-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

backgroundIndicator : list<Item>

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

Defines the item background item to be showed during the item swiping

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@backgroundIndicator -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="confirmRemoval-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

confirmRemoval : bool

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

Defines if the item needs confirmation before removing by swiping.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@confirmRemoval -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="divider-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

divider : ThinDivider

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

Exposes our the bottom line divider.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@divider -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="highlightWhenPressed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

highlightWhenPressed : bool

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

Highlight the list item when it is pressed. This is used to disable the
highlighting of the full list item when custom highlighting needs to be
implemented (for example in ListItem.Standard which can have a split).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@highlightWhenPressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

removable : bool

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

Defines if this item can be removed or not.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selected-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

selected : bool

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

Specifies whether the list item is selected.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selected -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="showDivider-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

showDivider : bool

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

Set to show or hide the thin bottom divider line (drawn by the
ThinDivider component). This line is shown by default except in cases
where this item is the delegate of a ListView.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@showDivider -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="swipingState-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] swipingState : string

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

The current swiping state ("SwipingRight" or "")

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@swipingState -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="waitingConfirmationForRemoval-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] waitingConfirmationForRemoval : bool

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

Defines if the item is waiting for the user interaction during the swipe
to delete

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@waitingConfirmationForRemoval -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$itemRemoved -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemRemoved-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

itemRemoved()

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

This handler is called when the item is removed from the list

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemRemoved -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancelItemRemoval -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancelItemRemoval-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancelItemRemoval()

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

Cancel item romoval

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancelItemRemoval -->


