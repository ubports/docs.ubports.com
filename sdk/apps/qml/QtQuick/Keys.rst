.. _sdk_qtquick_keys:

QtQuick Keys
============

Provides key handling to Items

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`enabled <sdk_qtquick_keys_enabled>` : bool
-  :ref:`forwardTo <sdk_qtquick_keys_forwardTo>` : list<Object>
-  :ref:`priority <sdk_qtquick_keys_priority>` : enumeration

Signals
-------

-  :ref:`asteriskPressed <sdk_qtquick_keys_asteriskPressed>`\ (KeyEvent *event*)
-  :ref:`backPressed <sdk_qtquick_keys_backPressed>`\ (KeyEvent *event*)
-  :ref:`backtabPressed <sdk_qtquick_keys_backtabPressed>`\ (KeyEvent *event*)
-  :ref:`callPressed <sdk_qtquick_keys_callPressed>`\ (KeyEvent *event*)
-  :ref:`cancelPressed <sdk_qtquick_keys_cancelPressed>`\ (KeyEvent *event*)
-  :ref:`context1Pressed <sdk_qtquick_keys_context1Pressed>`\ (KeyEvent *event*)
-  :ref:`context2Pressed <sdk_qtquick_keys_context2Pressed>`\ (KeyEvent *event*)
-  :ref:`context3Pressed <sdk_qtquick_keys_context3Pressed>`\ (KeyEvent *event*)
-  :ref:`context4Pressed <sdk_qtquick_keys_context4Pressed>`\ (KeyEvent *event*)
-  :ref:`deletePressed <sdk_qtquick_keys_deletePressed>`\ (KeyEvent *event*)
-  :ref:`digit0Pressed <sdk_qtquick_keys_digit0Pressed>`\ (KeyEvent *event*)
-  :ref:`digit1Pressed <sdk_qtquick_keys_digit1Pressed>`\ (KeyEvent *event*)
-  :ref:`digit2Pressed <sdk_qtquick_keys_digit2Pressed>`\ (KeyEvent *event*)
-  :ref:`digit3Pressed <sdk_qtquick_keys_digit3Pressed>`\ (KeyEvent *event*)
-  :ref:`digit4Pressed <sdk_qtquick_keys_digit4Pressed>`\ (KeyEvent *event*)
-  :ref:`digit5Pressed <sdk_qtquick_keys_digit5Pressed>`\ (KeyEvent *event*)
-  :ref:`digit6Pressed <sdk_qtquick_keys_digit6Pressed>`\ (KeyEvent *event*)
-  :ref:`digit7Pressed <sdk_qtquick_keys_digit7Pressed>`\ (KeyEvent *event*)
-  :ref:`digit8Pressed <sdk_qtquick_keys_digit8Pressed>`\ (KeyEvent *event*)
-  :ref:`digit9Pressed <sdk_qtquick_keys_digit9Pressed>`\ (KeyEvent *event*)
-  :ref:`downPressed <sdk_qtquick_keys_downPressed>`\ (KeyEvent *event*)
-  :ref:`enterPressed <sdk_qtquick_keys_enterPressed>`\ (KeyEvent *event*)
-  :ref:`escapePressed <sdk_qtquick_keys_escapePressed>`\ (KeyEvent *event*)
-  :ref:`flipPressed <sdk_qtquick_keys_flipPressed>`\ (KeyEvent *event*)
-  :ref:`hangupPressed <sdk_qtquick_keys_hangupPressed>`\ (KeyEvent *event*)
-  :ref:`leftPressed <sdk_qtquick_keys_leftPressed>`\ (KeyEvent *event*)
-  :ref:`menuPressed <sdk_qtquick_keys_menuPressed>`\ (KeyEvent *event*)
-  :ref:`noPressed <sdk_qtquick_keys_noPressed>`\ (KeyEvent *event*)
-  :ref:`pressed <sdk_qtquick_keys_pressed>`\ (KeyEvent *event*)
-  :ref:`released <sdk_qtquick_keys_released>`\ (KeyEvent *event*)
-  :ref:`returnPressed <sdk_qtquick_keys_returnPressed>`\ (KeyEvent *event*)
-  :ref:`rightPressed <sdk_qtquick_keys_rightPressed>`\ (KeyEvent *event*)
-  :ref:`selectPressed <sdk_qtquick_keys_selectPressed>`\ (KeyEvent *event*)
-  :ref:`spacePressed <sdk_qtquick_keys_spacePressed>`\ (KeyEvent *event*)
-  :ref:`tabPressed <sdk_qtquick_keys_tabPressed>`\ (KeyEvent *event*)
-  :ref:`upPressed <sdk_qtquick_keys_upPressed>`\ (KeyEvent *event*)
-  :ref:`volumeDownPressed <sdk_qtquick_keys_volumeDownPressed>`\ (KeyEvent *event*)
-  :ref:`volumeUpPressed <sdk_qtquick_keys_volumeUpPressed>`\ (KeyEvent *event*)
-  :ref:`yesPressed <sdk_qtquick_keys_yesPressed>`\ (KeyEvent *event*)

