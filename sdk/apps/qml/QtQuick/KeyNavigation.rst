.. _sdk_qtquick_keynavigation:

QtQuick KeyNavigation
=====================

Supports key navigation by arrow keys

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`backtab <sdk_qtquick_keynavigation_backtab>` : Item
-  :ref:`down <sdk_qtquick_keynavigation_down>` : Item
-  :ref:`left <sdk_qtquick_keynavigation_left>` : Item
-  :ref:`priority <sdk_qtquick_keynavigation_priority>` : enumeration
-  :ref:`right <sdk_qtquick_keynavigation_right>` : Item
-  :ref:`tab <sdk_qtquick_keynavigation_tab>` : Item
-  :ref:`up <sdk_qtquick_keynavigation_up>` : Item

Detailed Description
--------------------

Key-based user interfaces commonly allow the use of arrow keys to navigate between focusable items. The :ref:`KeyNavigation <sdk_qtquick_keynavigation>` attached property enables this behavior by providing a convenient way to specify the item that should gain focus when an arrow or tab key is pressed.

The following example provides key navigation for a 2x2 grid of items:

.. code:: qml

    import QtQuick 2.0
    Grid {
        width: 100; height: 100
        columns: 2
        Rectangle {
            id: topLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"
            focus: true
            KeyNavigation.right: topRight
            KeyNavigation.down: bottomLeft
        }
        Rectangle {
            id: topRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"
            KeyNavigation.left: topLeft
            KeyNavigation.down: bottomRight
        }
        Rectangle {
            id: bottomLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"
            KeyNavigation.right: bottomRight
            KeyNavigation.up: topLeft
        }
        Rectangle {
            id: bottomRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"
            KeyNavigation.left: bottomLeft
            KeyNavigation.up: topRight
        }
    }

The top-left item initially receives focus by setting :ref:`focus <sdk_qtquick_item_focus>` to ``true``. When an arrow key is pressed, the focus will move to the appropriate item, as defined by the value that has been set for the :ref:`KeyNavigation <sdk_qtquick_keynavigation>` :ref:`left <sdk_qtquick_keynavigation_left>`, :ref:`right <sdk_qtquick_keynavigation_right>`, :ref:`up <sdk_qtquick_keynavigation_up>` or :ref:`down <sdk_qtquick_keynavigation_down>` properties.

Note that if a :ref:`KeyNavigation <sdk_qtquick_keynavigation>` attached property receives the key press and release events for a requested arrow or tab key, the event is accepted and does not propagate any further.

By default, :ref:`KeyNavigation <sdk_qtquick_keynavigation>` receives key events after the item to which it is attached. If the item accepts the key event, the :ref:`KeyNavigation <sdk_qtquick_keynavigation>` attached property will not receive an event for that key. Setting the :ref:`priority <sdk_qtquick_keynavigation_priority>` property to ``KeyNavigation.BeforeItem`` allows the event to be used for key navigation before the item, rather than after.

If the item to which the focus is switching is not enabled or visible, an attempt will be made to skip this item and focus on the next. This is possible if there are a chain of items with the same :ref:`KeyNavigation <sdk_qtquick_keynavigation>` handler. If multiple items in a row are not enabled or visible, they will also be skipped.

:ref:`KeyNavigation <sdk_qtquick_keynavigation>` will implicitly set the other direction to return focus to this item. So if you set :ref:`left <sdk_qtquick_keynavigation_left>` to another item, :ref:`right <sdk_qtquick_keynavigation_right>` will be set on that item's :ref:`KeyNavigation <sdk_qtquick_keynavigation>` to set focus back to this item. However, if that item's :ref:`KeyNavigation <sdk_qtquick_keynavigation>` has had right explicitly set then no change will occur. This means that the example above could achieve the same behavior without specifying :ref:`KeyNavigation <sdk_qtquick_keynavigation>`.right or :ref:`KeyNavigation <sdk_qtquick_keynavigation>`.down for any of the items.

**See also** :ref:`Keys attached property <sdk_qtquick_keys>`.

Property Documentation
----------------------

.. _sdk_qtquick_keynavigation_backtab:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| backtab : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the item to assign focus to when the Tab key or Shift+Tab key combination (Backtab) are pressed.

.. _sdk_qtquick_keynavigation_down:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| down : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

.. _sdk_qtquick_keynavigation_left:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| left : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

.. _sdk_qtquick_keynavigation_priority:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| priority : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property determines whether the keys are processed before or after the attached item's own key handling.

-  :ref:`KeyNavigation <sdk_qtquick_keynavigation>`.BeforeItem - process the key events before normal item key processing. If the event is used for key navigation, it will be accepted and will not be passed on to the item.
-  :ref:`KeyNavigation <sdk_qtquick_keynavigation>`.AfterItem (default) - process the key events after normal item key handling. If the item accepts the key event it will not be handled by the :ref:`KeyNavigation <sdk_qtquick_keynavigation>` attached property handler.

.. _sdk_qtquick_keynavigation_right:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| right : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

.. _sdk_qtquick_keynavigation_tab:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| tab : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the item to assign focus to when the Tab key or Shift+Tab key combination (Backtab) are pressed.

.. _sdk_qtquick_keynavigation_up:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| up : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

