Menu defines a context menu or submenu structure of a MenuBar

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`data </sdk/apps/qml/Ubuntu.Components/Menu#data-prop>`__**** :
   list<Object>

Methods
-------

-  ****`appendObject </sdk/apps/qml/Ubuntu.Components/Menu#appendObject-method>`__****\ (object
   *o*)
-  ****`dismiss </sdk/apps/qml/Ubuntu.Components/Menu#dismiss-method>`__****\ ()
-  ****`insertObject </sdk/apps/qml/Ubuntu.Components/Menu#insertObject-method>`__****\ (int
   *index*, object *o*)
-  ****`removeObject </sdk/apps/qml/Ubuntu.Components/Menu#removeObject-method>`__****\ (object
   *o*)
-  ****`show </sdk/apps/qml/Ubuntu.Components/Menu#show-method>`__****\ (point
   *point*)

Detailed Description
--------------------

Example usage:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    Menu {
        text: "&File"
        MenuGroup {
            Action {
                text: "&New"
                shortcut: "Ctrl+N"
            }
            Action {
                text: "&Open"
                shortcut: "Ctrl+O"
            }
        }
        Menu {
            text: "Recent Files"
            ActionList {
                Action { text: "1.txt" }
                Action { text: "2.txt" }
                Action { text: "3.txt" }
            }
        }
        Action {
            action: Action {
                text: "E&xit"
                shortcut: "Ctrl+X"
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] data : list<Object>                                   |
+--------------------------------------------------------------------------+

List of objects representing menu items within the menu.

Currently supports Menu, Action, AcionList &
`MenuGroup </sdk/apps/qml/Ubuntu.Components/MenuGroup/>`__ objects.

**Note:** Item object which do not support platformItem will not be
exported for native menus.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ appendObject(object *o*)                                        |
+--------------------------------------------------------------------------+

Add a object tto the menu

| 

+--------------------------------------------------------------------------+
|        \ dismiss()                                                       |
+--------------------------------------------------------------------------+

Dismiss and destroy the menu popup.

| 

+--------------------------------------------------------------------------+
|        \ insertObject(int *index*, object *o*)                           |
+--------------------------------------------------------------------------+

Inserts an item at the index in the menu.

Currently supports Menu, Action, AcionList &
`MenuGroup </sdk/apps/qml/Ubuntu.Components/MenuGroup/>`__ objects.

**Note:** Item object which do not support platformItem will not be
exported for native menus.

| 

+--------------------------------------------------------------------------+
|        \ removeObject(object *o*)                                        |
+--------------------------------------------------------------------------+

Removes the item from the menu.

| 

+--------------------------------------------------------------------------+
|        \ show(`point <http://doc.qt.io/qt-5/qml-point.html>`__ *point*)  |
+--------------------------------------------------------------------------+

Show the menu popup at the given point

| 
