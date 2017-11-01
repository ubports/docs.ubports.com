ItemLayout defines a new size & position of a single Item, for the
purposes of specifying layouts. This is to be used within a
ConditionalLayout definition.

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Layouts 1.0   |
+---------------------+-----------------------------+

Properties
----------

-  ****`item </sdk/apps/qml/Ubuntu.Layouts/ItemLayout#item-prop>`__****
   : string

Detailed Description
--------------------

Use `ItemLayout </sdk/apps/qml/Ubuntu.Layouts/ItemLayout/>`__ to define
the size and position of a single item within a layout. The item name to
be positioned should be specified in item property, which should
correspond to the string specified in **Layouts.item** attached to an
Item in the default layout. The Item with Layouts.item attached is
reparented into
`ItemLayout </sdk/apps/qml/Ubuntu.Layouts/ItemLayout/>`__ and it is
anchor filled to it.

Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Layouts 0.1
    Layouts {
        id: layouts
        width: units.gu(50)
        height: units.gu(50)
        layouts: [
            ConditionalLayout {
                when: layouts.width > units.gu(40)
                Row {
                    width: parent.width
                    ItemLayout {
                        item: "input"
                        width: units.gu(30)
                        height: units.gu(20)
                    }
                    TextArea {
                        text: "extra component"
                    }
                }
            }
        ]
        // default layout
        TextInput {
            anchors.fill: parent
            text: "input"
            Layouts.item: "input"
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ item : string                                                   |
+--------------------------------------------------------------------------+

The property holds the item name to be positioned in the fragment.

| 
