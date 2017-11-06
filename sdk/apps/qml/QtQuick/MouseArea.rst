.. _sdk_qtquick_mousearea:

QtQuick MouseArea
=================

Enables simple mouse handling

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`acceptedButtons <sdk_qtquick_mousearea_acceptedButtons>` : Qt::MouseButtons
-  :ref:`containsMouse <sdk_qtquick_mousearea_containsMouse>` : bool
-  :ref:`containsPress <sdk_qtquick_mousearea_containsPress>` : bool
-  :ref:`cursorShape <sdk_qtquick_mousearea_cursorShape>` : Qt::CursorShape
-  :ref:`drag <sdk_qtquick_mousearea_drag>`

   -  :ref:`drag.target <sdk_qtquick_mousearea_drag_target>` : Item
   -  :ref:`drag.active <sdk_qtquick_mousearea_drag_active>` : bool
   -  :ref:`drag.axis <sdk_qtquick_mousearea_drag_axis>` : enumeration
   -  :ref:`drag.minimumX <sdk_qtquick_mousearea_drag_minimumX>` : real
   -  :ref:`drag.maximumX <sdk_qtquick_mousearea_drag_maximumX>` : real
   -  :ref:`drag.minimumY <sdk_qtquick_mousearea_drag_minimumY>` : real
   -  :ref:`drag.maximumY <sdk_qtquick_mousearea_drag_maximumY>` : real
   -  :ref:`drag.filterChildren <sdk_qtquick_mousearea_drag_filterChildren>` : bool
   -  :ref:`drag.threshold <sdk_qtquick_mousearea_drag_threshold>` : real

-  :ref:`enabled <sdk_qtquick_mousearea_enabled>` : bool
-  :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` : bool
-  :ref:`mouseX <sdk_qtquick_mousearea_mouseX>` : real
-  :ref:`mouseY <sdk_qtquick_mousearea_mouseY>` : real
-  :ref:`pressed <sdk_qtquick_mousearea_pressed>` : bool
-  :ref:`pressedButtons <sdk_qtquick_mousearea_pressedButtons>` : MouseButtons
-  :ref:`preventStealing <sdk_qtquick_mousearea_preventStealing>` : bool
-  :ref:`propagateComposedEvents <sdk_qtquick_mousearea_propagateComposedEvents>` : bool

Signals
-------

-  :ref:`canceled <sdk_qtquick_mousearea_canceled>`\ ()
-  :ref:`clicked <sdk_qtquick_mousearea_clicked>`\ (MouseEvent *mouse*)
-  :ref:`doubleClicked <sdk_qtquick_mousearea_doubleClicked>`\ (MouseEvent *mouse*)
-  :ref:`entered <sdk_qtquick_mousearea_entered>`\ ()
-  :ref:`exited <sdk_qtquick_mousearea_exited>`\ ()
-  :ref:`positionChanged <sdk_qtquick_mousearea_positionChanged>`\ (MouseEvent *mouse*)
-  :ref:`pressAndHold <sdk_qtquick_mousearea_pressAndHold>`\ (MouseEvent *mouse*)
-  :ref:`pressed <sdk_qtquick_mousearea_pressed>`\ (MouseEvent *mouse*)
-  :ref:`released <sdk_qtquick_mousearea_released>`\ (MouseEvent *mouse*)
-  :ref:`wheel <sdk_qtquick_mousearea_wheel>`\ (WheelEvent *wheel*)

Detailed Description
--------------------

A :ref:`MouseArea <sdk_qtquick_mousearea>` is an invisible item that is typically used in conjunction with a visible item in order to provide mouse handling for that item. By effectively acting as a proxy, the logic for mouse handling can be contained within a :ref:`MouseArea <sdk_qtquick_mousearea>` item.

The :ref:`enabled <sdk_qtquick_mousearea_enabled>` property is used to enable and disable mouse handling for the proxied item. When disabled, the mouse area becomes transparent to mouse events.

The :ref:`pressed <sdk_qtquick_mousearea_pressed>` read-only property indicates whether or not the user is holding down a mouse button over the mouse area. This property is often used in bindings between properties in a user interface. The :ref:`containsMouse <sdk_qtquick_mousearea_containsMouse>` read-only property indicates the presence of the mouse cursor over the mouse area but, by default, only when a mouse button is held down; see the :ref:`containsMouse <sdk_qtquick_mousearea_containsMouse>` documentation for details.

Information about the mouse position and button clicks are provided via signals for which event handler properties are defined. The most commonly used involved handling mouse presses and clicks: onClicked, onDoubleClicked, onPressed, onReleased and onPressAndHold. It's also possible to handle mouse wheel events via the onWheel signal.

If a :ref:`MouseArea <sdk_qtquick_mousearea>` overlaps with the area of other :ref:`MouseArea <sdk_qtquick_mousearea>` items, you can choose to propagate ``clicked``, ``doubleClicked`` and ``pressAndHold`` events to these other items by setting :ref:`propagateComposedEvents <sdk_qtquick_mousearea_propagateComposedEvents>` to true and rejecting events that should be propagated. See the :ref:`propagateComposedEvents <sdk_qtquick_mousearea_propagateComposedEvents>` documentation for details.

By default, :ref:`MouseArea <sdk_qtquick_mousearea>` items only report mouse clicks and not changes to the position of the mouse cursor. Setting the :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` property ensures that handlers defined for onPositionChanged, onEntered and onExited are used and that the :ref:`containsMouse <sdk_qtquick_mousearea_containsMouse>` property is updated even when no mouse buttons are pressed.

