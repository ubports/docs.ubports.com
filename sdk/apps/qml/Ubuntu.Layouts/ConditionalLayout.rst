.. _sdk_ubuntu_layouts_conditionallayout:

Ubuntu.Layouts ConditionalLayout
================================

ConditionalLayout defines the layout of a given form factor.

+---------------------+-----------------------------+
| Import Statement:   | import Ubuntu.Layouts 1.0   |
+---------------------+-----------------------------+

Properties
----------

-  :ref:`layout <sdk_ubuntu_layouts_conditionallayout_layout>` : Component
-  :ref:`name <sdk_ubuntu_layouts_conditionallayout_name>` : string
-  :ref:`when <sdk_ubuntu_layouts_conditionallayout_when>` : bool

Detailed Description
--------------------

:ref:`ConditionalLayout <sdk_ubuntu_layouts_conditionallayout>` is a non-visual element defining the actual layout to be applied when a given condition evaluates to true. The condition can be any valid boolean JavaScript expression.

As Layouts can be nested, it is recommended to choose properties of the Layouts item, often width and height, when defining the condition. Other elements like Screen orientation can also be used to define the layout activation condition.

There must be only a single component defined in the :ref:`ConditionalLayout <sdk_ubuntu_layouts_conditionallayout>` which will be instantiated upon activation.

Each conditional layout must be named with a string, which identifies the layout when activated.

.. code:: qml

    Layouts {
        id: layouts
        width: units.gu(40)
        height: units.gu(40)
        layouts: [
            ConditionalLayout {
                name: "flow"
                when: layouts.width > units.gu(60)
                Flow {
                    anchors.fill: parent
                    spacing: units.dp(3)
                    flow: Flow.LeftToRight
                    ItemLayout {
                        item: "item1"
                        width: units.gu(30)
                        height: units.gu(20)
                    }
                    ItemLayout {
                        item: "item2"
                        width: units.gu(30)
                        height: units.gu(20)
                    }
                    ItemLayout {
                        item: "item3"
                        width: units.gu(30)
                        height: units.gu(20)
                    }
                }
            }
        ]
        Column {
            spacing: units.dp(2)
            Button {
                text: "Button #1"
                Layouts.item: "item1"
            }
            Button {
                text: "Button #2"
                Layouts.item: "item2"
            }
            Button {
                text: "Button #3"
                Layouts.item: "item3"
            }
        }
    }

All Items to be managed by the Layouts engine must identify themselves by setting the Layouts.item attached property to a unique name (string). These unique names are then used by the :ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` component, so can apply the new layout to the correct Item.

**See also** :ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>`.

Property Documentation
----------------------

.. _sdk_ubuntu_layouts_conditionallayout_layout:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] layout : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Default property holding the definition component of the layout. The component will be instantiated once the condition evaluates to true.

.. _sdk_ubuntu_layouts_conditionallayout_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the name of the layout. Within the definition of Layouts, these names should be unique for each layout.

**See also** :ref:`Layouts <sdk_ubuntu_layouts_layouts>`.

.. _sdk_ubuntu_layouts_conditionallayout_when:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| when : bool                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property defines the condition that when evaluating to true, chooses this :ref:`ConditionalLayout <sdk_ubuntu_layouts_conditionallayout>` to become the active layout. When two ConditionalLayouts **when** condition is evaluated to true, the first one declared in the layouts list is chosen.

