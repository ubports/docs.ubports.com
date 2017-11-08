.. _sdk_qtquick_drag:

QtQuick Drag
============

For specifying drag and drop events for moved Items

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Attached Properties
-------------------

-  :ref:`active <sdk_qtquick_drag_active>` : bool
-  :ref:`dragType <sdk_qtquick_drag_dragType>` : enumeration
-  :ref:`hotSpot <sdk_qtquick_drag_hotSpot>` : QPointF
-  :ref:`keys <sdk_qtquick_drag_keys>` : stringlist
-  :ref:`mimeData <sdk_qtquick_drag_mimeData>` : stringlist
-  :ref:`proposedAction <sdk_qtquick_drag_proposedAction>` : enumeration
-  :ref:`source <sdk_qtquick_drag_source>` : Object
-  :ref:`supportedActions <sdk_qtquick_drag_supportedActions>` : flags
-  :ref:`target <sdk_qtquick_drag_target>` : Object

Attached Signals
----------------

-  :ref:`dragFinished <sdk_qtquick_drag_dragFinished>`\ (DropAction *action*)
-  :ref:`dragStarted <sdk_qtquick_drag_dragStarted>`\ ()

Attached Methods
----------------

-  void :ref:`cancel <sdk_qtquick_drag_cancel>`\ ()
-  enumeration :ref:`drop <sdk_qtquick_drag_drop>`\ ()
-  void :ref:`start <sdk_qtquick_drag_start>`\ (flags *supportedActions*)
-  void :ref:`startDrag <sdk_qtquick_drag_startDrag>`\ (flags *supportedActions*)

Detailed Description
--------------------

Using the Drag attached property, any Item can be made a source of drag and drop events within a scene.

When a drag is :ref:`active <sdk_qtquick_drag_active>` on an item, any change in that item's position will generate a drag event that will be sent to any :ref:`DropArea <sdk_qtquick_droparea>` that intersects with the new position of the item. Other items which implement drag and drop event handlers can also receive these events.

The following snippet shows how an item can be dragged with a :ref:`MouseArea <sdk_qtquick_mousearea>`. However, dragging is not limited to mouse drags; anything that can move an item can generate drag events, including touch events, animations and bindings.

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

A drag can be terminated either by canceling it with Drag.\ :ref:`cancel() <sdk_qtquick_drag_cancel>` or setting Drag.active to false, or it can be terminated with a drop event by calling Drag.\ :ref:`drop() <sdk_qtquick_drag_drop>`. If the drop event is accepted, Drag.\ :ref:`drop() <sdk_qtquick_drag_drop>` will return the :ref:`drop action <sdk_qtquick_drag_supportedActions>` chosen by the recipient of the event, otherwise it will return Qt.IgnoreAction.

Attached Property Documentation
-------------------------------

.. _sdk_qtquick_drag_active:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Drag.active : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether a drag event sequence is currently active.

Binding this property to the active property of :ref:`MouseArea::drag <sdk_qtquick_mousearea_drag>` will cause :ref:`startDrag <sdk_qtquick_drag_startDrag>` to be called when the user starts dragging.

Setting this property to true will also send a QDragEnter event to the scene with the item's current position. Setting it to false will send a QDragLeave event.

While a drag is active any change in an item's position will send a QDragMove event with item's new position to the scene.

.. _sdk_qtquick_drag_dragType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Drag.dragType : enumeration                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether to automatically start drags, do nothing, or to use backwards compatible internal drags. The default is to use backwards compatible internal drags.

A drag can also be started manually using :ref:`startDrag <sdk_qtquick_drag_startDrag>`.

-  Drag.None - do not start drags automatically
-  Drag.Automatic - start drags automatically
-  Drag.Internal (default) - start backwards compatible drags automatically

When using ``Drag.Automatic`` you should also define :ref:`mimeData <sdk_qtquick_drag_mimeData>` and bind the :ref:`active <sdk_qtquick_drag_active>` property to the active property of MouseArea.drag.

This QML property was introduced in Qt 5.2.

.. _sdk_qtquick_drag_hotSpot:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Drag.hotSpot : QPointF                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the drag position relative to the top left of the item.

By default this is (0, 0).

Changes to hotSpot trigger a new drag move with the updated position.

.. _sdk_qtquick_drag_keys:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Drag.keys : stringlist                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of keys that can be used by a :ref:`DropArea <sdk_qtquick_droparea>` to filter drag events.

Changing the keys while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.

.. _sdk_qtquick_drag_mimeData:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Drag.mimeData : stringlist                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a map of mimeData that is used during :ref:`startDrag <sdk_qtquick_drag_startDrag>`.

This QML property was introduced in Qt 5.2.

.. _sdk_qtquick_drag_proposedAction:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Drag.proposedAction : enumeration                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds an action that is recommended by the drag source as a return value from Drag.\ :ref:`drop() <sdk_qtquick_drag_drop>`.

Changes to proposedAction will trigger a move event with the updated proposal.

.. _sdk_qtquick_drag_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Drag.source : Object                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds an object that is identified to recipients of drag events as the source of the events. By default this is the item that the Drag property is attached to.

Changing the source while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.

.. _sdk_qtquick_drag_supportedActions:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Drag.supportedActions : flags                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds return values of Drag.\ :ref:`drop() <sdk_qtquick_drag_drop>` supported by the drag source.

Changing the supportedActions while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.

.. _sdk_qtquick_drag_target:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Drag.target : Object                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

While a drag is active this property holds the last object to accept an enter event from the dragged item, if the current drag position doesn't intersect any accepting targets it is null.

When a drag is not active this property holds the object that accepted the drop event that ended the drag, if no object accepted the drop or the drag was canceled the target will then be null.

Attached Signal Documentation
-----------------------------

.. _sdk_qtquick_drag_dragFinished:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragFinished(DropAction *action*)                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a drag finishes and the drag was started with the :ref:`startDrag() <sdk_qtquick_drag_startDrag>` method or started automatically using the :ref:`dragType <sdk_qtquick_drag_dragType>` property.

The corresponding handler is ``onDragFinished``.

.. _sdk_qtquick_drag_dragStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragStarted()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a drag is started with the :ref:`startDrag() <sdk_qtquick_drag_startDrag>` method or when it is started automatically using the :ref:`dragType <sdk_qtquick_drag_dragType>` property.

The corresponding handler is ``onDragStarted``.

Attached Method Documentation
-----------------------------

.. _sdk_qtquick_drag_cancel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void cancel()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Ends a drag sequence.

.. _sdk_qtquick_drag_drop:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enumeration drop()                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Ends a drag sequence by sending a drop event to the target item.

Returns the action accepted by the target item. If the target item or a parent doesn't accept the drop event then Qt.IgnoreAction will be returned.

The returned drop action may be one of:

-  Qt.CopyAction Copy the data to the target
-  Qt.MoveAction Move the data from the source to the target
-  Qt.LinkAction Create a link from the source to the target.
-  Qt.IgnoreAction Ignore the action (do nothing with the data).

.. _sdk_qtquick_drag_start:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void start(flags *supportedActions*)                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts sending drag events. Used for starting old-style internal drags. :ref:`startDrag <sdk_qtquick_drag_startDrag>` is the new-style, preferred method of starting drags.

The optional *supportedActions* argument can be used to override the :ref:`supportedActions <sdk_qtquick_drag_supportedActions>` property for the started sequence.

.. _sdk_qtquick_drag_startDrag:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void startDrag(flags *supportedActions*)                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts sending drag events.

The optional *supportedActions* argument can be used to override the :ref:`supportedActions <sdk_qtquick_drag_supportedActions>` property for the started sequence.