Example Usage
-------------

The following example uses a :ref:`MouseArea <sdk_qtquick_mousearea>` in a :ref:`Rectangle <sdk_qtquick_rectangle>` that changes the :ref:`Rectangle <sdk_qtquick_rectangle>` color to red when clicked:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        color: "green"
        MouseArea {
            anchors.fill: parent
            onClicked: { parent.color = 'red' }
        }
    }

Many :ref:`MouseArea <sdk_qtquick_mousearea>` signals pass a :ref:`mouse <sdk_qtquick_mouseevent>` parameter that contains additional information about the mouse event, such as the position, button, and any key modifiers.

Here is an extension of the previous example that produces a different color when the area is right clicked:

.. code:: qml

    Rectangle {
        width: 100; height: 100
        color: "green"
        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {
                if (mouse.button == Qt.RightButton)
                    parent.color = 'blue';
                else
                    parent.color = 'red';
            }
        }
    }

**See also** :ref:`MouseEvent <sdk_qtquick_mouseevent>`, `MouseArea example </sdk/apps/qml/QtQuick/mousearea/>`_ , and `Important Concepts In Qt Quick - User Input </sdk/apps/qml/QtQuick/qtquick-input-topic/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_mousearea_acceptedButtons:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| acceptedButtons : Qt::MouseButtons                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the mouse buttons that the mouse area reacts to.

To specify that the :ref:`MouseArea <sdk_qtquick_mousearea>` will react to multiple buttons, Qt::MouseButtons flag values are combined using the "\|" (or) operator:

.. code:: cpp

    MouseArea { acceptedButtons: Qt.LeftButton | Qt.RightButton }

To indicate that all possible mouse buttons are to be accepted, the special value 'Qt.AllButtons' may be used:

.. code:: cpp

    MouseArea { acceptedButtons: Qt.AllButtons }

The default value is ``Qt.LeftButton``.

.. _sdk_qtquick_mousearea_containsMouse:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| containsMouse : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the mouse is currently inside the mouse area.

**Warning:** This property is not updated if the area moves under the mouse: *containsMouse* will not change. In addition, if :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` is false, containsMouse will only be valid when the mouse is pressed while the mouse cursor is inside the :ref:`MouseArea <sdk_qtquick_mousearea>`.

.. _sdk_qtquick_mousearea_containsPress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| containsPress : bool                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This is a convenience property equivalent to ``pressed && containsMouse``, i.e. it holds whether any of the :ref:`acceptedButtons <sdk_qtquick_mousearea_acceptedButtons>` are currently pressed and the mouse is currently within the :ref:`MouseArea <sdk_qtquick_mousearea>`.

This property is particularly useful for highlighting an item while the mouse is pressed within its bounds.

This QML property was introduced in Qt 5.4.

**See also** :ref:`pressed <sdk_qtquick_mousearea_pressed>` and :ref:`containsMouse <sdk_qtquick_mousearea_containsMouse>`.

.. _sdk_qtquick_mousearea_cursorShape:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cursorShape : Qt::CursorShape                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the cursor shape for this mouse area. Note that on platforms that do not display a mouse cursor this may have no effect.

