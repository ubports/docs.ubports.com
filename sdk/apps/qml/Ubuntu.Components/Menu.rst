.. _sdk_ubuntu_components_menu:
Ubuntu.Components Menu
======================

Menu defines a context menu or submenu structure of a MenuBar

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`data <sdk_ubuntu_components_menu_data-prop>` :
   list<Object>

Methods
-------

-  :ref:`appendObject <sdk_ubuntu_components_menu_appendObject-method>`\ (object
   *o*)
-  :ref:`dismiss <sdk_ubuntu_components_menu_dismiss-method>`\ ()
-  :ref:`insertObject <sdk_ubuntu_components_menu_insertObject-method>`\ (int
   *index*, object *o*)
-  :ref:`removeObject <sdk_ubuntu_components_menu_removeObject-method>`\ (object
   *o*)
-  :ref:`show <sdk_ubuntu_components_menu_show-method>`\ (point
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

.. _sdk_ubuntu_components_menu_data-prop:

+--------------------------------------------------------------------------+
|        \ [default] data : list<Object>                                   |
+--------------------------------------------------------------------------+

List of objects representing menu items within the menu.

Currently supports Menu, Action, AcionList &
:ref:`MenuGroup <sdk_ubuntu_components_menugroup>` objects.

**Note:** Item object which do not support platformItem will not be
exported for native menus.

| 

Method Documentation
--------------------

.. _sdk_ubuntu_components_menu_appendObject-method:

+--------------------------------------------------------------------------+
|        \ appendObject(object *o*)                                        |
+--------------------------------------------------------------------------+

Add a object tto the menu

| 

.. _sdk_ubuntu_components_menu_dismiss-method:

+--------------------------------------------------------------------------+
|        \ dismiss()                                                       |
+--------------------------------------------------------------------------+

Dismiss and destroy the menu popup.

| 

.. _sdk_ubuntu_components_menu_insertObject-method:

+--------------------------------------------------------------------------+
|        \ insertObject(int *index*, object *o*)                           |
+--------------------------------------------------------------------------+

Inserts an item at the index in the menu.

Currently supports Menu, Action, AcionList &
:ref:`MenuGroup <sdk_ubuntu_components_menugroup>` objects.

**Note:** Item object which do not support platformItem will not be
exported for native menus.

| 

.. _sdk_ubuntu_components_menu_removeObject-method:

+--------------------------------------------------------------------------+
|        \ removeObject(object *o*)                                        |
+--------------------------------------------------------------------------+

Removes the item from the menu.

| 

.. _sdk_ubuntu_components_menu_show-method:

+--------------------------------------------------------------------------+
|        \ show(`point <http://doc.qt.io/qt-5/qml-point.html>`_  *point*)  |
+--------------------------------------------------------------------------+

Show the menu popup at the given point

| 
