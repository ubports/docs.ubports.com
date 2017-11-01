Enables simple mouse handling

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`acceptedButtons </sdk/apps/qml/QtQuick/MouseArea#acceptedButtons-prop>`__****
   : Qt::MouseButtons
-  ****`containsMouse </sdk/apps/qml/QtQuick/MouseArea#containsMouse-prop>`__****
   : bool
-  ****`containsPress </sdk/apps/qml/QtQuick/MouseArea#containsPress-prop>`__****
   : bool
-  ****`cursorShape </sdk/apps/qml/QtQuick/MouseArea#cursorShape-prop>`__****
   : Qt::CursorShape
-  ****`drag </sdk/apps/qml/QtQuick/MouseArea#drag-prop>`__****

   -  ****`drag.target </sdk/apps/qml/QtQuick/MouseArea#drag.target-prop>`__****
      : Item
   -  ****`drag.active </sdk/apps/qml/QtQuick/MouseArea#drag.active-prop>`__****
      : bool
   -  ****`drag.axis </sdk/apps/qml/QtQuick/MouseArea#drag.axis-prop>`__****
      : enumeration
   -  ****`drag.minimumX </sdk/apps/qml/QtQuick/MouseArea#drag.minimumX-prop>`__****
      : real
   -  ****`drag.maximumX </sdk/apps/qml/QtQuick/MouseArea#drag.maximumX-prop>`__****
      : real
   -  ****`drag.minimumY </sdk/apps/qml/QtQuick/MouseArea#drag.minimumY-prop>`__****
      : real
   -  ****`drag.maximumY </sdk/apps/qml/QtQuick/MouseArea#drag.maximumY-prop>`__****
      : real
   -  ****`drag.filterChildren </sdk/apps/qml/QtQuick/MouseArea#drag.filterChildren-prop>`__****
      : bool
   -  ****`drag.threshold </sdk/apps/qml/QtQuick/MouseArea#drag.threshold-prop>`__****
      : real

-  ****`enabled </sdk/apps/qml/QtQuick/MouseArea#enabled-prop>`__**** :
   bool
-  ****`hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__****
   : bool
-  ****`mouseX </sdk/apps/qml/QtQuick/MouseArea#mouseX-prop>`__**** :
   real
-  ****`mouseY </sdk/apps/qml/QtQuick/MouseArea#mouseY-prop>`__**** :
   real
-  ****`pressed </sdk/apps/qml/QtQuick/MouseArea#pressed-prop>`__**** :
   bool
-  ****`pressedButtons </sdk/apps/qml/QtQuick/MouseArea#pressedButtons-prop>`__****
   : MouseButtons
-  ****`preventStealing </sdk/apps/qml/QtQuick/MouseArea#preventStealing-prop>`__****
   : bool
-  ****`propagateComposedEvents </sdk/apps/qml/QtQuick/MouseArea#propagateComposedEvents-prop>`__****
   : bool

Signals
-------

-  ****`canceled </sdk/apps/qml/QtQuick/MouseArea#canceled-signal>`__****\ ()
-  ****`clicked </sdk/apps/qml/QtQuick/MouseArea#clicked-signal>`__****\ (MouseEvent
   *mouse*)
-  ****`doubleClicked </sdk/apps/qml/QtQuick/MouseArea#doubleClicked-signal>`__****\ (MouseEvent
   *mouse*)
-  ****`entered </sdk/apps/qml/QtQuick/MouseArea#entered-signal>`__****\ ()
-  ****`exited </sdk/apps/qml/QtQuick/MouseArea#exited-signal>`__****\ ()
-  ****`positionChanged </sdk/apps/qml/QtQuick/MouseArea#positionChanged-signal>`__****\ (MouseEvent
   *mouse*)
-  ****`pressAndHold </sdk/apps/qml/QtQuick/MouseArea#pressAndHold-signal>`__****\ (MouseEvent
   *mouse*)
