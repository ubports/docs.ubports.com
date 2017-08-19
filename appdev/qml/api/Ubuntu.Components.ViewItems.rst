Ubuntu.Components.ViewItems
===========================

.. raw:: html

   <p>

A set of properties attached to the ListItem's parent item or ListView.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ViewItems -->

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

Ubuntu.Components 1.2

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

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

dragMode : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expandedIndices : list<int>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expansionFlags : ExpansionFlags

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectMode : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

selectedIndices : list<int>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="attached-signals">

Attached Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

dragUpdated(ListItemDrag event)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ViewItems-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

These properties are automatically attached to the parent item of the
ListItem, or to ListView, when the component is used as delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ViewItems -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$dragMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragMode-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewItems.dragMode : bool

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

The property drives the dragging mode of the ListItems within a
ListView. It has no effect on any other parent of the ListItem.

.. raw:: html

   </p>

.. raw:: html

   <p>

When set, ListItem content will be disabled and a panel will be shown
enabling the dragging mode. The items can be dragged by dragging this
handler only. The feature can be activated same time with
ListItem::selectMode.

.. raw:: html

   </p>

.. raw:: html

   <p>

The panel is configured by the style.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ListItemStyle and dragUpdated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expandedIndices-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewItems.expandedIndices : list<int>

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

The property contains the indexes of the ListItems marked as expanded.
The indexes are model indexes when used in ListView, and child indexes
in other components. The property being writable, initial expansion
configuration can be provided for a view, and provides ability to save
the expansion state.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: If the ViewItems::expansionFlags is having ViewItems.Exclusive
flags set, only the last item from the list will be considered and set
as expanded.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expandedIndices -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expansionFlags-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewItems.expansionFlags : ExpansionFlags

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

Flags driving the expansion behavior.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Flag

.. raw:: html

   </th>

.. raw:: html

   <th>

description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ViewItems.Exclusive

.. raw:: html

   </td>

.. raw:: html

   <td>

When set, only one ListItem can be expanded at a time. Set by default.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ViewItems.UnlockExpanded

.. raw:: html

   </td>

.. raw:: html

   <td>

When set, the ListItem's leading/trailing actions can be swiped in.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

ViewItems.CollapseOnOutsidePress

.. raw:: html

   </td>

.. raw:: html

   <td>

When set, the active expaned ListItem collapses automatically when
clicked outside of its area. The flag also turns ViewItems.Exclusive
flag on.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expansionFlags -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectMode-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewItems.selectMode : bool

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

The property drives whether list items are selectable or not.

.. raw:: html

   </p>

.. raw:: html

   <p>

When set, the ListItems of the Item the property is attached to will
enter into selection state. ListItems provide a visual clue which can be
used to toggle the selection state of each, which in order will be
reflected in the ViewItems.selectedIndices list.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="selectedIndices-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ViewItems.selectedIndices : list<int>

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

The property contains the indexes of the ListItems marked as selected.
The indexes are model indexes when used in ListView, and child indexes
in other components. The property being writable, initial selection
configuration can be provided for a view, and provides ability to save
the selection state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@selectedIndices -->

.. raw:: html

   <h2>

Attached Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$dragUpdated -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragUpdated-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

dragUpdated(ListItemDrag event)

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

The signal is emitted whenever a dragging related event occurrs. The
event.status specifies the dragging event type. Depending on the type,
the ListItemDrag event properties will have the following meaning:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

status

.. raw:: html

   </th>

.. raw:: html

   <th>

from

.. raw:: html

   </th>

.. raw:: html

   <th>

to

.. raw:: html

   </th>

.. raw:: html

   <th>

minimumIndex

.. raw:: html

   </th>

.. raw:: html

   <th>

maximumIndex

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Started

.. raw:: html

   </td>

.. raw:: html

   <td>

the index of the item to be dragged

.. raw:: html

   </td>

.. raw:: html

   <td>

-1

.. raw:: html

   </td>

.. raw:: html

   <td>

default (-1), can be changed to restrict moves

.. raw:: html

   </td>

.. raw:: html

   <td>

default (-1), can be changed to restrict moves

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Moving

.. raw:: html

   </td>

.. raw:: html

   <td>

source index from where the item dragged from