Detailed Description
--------------------

All visual primitives support key handling via the Keys attached property. Keys can be handled via the onPressed and onReleased signal properties.

The signal properties have a :ref:`KeyEvent <sdk_qtquick_keyevent>` parameter, named *event* which contains details of the event. If a key is handled *event.accepted* should be set to true to prevent the event from propagating up the item hierarchy.

Example Usage
-------------

The following example shows how the general onPressed handler can be used to test for a certain key; in this case, the left cursor key:

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

Some keys may alternatively be handled via specific signal properties, for example *onSelectPressed*. These handlers automatically set *event.accepted* to true.

.. code:: qml

    Item {
        anchors.fill: parent
        focus: true
        Keys.onLeftPressed: console.log("move left")
    }

See Qt.Key for the list of keyboard codes.

Key Handling Priorities
-----------------------

The Keys attached property can be configured to handle key events before or after the item it is attached to. This makes it possible to intercept events in order to override an item's default behavior, or act as a fallback for keys not handled by the item.

If :ref:`priority <sdk_qtquick_keys_priority>` is Keys.BeforeItem (default) the order of key event processing is:

#. Items specified in ``forwardTo``
#. specific key handlers, e.g. onReturnPressed
#. onPressed, onReleased handlers
#. Item specific key handling, e.g. :ref:`TextInput <sdk_qtquick_textinput>` key handling
#. parent item

If priority is Keys.AfterItem the order of key event processing is:

#. Item specific key handling, e.g. :ref:`TextInput <sdk_qtquick_textinput>` key handling
#. Items specified in ``forwardTo``
#. specific key handlers, e.g. onReturnPressed
#. onPressed, onReleased handlers
#. parent item

If the event is accepted during any of the above steps, key propagation stops.

**See also** :ref:`KeyEvent <sdk_qtquick_keyevent>` and :ref:`KeyNavigation attached property <sdk_qtquick_keynavigation>`.

Property Documentation
----------------------

.. _sdk_qtquick_keys_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This flags enables key handling if true (default); otherwise no key handlers will be called.

.. _sdk_qtquick_keys_forwardTo:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| forwardTo : list<Object>                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property provides a way to forward key presses, key releases, and keyboard input coming from input methods to other items. This can be useful when you want one item to handle some keys (e.g. the up and down arrow keys), and another item to handle other keys (e.g. the left and right arrow keys). Once an item that has been forwarded keys accepts the event it is no longer forwarded to items later in the list.

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

To see the order in which events are received when using forwardTo, see :ref:`Key Handling Priorities <sdk_qtquick_keys_key>`.

.. _sdk_qtquick_keys_priority:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| priority : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property determines whether the keys are processed before or after the attached item's own key handling.

-  Keys.BeforeItem (default) - process the key events before normal item key processing. If the event is accepted it will not be passed on to the item.
-  Keys.AfterItem - process the key events after normal item key handling. If the item accepts the key event it will not be handled by the Keys attached property handler.

**See also** :ref:`Key Handling Priorities <sdk_qtquick_keys_key>`.