-  ****`pressed </sdk/apps/qml/QtQuick/MouseArea#pressed-signal>`__****\ (MouseEvent
   *mouse*)
-  ****`released </sdk/apps/qml/QtQuick/MouseArea#released-signal>`__****\ (MouseEvent
   *mouse*)
-  ****`wheel </sdk/apps/qml/QtQuick/MouseArea#wheel-signal>`__****\ (WheelEvent
   *wheel*)

Detailed Description
--------------------

A `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ is an invisible item
that is typically used in conjunction with a visible item in order to
provide mouse handling for that item. By effectively acting as a proxy,
the logic for mouse handling can be contained within a
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ item.

The `enabled </sdk/apps/qml/QtQuick/MouseArea#enabled-prop>`__ property
is used to enable and disable mouse handling for the proxied item. When
disabled, the mouse area becomes transparent to mouse events.

The `pressed </sdk/apps/qml/QtQuick/MouseArea#pressed-prop>`__ read-only
property indicates whether or not the user is holding down a mouse
button over the mouse area. This property is often used in bindings
between properties in a user interface. The
`containsMouse </sdk/apps/qml/QtQuick/MouseArea#containsMouse-prop>`__
read-only property indicates the presence of the mouse cursor over the
mouse area but, by default, only when a mouse button is held down; see
the
`containsMouse </sdk/apps/qml/QtQuick/MouseArea#containsMouse-prop>`__
documentation for details.

Information about the mouse position and button clicks are provided via
signals for which event handler properties are defined. The most
commonly used involved handling mouse presses and clicks: onClicked,
onDoubleClicked, onPressed, onReleased and onPressAndHold. It's also
possible to handle mouse wheel events via the onWheel signal.

If a `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ overlaps with the
area of other `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ items,
you can choose to propagate ``clicked``, ``doubleClicked`` and
``pressAndHold`` events to these other items by setting
`propagateComposedEvents </sdk/apps/qml/QtQuick/MouseArea#propagateComposedEvents-prop>`__
to true and rejecting events that should be propagated. See the
`propagateComposedEvents </sdk/apps/qml/QtQuick/MouseArea#propagateComposedEvents-prop>`__
documentation for details.

By default, `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ items only
report mouse clicks and not changes to the position of the mouse cursor.
Setting the
`hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__
property ensures that handlers defined for onPositionChanged, onEntered
and onExited are used and that the
`containsMouse </sdk/apps/qml/QtQuick/MouseArea#containsMouse-prop>`__
property is updated even when no mouse buttons are pressed.

Example Usage
-------------

|image0|

The following example uses a
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ in a
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ that changes the
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ color to red when
clicked:

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

| 

Many `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ signals pass a
`mouse </sdk/apps/qml/QtQuick/MouseEvent/>`__ parameter that contains
additional information about the mouse event, such as the position,
button, and any key modifiers.

Here is an extension of the previous example that produces a different
color when the area is right clicked:

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

**See also** `MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__,
`MouseArea example </sdk/apps/qml/QtQuick/mousearea/>`__, and `Important
Concepts In Qt Quick - User
Input </sdk/apps/qml/QtQuick/qtquick-input-topic/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ acceptedButtons : Qt::MouseButtons                              |
+--------------------------------------------------------------------------+

This property holds the mouse buttons that the mouse area reacts to.

To specify that the `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__
will react to multiple buttons, Qt::MouseButtons flag values are
combined using the "\|" (or) operator:

.. code:: cpp

    MouseArea { acceptedButtons: Qt.LeftButton | Qt.RightButton }

To indicate that all possible mouse buttons are to be accepted, the
special value 'Qt.AllButtons' may be used:

.. code:: cpp

    MouseArea { acceptedButtons: Qt.AllButtons }

The default value is ``Qt.LeftButton``.

| 