.. raw:: html

   </td>

.. raw:: html

   <td>

destination index where the item can be dragged to

.. raw:: html

   </td>

.. raw:: html

   <td>

the same value set at Started, can be changed

.. raw:: html

   </td>

.. raw:: html

   <td>

the same value set at Started, can be changed

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Dropped

.. raw:: html

   </td>

.. raw:: html

   <td>

source index from where the item dragged from

.. raw:: html

   </td>

.. raw:: html

   <td>

destination index where the item can be dragged to

.. raw:: html

   </td>

.. raw:: html

   <td>

the value set at Started/Moving, changes are omitted

.. raw:: html

   </td>

.. raw:: html

   <td>

the value set at Started/Moving, changes are omitted

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Implementations must move the model data in order to re-order the
ListView content. If the move is not acceptable, it must be cancelled by
setting event.accept to false, in which case the dragged index (from)
will not be updated and next time the signal is emitted will be the
same.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example implementation of a live dragging with restrictions:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="comment">// initiate with random data</span>
   }
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="comment">// content</span>
   }
   <span class="name">ViewItems</span>.dragMode: <span class="number">true</span>
   <span class="name">ViewItems</span>.onDragUpdated: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">ListViewDrag</span>.<span class="name">Started</span>) {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">from</span> <span class="operator">&lt;</span> <span class="number">5</span>) {
   <span class="comment">// deny dragging on the first 5 element</span>
   <span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>;
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">from</span> <span class="operator">&gt;=</span> <span class="number">5</span> <span class="operator">&amp;&amp;</span> <span class="name">event</span>.<span class="name">from</span> <span class="operator">&lt;=</span> <span class="number">10</span> <span class="operator">&amp;&amp;</span>
   <span class="name">event</span>.<span class="name">to</span> <span class="operator">&gt;=</span> <span class="number">5</span> <span class="operator">&amp;&amp;</span> <span class="name">event</span>.<span class="name">to</span> <span class="operator">&lt;=</span> <span class="number">10</span>) {
   <span class="comment">// specify the interval</span>
   <span class="name">event</span>.<span class="name">minimumIndex</span> <span class="operator">=</span> <span class="number">5</span>;
   <span class="name">event</span>.<span class="name">maximumIndex</span> <span class="operator">=</span> <span class="number">10</span>;
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">from</span> <span class="operator">&gt;</span> <span class="number">10</span>) {
   <span class="comment">// prevent dragging to the first 11 items area</span>
   <span class="name">event</span>.<span class="name">minimumIndex</span> <span class="operator">=</span> <span class="number">11</span>;
   }
   } <span class="keyword">else</span> {
   <span class="name">model</span>.<span class="name">move</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="name">event</span>.<span class="name">to</span>, <span class="number">1</span>);
   }
   }
   }</pre>

.. raw:: html

   <p>

A drag'n'drop implementation might be required when model changes are
too expensive, and continuously updating while dragging would cause lot
of traffic. The following example illustrates how to implement such a
scenario:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="comment">// initiate with random data</span>
   }
   <span class="name">delegate</span>: <span class="name">ListItem</span> {
   <span class="comment">// content</span>
   }
   <span class="name">ViewItems</span>.dragMode: <span class="number">true</span>
   <span class="name">ViewItems</span>.onDragUpdated: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">direction</span> <span class="operator">==</span> <span class="name">ListItemDrag</span>.<span class="name">Dropped</span>) {
   <span class="comment">// this is the last event, so drop the item</span>
   <span class="name">model</span>.<span class="name">move</span>(<span class="name">event</span>.<span class="name">from</span>, <span class="name">event</span>.<span class="name">to</span>, <span class="number">1</span>);
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">direction</span> <span class="operator">!=</span> <span class="name">ListItemDrag</span>.<span class="name">Started</span>) {
   <span class="comment">// do not accept the moving events, so drag.from will</span>
   <span class="comment">// always contain the original drag index</span>
   <span class="name">event</span>.<span class="name">accept</span> <span class="operator">=</span> <span class="number">false</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

Note: Do not forget to set event.accept to false in dragUpdated in case
the drag event handling is not accepted, otherwise the system will not
know whether the move has been performed or not, and selected indexes
will not be synchronized properly.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragUpdated -->


