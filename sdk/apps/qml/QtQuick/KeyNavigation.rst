Supports key navigation by arrow keys

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`backtab </sdk/apps/qml/QtQuick/KeyNavigation#backtab-prop>`__****
   : Item
-  ****`down </sdk/apps/qml/QtQuick/KeyNavigation#down-prop>`__**** :
   Item
-  ****`left </sdk/apps/qml/QtQuick/KeyNavigation#left-prop>`__**** :
   Item
-  ****`priority </sdk/apps/qml/QtQuick/KeyNavigation#priority-prop>`__****
   : enumeration
-  ****`right </sdk/apps/qml/QtQuick/KeyNavigation#right-prop>`__**** :
   Item
-  ****`tab </sdk/apps/qml/QtQuick/KeyNavigation#tab-prop>`__**** : Item
-  ****`up </sdk/apps/qml/QtQuick/KeyNavigation#up-prop>`__**** : Item

Detailed Description
--------------------

Key-based user interfaces commonly allow the use of arrow keys to
navigate between focusable items. The
`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__ attached
property enables this behavior by providing a convenient way to specify
the item that should gain focus when an arrow or tab key is pressed.

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

The top-left item initially receives focus by setting
`focus </sdk/apps/qml/QtQuick/Item#focus-prop>`__ to ``true``. When an
arrow key is pressed, the focus will move to the appropriate item, as
defined by the value that has been set for the
`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__
`left </sdk/apps/qml/QtQuick/KeyNavigation#left-prop>`__,
`right </sdk/apps/qml/QtQuick/KeyNavigation#right-prop>`__,
`up </sdk/apps/qml/QtQuick/KeyNavigation#up-prop>`__ or
`down </sdk/apps/qml/QtQuick/KeyNavigation#down-prop>`__ properties.

Note that if a `KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__
attached property receives the key press and release events for a
requested arrow or tab key, the event is accepted and does not propagate
any further.

By default, `KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__
receives key events after the item to which it is attached. If the item
accepts the key event, the
`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__ attached
property will not receive an event for that key. Setting the
`priority </sdk/apps/qml/QtQuick/KeyNavigation#priority-prop>`__
property to ``KeyNavigation.BeforeItem`` allows the event to be used for
key navigation before the item, rather than after.

If the item to which the focus is switching is not enabled or visible,
an attempt will be made to skip this item and focus on the next. This is
possible if there are a chain of items with the same
`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__ handler. If
multiple items in a row are not enabled or visible, they will also be
skipped.

`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__ will implicitly
set the other direction to return focus to this item. So if you set
`left </sdk/apps/qml/QtQuick/KeyNavigation#left-prop>`__ to another
item, `right </sdk/apps/qml/QtQuick/KeyNavigation#right-prop>`__ will be
set on that item's
`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__ to set focus
back to this item. However, if that item's
`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__ has had right
explicitly set then no change will occur. This means that the example
above could achieve the same behavior without specifying
`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__.right or
`KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__.down for any of
the items.

**See also** `Keys attached property </sdk/apps/qml/QtQuick/Keys/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ backtab : `Item </sdk/apps/qml/QtQuick/Item/>`__                |
+--------------------------------------------------------------------------+

These properties hold the item to assign focus to when the Tab key or
Shift+Tab key combination (Backtab) are pressed.

| 

+--------------------------------------------------------------------------+
|        \ down : `Item </sdk/apps/qml/QtQuick/Item/>`__                   |
+--------------------------------------------------------------------------+

These properties hold the item to assign focus to when the left, right,
up or down cursor keys are pressed.

| 

+--------------------------------------------------------------------------+
|        \ left : `Item </sdk/apps/qml/QtQuick/Item/>`__                   |
+--------------------------------------------------------------------------+

These properties hold the item to assign focus to when the left, right,
up or down cursor keys are pressed.

| 

+--------------------------------------------------------------------------+
|        \ priority : enumeration                                          |
+--------------------------------------------------------------------------+

This property determines whether the keys are processed before or after
the attached item's own key handling.

-  `KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__.BeforeItem -
   process the key events before normal item key processing. If the
   event is used for key navigation, it will be accepted and will not be
   passed on to the item.
-  `KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__.AfterItem
   (default) - process the key events after normal item key handling. If
   the item accepts the key event it will not be handled by the
   `KeyNavigation </sdk/apps/qml/QtQuick/KeyNavigation/>`__ attached
   property handler.

| 

+--------------------------------------------------------------------------+
|        \ right : `Item </sdk/apps/qml/QtQuick/Item/>`__                  |
+--------------------------------------------------------------------------+

These properties hold the item to assign focus to when the left, right,
up or down cursor keys are pressed.

| 

+--------------------------------------------------------------------------+
|        \ tab : `Item </sdk/apps/qml/QtQuick/Item/>`__                    |
+--------------------------------------------------------------------------+

These properties hold the item to assign focus to when the Tab key or
Shift+Tab key combination (Backtab) are pressed.

| 

+--------------------------------------------------------------------------+
|        \ up : `Item </sdk/apps/qml/QtQuick/Item/>`__                     |
+--------------------------------------------------------------------------+

These properties hold the item to assign focus to when the left, right,
up or down cursor keys are pressed.

| 
