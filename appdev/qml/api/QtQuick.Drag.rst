QtQuick.Drag
============

.. raw:: html

   <p>

For specifying drag and drop events for moved Items More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Drag -->

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

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

active : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragType : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hotSpot : QPointF

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

keys : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mimeData : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

proposedAction : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : Object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

supportedActions : flags

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Object

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

dragFinished(DropAction action)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dragStarted()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="attached-methods">

Attached Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void cancel()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enumeration drop()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void start(flags supportedActions)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void startDrag(flags supportedActions)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Drag-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Using the Drag attached property, any Item can be made a source of drag
and drop events within a scene.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a drag is active on an item, any change in that item's position
will generate a drag event that will be sent to any DropArea that
intersects with the new position of the item. Other items which
implement drag and drop event handlers can also receive these events.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following snippet shows how an item can be dragged with a MouseArea.
However, dragging is not limited to mouse drags; anything that can move
an item can generate drag events, including touch events, animations and
bindings.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="QtQuick.DropArea.md">DropArea</a></span> {
   <span class="name">x</span>: <span class="number">75</span>; <span class="name">y</span>: <span class="number">75</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   <span class="name">visible</span>: <span class="name">parent</span>.<span class="name">containsDrag</span>
   }
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>
   <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">20</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">Drag</span>.active: <span class="name">dragArea</span>.<span class="name">drag</span>.<span class="name">active</span>
   <span class="name">Drag</span>.hotSpot.x: <span class="number">10</span>
   <span class="name">Drag</span>.hotSpot.y: <span class="number">10</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">dragArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">drag</span>.target: <span class="name">parent</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

A drag can be terminated either by canceling it with Drag.cancel() or
setting Drag.active to false, or it can be terminated with a drop event
by calling Drag.drop(). If the drop event is accepted, Drag.drop() will
return the drop action chosen by the recipient of the event, otherwise
it will return Qt.IgnoreAction.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Drag -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="active-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Drag.active : bool

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

This property holds whether a drag event sequence is currently active.

.. raw:: html

   </p>

.. raw:: html

   <p>

Binding this property to the active property of MouseArea::drag will
cause startDrag to be called when the user starts dragging.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting this property to true will also send a QDragEnter event to the
scene with the item's current position. Setting it to false will send a
QDragLeave event.

.. raw:: html

   </p>

.. raw:: html

   <p>

While a drag is active any change in an item's position will send a
QDragMove event with item's new position to the scene.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragType-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Drag.dragType : enumeration

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

This property indicates whether to automatically start drags, do
nothing, or to use backwards compatible internal drags. The default is
to use backwards compatible internal drags.

.. raw:: html

   </p>

.. raw:: html

   <p>

A drag can also be started manually using startDrag.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Drag.None - do not start drags automatically

.. raw:: html

   </li>

.. raw:: html

   <li>

Drag.Automatic - start drags automatically

.. raw:: html

   </li>

.. raw:: html

   <li>

Drag.Internal (default) - start backwards compatible drags automatically

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When using Drag.Automatic you should also define mimeData and bind the
active property to the active property of MouseArea.drag.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hotSpot-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Drag.hotSpot : QPointF

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

This property holds the drag position relative to the top left of the
item.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this is (0, 0).

.. raw:: html

   </p>

.. raw:: html

   <p>

Changes to hotSpot trigger a new drag move with the updated position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hotSpot -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keys-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Drag.keys : stringlist

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

This property holds a list of keys that can be used by a DropArea to
filter drag events.

.. raw:: html

   </p>

.. raw:: html

   <p>

Changing the keys while a drag is active will reset the sequence of drag
events by sending a drag leave event followed by a drag enter event with
the new source.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keys -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mimeData-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Drag.mimeData : stringlist

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

This property holds a map of mimeData that is used during startDrag.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mimeData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="proposedAction-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Drag.proposedAction : enumeration

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

This property holds an action that is recommended by the drag source as
a return value from Drag.drop().

.. raw:: html

   </p>

.. raw:: html

   <p>

Changes to proposedAction will trigger a move event with the updated
proposal.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@proposedAction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Drag.source : Object

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

This property holds an object that is identified to recipients of drag
events as the source of the events. By default this is the item that the
Drag property is attached to.

.. raw:: html

   </p>

.. raw:: html

   <p>

Changing the source while a drag is active will reset the sequence of
drag events by sending a drag leave event followed by a drag enter event
with the new source.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supportedActions-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Drag.supportedActions : flags

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

This property holds return values of Drag.drop() supported by the drag
source.

.. raw:: html

   </p>

.. raw:: html

   <p>

Changing the supportedActions while a drag is active will reset the
sequence of drag events by sending a drag leave event followed by a drag
enter event with the new source.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@supportedActions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Drag.target : Object

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

While a drag is active this property holds the last object to accept an
enter event from the dragged item, if the current drag position doesn't
intersect any accepting targets it is null.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a drag is not active this property holds the object that accepted
the drop event that ended the drag, if no object accepted the drop or
the drag was canceled the target will then be null.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->

.. raw:: html

   <h2>

Attached Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$dragFinished -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragFinished-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

dragFinished(DropAction action)

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

This signal is emitted when a drag finishes and the drag was started
with the startDrag() method or started automatically using the dragType
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDragFinished.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragFinished -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dragStarted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

dragStarted()

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

This signal is emitted when a drag is started with the startDrag()
method or when it is started automatically using the dragType property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDragStarted.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dragStarted -->

.. raw:: html

   <h2>

Attached Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancel-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void cancel()

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

Ends a drag sequence.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="drop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

enumeration drop()

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

Ends a drag sequence by sending a drop event to the target item.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns the action accepted by the target item. If the target item or a
parent doesn't accept the drop event then Qt.IgnoreAction will be
returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The returned drop action may be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.CopyAction Copy the data to the target

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.MoveAction Move the data from the source to the target

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.LinkAction Create a link from the source to the target.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.IgnoreAction Ignore the action (do nothing with the data).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@drop -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="start-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void start(flags supportedActions)

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

Starts sending drag events. Used for starting old-style internal drags.
startDrag is the new-style, preferred method of starting drags.

.. raw:: html

   </p>

.. raw:: html

   <p>

The optional supportedActions argument can be used to override the
supportedActions property for the started sequence.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@start -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startDrag-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void startDrag(flags supportedActions)

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

Starts sending drag events.

.. raw:: html

   </p>

.. raw:: html

   <p>

The optional supportedActions argument can be used to override the
supportedActions property for the started sequence.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@startDrag -->


