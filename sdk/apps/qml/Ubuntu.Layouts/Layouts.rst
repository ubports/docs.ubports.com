.. _sdk_ubuntu_layouts_layouts:

Ubuntu.Layouts Layouts
======================

The Layouts component allows one to specify multiple different layouts for a fixed set of Items, and applies the desired layout to those Items.

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Layouts 1.0   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`currentLayout <sdk_ubuntu_layouts_layouts_currentLayout>` : string
-  :ref:`layouts <sdk_ubuntu_layouts_layouts_layouts>` : list<ConditionalLayout>

Attached Properties
-------------------

-  :ref:`item <sdk_ubuntu_layouts_layouts_item>` : string

Detailed Description
--------------------

Layouts is a layout block component incorporating layout definitions and components to lay out. The layouts are defined in the :ref:`layouts <sdk_ubuntu_layouts_layouts_layouts>` property, which is a list of :ref:`ConditionalLayout <sdk_ubuntu_layouts_conditionallayout>` components, each declaring the sizes and positions of the components specified to be laid out.

.. code:: qml

    Layouts {
        id: layouts
        layouts: [
            ConditionalLayout {
                name: "flow"
                when: layouts.width > units.gu(60) && layouts.width <= units.gu(100)
                Flow {
                    anchors.fill: parent
                    //[...]
                }
            },
            ConditionalLayout {
                name: "column"
                when: layouts.width > units.gu(100)
                Flickable {
                    anchors.fill: parent
                    contentHeight: column.childrenRect.height
                    Column {
                        id: column
                        //[...]
                    }
                }
            }
        ]
    }

The components to be laid out must be declared as children of the Layouts component, each set an attached property "Layouts.item" to be a unique string.

.. code:: qml

    Layouts {
        id: layouts
        layouts: [
            ConditionalLayout {
                name: "flow"
                when: layouts.width > units.gu(60) && layouts.width <= units.gu(100)
                Flow {
                    anchors.fill: parent
                    //[...]
                }
            },
            ConditionalLayout {
                name: "column"
                when: layouts.width > units.gu(100)
                Flickable {
                    anchors.fill: parent
                    contentHeight: column.childrenRect.height
                    Column {
                        id: column
                        //[...]
                    }
                }
            }
        ]
        Row {
            anchors.fill: parent
            Button {
                text: "Press me"
                Layouts.item: "item1"
            }
            Button {
                text: "Cancel"
                Layouts.item: "item2"
            }
        }
    }

The layout of the children of Layouts is considered the default layout, i.e. :ref:`currentLayout <sdk_ubuntu_layouts_layouts_currentLayout>` is an empty string. So in the above example, the buttons arranged in a row is the default layout.

The layouts defined by :ref:`ConditionalLayout <sdk_ubuntu_layouts_conditionallayout>` components are created and activated when at least one of the layout's condition is evaluated to true. In which case components marked for layout are re-parented to the components defined to lay out those defined in the :ref:`ConditionalLayout <sdk_ubuntu_layouts_conditionallayout>`. In case multiple conditions are evaluated to true, the first one in the list will be activated. The deactivated layout is destroyed, exception being the default layout, which is kept in memory for the entire lifetime of the Layouts component.

Upon activation, the created component fills in the entire layout block.

.. code:: qml

    Layouts {
        id: layouts
        layouts: [
            ConditionalLayout {
                name: "flow"
                when: layouts.width > units.gu(60) && layouts.width <= units.gu(100)
                Flow {
                    anchors.fill: parent
                    ItemLayout {
                        item: "item1"
                    }
                    ItemLayout {
                        item: "item2"
                    }
                }
            },
            ConditionalLayout {
                name: "column"
                when: layouts.width > units.gu(100)
                Flickable {
                    anchors.fill: parent
                    contentHeight: column.childrenRect.height
                    Column {
                        id: column
                        ItemLayout {
                            item: "item1"
                        }
                        ItemLayout {
                            item: "item2"
                        }
                    }
                }
            }
        ]
        Row {
            anchors.fill: parent
            Button {
                text: "Press me"
                Layouts.item: "item1"
            }
            Button {
                text: "Cancel"
                Layouts.item: "item2"
            }
        }
    }

Conditional layouts must be named in order to be activatable. These names (strings) should be unique within a Layouts item and can be used to identify changes in between layouts in scripts, so additional layout specific customization on laid out items can be done. The current layout is presented by the :ref:`currentLayout <sdk_ubuntu_layouts_layouts_currentLayout>` property.

Extending the previous example by changing the button color to green when the current layout is "column", the code would look as follows:

.. code:: qml

    Layouts {
        id: layouts
        layouts: [
            ConditionalLayout {
                name: "flow"
                when: layouts.width > units.gu(60) && layouts.width <= units.gu(100)
                Flow {
                    anchors.fill: parent
                    ItemLayout {
                        item: "item1"
                    }
                    ItemLayout {
                        item: "item2"
                    }
                }
            },
            ConditionalLayout {
                name: "column"
                when: layouts.width > units.gu(100)
                Flickable {
                    anchors.fill: parent
                    contentHeight: column.childrenRect.height
                    Column {
                        id: column
                        ItemLayout {
                            item: "item1"
                        }
                        ItemLayout {
                            item: "item2"
                        }
                    }
                }
            }
        ]
        Row {
            anchors.fill: parent
            Button {
                text: "Press me"
                Layouts.item: "item1"
                color: (layouts.currentLayout === "column") ? "green" : "gray"
            }
            Button {
                text: "Cancel"
                Layouts.item: "item2"
                color: (layouts.currentLayout === "column") ? "green" : "gray"
            }
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_layouts_layouts_currentLayout:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| currentLayout : string                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the active layout name. The default layout is identified by an empty string. This property can be used for additional customization of the components which are not supported by the layouting.

.. _sdk_ubuntu_layouts_layouts_layouts:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layouts : list<:ref:`ConditionalLayout <sdk_ubuntu_layouts_conditionallayout>`>                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the list of different :ref:`ConditionalLayout <sdk_ubuntu_layouts_conditionallayout>` elements.

Attached Property Documentation
-------------------------------

.. _sdk_ubuntu_layouts_layouts_item:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Layouts.item : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property identifies a component to be laid out. It is the unique identifier of the component within a layout block. The property can be attached to components to be laid out and has no effect when applied on layout containers.

**See also** :ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>`.

