.. _sdk_ubuntu_components_progressionslot:

Ubuntu.Components ProgressionSlot
=================================

ProgressionSlot holds an icon representing the progression symbol.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Icon <sdk_ubuntu_components_icon>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Detailed Description
--------------------

:ref:`ProgressionSlot <sdk_ubuntu_components_progressionslot>` is designed to provide an easy way for developers to add a progression symbol to the list item created using :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` or :ref:`SlotsLayout <sdk_ubuntu_components_slotslayout>`.

:ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` will automatically accomodate the progression symbol as the last trailing slot inside the layout. For more details, see :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` documentation.

The following is an example of how easy it is to implement list items using :ref:`ListItem <sdk_ubuntu_components_listitem>` with :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>` and :ref:`ProgressionSlot <sdk_ubuntu_components_progressionslot>`:

.. code:: qml

    ListItem {
        height: layout.height
        onClicked: pushPageOnStack()
        ListItemLayout {
            id: layout
            title.text: "Push a new page on the PageStack"
            ProgressionSlot {}
        }
    }

**See also** :ref:`ListItemLayout <sdk_ubuntu_components_listitemlayout>`.