+--------------------------------------------------------------------------+
|        \ containsMouse : bool                                            |
+--------------------------------------------------------------------------+

This property holds whether the mouse is currently inside the mouse
area.

**Warning:** This property is not updated if the area moves under the
mouse: *containsMouse* will not change. In addition, if
`hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__ is
false, containsMouse will only be valid when the mouse is pressed while
the mouse cursor is inside the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__.

| 

+--------------------------------------------------------------------------+
|        \ containsPress : bool                                            |
+--------------------------------------------------------------------------+

This is a convenience property equivalent to
``pressed && containsMouse``, i.e. it holds whether any of the
`acceptedButtons </sdk/apps/qml/QtQuick/MouseArea#acceptedButtons-prop>`__
are currently pressed and the mouse is currently within the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__.

This property is particularly useful for highlighting an item while the
mouse is pressed within its bounds.

This QML property was introduced in Qt 5.4.

**See also** `pressed </sdk/apps/qml/QtQuick/MouseArea#pressed-prop>`__
and
`containsMouse </sdk/apps/qml/QtQuick/MouseArea#containsMouse-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ cursorShape : Qt::CursorShape                                   |
+--------------------------------------------------------------------------+

This property holds the cursor shape for this mouse area. Note that on
platforms that do not display a mouse cursor this may have no effect.

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

In order to only set a mouse cursor shape for a region without reacting
to mouse events set the
`acceptedButtons </sdk/apps/qml/QtQuick/MouseArea#acceptedButtons-prop>`__
to none:

.. code:: cpp

    MouseArea { cursorShape: Qt.IBeamCursor; acceptedButtons: Qt.NoButton }

The default value is ``Qt.ArrowCursor``.

**See also** Qt::CursorShape.

| 

+--------------------------------------------------------------------------+
|        \ **drag group**                                                  |
+==========================================================================+
|        \ drag.target : `Item </sdk/apps/qml/QtQuick/Item/>`__            |
+--------------------------------------------------------------------------+
|        \ drag.active : bool                                              |
+--------------------------------------------------------------------------+
|        \ drag.axis : enumeration                                         |
+--------------------------------------------------------------------------+
|        \ drag.minimumX : real                                            |
+--------------------------------------------------------------------------+
|        \ drag.maximumX : real                                            |
+--------------------------------------------------------------------------+
|        \ drag.minimumY : real                                            |
+--------------------------------------------------------------------------+
|        \ drag.maximumY : real                                            |
+--------------------------------------------------------------------------+
|        \ drag.filterChildren : bool                                      |
+--------------------------------------------------------------------------+
|        \ drag.threshold : real                                           |
+--------------------------------------------------------------------------+

``drag`` provides a convenient way to make an item draggable.

-  ``drag.target`` specifies the id of the item to drag.
-  ``drag.active`` specifies if the target item is currently being
   dragged.
-  ``drag.axis`` specifies whether dragging can be done horizontally
   (``Drag.XAxis``), vertically (``Drag.YAxis``), or both
   (``Drag.XAndYAxis``)
-  ``drag.minimum`` and ``drag.maximum`` limit how far the target can be
   dragged along the corresponding axes.

The following example displays a
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ that can be dragged
along the X-axis. The opacity of the rectangle is reduced when it is
dragged to the right.

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

**Note:** Items cannot be dragged if they are anchored for the requested
``drag.axis``. For example, if ``anchors.left`` or ``anchors.right`` was
set for ``rect`` in the above example, it cannot be dragged along the
X-axis. This can be avoided by settng the anchor value to ``undefined``
in an `onPressed </sdk/apps/qml/QtQuick/MouseArea#pressed-prop>`__
handler.

If ``drag.filterChildren`` is set to true, a drag can override
descendant MouseAreas. This enables a parent
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ to handle drags, for
example, while descendants handle clicks:

``drag.threshold`` determines the threshold in pixels of when the drag
operation should start. By default this is bound to a platform dependent
value. This property was added in Qt Quick 2.2.