The available cursor shapes are:

-  Qt.ArrowCursor
-  Qt.UpArrowCursor
-  Qt.CrossCursor
-  Qt.WaitCursor
-  Qt.IBeamCursor
-  Qt.SizeVerCursor
-  Qt.SizeHorCursor
-  Qt.SizeBDiagCursor
-  Qt.SizeFDiagCursor
-  Qt.SizeAllCursor
-  Qt.BlankCursor
-  Qt.SplitVCursor
-  Qt.SplitHCursor
-  Qt.PointingHandCursor
-  Qt.ForbiddenCursor
-  Qt.WhatsThisCursor
-  Qt.BusyCursor
-  Qt.OpenHandCursor
-  Qt.ClosedHandCursor
-  Qt.DragCopyCursor
-  Qt.DragMoveCursor
-  Qt.DragLinkCursor

In order to only set a mouse cursor shape for a region without reacting to mouse events set the :ref:`acceptedButtons <sdk_qtquick_mousearea_acceptedButtons>` to none:

.. code:: cpp

    MouseArea { cursorShape: Qt.IBeamCursor; acceptedButtons: Qt.NoButton }

The default value is ``Qt.ArrowCursor``.

**See also** Qt::CursorShape.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **drag group**                                                                                                                                                                                                                                                                                                  |
+=================================================================================================================================================================================================================================================================================================================+
| drag.target : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| drag.active : bool                                                                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| drag.axis : enumeration                                                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| drag.minimumX : real                                                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| drag.maximumX : real                                                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| drag.minimumY : real                                                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| drag.maximumY : real                                                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| drag.filterChildren : bool                                                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| drag.threshold : real                                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

``drag`` provides a convenient way to make an item draggable.

-  ``drag.target`` specifies the id of the item to drag.
-  ``drag.active`` specifies if the target item is currently being dragged.
-  ``drag.axis`` specifies whether dragging can be done horizontally (``Drag.XAxis``), vertically (``Drag.YAxis``), or both (``Drag.XAndYAxis``)
-  ``drag.minimum`` and ``drag.maximum`` limit how far the target can be dragged along the corresponding axes.

The following example displays a :ref:`Rectangle <sdk_qtquick_rectangle>` that can be dragged along the X-axis. The opacity of the rectangle is reduced when it is dragged to the right.

.. code:: qml

    Rectangle {
        id: container
        width: 600; height: 200
        Rectangle {
            id: rect
            width: 50; height: 50
            color: "red"
            opacity: (600.0 - rect.x) / 600
            MouseArea {
                anchors.fill: parent
                drag.target: rect
                drag.axis: Drag.XAxis
                drag.minimumX: 0
                drag.maximumX: container.width - rect.width
            }
        }
    }

**Note:** Items cannot be dragged if they are anchored for the requested ``drag.axis``. For example, if ``anchors.left`` or ``anchors.right`` was set for ``rect`` in the above example, it cannot be dragged along the X-axis. This can be avoided by settng the anchor value to ``undefined`` in an :ref:`onPressed <sdk_qtquick_mousearea_pressed>` handler.

If ``drag.filterChildren`` is set to true, a drag can override descendant MouseAreas. This enables a parent :ref:`MouseArea <sdk_qtquick_mousearea>` to handle drags, for example, while descendants handle clicks:

``drag.threshold`` determines the threshold in pixels of when the drag operation should start. By default this is bound to a platform dependent value. This property was added in Qt Quick 2.2.

If ``drag.smoothed`` is ``true``, the target will be moved only after the drag operation has started. If set to ``false``, the target will be moved straight to the current mouse position. By default, this property is ``true``. This property was added in Qt Quick 2.4

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 480
        height: 320
        Rectangle {
            x: 30; y: 30
            width: 300; height: 240
            color: "lightsteelblue"
            MouseArea {
                anchors.fill: parent
                drag.target: parent;
                drag.axis: "XAxis"
                drag.minimumX: 30
                drag.maximumX: 150
                drag.filterChildren: true
                Rectangle {
                    color: "yellow"
                    x: 50; y : 50
                    width: 100; height: 100
                    MouseArea {
                        anchors.fill: parent
                        onClicked: console.log("Clicked")
                    }
                }
            }
        }
    }

.. _sdk_qtquick_mousearea_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the item accepts mouse events.

