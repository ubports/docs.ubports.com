Provides key handling to Items

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`enabled </sdk/apps/qml/QtQuick/Keys#enabled-prop>`__**** : bool
-  ****`forwardTo </sdk/apps/qml/QtQuick/Keys#forwardTo-prop>`__**** :
   list<Object>
-  ****`priority </sdk/apps/qml/QtQuick/Keys#priority-prop>`__**** :
   enumeration

Signals
-------

-  ****`asteriskPressed </sdk/apps/qml/QtQuick/Keys#asteriskPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`backPressed </sdk/apps/qml/QtQuick/Keys#backPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`backtabPressed </sdk/apps/qml/QtQuick/Keys#backtabPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`callPressed </sdk/apps/qml/QtQuick/Keys#callPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`cancelPressed </sdk/apps/qml/QtQuick/Keys#cancelPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`context1Pressed </sdk/apps/qml/QtQuick/Keys#context1Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`context2Pressed </sdk/apps/qml/QtQuick/Keys#context2Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`context3Pressed </sdk/apps/qml/QtQuick/Keys#context3Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`context4Pressed </sdk/apps/qml/QtQuick/Keys#context4Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`deletePressed </sdk/apps/qml/QtQuick/Keys#deletePressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit0Pressed </sdk/apps/qml/QtQuick/Keys#digit0Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit1Pressed </sdk/apps/qml/QtQuick/Keys#digit1Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit2Pressed </sdk/apps/qml/QtQuick/Keys#digit2Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit3Pressed </sdk/apps/qml/QtQuick/Keys#digit3Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit4Pressed </sdk/apps/qml/QtQuick/Keys#digit4Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit5Pressed </sdk/apps/qml/QtQuick/Keys#digit5Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit6Pressed </sdk/apps/qml/QtQuick/Keys#digit6Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit7Pressed </sdk/apps/qml/QtQuick/Keys#digit7Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit8Pressed </sdk/apps/qml/QtQuick/Keys#digit8Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`digit9Pressed </sdk/apps/qml/QtQuick/Keys#digit9Pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`downPressed </sdk/apps/qml/QtQuick/Keys#downPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`enterPressed </sdk/apps/qml/QtQuick/Keys#enterPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`escapePressed </sdk/apps/qml/QtQuick/Keys#escapePressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`flipPressed </sdk/apps/qml/QtQuick/Keys#flipPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`hangupPressed </sdk/apps/qml/QtQuick/Keys#hangupPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`leftPressed </sdk/apps/qml/QtQuick/Keys#leftPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`menuPressed </sdk/apps/qml/QtQuick/Keys#menuPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`noPressed </sdk/apps/qml/QtQuick/Keys#noPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`pressed </sdk/apps/qml/QtQuick/Keys#pressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`released </sdk/apps/qml/QtQuick/Keys#released-signal>`__****\ (KeyEvent
   *event*)
-  ****`returnPressed </sdk/apps/qml/QtQuick/Keys#returnPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`rightPressed </sdk/apps/qml/QtQuick/Keys#rightPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`selectPressed </sdk/apps/qml/QtQuick/Keys#selectPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`spacePressed </sdk/apps/qml/QtQuick/Keys#spacePressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`tabPressed </sdk/apps/qml/QtQuick/Keys#tabPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`upPressed </sdk/apps/qml/QtQuick/Keys#upPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`volumeDownPressed </sdk/apps/qml/QtQuick/Keys#volumeDownPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`volumeUpPressed </sdk/apps/qml/QtQuick/Keys#volumeUpPressed-signal>`__****\ (KeyEvent
   *event*)
-  ****`yesPressed </sdk/apps/qml/QtQuick/Keys#yesPressed-signal>`__****\ (KeyEvent
   *event*)

Detailed Description
--------------------

All visual primitives support key handling via the Keys attached
property. Keys can be handled via the onPressed and onReleased signal
properties.

