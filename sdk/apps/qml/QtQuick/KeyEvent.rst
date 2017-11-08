.. _sdk_qtquick_keyevent:

QtQuick KeyEvent
================

Provides information about a key event

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`accepted <sdk_qtquick_keyevent_accepted>` : bool
-  :ref:`count <sdk_qtquick_keyevent_count>` : int
-  :ref:`isAutoRepeat <sdk_qtquick_keyevent_isAutoRepeat>` : bool
-  :ref:`key <sdk_qtquick_keyevent_key>` : int
-  :ref:`modifiers <sdk_qtquick_keyevent_modifiers>` : int
-  :ref:`nativeScanCode <sdk_qtquick_keyevent_nativeScanCode>` : quint32
-  :ref:`text <sdk_qtquick_keyevent_text>` : string

Methods
-------

-  bool :ref:`matches <sdk_qtquick_keyevent_matches>`\ (StandardKey *key*)

Detailed Description
--------------------

For example, the following changes the Item's state property when the Enter key is pressed:

.. code:: qml

    Item {
        focus: true
        Keys.onPressed: { if (event.key == Qt.Key_Enter) state = 'ShowDetails'; }
    }

Property Documentation
----------------------

.. _sdk_qtquick_keyevent_accepted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accepted : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Setting *accepted* to true prevents the key event from being propagated to the item's parent.

Generally, if the item acts on the key event then it should be accepted so that ancestor items do not also respond to the same event.

.. _sdk_qtquick_keyevent_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of keys involved in this event. If :ref:`KeyEvent::text <sdk_qtquick_keyevent_text>` is not empty, this is simply the length of the string.

.. _sdk_qtquick_keyevent_isAutoRepeat:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| isAutoRepeat : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether this event comes from an auto-repeating key.

.. _sdk_qtquick_keyevent_key:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| key : int                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the code of the key that was pressed or released.

See Qt.Key for the list of keyboard codes. These codes are independent of the underlying window system. Note that this function does not distinguish between capital and non-capital letters; use the :ref:`text <sdk_qtquick_keyevent_text>` property for this purpose.

A value of either 0 or Qt.Key\_Unknown means that the event is not the result of a known key; for example, it may be the result of a compose sequence, a keyboard macro, or due to key event compression.

.. _sdk_qtquick_keyevent_modifiers:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| modifiers : int                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the keyboard modifier flags that existed immediately before the event occurred.

It contains a bitwise combination of:

-  Qt.NoModifier - No modifier key is pressed.
-  Qt.ShiftModifier - A Shift key on the keyboard is pressed.
-  Qt.ControlModifier - A Ctrl key on the keyboard is pressed.
-  Qt.AltModifier - An Alt key on the keyboard is pressed.
-  Qt.MetaModifier - A Meta key on the keyboard is pressed.
-  Qt.KeypadModifier - A keypad button is pressed.

For example, to react to a Shift key + Enter key combination:

.. code:: qml

    Item {
        focus: true
        Keys.onPressed: {
            if ((event.key == Qt.Key_Enter) && (event.modifiers & Qt.ShiftModifier))
                doSomething();
        }
    }

.. _sdk_qtquick_keyevent_nativeScanCode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| nativeScanCode : quint32                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property contains the native scan code of the key that was pressed. It is passed through from QKeyEvent unchanged.

**See also** QKeyEvent::nativeScanCode().

.. _sdk_qtquick_keyevent_text:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| text : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the Unicode text that the key generated. The text returned can be an empty string in cases where modifier keys, such as Shift, Control, Alt, and Meta, are being pressed or released. In such cases ``key`` will contain a valid value

Method Documentation
--------------------

.. _sdk_qtquick_keyevent_matches:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool matches(StandardKey *key*)                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns ``true`` if the key event matches the given standard *key*; otherwise returns ``false``.

.. code:: qml

    Item {
        focus: true
        Keys.onPressed: {
            if (event.matches(StandardKey.Undo))
                myModel.undo();
            else if (event.matches(StandardKey.Redo))
                myModel.redo();
        }
    }

This QML method was introduced in Qt 5.2.

**See also** QKeySequence::StandardKey.