**Note:** Due to historical reasons, this property is not equivalent to Item.enabled. It only affects mouse events, and its effect does not propagate to child items.

By default, this property is true.

.. _sdk_qtquick_mousearea_hoverEnabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hoverEnabled : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether hover events are handled.

By default, mouse events are only handled in response to a button event, or when a button is pressed. Hover enables handling of all mouse events even when no mouse button is pressed.

This property affects the :ref:`containsMouse <sdk_qtquick_mousearea_containsMouse>` property and the onEntered, onExited and onPositionChanged signals.

.. _sdk_qtquick_mousearea_mouseX:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseX : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the coordinates of the mouse cursor.

If the :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` property is false then these properties will only be valid while a button is pressed, and will remain valid as long as the button is held down even if the mouse is moved outside the area.

By default, this property is false.

If :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` is true then these properties will be valid when:

-  no button is pressed, but the mouse is within the :ref:`MouseArea <sdk_qtquick_mousearea>` (:ref:`containsMouse <sdk_qtquick_mousearea_containsMouse>` is true).
-  a button is pressed and held, even if it has since moved out of the area.

The coordinates are relative to the :ref:`MouseArea <sdk_qtquick_mousearea>`.

.. _sdk_qtquick_mousearea_mouseY:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mouseY : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the coordinates of the mouse cursor.

If the :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` property is false then these properties will only be valid while a button is pressed, and will remain valid as long as the button is held down even if the mouse is moved outside the area.

By default, this property is false.

If :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` is true then these properties will be valid when:

-  no button is pressed, but the mouse is within the :ref:`MouseArea <sdk_qtquick_mousearea>` (:ref:`containsMouse <sdk_qtquick_mousearea_containsMouse>` is true).
-  a button is pressed and held, even if it has since moved out of the area.

The coordinates are relative to the :ref:`MouseArea <sdk_qtquick_mousearea>`.

.. _sdk_qtquick_mousearea_pressed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressed : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether any of the :ref:`acceptedButtons <sdk_qtquick_mousearea_acceptedButtons>` are currently pressed.

.. _sdk_qtquick_mousearea_pressedButtons:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressedButtons : MouseButtons                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the mouse buttons currently pressed.

It contains a bitwise combination of:

-  Qt.LeftButton
-  Qt.RightButton
-  Qt.MiddleButton

The code below displays "right" when the right mouse buttons is pressed:

.. code:: qml

    Text {
        text: mouseArea.pressedButtons & Qt.RightButton ? "right" : ""
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
        }
    }

**Note:** this property only handles buttons specified in :ref:`acceptedButtons <sdk_qtquick_mousearea_acceptedButtons>`.

**See also** :ref:`acceptedButtons <sdk_qtquick_mousearea_acceptedButtons>`.

.. _sdk_qtquick_mousearea_preventStealing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| preventStealing : bool                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the mouse events may be stolen from this :ref:`MouseArea <sdk_qtquick_mousearea>`.

If a :ref:`MouseArea <sdk_qtquick_mousearea>` is placed within an item that filters child mouse events, such as Flickable, the mouse events may be stolen from the :ref:`MouseArea <sdk_qtquick_mousearea>` if a gesture is recognized by the parent item, e.g. a flick gesture. If preventStealing is set to true, no item will steal the mouse events.

Note that setting preventStealing to true once an item has started stealing events will have no effect until the next press event.

By default this property is false.

.. _sdk_qtquick_mousearea_propagateComposedEvents:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| propagateComposedEvents : bool                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether composed mouse events will automatically propagate to other MouseAreas that overlap with this :ref:`MouseArea <sdk_qtquick_mousearea>` but are lower in the visual stacking order. By default, this property is false.

:ref:`MouseArea <sdk_qtquick_mousearea>` contains several composed events: ``clicked``, ``doubleClicked`` and ``pressAndHold``. These are composed of basic mouse events, like ``pressed``, and can be propagated differently in comparison to basic events.

If propagateComposedEvents is set to true, then composed events will be automatically propagated to other MouseAreas in the same location in the scene. Each event is propagated to the next :ref:`enabled <sdk_qtquick_mousearea_enabled>` :ref:`MouseArea <sdk_qtquick_mousearea>` beneath it in the stacking order, propagating down this visual hierarchy until a :ref:`MouseArea <sdk_qtquick_mousearea>` accepts the event. Unlike ``pressed`` events, composed events will not be automatically accepted if no handler is present.