Signal Documentation
--------------------

.. _sdk_qtquick_keys_asteriskPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| asteriskPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Asterisk '\*' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onAsteriskPressed``.

.. _sdk_qtquick_keys_backPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| backPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Back key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onBackPressed``.

.. _sdk_qtquick_keys_backtabPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| backtabPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Shift+Tab key combination (Backtab) has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onBacktabPressed``.

.. _sdk_qtquick_keys_callPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| callPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Call key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onCallPressed``.

.. _sdk_qtquick_keys_cancelPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cancelPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Cancel key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onCancelPressed``.

.. _sdk_qtquick_keys_context1Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| context1Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Context1 key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onContext1Pressed``.

.. _sdk_qtquick_keys_context2Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| context2Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Context2 key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onContext2Pressed``.

.. _sdk_qtquick_keys_context3Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| context3Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Context3 key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onContext3Pressed``.

.. _sdk_qtquick_keys_context4Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| context4Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Context4 key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onContext4Pressed``.

.. _sdk_qtquick_keys_deletePressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| deletePressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Delete key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDeletePressed``.

.. _sdk_qtquick_keys_digit0Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit0Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '0' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit0Pressed``.

.. _sdk_qtquick_keys_digit1Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit1Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '1' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit1Pressed``.

.. _sdk_qtquick_keys_digit2Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit2Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '2' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit2Pressed``.

.. _sdk_qtquick_keys_digit3Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit3Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '3' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit3Pressed``.

.. _sdk_qtquick_keys_digit4Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit4Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '4' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit4Pressed``.

.. _sdk_qtquick_keys_digit5Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit5Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '5' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit5Pressed``.

.. _sdk_qtquick_keys_digit6Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit6Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '6' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit6Pressed``.

.. _sdk_qtquick_keys_digit7Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit7Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '7' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit7Pressed``.

.. _sdk_qtquick_keys_digit8Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit8Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '8' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit8Pressed``.

.. _sdk_qtquick_keys_digit9Pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| digit9Pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the digit '9' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDigit9Pressed``.

.. _sdk_qtquick_keys_downPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| downPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Down arrow has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onDownPressed``.

.. _sdk_qtquick_keys_enterPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enterPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Enter key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onEnterPressed``.

.. _sdk_qtquick_keys_escapePressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| escapePressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Escape key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onEscapePressed``.

.. _sdk_qtquick_keys_flipPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| flipPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Flip key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onFlipPressed``.

.. _sdk_qtquick_keys_hangupPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| hangupPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Hangup key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onHangupPressed``.

.. _sdk_qtquick_keys_leftPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| leftPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Left arrow has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onLeftPressed``.

.. _sdk_qtquick_keys_menuPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| menuPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Menu key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onMenuPressed``.

.. _sdk_qtquick_keys_noPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| noPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the No key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onNoPressed``.

.. _sdk_qtquick_keys_pressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onPressed``.

.. _sdk_qtquick_keys_released:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| released(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a key has been released. The *event* parameter provides information about the event.

The corresponding handler is ``onReleased``.

.. _sdk_qtquick_keys_returnPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| returnPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Return key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onReturnPressed``.

.. _sdk_qtquick_keys_rightPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rightPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Right arrow has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onRightPressed``.

.. _sdk_qtquick_keys_selectPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Select key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onSelectPressed``.

.. _sdk_qtquick_keys_spacePressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| spacePressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Space key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onSpacePressed``.

.. _sdk_qtquick_keys_tabPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| tabPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Tab key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onTabPressed``.

.. _sdk_qtquick_keys_upPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| upPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Up arrow has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onUpPressed``.

.. _sdk_qtquick_keys_volumeDownPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| volumeDownPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the VolumeDown key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onVolumeDownPressed``.

.. _sdk_qtquick_keys_volumeUpPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| volumeUpPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the VolumeUp key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onVolumeUpPressed``.

.. _sdk_qtquick_keys_yesPressed:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| yesPressed(:ref:`KeyEvent <sdk_qtquick_keyevent>` *event*)                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the Yes key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is ``onYesPressed``.

