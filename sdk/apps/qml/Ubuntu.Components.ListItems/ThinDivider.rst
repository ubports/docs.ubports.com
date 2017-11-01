Narrow line used as a divider between ListItems.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Rectangle </sdk/apps/qml/QtQuick/Re |
|                                      | ctangle/>`__                         |
+--------------------------------------+--------------------------------------+

Detailed Description
--------------------

**Note:** **The component is deprecated. Use
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component's
divider property instead.**

ListItems will usually include this line at the bottom of the item to
give a visually pleasing list of items. But a divider line can also be
inserted manually using this component.

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