If ``drag.smoothed`` is ``true``, the target will be moved only after
the drag operation has started. If set to ``false``, the target will be
moved straight to the current mouse position. By default, this property
is ``true``. This property was added in Qt Quick 2.4

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

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the item accepts mouse events.

**Note:** Due to historical reasons, this property is not equivalent to
Item.enabled. It only affects mouse events, and its effect does not
propagate to child items.

By default, this property is true.

| 

+--------------------------------------------------------------------------+
|        \ hoverEnabled : bool                                             |
+--------------------------------------------------------------------------+

This property holds whether hover events are handled.

By default, mouse events are only handled in response to a button event,
or when a button is pressed. Hover enables handling of all mouse events
even when no mouse button is pressed.

This property affects the
`containsMouse </sdk/apps/qml/QtQuick/MouseArea#containsMouse-prop>`__
property and the onEntered, onExited and onPositionChanged signals.

| 

+--------------------------------------------------------------------------+
|        \ mouseX : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the coordinates of the mouse cursor.

If the
`hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__
property is false then these properties will only be valid while a
button is pressed, and will remain valid as long as the button is held
down even if the mouse is moved outside the area.

By default, this property is false.

If `hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__
is true then these properties will be valid when:

-  no button is pressed, but the mouse is within the
   `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__
   (`containsMouse </sdk/apps/qml/QtQuick/MouseArea#containsMouse-prop>`__
   is true).
-  a button is pressed and held, even if it has since moved out of the
   area.

The coordinates are relative to the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__.

| 

+--------------------------------------------------------------------------+
|        \ mouseY : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the coordinates of the mouse cursor.

If the
`hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__
property is false then these properties will only be valid while a
button is pressed, and will remain valid as long as the button is held
down even if the mouse is moved outside the area.

By default, this property is false.

If `hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__
is true then these properties will be valid when:

-  no button is pressed, but the mouse is within the
   `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__
   (`containsMouse </sdk/apps/qml/QtQuick/MouseArea#containsMouse-prop>`__
   is true).
-  a button is pressed and held, even if it has since moved out of the
   area.

The coordinates are relative to the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__.

| 

+--------------------------------------------------------------------------+
|        \ pressed : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether any of the
`acceptedButtons </sdk/apps/qml/QtQuick/MouseArea#acceptedButtons-prop>`__
are currently pressed.

| 

+--------------------------------------------------------------------------+
|        \ pressedButtons : MouseButtons                                   |
+--------------------------------------------------------------------------+

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

**Note:** this property only handles buttons specified in
`acceptedButtons </sdk/apps/qml/QtQuick/MouseArea#acceptedButtons-prop>`__.

**See also**
`acceptedButtons </sdk/apps/qml/QtQuick/MouseArea#acceptedButtons-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ preventStealing : bool                                          |
+--------------------------------------------------------------------------+

This property holds whether the mouse events may be stolen from this
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__.

If a `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ is placed within
an item that filters child mouse events, such as Flickable, the mouse
events may be stolen from the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ if a gesture is
recognized by the parent item, e.g. a flick gesture. If preventStealing
is set to true, no item will steal the mouse events.

Note that setting preventStealing to true once an item has started
stealing events will have no effect until the next press event.

By default this property is false.

| 

+--------------------------------------------------------------------------+
|        \ propagateComposedEvents : bool                                  |
+--------------------------------------------------------------------------+

This property holds whether composed mouse events will automatically
propagate to other MouseAreas that overlap with this
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ but are lower in the
visual stacking order. By default, this property is false.

