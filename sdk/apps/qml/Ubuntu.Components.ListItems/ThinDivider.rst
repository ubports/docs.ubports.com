.. _sdk_ubuntu_components_listitems_thindivider:

Ubuntu.Components.ListItems ThinDivider
=======================================

Narrow line used as a divider between ListItems.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.ListItems 1.3                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Rectangle <sdk_qtquick_rectangle>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Detailed Description
--------------------

**Note:** **The component is deprecated. Use :ref:`ListItem <sdk_ubuntu_components_listitem>` component's divider property instead.**

ListItems will usually include this line at the bottom of the item to give a visually pleasing list of items. But a divider line can also be inserted manually using this component.

Examples:

.. code:: qml

    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        width: 250
        ListItem.ThinDivider {} //can be used as header for list
        ListItem.Standard {
            text: "List Item without thin divider line"
            showDivider: false
        }
        ListItem.ThinDivider {} // manually inserted divider line
        ListItem.Standard {
            text: "ListItem with thin divider line"
        }
    }