The signal properties have a
`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__ parameter, named *event*
which contains details of the event. If a key is handled
*event.accepted* should be set to true to prevent the event from
propagating up the item hierarchy.

Example Usage
-------------

The following example shows how the general onPressed handler can be
used to test for a certain key; in this case, the left cursor key:

.. code:: qml

    Item {
        anchors.fill: parent
        focus: true
        Keys.onPressed: {
            if (event.key == Qt.Key_Left) {
                console.log("move left");
                event.accepted = true;
            }
        }
    }

Some keys may alternatively be handled via specific signal properties,
for example *onSelectPressed*. These handlers automatically set
*event.accepted* to true.

.. code:: qml

    Item {
        anchors.fill: parent
        focus: true
        Keys.onLeftPressed: console.log("move left")
    }

See Qt.Key for the list of keyboard codes.

Key Handling Priorities
-----------------------

The Keys attached property can be configured to handle key events before
or after the item it is attached to. This makes it possible to intercept
events in order to override an item's default behavior, or act as a
fallback for keys not handled by the item.

If `priority </sdk/apps/qml/QtQuick/Keys#priority-prop>`__ is
Keys.BeforeItem (default) the order of key event processing is:

#. Items specified in ``forwardTo``
#. specific key handlers, e.g. onReturnPressed
#. onPressed, onReleased handlers
#. Item specific key handling, e.g.
   `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__ key handling
#. parent item

If priority is Keys.AfterItem the order of key event processing is:

#. Item specific key handling, e.g.
   `TextInput </sdk/apps/qml/QtQuick/TextInput/>`__ key handling
#. Items specified in ``forwardTo``
#. specific key handlers, e.g. onReturnPressed
#. onPressed, onReleased handlers
#. parent item

If the event is accepted during any of the above steps, key propagation
stops.

**See also** `KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__ and
`KeyNavigation attached
property </sdk/apps/qml/QtQuick/KeyNavigation/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This flags enables key handling if true (default); otherwise no key
handlers will be called.

| 

+--------------------------------------------------------------------------+
|        \ forwardTo : list<Object>                                        |
+--------------------------------------------------------------------------+

This property provides a way to forward key presses, key releases, and
keyboard input coming from input methods to other items. This can be
useful when you want one item to handle some keys (e.g. the up and down
arrow keys), and another item to handle other keys (e.g. the left and
right arrow keys). Once an item that has been forwarded keys accepts the
event it is no longer forwarded to items later in the list.

This example forwards key events to two lists:

.. code:: qml

    Item {
        ListView {
            id: list1
            // ...
        }
        ListView {
            id: list2
            // ...
        }
        Keys.forwardTo: [list1, list2]
        focus: true
    }

To see the order in which events are received when using forwardTo, see
`Key Handling
Priorities </sdk/apps/qml/QtQuick/Keys#key-handling-priorities>`__.

| 

+--------------------------------------------------------------------------+
|        \ priority : enumeration                                          |
+--------------------------------------------------------------------------+

This property determines whether the keys are processed before or after
the attached item's own key handling.

-  Keys.BeforeItem (default) - process the key events before normal item
   key processing. If the event is accepted it will not be passed on to
   the item.
-  Keys.AfterItem - process the key events after normal item key
   handling. If the item accepts the key event it will not be handled by
   the Keys attached property handler.

