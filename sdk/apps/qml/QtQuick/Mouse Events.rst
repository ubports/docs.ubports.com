.. _sdk_qtquick_mouse_events:

QtQuick Mouse Events
====================



-  :ref:`MouseArea <sdk_qtquick_mousearea>` type
-  :ref:`MouseEvent <sdk_qtquick_mouseevent>` object

QML uses signals and handlers to deliver mouse interactions. Specifically, Qt Quick provides the :ref:`MouseArea <sdk_qtquick_mousearea>` and :ref:`MouseEvent <sdk_qtquick_mouseevent>` types which allow developers to define signal handlers which accept mouse events within a defined area.

The :ref:`MouseArea <sdk_qtquick_mousearea>` type receives events within a defined area. One quick way to define this area is to anchor the ``MouseArea`` to its parent's area using the ``anchors.fill`` property. If the parent is a :ref:`Rectangle <sdk_qtquick_rectangle>` (or any :ref:`Item <sdk_qtquick_item>` component), then the :ref:`MouseArea <sdk_qtquick_mousearea>` will fill the area defined by the parent's dimensions. Alternatively, an area smaller or larger than the parent is definable.

.. code:: qml

    Rectangle {
        id: button
        width: 100; height: 100
        MouseArea {
            anchors.fill: parent
            onClicked: console.log("button clicked")
        }
        MouseArea {
            width:150; height: 75
            onClicked: console.log("irregular area clicked")
        }
    }

The :ref:`MouseArea <sdk_qtquick_mousearea>` type provides signals and handlers to detect different mouse events. The :ref:`MouseArea <sdk_qtquick_mousearea>` type documentation describes these gestures in greater detail:

-  canceled
-  clicked
-  doubleClicked
-  entered
-  exited
-  positionChanged
-  pressAndHold
-  pressed
-  released

These signals have signal handlers that are invoked when the signals are emitted.

.. code:: qml

        MouseArea {
            anchors.fill: parent
            onClicked: console.log("area clicked")
            onDoubleClicked: console.log("area double clicked")
            onEntered: console.log("mouse entered the area")
            onExited: console.log("mouse left the area")
        }

Some mouse gestures and button clicks need to be enabled before they send or receive events. Certain :ref:`MouseArea <sdk_qtquick_mousearea>` and :ref:`MouseEvent <sdk_qtquick_mouseevent>` properties enable these gestures.

To listen to (or explicitly ignore) a certain mouse button, set the appropriate mouse button to the :ref:`acceptedButtons <sdk_qtquick_mousearea_acceptedButtons>` property.

Naturally, the mouse events, such as button presses and mouse positions, are sent during a mouse click. For example, the ``containsMouse`` property will only retrieve its correct value during a mouse press. The :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` will enable mouse events and positioning even when there are no mouse button presses. Setting the ``hoverEnabled`` property to ``true``, in turn will enable the ``entered``, ``exited``, and ``positionChanged`` signal and their respective signal handlers.

.. code:: qml

        MouseArea {
            hoverEnabled: true
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onEntered: console.log("mouse entered the area")
            onExited: console.log("mouse left the area")
        }

Additionally, to disable the whole mouse area, set the :ref:`MouseArea <sdk_qtquick_mousearea>` ``enabled`` property to ``false``.

Signals and their handlers receive a :ref:`MouseEvent <sdk_qtquick_mouseevent>` object as a parameter. The ``mouse`` object contain information about the mouse event. For example, the mouse button that started the event is queried through the :ref:`mouse.button <sdk_qtquick_mouseevent_button>` property.

The ``MouseEvent`` object can also ignore a mouse event using its ``accepted`` property.

Many of the signals are sent multiple times to reflect various mouse events such as double clicking. To facilitate the classification of mouse clicks, the :ref:`MouseEvent <sdk_qtquick_mouseevent>` object has an ``accepted`` property to disable the event propagation.

To learn more about QML's event system, please read the signals and handlers, and event system document.

