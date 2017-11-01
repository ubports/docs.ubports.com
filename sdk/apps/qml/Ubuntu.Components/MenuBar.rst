MenuBar defines an application menu bar structure

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`menus </sdk/apps/qml/Ubuntu.Components/MenuBar#menus-prop>`__****
   : list<Menu>

Methods
-------

-  void
   ****`appendMenu </sdk/apps/qml/Ubuntu.Components/MenuBar#appendMenu-method>`__****\ (Menu
   *menu*)
-  void
   ****`insertMenu </sdk/apps/qml/Ubuntu.Components/MenuBar#insertMenu-method>`__****\ (int
   *index*, Menu *menu*)
-  void
   ****`removeMenu </sdk/apps/qml/Ubuntu.Components/MenuBar#removeMenu-method>`__****\ (Menu
   *menu*)

Detailed Description
--------------------

Example usage:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        MenuBar {
            Menu {
                text: "_File"
                MenuItem {
                    text: "_New"
                    shortcut: "Ctrl+N"
                }
                MenuItem {
                    text: "_Open"
                    shortcut: "Ctrl+O"
                }
                MenuSeparator {}
                MenuItem {
                    action: exitAction
                }
            }
            Menu {
                text: "_Edit"
                MenuItem {
                    text: "_Undo"
                    iconSource: "image://theme/undo"
                }
            }
            Menu {
                text: "_Window"
                MenuItem {
                    text: "Fullscreen"
                    checkable: true
                    checked: false
                }
            }
        }
        Action {
            id: boundAction
            text: "E_xit"
            onTriggered: {
                Qt.quit();
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] menus :                                               |
| list<`Menu </sdk/apps/qml/Ubuntu.Components/Menu/>`__>                   |
+--------------------------------------------------------------------------+

List of Menus in this
`MenuBar </sdk/apps/qml/Ubuntu.Components/MenuBar/>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void                                                            |
| appendMenu(`Menu </sdk/apps/qml/Ubuntu.Components/Menu/>`__ *menu*)      |
+--------------------------------------------------------------------------+

\* \* Append a Menu to the
`MenuBar </sdk/apps/qml/Ubuntu.Components/MenuBar/>`__

| 

+--------------------------------------------------------------------------+
|        \ void insertMenu(int *index*,                                    |
| `Menu </sdk/apps/qml/Ubuntu.Components/Menu/>`__ *menu*)                 |
+--------------------------------------------------------------------------+

\* \* Insert a Menu to the
`MenuBar </sdk/apps/qml/Ubuntu.Components/MenuBar/>`__ at the specified
position

| 

+--------------------------------------------------------------------------+
|        \ void                                                            |
| removeMenu(`Menu </sdk/apps/qml/Ubuntu.Components/Menu/>`__ *menu*)      |
+--------------------------------------------------------------------------+

\* \* Remove a Menu from the
`MenuBar </sdk/apps/qml/Ubuntu.Components/MenuBar/>`__

| 