**See also** `Key Handling
Priorities </sdk/apps/qml/QtQuick/Keys#key-handling-priorities>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ asteriskPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__  |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Asterisk '\*' has been pressed. The
*event* parameter provides information about the event.

The corresponding handler is ``onAsteriskPressed``.

| 

+--------------------------------------------------------------------------+
|        \ backPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__      |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Back key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onBackPressed``.

| 

+--------------------------------------------------------------------------+
|        \ backtabPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__   |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Shift+Tab key combination (Backtab) has
been pressed. The *event* parameter provides information about the
event.

The corresponding handler is ``onBacktabPressed``.

| 

+--------------------------------------------------------------------------+
|        \ callPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__      |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Call key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onCallPressed``.

| 

+--------------------------------------------------------------------------+
|        \ cancelPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Cancel key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onCancelPressed``.

| 

+--------------------------------------------------------------------------+
|        \ context1Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__  |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Context1 key has been pressed. The
*event* parameter provides information about the event.

The corresponding handler is ``onContext1Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ context2Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__  |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Context2 key has been pressed. The
*event* parameter provides information about the event.

The corresponding handler is ``onContext2Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ context3Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__  |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Context3 key has been pressed. The
*event* parameter provides information about the event.

The corresponding handler is ``onContext3Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ context4Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__  |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Context4 key has been pressed. The
*event* parameter provides information about the event.

The corresponding handler is ``onContext4Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ deletePressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Delete key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDeletePressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit0Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '0' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit0Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit1Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '1' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit1Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit2Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '2' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit2Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit3Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '3' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit3Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit4Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '4' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit4Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit5Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '5' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit5Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit6Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '6' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit6Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit7Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '7' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit7Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit8Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '8' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit8Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ digit9Pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the digit '9' has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDigit9Pressed``.

| 

+--------------------------------------------------------------------------+
|        \ downPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__      |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Down arrow has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onDownPressed``.

| 

+--------------------------------------------------------------------------+
|        \ enterPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__     |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Enter key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onEnterPressed``.

| 

+--------------------------------------------------------------------------+
|        \ escapePressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Escape key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onEscapePressed``.

| 

+--------------------------------------------------------------------------+
|        \ flipPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__      |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Flip key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onFlipPressed``.

| 

+--------------------------------------------------------------------------+
|        \ hangupPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Hangup key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onHangupPressed``.

| 

+--------------------------------------------------------------------------+
|        \ leftPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__      |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Left arrow has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onLeftPressed``.

| 

+--------------------------------------------------------------------------+
|        \ menuPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__      |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Menu key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onMenuPressed``.

| 

+--------------------------------------------------------------------------+
|        \ noPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__        |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the No key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onNoPressed``.

| 

+--------------------------------------------------------------------------+
|        \ pressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__ *event*) |
+--------------------------------------------------------------------------+

This signal is emitted when a key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onPressed``.

| 

+--------------------------------------------------------------------------+
|        \ released(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__         |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when a key has been released. The *event*
parameter provides information about the event.

The corresponding handler is ``onReleased``.

| 

+--------------------------------------------------------------------------+
|        \ returnPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Return key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onReturnPressed``.

| 

+--------------------------------------------------------------------------+
|        \ rightPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__     |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Right arrow has been pressed. The
*event* parameter provides information about the event.

The corresponding handler is ``onRightPressed``.

| 

+--------------------------------------------------------------------------+
|        \ selectPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__    |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Select key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onSelectPressed``.

| 

+--------------------------------------------------------------------------+
|        \ spacePressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__     |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Space key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onSpacePressed``.

| 

+--------------------------------------------------------------------------+
|        \ tabPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__       |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Tab key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onTabPressed``.

| 

+--------------------------------------------------------------------------+
|        \ upPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__        |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Up arrow has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onUpPressed``.

| 

+--------------------------------------------------------------------------+
|        \ volumeDownPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`_ |
| _                                                                        |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the VolumeDown key has been pressed. The
*event* parameter provides information about the event.

The corresponding handler is ``onVolumeDownPressed``.

| 

+--------------------------------------------------------------------------+
|        \ volumeUpPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__  |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the VolumeUp key has been pressed. The
*event* parameter provides information about the event.

The corresponding handler is ``onVolumeUpPressed``.

| 

+--------------------------------------------------------------------------+
|        \ yesPressed(`KeyEvent </sdk/apps/qml/QtQuick/KeyEvent/>`__       |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

This signal is emitted when the Yes key has been pressed. The *event*
parameter provides information about the event.

The corresponding handler is ``onYesPressed``.

| 