`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ contains several
composed events: ``clicked``, ``doubleClicked`` and ``pressAndHold``.
These are composed of basic mouse events, like ``pressed``, and can be
propagated differently in comparison to basic events.

If propagateComposedEvents is set to true, then composed events will be
automatically propagated to other MouseAreas in the same location in the
scene. Each event is propagated to the next
`enabled </sdk/apps/qml/QtQuick/MouseArea#enabled-prop>`__
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ beneath it in the
stacking order, propagating down this visual hierarchy until a
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ accepts the event.
Unlike ``pressed`` events, composed events will not be automatically
accepted if no handler is present.

For example, below is a yellow
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ that contains a blue
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__. The blue rectangle is
the top-most item in the hierarchy of the visual stacking order; it will
visually rendered above the yellow rectangle. Since the blue rectangle
sets propagateComposedEvents to true, and also sets
`MouseEvent::accepted </sdk/apps/qml/QtQuick/MouseEvent#accepted-prop>`__
to false for all received ``clicked`` events, any ``clicked`` events it
receives are propagated to the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ of the yellow rectangle
beneath it.

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

Clicking on the blue rectangle will cause the ``onClicked`` handler of
its child `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ to be
invoked; the event will then be propagated to the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ of the yellow
rectangle, causing its own ``onClicked`` handler to be invoked.

This property greatly simplifies the usecase of when you want to have
overlapping MouseAreas handling the composed events together. For
example: if you want one
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ to handle ``clicked``
signals and the other to handle ``pressAndHold``, or if you want one
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ to handle ``clicked``
most of the time, but pass it through when certain conditions are met.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ canceled()                                                      |
+--------------------------------------------------------------------------+

This signal is emitted when mouse events have been canceled, either
because an event was not accepted, or because another item stole the
mouse event handling.

This signal is for advanced use: it is useful when there is more than
one `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ that is handling
input, or when there is a
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ inside a
`Flickable </sdk/apps/qml/QtQuick/touchinteraction#flickable>`__. In the
latter case, if you execute some logic in the ``onPressed`` signal
handler and then start dragging, the
`Flickable </sdk/apps/qml/QtQuick/touchinteraction#flickable>`__ will
steal the mouse handling from the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__. In these cases, to
reset the logic when the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ has lost the mouse
handling to the
`Flickable </sdk/apps/qml/QtQuick/touchinteraction#flickable>`__,
``canceled`` should be handled in addition to
`released </sdk/apps/qml/QtQuick/MouseArea#released-signal>`__.

The corresponding handler is ``onCanceled``.

| 

