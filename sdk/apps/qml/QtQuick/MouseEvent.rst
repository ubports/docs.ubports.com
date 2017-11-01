Provides information about a mouse event

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`accepted </sdk/apps/qml/QtQuick/MouseEvent#accepted-prop>`__****
   : bool
-  ****`button </sdk/apps/qml/QtQuick/MouseEvent#button-prop>`__**** :
   enumeration
-  ****`buttons </sdk/apps/qml/QtQuick/MouseEvent#buttons-prop>`__**** :
   int
-  ****`modifiers </sdk/apps/qml/QtQuick/MouseEvent#modifiers-prop>`__****
   : int
-  ****`wasHeld </sdk/apps/qml/QtQuick/MouseEvent#wasHeld-prop>`__**** :
   bool
-  ****`x </sdk/apps/qml/QtQuick/MouseEvent#x-prop>`__**** : int
-  ****`y </sdk/apps/qml/QtQuick/MouseEvent#y-prop>`__**** : int

Detailed Description
--------------------

The position of the mouse can be found via the
`x </sdk/apps/qml/QtQuick/MouseEvent#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/MouseEvent#y-prop>`__ properties. The button
that caused the event is available via the
`button </sdk/apps/qml/QtQuick/MouseEvent#button-prop>`__ property.

**See also** `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ accepted : bool                                                 |
+--------------------------------------------------------------------------+

Setting *accepted* to true prevents the mouse event from being
propagated to items below this item.

Generally, if the item acts on the mouse event then it should be
accepted so that items lower in the stacking order do not also respond
to the same event.

| 

+--------------------------------------------------------------------------+
|        \ button : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the button that caused the event. It can be one of:

-  Qt.LeftButton
-  Qt.RightButton
-  Qt.MiddleButton

| 

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

+--------------------------------------------------------------------------+
|        \ wasHeld : bool                                                  |
+--------------------------------------------------------------------------+

This property is true if the mouse button has been held pressed longer
the threshold (800ms).

| 

+--------------------------------------------------------------------------+
|        \ x : int                                                         |
+--------------------------------------------------------------------------+

These properties hold the coordinates of the position supplied by the
mouse event.

| 

+--------------------------------------------------------------------------+
|        \ y : int                                                         |
+--------------------------------------------------------------------------+

These properties hold the coordinates of the position supplied by the
mouse event.

| 
