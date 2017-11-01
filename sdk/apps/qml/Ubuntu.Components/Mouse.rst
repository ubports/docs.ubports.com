Attached property filtering mouse events occured inside the owner.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`acceptedButtons </sdk/apps/qml/Ubuntu.Components/Mouse#acceptedButtons-prop>`__****
   : Qt::MouseButtons
-  ****`clickAndHoldThreshold </sdk/apps/qml/Ubuntu.Components/Mouse#clickAndHoldThreshold-prop>`__****
   : int
-  ****`enabled </sdk/apps/qml/Ubuntu.Components/Mouse#enabled-prop>`__****
   : bool
-  ****`forwardTo </sdk/apps/qml/Ubuntu.Components/Mouse#forwardTo-prop>`__****
   : list<Item>
-  ****`hoverEnabled </sdk/apps/qml/Ubuntu.Components/Mouse#hoverEnabled-prop>`__****
   : bool
-  ****`ignoreSynthesizedEvents </sdk/apps/qml/Ubuntu.Components/Mouse#ignoreSynthesizedEvents-prop>`__****
   : bool
-  ****`priority </sdk/apps/qml/Ubuntu.Components/Mouse#priority-prop>`__****
   : enumeration

Signals
-------

-  ****`onClicked </sdk/apps/qml/Ubuntu.Components/Mouse#onClicked-signal>`__****\ (MouseEvent
   *event*)
-  ****`onDoubleClicked </sdk/apps/qml/Ubuntu.Components/Mouse#onDoubleClicked-signal>`__****\ (MouseEvent
   *event*)
-  ****`onEntered </sdk/apps/qml/Ubuntu.Components/Mouse#onEntered-signal>`__****\ (MouseEvent
   *event*)
-  ****`onExited </sdk/apps/qml/Ubuntu.Components/Mouse#onExited-signal>`__****\ (MouseEvent
   *event*)
-  ****`onPositionChanged </sdk/apps/qml/Ubuntu.Components/Mouse#onPositionChanged-signal>`__****\ (MouseEvent
   *event*)
-  ****`onPressAndHold </sdk/apps/qml/Ubuntu.Components/Mouse#onPressAndHold-signal>`__****\ (MouseEvent
   *event*)
-  ****`onPressed </sdk/apps/qml/Ubuntu.Components/Mouse#onPressed-signal>`__****\ (MouseEvent
   *event*, Item *host*)
-  ****`onReleased </sdk/apps/qml/Ubuntu.Components/Mouse#onReleased-signal>`__****\ (MouseEvent
   *event*)

Detailed Description
--------------------

Sometimes we need to provide additional functionality on mouse events
beside a QML element's default behavior. Placing a
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ over a component
however will grab the mouse events from the component underneath, no
matter if we set *preventStealing* to false or not. Setting
mouse.accepted to false in *onPressed* would result in having the event
forwarded to the `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__'s
parent, however `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ will no
longer receive other mouse events.

.. code:: qml

    import QtQuick 2.4
    TextInput {
        width: 100
        height: 20
        MouseArea {
            anchors.fill: parent
            preventStealing: false
            // do not accept event so it gets propagated to the parent item
            onPressed: mouse.accepted = false;
            onReleased: console.log("this will not be printed")
        }
    }

Ubuntu UI Toolkit declares filter components similar to Keys, which can
be attached to any visual primitve. Mouse filter however will have
effect only when attached to items handling mouse events. Events are
handled through signals, where the event data is presented through the
*mouse* parameter. Events should be accepted if the propagation of those
to the owner is not wanted. This is not valid to
`onClicked </sdk/apps/qml/Ubuntu.Components/Mouse#onClicked-signal>`__,
`onPressAndHold </sdk/apps/qml/Ubuntu.Components/Mouse#onPressAndHold-signal>`__
composed events.

The previous code sample using Mouse filter, which will print the
pressed and released mouse buttons would look as follows:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    TextInput {
        width: 100
        height: 20
        // do not accept event so it gets propagated to the parent item
        Mouse.onPressed: console.log("mouse button pressed: " + mouse.button)
        Mouse.onReleased: console.log("mouse button released: " + mouse.button)
    }

The event details are reported in the *mouse* parameter, of
`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__ type, which extends
`QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`__'s
`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__ with additional
properties.

The filter will accept the same mouse buttons the owner accepts, and
will accept hover events if the owner does. However it is not possible
to alter these settings through the filter. If button handling other
than the default ones specified for the primitive is required,
MouseAreas can be declared to handle those events.

Example of handling right button clicks over a
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    TextInput {
        width: 100
        height: 20
        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.RightButton
            onClicked: console.log("right button clicked")
        }
    }

In this example left and middle mouse button clicks will reach
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__ as
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ only grabs right button
events.

