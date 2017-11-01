Provides information about a key event

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`accepted </sdk/apps/qml/QtQuick/KeyEvent#accepted-prop>`__**** :
   bool
-  ****`count </sdk/apps/qml/QtQuick/KeyEvent#count-prop>`__**** : int
-  ****`isAutoRepeat </sdk/apps/qml/QtQuick/KeyEvent#isAutoRepeat-prop>`__****
   : bool
-  ****`key </sdk/apps/qml/QtQuick/KeyEvent#key-prop>`__**** : int
-  ****`modifiers </sdk/apps/qml/QtQuick/KeyEvent#modifiers-prop>`__****
   : int
-  ****`nativeScanCode </sdk/apps/qml/QtQuick/KeyEvent#nativeScanCode-prop>`__****
   : quint32
-  ****`text </sdk/apps/qml/QtQuick/KeyEvent#text-prop>`__**** : string

Methods
-------

-  bool
   ****`matches </sdk/apps/qml/QtQuick/KeyEvent#matches-method>`__****\ (StandardKey
   *key*)

Detailed Description
--------------------

For example, the following changes the Item's state property when the
Enter key is pressed:

.. code:: qml

    Item {
        focus: true
        Keys.onPressed: { if (event.key == Qt.Key_Enter) state = 'ShowDetails'; }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ accepted : bool                                                 |
+--------------------------------------------------------------------------+

Setting *accepted* to true prevents the key event from being propagated
to the item's parent.

Generally, if the item acts on the key event then it should be accepted
so that ancestor items do not also respond to the same event.

| 

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds the number of keys involved in this event. If
`KeyEvent::text </sdk/apps/qml/QtQuick/KeyEvent#text-prop>`__ is not
empty, this is simply the length of the string.

| 

+--------------------------------------------------------------------------+
|        \ isAutoRepeat : bool                                             |
+--------------------------------------------------------------------------+

This property holds whether this event comes from an auto-repeating key.

| 

+--------------------------------------------------------------------------+
|        \ key : int                                                       |
+--------------------------------------------------------------------------+

This property holds the code of the key that was pressed or released.

See Qt.Key for the list of keyboard codes. These codes are independent
of the underlying window system. Note that this function does not
distinguish between capital and non-capital letters; use the
`text </sdk/apps/qml/QtQuick/KeyEvent#text-prop>`__ property for this
purpose.

A value of either 0 or Qt.Key\_Unknown means that the event is not the
result of a known key; for example, it may be the result of a compose
sequence, a keyboard macro, or due to key event compression.

| 

+--------------------------------------------------------------------------+
|        \ modifiers : int                                                 |
+--------------------------------------------------------------------------+

This property holds the keyboard modifier flags that existed immediately
before the event occurred.

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

| 

+--------------------------------------------------------------------------+
|        \ nativeScanCode : quint32                                        |
+--------------------------------------------------------------------------+

This property contains the native scan code of the key that was pressed.
It is passed through from QKeyEvent unchanged.

**See also** QKeyEvent::nativeScanCode().

| 

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

This property holds the Unicode text that the key generated. The text
returned can be an empty string in cases where modifier keys, such as
Shift, Control, Alt, and Meta, are being pressed or released. In such
cases ``key`` will contain a valid value

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool matches(StandardKey *key*)                                 |
+--------------------------------------------------------------------------+

Returns ``true`` if the key event matches the given standard *key*;
otherwise returns ``false``.

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

| 
