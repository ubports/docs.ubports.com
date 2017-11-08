.. _sdk_ubuntu_layouts_itemlayout:

Ubuntu.Layouts ItemLayout
=========================

ItemLayout defines a new size & position of a single Item, for the purposes of specifying layouts. This is to be used within a ConditionalLayout definition.

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Layouts 1.0   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`item <sdk_ubuntu_layouts_itemlayout_item>` : string

Detailed Description
--------------------

Use :ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` to define the size and position of a single item within a layout. The item name to be positioned should be specified in item property, which should correspond to the string specified in **Layouts.item** attached to an Item in the default layout. The Item with Layouts.item attached is reparented into :ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` and it is anchor filled to it.

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

.. _sdk_ubuntu_layouts_itemlayout_item:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| item : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the item name to be positioned in the fragment.

