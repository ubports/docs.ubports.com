Ubuntu.Components.ListItemDrag
==============================

.. raw:: html

   <p>

Provides information about a ListItem drag event. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItemDrag -->

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

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

accept : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

from : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumIndex : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumIndex : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enum

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

to : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ListItemDrag-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The object cannot be instantiated and it is passed as parameter to
ViewItems::dragUpdated attached signal. Developer can decide whether to
accept or restrict the dragging event based on the input provided by
this event.

.. raw:: html

   </p>

.. raw:: html

   <p>

The direction of the drag can be found via the status property and the
source and destination the drag can be applied via from and to
properties. The allowed directions can be configured through
minimumIndex and maximumIndex properties, and the event acceptance
through accept property. If the event is not accepted, the drag action
will be considered as cancelled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListItemDrag -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accept -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accept-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

accept : bool

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

The property can be used to dismiss the event. By default its value is
true, meaning the drag event is accepted. The value of false blocks the
drag event to be handled by the ListItem's dragging mechanism.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accept -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="from-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] from : int

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

Specifies the source index the ListItem is dragged from.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@from -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumIndex-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumIndex : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@maximumIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumIndex-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumIndex : int

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

These properties configure the minimum and maximum indexes the item can
be dragged. The properties can be set in ViewItems::dragUpdated signal.
A negative value means no restriction defined on the dragging interval
side.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] status : enum

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

The property provides information about the status of the drag. Its
value can be one of the following:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ListItemDrag.Started - indicates that the dragging is about to start,
giving opportunities to define restrictions on the dragging indexes,
like minimumIndex, maximumIndex

.. raw:: html

   </li>

.. raw:: html

   <li>

ListItemDrag.Moving - the dragged item is moved upwards or downwards in
the ListItem

.. raw:: html

   </li>

.. raw:: html

   <li>

ListItemDrag.Dropped - indicates that the drag event is finished, and
the dragged item is about to be dropped to the given position.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="to-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] to : int

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

Specifies the index the ListItem is dragged to or dropped.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@to -->


