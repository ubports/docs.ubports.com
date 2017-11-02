.. _sdk_qtquick_drag:
QtQuick Drag
============

For specifying drag and drop events for moved Items

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Attached Properties
-------------------

-  **:ref:`active <sdk_qtquick_drag#active-attached-prop>`** : bool
-  **:ref:`dragType <sdk_qtquick_drag#dragType-attached-prop>`** :
   enumeration
-  **:ref:`hotSpot <sdk_qtquick_drag#hotSpot-attached-prop>`** :
   QPointF
-  **:ref:`keys <sdk_qtquick_drag#keys-attached-prop>`** : stringlist
-  **:ref:`mimeData <sdk_qtquick_drag#mimeData-attached-prop>`** :
   stringlist
-  **:ref:`proposedAction <sdk_qtquick_drag#proposedAction-attached-prop>`**
   : enumeration
-  **:ref:`source <sdk_qtquick_drag#source-attached-prop>`** : Object
-  **:ref:`supportedActions <sdk_qtquick_drag#supportedActions-attached-prop>`**
   : flags
-  **:ref:`target <sdk_qtquick_drag#target-attached-prop>`** : Object

Attached Signals
----------------

-  **:ref:`dragFinished <sdk_qtquick_drag#dragFinished-signal>`**\ (DropAction
   *action*)
-  **:ref:`dragStarted <sdk_qtquick_drag#dragStarted-signal>`**\ ()

Attached Methods
----------------

-  void **:ref:`cancel <sdk_qtquick_drag#cancel-method>`**\ ()
-  enumeration **:ref:`drop <sdk_qtquick_drag#drop-method>`**\ ()
-  void **:ref:`start <sdk_qtquick_drag#start-method>`**\ (flags
   *supportedActions*)
-  void
   **:ref:`startDrag <sdk_qtquick_drag#startDrag-method>`**\ (flags
   *supportedActions*)

Detailed Description
--------------------

Using the Drag attached property, any Item can be made a source of drag
and drop events within a scene.

When a drag is :ref:`active <sdk_qtquick_drag#active-attached-prop>` on an
item, any change in that item's position will generate a drag event that
will be sent to any :ref:`DropArea <sdk_qtquick_droparea>` that intersects
with the new position of the item. Other items which implement drag and
drop event handlers can also receive these events.

The following snippet shows how an item can be dragged with a
:ref:`MouseArea <sdk_qtquick_mousearea>`. However, dragging is not limited
to mouse drags; anything that can move an item can generate drag events,
including touch events, animations and bindings.

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 200; height: 200
        DropArea {
            x: 75; y: 75
            width: 50; height: 50
            Rectangle {
                anchors.fill: parent
                color: "green"
                visible: parent.containsDrag
            }
        }
        Rectangle {
            x: 10; y: 10
            width: 20; height: 20
            color: "red"
            Drag.active: dragArea.drag.active
            Drag.hotSpot.x: 10
            Drag.hotSpot.y: 10
            MouseArea {
                id: dragArea
                anchors.fill: parent
                drag.target: parent
            }
        }
    }

A drag can be terminated either by canceling it with
Drag.\ :ref:`cancel() <sdk_qtquick_drag#cancel-method>` or setting
Drag.active to false, or it can be terminated with a drop event by
calling Drag.\ :ref:`drop() <sdk_qtquick_drag#drop-method>`. If the drop
event is accepted, Drag.\ :ref:`drop() <sdk_qtquick_drag#drop-method>` will
return the `drop
action <sdk_qtquick_drag#supportedActions-attached-prop>:ref:` chosen by
the recipient of the event, otherwise it will return Qt.IgnoreAction.

Attached Property Documentation
-------------------------------

+--------------------------------------------------------------------------+
|        \ Drag.active : bool                                              |
+--------------------------------------------------------------------------+

This property holds whether a drag event sequence is currently active.

Binding this property to the active property of
:ref:`MouseArea::drag <sdk_qtquick_mousearea#drag-prop>` will cause
:ref:`startDrag <sdk_qtquick_drag#startDrag-method>` to be called when the
user starts dragging.

Setting this property to true will also send a QDragEnter event to the
scene with the item's current position. Setting it to false will send a
QDragLeave event.

While a drag is active any change in an item's position will send a
QDragMove event with item's new position to the scene.

| 

+--------------------------------------------------------------------------+
|        \ Drag.dragType : enumeration                                     |
+--------------------------------------------------------------------------+

This property indicates whether to automatically start drags, do
nothing, or to use backwards compatible internal drags. The default is
to use backwards compatible internal drags.

A drag can also be started manually using
:ref:`startDrag <sdk_qtquick_drag#startDrag-method>`.

-  Drag.None - do not start drags automatically
-  Drag.Automatic - start drags automatically
-  Drag.Internal (default) - start backwards compatible drags
   automatically

