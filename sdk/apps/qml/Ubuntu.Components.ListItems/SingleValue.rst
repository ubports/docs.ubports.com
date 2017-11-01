A list item displaying a single value

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Base </sdk/apps/qml/Ubuntu.Componen |
|                                      | ts/ListItems.Base/>`__               |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`value </sdk/apps/qml/Ubuntu.Components/ListItems.SingleValue#value-prop>`__****
   : string

Detailed Description
--------------------

**Note:** **The component is deprecated. Use
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component
instead.**

Examples:

.. code:: qml

    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        ListItem.SingleValue {
            text: "Label"
            value: "Status"
            onClicked: selected = !selected
        }
        ListItem.SingleValue {
            text: "Label"
            iconName: "compose"
            value: "Parameter"
            progression: true
            onClicked: print("clicked")
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ value : string                                                  |
+--------------------------------------------------------------------------+

The values that will be shown next to the label text

| 