Mouse filter can be used in combination with
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__, where the filter
brings additional functionality on top of existing primitive
functionality, and `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ add
new functionality to the primitive.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    TextInput {
        width: 100
        height: 20
        // do not accept event so it gets propagated to the parent item
        Mouse.onPressed: {
            if (mouse.button === Qt.LeftButton) {
                // do something
            }
        }
        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.RightButton
            Mouse.onPressed: console.log("right button clicked")
        }
    }

As mentioned, mouse filters can be attached to any visual item.
Attaching it to items that do not handle any mouse events will not have
any effect. However child items which handle mouse events can forward
the events they handle to their parent. In this way mouse events will
land in these items too, and mouse filter attached to those can also
handle the event. This is useful when creating custom types where the
mouse handling item is nested into a non-mouse handling one, and we want
to provide additional filtering possibility to the user. These type of
items are called proxy handlers.

.. code:: qml

    Item {
        id: top
        width: 100
        height: 50
        Mouse.onPressed: console.log("mouse received from input")
        TextItem {
            anchors.fill: parent
            Mouse.forvardTo: [top]
            Mouse.onPressed: console.log("pressed over input")
            Mouse.onPressAndHold: console.log("longpress handled here")
        }
    }

In this example the mouse press is first handled by the mouse filter
attached to `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__, then it is
forwarded to the top item and finally to the
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__. Accepting the mouse
event will stop propagation to the top item as well as to the
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__. The topmost item
itself does not handle mouse events, therefore it will be a sinple proxy
handler item. However, proxies can themself handle mouse events.
Therefore each mouse event signal has the *host* parameter specifying
the sender of the mouse event reported.

**Note:** The forwarded events are handled in the proxy handlers only if
the mouse position points inside their area. If the forwarded mouse
position falls outside the target area, the event will not be reported,
however will be forwarded further to the items in the list. In the
following example the mouse press in red rectangle will be printed as
well as the proxied mouse press from the main item.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Item {
        id: main
        width: units.gu(40)
        height: units.gu(71)
        Mouse.onPressed: console.log("got the mouse press forwarded by " + host.objectName)
        Column {
            anchors.fill: parent
            spacing: units.gu(1)
            Rectangle {
                id: blueRect
                objectName: "BlueRect"
                width: parent.width
                height: units.gu(20)
                color: "blue"
                Mouse.forwardTo: [main]
                Mouse.onPressed: console.log("This should not be printed")
            }
            Rectangle {
                objectName: "RedRect"
                width: parent.width
                height: units.gu(20)
                color: "red"
                MouseArea {
                    anchors.fill: parent
                    Mouse.forwardTo: [blueRect]
                    Mouse.onPressed: console.log("Pressed in " + host.objectName)
                }
            }
        }
    }

An interesting feature that can be achieved using Mouse filter is the
event "transparency" towards the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ lying behind the items
which handle mouse events. This means for example that by forwarding
mouse events occurred on a
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__ to a
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ that stays behind it in
the item hierarchy, the `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__
will also get all the events occurred on the area covered by the
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__, acting like it would
be above the `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__. However,
due to the nature of the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ event acceptance policy
(all events are accepted by default)
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__ will not get these
mouse events unless we set the *accepted* field of the mouse event to
false in `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__. This normally
leads to the `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ no longer
getting further mouse events. However, Mouse filter will continue to
forward other mouse events to the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__, so setting *accepted*
to false in *onPressed*, *onReleased* will not have the default effect.
This is only valid to press and release events, double-click or mouse
position change will be blocked by the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ still.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    MouseArea {
        id: topArea
        width: units.gu(50)
        height: units.gu(10)
        onPressed: {
            console.log("forwarded pressed")
            mouse.accepted = false
        }
        onReleased: {
            console.log("released")
            mouse.accepted = false
        }
        TextInput {
            width: units.gu(40)
            height: units.gu(5)
            anchors.centerIn: parent
            Mouse.forwardTo: [topArea]
            Mouse.onPressed: console.log("input pressed")
            Mouse.onReleased: console.log("input released")
        }
    }

Mouse filter provides ability to control the order of the event
dispatching. The filter can receive the events prior the owner or after
the owner. This can be controlled through the
`priority </sdk/apps/qml/Ubuntu.Components/Mouse#priority-prop>`__
property. In the following example we make sure the
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__ always receives the
events before the filter:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    TextInput {
        id: input
        width: units.gu(40)
        height: units.gu(5)
        activeFocusOnPress: true
        Mouse.prority: Mouse.AfterItem
        Mouse.onPressed: if (input.activeFocus) console.log("Text input already handled it")
    }