When using ``Drag.Automatic`` you should also define
:ref:`mimeData <sdk_qtquick_drag#mimeData-attached-prop>` and bind the
:ref:`active <sdk_qtquick_drag#active-attached-prop>` property to the
active property of MouseArea.drag.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ Drag.hotSpot : QPointF                                          |
+--------------------------------------------------------------------------+

This property holds the drag position relative to the top left of the
item.

By default this is (0, 0).

Changes to hotSpot trigger a new drag move with the updated position.

| 

+--------------------------------------------------------------------------+
|        \ Drag.keys : stringlist                                          |
+--------------------------------------------------------------------------+

This property holds a list of keys that can be used by a
:ref:`DropArea <sdk_qtquick_droparea>` to filter drag events.

Changing the keys while a drag is active will reset the sequence of drag
events by sending a drag leave event followed by a drag enter event with
the new source.

| 

+--------------------------------------------------------------------------+
|        \ Drag.mimeData : stringlist                                      |
+--------------------------------------------------------------------------+

This property holds a map of mimeData that is used during
:ref:`startDrag <sdk_qtquick_drag#startDrag-method>`.

This QML property was introduced in Qt 5.2.

| 

+--------------------------------------------------------------------------+
|        \ Drag.proposedAction : enumeration                               |
+--------------------------------------------------------------------------+

This property holds an action that is recommended by the drag source as
a return value from Drag.\ :ref:`drop() <sdk_qtquick_drag#drop-method>`.

Changes to proposedAction will trigger a move event with the updated
proposal.

| 

+--------------------------------------------------------------------------+
|        \ Drag.source : Object                                            |
+--------------------------------------------------------------------------+

This property holds an object that is identified to recipients of drag
events as the source of the events. By default this is the item that the
Drag property is attached to.

Changing the source while a drag is active will reset the sequence of
drag events by sending a drag leave event followed by a drag enter event
with the new source.

| 

+--------------------------------------------------------------------------+
|        \ Drag.supportedActions : flags                                   |
+--------------------------------------------------------------------------+

This property holds return values of
Drag.\ :ref:`drop() <sdk_qtquick_drag#drop-method>` supported by the drag
source.

Changing the supportedActions while a drag is active will reset the
sequence of drag events by sending a drag leave event followed by a drag
enter event with the new source.

| 

+--------------------------------------------------------------------------+
|        \ Drag.target : Object                                            |
+--------------------------------------------------------------------------+

While a drag is active this property holds the last object to accept an
enter event from the dragged item, if the current drag position doesn't
intersect any accepting targets it is null.

When a drag is not active this property holds the object that accepted
the drop event that ended the drag, if no object accepted the drop or
the drag was canceled the target will then be null.

| 

Attached Signal Documentation
-----------------------------

+--------------------------------------------------------------------------+
|        \ dragFinished(DropAction *action*)                               |
+--------------------------------------------------------------------------+

This signal is emitted when a drag finishes and the drag was started
with the :ref:`startDrag() <sdk_qtquick_drag#startDrag-method>` method or
started automatically using the
:ref:`dragType <sdk_qtquick_drag#dragType-attached-prop>` property.

The corresponding handler is ``onDragFinished``.

| 

+--------------------------------------------------------------------------+
|        \ dragStarted()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when a drag is started with the
:ref:`startDrag() <sdk_qtquick_drag#startDrag-method>` method or when it is
started automatically using the
:ref:`dragType <sdk_qtquick_drag#dragType-attached-prop>` property.

The corresponding handler is ``onDragStarted``.

| 

Attached Method Documentation
-----------------------------

+--------------------------------------------------------------------------+
|        \ void cancel()                                                   |
+--------------------------------------------------------------------------+

Ends a drag sequence.

| 

+--------------------------------------------------------------------------+
|        \ enumeration drop()                                              |
+--------------------------------------------------------------------------+

Ends a drag sequence by sending a drop event to the target item.

Returns the action accepted by the target item. If the target item or a
parent doesn't accept the drop event then Qt.IgnoreAction will be
returned.

The returned drop action may be one of:

-  Qt.CopyAction Copy the data to the target
-  Qt.MoveAction Move the data from the source to the target
-  Qt.LinkAction Create a link from the source to the target.
-  Qt.IgnoreAction Ignore the action (do nothing with the data).

| 

+--------------------------------------------------------------------------+
|        \ void start(flags *supportedActions*)                            |
+--------------------------------------------------------------------------+

Starts sending drag events. Used for starting old-style internal drags.
:ref:`startDrag <sdk_qtquick_drag#startDrag-method>` is the new-style,
preferred method of starting drags.

The optional *supportedActions* argument can be used to override the
:ref:`supportedActions <sdk_qtquick_drag#supportedActions-attached-prop>`
property for the started sequence.

| 

+--------------------------------------------------------------------------+
|        \ void startDrag(flags *supportedActions*)                        |
+--------------------------------------------------------------------------+

Starts sending drag events.

The optional *supportedActions* argument can be used to override the
:ref:`supportedActions <sdk_qtquick_drag#supportedActions-attached-prop>`
property for the started sequence.

| 
