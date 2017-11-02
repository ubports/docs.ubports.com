.. _sdk_qtquick_mouseevent:
QtQuick MouseEvent
==================

Provides information about a mouse event

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`accepted <sdk_qtquick_mouseevent_accepted-prop>` : bool
-  :ref:`button <sdk_qtquick_mouseevent_button-prop>` : enumeration
-  :ref:`buttons <sdk_qtquick_mouseevent_buttons-prop>` : int
-  :ref:`modifiers <sdk_qtquick_mouseevent_modifiers-prop>` : int
-  :ref:`wasHeld <sdk_qtquick_mouseevent_wasHeld-prop>` : bool
-  :ref:`x <sdk_qtquick_mouseevent_x-prop>` : int
-  :ref:`y <sdk_qtquick_mouseevent_y-prop>` : int

Detailed Description
--------------------

The position of the mouse can be found via the
:ref:`x <sdk_qtquick_mouseevent#x-prop>` and
:ref:`y <sdk_qtquick_mouseevent#y-prop>` properties. The button that caused
the event is available via the
:ref:`button <sdk_qtquick_mouseevent#button-prop>` property.

**See also** :ref:`MouseArea <sdk_qtquick_mousearea>`.

Property Documentation
----------------------

.. _sdk_qtquick_mouseevent_accepted-prop:

+--------------------------------------------------------------------------+
|        \ accepted : bool                                                 |
+--------------------------------------------------------------------------+

Setting *accepted* to true prevents the mouse event from being
propagated to items below this item.

Generally, if the item acts on the mouse event then it should be
accepted so that items lower in the stacking order do not also respond
to the same event.

| 

.. _sdk_qtquick_mouseevent_button-prop:

+--------------------------------------------------------------------------+
|        \ button : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the button that caused the event. It can be one of:

-  Qt.LeftButton
-  Qt.RightButton
-  Qt.MiddleButton

| 

.. _sdk_qtquick_mouseevent_buttons-prop:

+--------------------------------------------------------------------------+
|        \ buttons : int                                                   |
+--------------------------------------------------------------------------+

This property holds the mouse buttons pressed when the event was
generated. For mouse move events, this is all buttons that are pressed
down. For mouse press and double click events this includes the button
that caused the event. For mouse release events this excludes the button
that caused the event.

It contains a bitwise combination of:

-  Qt.LeftButton
-  Qt.RightButton
-  Qt.MiddleButton

| 

.. _sdk_qtquick_mouseevent_modifiers-prop:

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

For example, to react to a Shift key + Left mouse button click:

.. code:: qml

    MouseArea {
        onClicked: {
            if ((mouse.button == Qt.LeftButton) && (mouse.modifiers & Qt.ShiftModifier))
                doSomething();
        }
    }

| 

.. _sdk_qtquick_mouseevent_wasHeld-prop:

+--------------------------------------------------------------------------+
|        \ wasHeld : bool                                                  |
+--------------------------------------------------------------------------+

This property is true if the mouse button has been held pressed longer
the threshold (800ms).

| 

.. _sdk_qtquick_mouseevent_x-prop:

+--------------------------------------------------------------------------+
|        \ x : int                                                         |
+--------------------------------------------------------------------------+

These properties hold the coordinates of the position supplied by the
mouse event.

| 

.. _sdk_qtquick_mouseevent_y-prop:

+--------------------------------------------------------------------------+
|        \ y : int                                                         |
+--------------------------------------------------------------------------+

These properties hold the coordinates of the position supplied by the
mouse event.

| 