Another feature of the mouse filters is the ability to restrict when the
composed events like
`onClicked </sdk/apps/qml/Ubuntu.Components/Mouse#onClicked-signal>`__
and
`onPressAndHold </sdk/apps/qml/Ubuntu.Components/Mouse#onPressAndHold-signal>`__
should be triggered. By default these events are triggered no matter
what is the distance between the mouse pressed position and the current
position after a certain timeout (for
`onPressAndHold </sdk/apps/qml/Ubuntu.Components/Mouse#onPressAndHold-signal>`__)
or upon mouse release (for
`onClicked </sdk/apps/qml/Ubuntu.Components/Mouse#onClicked-signal>`__).
In this way the
`onClicked </sdk/apps/qml/Ubuntu.Components/Mouse#onClicked-signal>`__
will be emitted even if the user presses the mouse at the left-top edge
of the component, then moves it to the right-bottom corner and releases
it. This may not be the preferred behavior on certain components (like
`TextInput </sdk/apps/qml/QtQuick/TextInput/>`__). Therefore MouseFilter
provides a property which can alter this behavior, the
`clickAndHoldThreshold </sdk/apps/qml/Ubuntu.Components/Mouse#clickAndHoldThreshold-prop>`__.
This property specifies the radius of the area the up-mentioned composed
events are emitted during a mouse move.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    TextInput {
        width: units.gu(40)
        height: units.gu(5)
        activeFocusOnPress: true
        selectByMouse: true
        // emit composed events only if the mouse moves within 2 GU radius area
        Mouse.clickAndHoldThreshold: units.gu(2)
        Mouse.onClicked: console.log("click happened within threshold value")
        Mouse.onPressAndHold: console.log("pressAndHold happened within threshold value")
    }

Similar functionality for the case when the mouse event occurs outside
of the owner is brought by the
`InverseMouse </sdk/apps/qml/Ubuntu.Components/InverseMouse/>`__
attached property.

Mouse events synthesis
----------------------

`QtQuick <http://doc.qt.io/qt-5/qtquick-qmlmodule.html>`__ automatically
creates artificial mouse events whenever a scene receives touch events
that are not consumed by any item (either by using
`MultiPointTouchArea </sdk/apps/qml/QtQuick/MultiPointTouchArea/>`__ or
a custom C++ item). The Mouse filter provides the possibility to ignore
synthesized mouse events by enabling the
`ignoreSynthesizedEvents </sdk/apps/qml/Ubuntu.Components/Mouse#ignoreSynthesizedEvents-prop>`__
property.

This is really useful when, while developing a convergent application,
the app developer wants to avoid triggering the hovering logic using a
touchscreen, but still be able to handle the hover events when using a
mouse, and at the same time doesn't want to stop the mouse and touch
events from propagating to items underneath the
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__ which handles the
hovering. The following is an example of how that functionaly can be
implemented:

.. code:: qml

     MouseArea {
         id: proximityArea
         anchors.fill: parent
         propagateComposedEvents: true
         hoverEnabled: true
         //We use a separate variable to detect whether the area contains
         //a mouse, because MouseArea's containsMouse is true even when
         //tapping on it using a touchscreen (due to the touch events being
         //converted to mouse events if no item consumes them).
         property bool containsPointerDevice: false
         //handle hover events using the Mouse filter instead of MouseArea, so that
         //we can ignore synthesized mouse events and not trigger hover logic when the
         //user is interacting with the app using a touch device.
         Mouse.ignoreSynthesizedEvents: true
         Mouse.onEntered: {
             console.log("ONLY A MOUSE CAN TRIGGER THIS SLOT")
             proximityArea.containsPointerDevice = true
         }
         Mouse.onExited: proximityArea.containsPointerDevice = false
         //let mouse and touch events propagate underneath the mouse area
         onPressed: mouse.accepted = false
     }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [read-only] acceptedButtons : Qt::MouseButtons                  |
+--------------------------------------------------------------------------+

The property holds the accepted mouse buttons of the owner.

| 

+--------------------------------------------------------------------------+
|        \ clickAndHoldThreshold : int                                     |
+--------------------------------------------------------------------------+

The property holds the radius of the tolerance area the mouse can move
in both x and y axis when the mouse is pressed, during which the
composed events such as
`onClicked </sdk/apps/qml/Ubuntu.Components/Mouse#onClicked-signal>`__
and
`onPressAndHold </sdk/apps/qml/Ubuntu.Components/Mouse#onPressAndHold-signal>`__
will still be emitted. If the mouse is moved out of this area while the
button is pressed, no composed events will be emitted.

