.. _sdk_qtquick_wheelevent:

QtQuick WheelEvent
==================

Provides information about a mouse wheel event

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`accepted <sdk_qtquick_wheelevent_accepted>` : bool
-  :ref:`angleDelta <sdk_qtquick_wheelevent_angleDelta>` : point
-  :ref:`buttons <sdk_qtquick_wheelevent_buttons>` : int
-  :ref:`modifiers <sdk_qtquick_wheelevent_modifiers>` : int
-  :ref:`pixelDelta <sdk_qtquick_wheelevent_pixelDelta>` : point
-  :ref:`x <sdk_qtquick_wheelevent_x>` : int
-  :ref:`y <sdk_qtquick_wheelevent_y>` : int

Detailed Description
--------------------

The position of the mouse can be found via the :ref:`x <sdk_qtquick_wheelevent_x>` and :ref:`y <sdk_qtquick_wheelevent_y>` properties.

**See also** :ref:`MouseArea <sdk_qtquick_mousearea>`.

Property Documentation
----------------------

.. _sdk_qtquick_wheelevent_accepted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accepted : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Setting *accepted* to true prevents the wheel event from being propagated to items below this item.

Generally, if the item acts on the wheel event then it should be accepted so that items lower in the stacking order do not also respond to the same event.

.. _sdk_qtquick_wheelevent_angleDelta:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| angleDelta : point                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the distance that the wheel is rotated in wheel degrees. The x and y cordinate of this property holds the delta in horizontal and vertical orientation.

A positive value indicates that the wheel was rotated up/right; a negative value indicates that the wheel was rotated down/left.

Most mouse types work in steps of 15 degrees, in which case the delta value is a multiple of 120; i.e., 120 units \* 1/8 = 15 degrees.

.. _sdk_qtquick_wheelevent_buttons:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| buttons : int                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the mouse buttons pressed when the wheel event was generated.

It contains a bitwise combination of:

-  Qt.LeftButton
-  Qt.RightButton
-  Qt.MiddleButton

.. _sdk_qtquick_wheelevent_modifiers:

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

For example, to react to a Control key pressed during the wheel event:

.. code:: qml

    MouseArea {
        onWheel: {
            if (wheel.modifiers & Qt.ControlModifier) {
                if (wheel.angleDelta.y > 0)
                    zoomIn();
                else
                    zoomOut();
            }
        }
    }

.. _sdk_qtquick_wheelevent_pixelDelta:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pixelDelta : point                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the delta in screen pixels and is available in plataforms that have high-resolution trackpads, such as Mac OS X. The x and y cordinate of this property holds the delta in horizontal and vertical orientation. The value should be used directly to scroll content on screen.

For platforms without high-resolution trackpad support, pixelDelta will always be (0,0), and :ref:`angleDelta <sdk_qtquick_wheelevent_angleDelta>` should be used instead.

.. _sdk_qtquick_wheelevent_x:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| x : int                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the coordinates of the position supplied by the wheel event.

.. _sdk_qtquick_wheelevent_y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| y : int                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the coordinates of the position supplied by the wheel event.

