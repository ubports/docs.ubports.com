.. _sdk_ubuntu_components_menubar:

Ubuntu.Components MenuBar
=========================

MenuBar defines an application menu bar structure

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`menus <sdk_ubuntu_components_menubar_menus>` : list<Menu>

Methods
-------

-  void :ref:`appendMenu <sdk_ubuntu_components_menubar_appendMenu>`\ (Menu *menu*)
-  void :ref:`insertMenu <sdk_ubuntu_components_menubar_insertMenu>`\ (int *index*, Menu *menu*)
-  void :ref:`removeMenu <sdk_ubuntu_components_menubar_removeMenu>`\ (Menu *menu*)

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

.. _sdk_ubuntu_components_menubar_menus:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] menus : list<:ref:`Menu <sdk_ubuntu_components_menu>`>                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of Menus in this :ref:`MenuBar <sdk_ubuntu_components_menubar>`.

Method Documentation
--------------------

.. _sdk_ubuntu_components_menubar_appendMenu:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void appendMenu(:ref:`Menu <sdk_ubuntu_components_menu>` *menu*)                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

\* \* Append a Menu to the :ref:`MenuBar <sdk_ubuntu_components_menubar>`

.. _sdk_ubuntu_components_menubar_insertMenu:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void insertMenu(int *index*, :ref:`Menu <sdk_ubuntu_components_menu>` *menu*)                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

\* \* Insert a Menu to the :ref:`MenuBar <sdk_ubuntu_components_menubar>` at the specified position

.. _sdk_ubuntu_components_menubar_removeMenu:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void removeMenu(:ref:`Menu <sdk_ubuntu_components_menu>` *menu*)                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

\* \* Remove a Menu from the :ref:`MenuBar <sdk_ubuntu_components_menubar>`

