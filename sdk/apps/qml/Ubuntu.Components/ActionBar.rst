.. _sdk_ubuntu_components_actionbar:

Ubuntu.Components ActionBar
===========================

Show a row of buttons that trigger actions. When the number of visible actions specified is larger than numberOfSlots, an overflow button will be shown which triggers an overflow panel that shows the remaining actions.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`StyledItem <sdk_ubuntu_components_styleditem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`actions <sdk_ubuntu_components_actionbar_actions>` : Action
-  :ref:`delegate <sdk_ubuntu_components_actionbar_delegate>` : Component
-  :ref:`numberOfSlots <sdk_ubuntu_components_actionbar_numberOfSlots>` : int

Detailed Description
--------------------

Example:

.. code:: qml

    ActionBar {
        numberOfSlots: 2
        actions: [
            Action {
                iconName: "share"
                text: "Share"
            },
            Action {
                iconName: "starred"
                text: "Favorite"
            },
            Action {
                iconName: "lock"
                text: "Lock"
            }
        ]
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_actionbar_actions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| actions : :ref:`Action <sdk_ubuntu_components_action>`                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The actions to display in the bar. If more actions are specified than there are slots, an overflow button will be show which opens a popover with the actions that did not fit in the bar directly.

.. _sdk_ubuntu_components_actionbar_delegate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| delegate : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this to override the default delegate button that shows the actions in the :ref:`ActionBar <sdk_ubuntu_components_actionbar>`. Uses the defaultDelegate of `ActionBarStyle </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle/>`_  by default.

Example:

.. code:: qml

    ActionBar {
        id: customDelegateBar
        anchors.right: parent.right
        actions: [
            Action { text: "action 1" },
            Action { text: "action 2" }
        ]
        delegate: Button {
            action: modelData
            width: units.gu(14)
            strokeColor: UbuntuColors.purple
        }
    }

.. _sdk_ubuntu_components_actionbar_numberOfSlots:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| numberOfSlots : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The number of actions to be shown in the bar directly. If the actions don't fit, an overflow button (using one slot) will be shown which opens a popover with the remaining actions.

Setting numberOfSlots to 0 will always show the overflow button and no other action buttons. Default value from the Ambience theme is 3.

