.. _sdk_ubuntu_components_toolbar:

Ubuntu.Components Toolbar
=========================

Toolbar that can be used as an extension for the edit mode header. Example:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`StyledItem <sdk_ubuntu_components_styleditem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`leadingActionBar <sdk_ubuntu_components_toolbar_leadingActionBar>` : ActionBar
-  :ref:`trailingActionBar <sdk_ubuntu_components_toolbar_trailingActionBar>` : ActionBar

Detailed Description
--------------------

.. code:: qml

    PageHeader {
        id: editHeader
        property Component delegate: Component {
            AbstractButton {
                id: button
                action: modelData
                width: label.width + units.gu(4)
                height: parent.height
                Rectangle {
                    color: UbuntuColors.slate
                    opacity: 0.1
                    anchors.fill: parent
                    visible: button.pressed
                }
                Label {
                    anchors.centerIn: parent
                    id: label
                    text: action.text
                    font.weight: text === "Confirm" ? Font.Normal : Font.Light
                }
            }
        }
        leadingActionBar {
            anchors.leftMargin: 0
            actions: Action {
                text: "Cancel"
                iconName: "close"
            }
            delegate: editHeader.delegate
        }
        trailingActionBar {
            anchors.rightMargin: 0
            actions: Action {
                text: "Confirm"
                iconName: "tick"
            }
            delegate: editHeader.delegate
        }
        extension: Toolbar {
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            trailingActionBar.actions: [
                Action { iconName: "bookmark-new" },
                Action { iconName: "add" },
                Action { iconName: "edit-select-all" },
                Action { iconName: "edit-copy" },
                Action { iconName: "select" }
            ]
            leadingActionBar.actions: Action {
                iconName: "delete"
                text: "delete"
                onTriggered: print("Delete action triggered")
            }
        }
    }

See :ref:`PageHeader <sdk_ubuntu_components_pageheader>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_toolbar_leadingActionBar:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] leadingActionBar : :ref:`ActionBar <sdk_ubuntu_components_actionbar>`                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The leading :ref:`ActionBar <sdk_ubuntu_components_actionbar>` that should hold at most one action. Recommneded for the delete action. Example:

.. code:: qml

    Toolbar {
        leadingActionBar.actions: [
            Action {
                iconName: "delete"
                text: "Delete"
                onTriggered: print("delete!")
            }
        ]
    }

See :ref:`ActionBar <sdk_ubuntu_components_actionbar>`.

.. _sdk_ubuntu_components_toolbar_trailingActionBar:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] trailingActionBar : :ref:`ActionBar <sdk_ubuntu_components_actionbar>`                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`ActionBar <sdk_ubuntu_components_actionbar>` with trailing actions. Example:

.. code:: qml

    Toolbar {
          trailingActionBar.actions: [
              Action { iconName: "bookmark-new" },
              Action { iconName: "add" },
              Action { iconName: "edit-select-all" },
              Action { iconName: "edit-copy" }
          ]
    }

The trailing :ref:`ActionBar <sdk_ubuntu_components_actionbar>` may contain up to 8 actions. Scrolling and support for more than 8 actions will be added in the near future. See :ref:`ActionBar <sdk_ubuntu_components_actionbar>`.