When this value is 0, the signals will be emitted as in
`MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__, meaning the composed
events will come until the mouse is moved inside the owner's area.

The default value is 0.

**Note:** The value has no effect for the forwarded events. The
threshold is only valid when the host handles mouse events.

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ forwardTo : list<`Item </sdk/apps/qml/QtQuick/Item/>`__>        |
+--------------------------------------------------------------------------+

The property provides a way to forward mouse presses, releases, moves
and double click events to other items. This can be useful when you want
other items to handle different parts of the same mouse event or to
handle other mouse events.

The items listed will receive the event only if the mouse event falls
into their area. Once an item that has forwarded mouse events accepts
the event, that will no longer be delivered to the rest of the items in
the list. This rule is also applied on the owner when the priority is
set to *BeforeItem*.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] hoverEnabled : bool                                 |
+--------------------------------------------------------------------------+

The property reports whether the owner accepts hover events or not. When
events are accepted
`onEntered </sdk/apps/qml/Ubuntu.Components/Mouse#onEntered-signal>`__,
`onPositionChanged </sdk/apps/qml/Ubuntu.Components/Mouse#onPositionChanged-signal>`__
and `onExited </sdk/apps/qml/Ubuntu.Components/Mouse#onExited-signal>`__
signals containing the mouse cursor position.

| 

+--------------------------------------------------------------------------+
|        \ ignoreSynthesizedEvents : bool                                  |
+--------------------------------------------------------------------------+

This property controls how the filter handles the mouse events
synthesized by Qt (e.g. the artificial mouse events created when an
original touch event is not consumed by any Item in the scene).

If the value is true, the filter will ignore the synthesized mouse
events.

More info at `Mouse events
synthesis </sdk/apps/qml/Ubuntu.Components/Mouse#mouse-events-synthesis>`__.

The default value is false.

| 

+--------------------------------------------------------------------------+
|        \ priority : enumeration                                          |
+--------------------------------------------------------------------------+

The property specifies the event dispach relation between the filter,
the elements the event is forwarded to and the owner. Similar to Keys'
*priority* property, the event dispach is performed in two ways: berfore
(*BeforeItem*) or after (*AfterItem*) the owner receives the events.

When *BeforeItem* is set the event dispach happens based as follows:

#. the event is handled by the mouse filter
#. if there are items listed in
   `forwardTo </sdk/apps/qml/Ubuntu.Components/Mouse#forwardTo-prop>`__
   property, the event will be forwarded to those items
#. the event is handed over the owner.

When *AfterItem* is set the event dispach happens based as follows:

#. the event is handed over the owner;
#. the event is handled by the mouse filter;
#. if there are items listed in
   `forwardTo </sdk/apps/qml/Ubuntu.Components/Mouse#forwardTo-prop>`__
   property, the event will be forwarded to those items.

The default value is *BeforeItem*.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onClicked(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

The signal reports the mouse click. The signal is not emitted if the
`onPressAndHold </sdk/apps/qml/Ubuntu.Components/Mouse#onPressAndHold-signal>`__
got triggered or if
`onDoubleClicked </sdk/apps/qml/Ubuntu.Components/Mouse#onDoubleClicked-signal>`__
is handled (a slot is connected to it). The *host* specifies the item
that triggered the event.

| 

+--------------------------------------------------------------------------+
|        \ onDoubleClicked(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/> |
| `__                                                                      |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

The signal reports mouse double click. The *host* specifies the item
that triggered the event.

| 

+--------------------------------------------------------------------------+
|        \ onEntered(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

The signal reports that the mouse has entered into the area. The signal
is emitted when the hover events are enabled and the mouse enters the
area or when one of the accepted mouse button is pressed. The *host*
specifies the item that triggered the event.

| 

+--------------------------------------------------------------------------+
|        \ onExited(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__     |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

The signal reports that the mouse has left the area. The signal is
emitted when the hover events are enabled for the owner or if not, when
one of the accepted button is released. The *host* specifies the item
that triggered the event.

| 

+--------------------------------------------------------------------------+
|        \ onPositionChanged(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent |
| />`__                                                                    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

The signal reports the mouse pointer position change. If the hover
events are enabled for the owner, the signal will come continuously.
Otherwise the position chanes are reported when one of the accepted
mouse buttons are being kept pressed. The *host* specifies the item that
triggered the event.

| 

+--------------------------------------------------------------------------+
|        \ onPressAndHold(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>` |
| __                                                                       |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

The signal reports the mouse press and hold. The *host* specifies the
item that triggered the event.

| 

+--------------------------------------------------------------------------+
|        \ onPressed(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__    |
| *event*, `Item </sdk/apps/qml/QtQuick/Item/>`__ *host*)                  |
+--------------------------------------------------------------------------+

The signal reports the mouse press. The *host* specifies the item that
triggered the event.

| 

+--------------------------------------------------------------------------+
|        \ onReleased(`MouseEvent </sdk/apps/qml/QtQuick/MouseEvent/>`__   |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

The signal reports the mouse release. The *host* specifies the item that
triggered the event.

| 