For example, below is a yellow :ref:`Rectangle <sdk_qtquick_rectangle>` that contains a blue :ref:`Rectangle <sdk_qtquick_rectangle>`. The blue rectangle is the top-most item in the hierarchy of the visual stacking order; it will visually rendered above the yellow rectangle. Since the blue rectangle sets propagateComposedEvents to true, and also sets :ref:`MouseEvent::accepted <sdk_qtquick_mouseevent_accepted>` to false for all received ``clicked`` events, any ``clicked`` events it receives are propagated to the :ref:`MouseArea <sdk_qtquick_mousearea>` of the yellow rectangle beneath it.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        color: "yellow"
        width: 100; height: 100
        MouseArea {
            anchors.fill: parent
            onClicked: console.log("clicked yellow")
        }
        Rectangle {
            color: "blue"
            width: 50; height: 50
            MouseArea {
                anchors.fill: parent
                propagateComposedEvents: true
                onClicked: {
                    console.log("clicked blue")
                    mouse.accepted = false
                }
            }
        }
    }

Clicking on the blue rectangle will cause the ``onClicked`` handler of its child :ref:`MouseArea <sdk_qtquick_mousearea>` to be invoked; the event will then be propagated to the :ref:`MouseArea <sdk_qtquick_mousearea>` of the yellow rectangle, causing its own ``onClicked`` handler to be invoked.

This property greatly simplifies the usecase of when you want to have overlapping MouseAreas handling the composed events together. For example: if you want one :ref:`MouseArea <sdk_qtquick_mousearea>` to handle ``clicked`` signals and the other to handle ``pressAndHold``, or if you want one :ref:`MouseArea <sdk_qtquick_mousearea>` to handle ``clicked`` most of the time, but pass it through when certain conditions are met.

Signal Documentation
--------------------

.. _sdk_qtquick_mousearea_canceled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| canceled()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when mouse events have been canceled, either because an event was not accepted, or because another item stole the mouse event handling.

This signal is for advanced use: it is useful when there is more than one :ref:`MouseArea <sdk_qtquick_mousearea>` that is handling input, or when there is a :ref:`MouseArea <sdk_qtquick_mousearea>` inside a `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_ . In the latter case, if you execute some logic in the ``onPressed`` signal handler and then start dragging, the `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_  will steal the mouse handling from the :ref:`MouseArea <sdk_qtquick_mousearea>`. In these cases, to reset the logic when the :ref:`MouseArea <sdk_qtquick_mousearea>` has lost the mouse handling to the `Flickable </sdk/apps/qml/QtQuick/touchinteraction/#flickable>`_ , ``canceled`` should be handled in addition to :ref:`released <sdk_qtquick_mousearea_released>`.

The corresponding handler is ``onCanceled``.

.. _sdk_qtquick_mousearea_clicked:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clicked(:ref:`MouseEvent <sdk_qtquick_mouseevent>` *mouse*)                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when there is a click. A click is defined as a press followed by a release, both inside the :ref:`MouseArea <sdk_qtquick_mousearea>` (pressing, moving outside the :ref:`MouseArea <sdk_qtquick_mousearea>`, and then moving back inside and releasing is also considered a click).

The :ref:`mouse <sdk_qtquick_mouseevent>` parameter provides information about the click, including the x and y position of the release of the click, and whether the click was held.

When handling this signal, changing the :ref:`accepted <sdk_qtquick_mouseevent_accepted>` property of the *mouse* parameter has no effect.

The corresponding handler is ``onClicked``.

.. _sdk_qtquick_mousearea_doubleClicked:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| doubleClicked(:ref:`MouseEvent <sdk_qtquick_mouseevent>` *mouse*)                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when there is a double-click (a press followed by a release followed by a press). The :ref:`mouse <sdk_qtquick_mouseevent>` parameter provides information about the click, including the x and y position of the release of the click, and whether the click was held.

When handling this signal, if the :ref:`accepted <sdk_qtquick_mouseevent_accepted>` property of the *mouse* parameter is set to false, the pressed/released/clicked signals will be emitted for the second click; otherwise they are suppressed. The ``accepted`` property defaults to true.

The corresponding handler is ``onDoubleClicked``.

.. _sdk_qtquick_mousearea_entered:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| entered()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the mouse enters the mouse area.

