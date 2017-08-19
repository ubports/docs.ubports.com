QtQuick.DropArea
================

.. raw:: html

   <p>

For specifying drag and drop handling in an area More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DropArea -->

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

import QtQuick 2.4

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

containsDrag : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

drag.x : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.y : qreal

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

drag.source : Object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

keys : stringlist

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

dropped(DragEvent drop)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

entered(DragEvent drag)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exited()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positionChanged(DragEvent drag)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DropArea-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A DropArea is an invisible item which receives events when other items
are dragged over it.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Drag attached property can be used to notify the DropArea when an
Item is dragged over it.

.. raw:: html

   </p>

.. raw:: html

   <p>

The keys property can be used to filter drag events which don't include
a matching key.

.. raw:: html

   </p>

.. raw:: html

   <p>

The drag.source property is communicated to the source of a drag event
as the recipient of a drop on the drag target.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DropArea -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$containsDrag -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="containsDrag-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

containsDrag : bool

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

This property identifies whether the DropArea currently contains any
dragged items.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@containsDrag -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="drag-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

drag group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.x-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.x : qreal

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="drag.y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.y : qreal

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

These properties hold the coordinates of the last drag event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@drag -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="drag.source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

drag.source : Object

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

This property holds the source of a drag.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@drag.source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keys-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

keys : stringlist

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

This property holds a list of drag keys a DropArea will accept.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no keys are listed the DropArea will accept events from any drag
source, otherwise the drag source must have at least one compatible key.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QtQuick::Drag::keys.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keys -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$dropped -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dropped-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

dropped(DragEvent drop)

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

This signal is emitted when a drop event occurs within the bounds of a
DropArea.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDropped.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dropped -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="entered-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

entered(DragEvent drag)

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

This signal is emitted when a drag enters the bounds of a DropArea.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onEntered.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@entered -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exited-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

exited()

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

This signal is emitted when a drag exits the bounds of a DropArea.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onExited.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exited -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positionChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

positionChanged(DragEvent drag)

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

This signal is emitted when the position of a drag has changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onPositionChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@positionChanged -->