+--------------------------------------------------------------------------+
|        \ clicked(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__      |
| *mouse*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when there is a click. A click is defined as a
press followed by a release, both inside the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ (pressing, moving
outside the `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__, and then
moving back inside and releasing is also considered a click).

The `mouse </sdk/apps/qml/QtQuick/MouseEvent/>`__ parameter provides
information about the click, including the x and y position of the
release of the click, and whether the click was held.

When handling this signal, changing the
`accepted </sdk/apps/qml/QtQuick/MouseEvent#accepted-prop>`__ property
of the *mouse* parameter has no effect.

The corresponding handler is ``onClicked``.

| 

+--------------------------------------------------------------------------+
|        \ doubleClicked(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`_ |
| _                                                                        |
| *mouse*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when there is a double-click (a press followed by
a release followed by a press). The
`mouse </sdk/apps/qml/QtQuick/MouseEvent/>`__ parameter provides
information about the click, including the x and y position of the
release of the click, and whether the click was held.

When handling this signal, if the
`accepted </sdk/apps/qml/QtQuick/MouseEvent#accepted-prop>`__ property
of the *mouse* parameter is set to false, the pressed/released/clicked
signals will be emitted for the second click; otherwise they are
suppressed. The ``accepted`` property defaults to true.

The corresponding handler is ``onDoubleClicked``.

| 

+--------------------------------------------------------------------------+
|        \ entered()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted when the mouse enters the mouse area.

By default this signal is only emitted if a button is currently pressed.
Set `hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__
to true to emit this signal even when no mouse button is pressed.

The corresponding handler is ``onEntered``.

**See also**
`hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ exited()                                                        |
+--------------------------------------------------------------------------+

This signal is emitted when the mouse exits the mouse area.

By default this signal is only emitted if a button is currently pressed.
Set `hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__
to true to emit this signal even when no mouse button is pressed.

The example below shows a fairly typical relationship between two
MouseAreas, with ``mouseArea2`` on top of ``mouseArea1``. Moving the
mouse into ``mouseArea2`` from ``mouseArea1`` will cause ``mouseArea1``
to emit the ``exited`` signal.

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

If instead you give the two MouseAreas a parent-child relationship,
moving the mouse into ``mouseArea2`` from ``mouseArea1`` will **not**
cause ``mouseArea1`` to emit ``exited``. Instead, they will both be
considered to be simultaneously hovered.

The corresponding handler is ``onExited``.

**See also**
`hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ positionChanged(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/> |
| `__                                                                      |
| *mouse*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the mouse position changes.

The `mouse </sdk/apps/qml/QtQuick/MouseEvent/>`__ parameter provides
information about the mouse, including the x and y position, and any
buttons currently pressed.

By default this signal is only emitted if a button is currently pressed.
Set `hoverEnabled </sdk/apps/qml/QtQuick/MouseArea#hoverEnabled-prop>`__
to true to emit this signal even when no mouse button is pressed.

When handling this signal, changing the
`accepted </sdk/apps/qml/QtQuick/MouseEvent#accepted-prop>`__ property
of the *mouse* parameter has no effect.

The corresponding handler is ``onPositionChanged``.

| 

+--------------------------------------------------------------------------+
|        \ pressAndHold(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__ |
| *mouse*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when there is a long press (currently 800ms). The
`mouse </sdk/apps/qml/QtQuick/MouseEvent/>`__ parameter provides
information about the press, including the x and y position of the
press, and which button is pressed.

When handling this signal, changing the
`accepted </sdk/apps/qml/QtQuick/MouseEvent#accepted-prop>`__ property
of the *mouse* parameter has no effect.

The corresponding handler is ``onPressAndHold``.

| 

+--------------------------------------------------------------------------+
|        \ pressed(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__      |
| *mouse*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when there is a press. The
`mouse </sdk/apps/qml/QtQuick/MouseEvent/>`__ parameter provides
information about the press, including the x and y position and which
button was pressed.

When handling this signal, use the
`accepted </sdk/apps/qml/QtQuick/MouseEvent#accepted-prop>`__ property
of the *mouse* parameter to control whether this
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ handles the press and
all future mouse events until release. The default is to accept the
event and not allow other MouseAreas beneath this one to handle the
event. If *accepted* is set to false, no further events will be sent to
this `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ until the button
is next pressed.

The corresponding handler is ``onPressed``.

| 

+--------------------------------------------------------------------------+
|        \ released(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__     |
| *mouse*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when there is a release. The
`mouse </sdk/apps/qml/QtQuick/MouseEvent/>`__ parameter provides
information about the click, including the x and y position of the
release of the click, and whether the click was held.

When handling this signal, changing the
`accepted </sdk/apps/qml/QtQuick/MouseEvent#accepted-prop>`__ property
of the *mouse* parameter has no effect.

The corresponding handler is ``onReleased``.

**See also**
`canceled </sdk/apps/qml/QtQuick/MouseArea#canceled-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ wheel(`WheelEvent </sdk/apps/qml/QtQuick/WheelEvent/>`__        |
| *wheel*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted in response to both mouse wheel and trackpad
scroll gestures.

The `wheel </sdk/apps/qml/QtQuick/WheelEvent/>`__ parameter provides
information about the event, including the x and y position, any buttons
currently pressed, and information about the wheel movement, including
angleDelta and pixelDelta.

The corresponding handler is ``onWheel``.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/MouseArea/images/qml-mousearea-snippet.png