By default this signal is only emitted if a button is currently pressed. Set :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` to true to emit this signal even when no mouse button is pressed.

The corresponding handler is ``onEntered``.

**See also** :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>`.

.. _sdk_qtquick_mousearea_exited:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| exited()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the mouse exits the mouse area.

By default this signal is only emitted if a button is currently pressed. Set :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` to true to emit this signal even when no mouse button is pressed.

The example below shows a fairly typical relationship between two MouseAreas, with ``mouseArea2`` on top of ``mouseArea1``. Moving the mouse into ``mouseArea2`` from ``mouseArea1`` will cause ``mouseArea1`` to emit the ``exited`` signal.

.. code:: qml

    Rectangle {
        width: 400; height: 400
        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            hoverEnabled: true
        }
        MouseArea {
            id: mouseArea2
            width: 100; height: 100
            anchors.centerIn: parent
            hoverEnabled: true
        }
    }

If instead you give the two MouseAreas a parent-child relationship, moving the mouse into ``mouseArea2`` from ``mouseArea1`` will **not** cause ``mouseArea1`` to emit ``exited``. Instead, they will both be considered to be simultaneously hovered.

The corresponding handler is ``onExited``.

**See also** :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>`.

.. _sdk_qtquick_mousearea_positionChanged:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| positionChanged(:ref:`MouseEvent <sdk_qtquick_mouseevent>` *mouse*)                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the mouse position changes.

The :ref:`mouse <sdk_qtquick_mouseevent>` parameter provides information about the mouse, including the x and y position, and any buttons currently pressed.

By default this signal is only emitted if a button is currently pressed. Set :ref:`hoverEnabled <sdk_qtquick_mousearea_hoverEnabled>` to true to emit this signal even when no mouse button is pressed.

When handling this signal, changing the :ref:`accepted <sdk_qtquick_mouseevent_accepted>` property of the *mouse* parameter has no effect.

The corresponding handler is ``onPositionChanged``.

.. _sdk_qtquick_mousearea_pressAndHold:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressAndHold(:ref:`MouseEvent <sdk_qtquick_mouseevent>` *mouse*)                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when there is a long press (currently 800ms). The :ref:`mouse <sdk_qtquick_mouseevent>` parameter provides information about the press, including the x and y position of the press, and which button is pressed.

When handling this signal, changing the :ref:`accepted <sdk_qtquick_mouseevent_accepted>` property of the *mouse* parameter has no effect.

The corresponding handler is ``onPressAndHold``.

.. _sdk_qtquick_mousearea_pressed1:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressed(:ref:`MouseEvent <sdk_qtquick_mouseevent>` *mouse*)                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when there is a press. The :ref:`mouse <sdk_qtquick_mouseevent>` parameter provides information about the press, including the x and y position and which button was pressed.

When handling this signal, use the :ref:`accepted <sdk_qtquick_mouseevent_accepted>` property of the *mouse* parameter to control whether this :ref:`MouseArea <sdk_qtquick_mousearea>` handles the press and all future mouse events until release. The default is to accept the event and not allow other MouseAreas beneath this one to handle the event. If *accepted* is set to false, no further events will be sent to this :ref:`MouseArea <sdk_qtquick_mousearea>` until the button is next pressed.

The corresponding handler is ``onPressed``.

.. _sdk_qtquick_mousearea_released:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| released(:ref:`MouseEvent <sdk_qtquick_mouseevent>` *mouse*)                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when there is a release. The :ref:`mouse <sdk_qtquick_mouseevent>` parameter provides information about the click, including the x and y position of the release of the click, and whether the click was held.

When handling this signal, changing the :ref:`accepted <sdk_qtquick_mouseevent_accepted>` property of the *mouse* parameter has no effect.

The corresponding handler is ``onReleased``.

**See also** :ref:`canceled <sdk_qtquick_mousearea_canceled>`.

.. _sdk_qtquick_mousearea_wheel:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| wheel(:ref:`WheelEvent <sdk_qtquick_wheelevent>` *wheel*)                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted in response to both mouse wheel and trackpad scroll gestures.

The :ref:`wheel <sdk_qtquick_wheelevent>` parameter provides information about the event, including the x and y position, any buttons currently pressed, and information about the wheel movement, including angleDelta and pixelDelta.

The corresponding handler is ``onWheel``.

