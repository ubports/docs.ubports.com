.. _sdk_qtquick_qml_dynamic_view_ordering_tutorial_2_-_dragging_view_items:

QtQuick QML Dynamic View Ordering Tutorial 2 - Dragging View Items
==================================================================


Now that we have a visible list of items we want to be able to interact with them. We'll start by extending the delegate so the visible content can be dragged up and down the screen. The updated delegate looks like this:

.. code:: qml

        Component {
            id: dragDelegate
            MouseArea {
                id: dragArea
                property bool held: false
                anchors { left: parent.left; right: parent.right }
                height: content.height
                drag.target: held ? content : undefined
                drag.axis: Drag.YAxis
                onPressAndHold: held = true
                onReleased: held = false
                Rectangle {
                    id: content
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                        verticalCenter: parent.verticalCenter
                    }
                    width: dragArea.width; height: column.implicitHeight + 4
                    border.width: 1
                    border.color: "lightsteelblue"
                    color: dragArea.held ? "lightsteelblue" : "white"
                    Behavior on color { ColorAnimation { duration: 100 } }
                    radius: 2
                    states: State {
                        when: dragArea.held
                        ParentChange { target: content; parent: root }
                        AnchorChanges {
                            target: content
                            anchors { horizontalCenter: undefined; verticalCenter: undefined }
                        }
                    }
                    Column {
                        id: column
                        anchors { fill: parent; margins: 2 }
                        Text { text: 'Name: ' + name }
                        Text { text: 'Type: ' + type }
                        Text { text: 'Age: ' + age }
                        Text { text: 'Size: ' + size }
                    }
                }
            }
        }

The major change here is the root item of the delegate is now a :ref:`MouseArea <sdk_qtquick_mousearea>` which provides handlers for mouse events and will allow us to drag the delegate's content item. It also acts as a container for the content item which is important as a delegate's root item is positioned by the view and cannot be moved by other means.

.. code:: qml

            MouseArea {
                id: dragArea
                property bool held: false
                anchors { left: parent.left; right: parent.right }
                height: content.height
                drag.target: held ? content : undefined
                drag.axis: Drag.YAxis
                onPressAndHold: held = true
                onReleased: held = false
                Rectangle {
                    id: content
                }
            }

Dragging the content item is enabled by binding it to the :ref:`MouseArea <sdk_qtquick_mousearea>`'s :ref:`drag.target <sdk_qtquick_mousearea_drag_target>` property. Because we still want the view to be flickable we wait until the :ref:`MouseArea <sdk_qtquick_mousearea>`'s :ref:`pressAndHold <sdk_qtquick_mousearea_pressAndHold>` signal is emitted before binding the drag target. This way when mouse moves before the hold timeout has expired it is interpreted as moving the list and if it moves after it is interpreted as dragging an item. To make it more obvious to the user when an item can be dragged we'll change the background color of the content item when the timeout has expired.

.. code:: qml

                    color: dragArea.held ? "lightsteelblue" : "white"
                    Behavior on color { ColorAnimation { duration: 100 } }

The other thing we'll need to do before an item can be dragged is to unset any anchors on the content item so it can be freely moved around. We do this in a state change that is triggered when the delegate item is held, at the same time we can reparent the content item to the root item so that is above other items in the stacking order and isn't obscured as it is dragged around.

.. code:: qml

                    states: State {
                        when: dragArea.held
                        ParentChange { target: content; parent: root }
                        AnchorChanges {
                            target: content
                            anchors { horizontalCenter: undefined; verticalCenter: undefined }
                        }
                    }

Files:

-  tutorials/dynamicview/dynamicview2/PetsModel.qml
-  tutorials/dynamicview/dynamicview2/dynamicview.qml
-  tutorials/dynamicview/dynamicview2/dynamicview2.qmlproject

`QML Dynamic View Ordering Tutorial 1 - A Simple ListView and Delegate </sdk/apps/qml/QtQuick/tutorials-dynamicview-dynamicview1/>`_  `QML Dynamic View Ordering Tutorial 3 - Moving Dragged Items </sdk/apps/qml/QtQuick/tutorials-dynamicview-dynamicview3/>`_ 
