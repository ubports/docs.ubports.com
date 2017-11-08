.. _sdk_ubuntu_components_listitems_singlecontrol:

Ubuntu.Components.ListItems SingleControl
=========================================

A list item containing a single control

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.ListItems 1.3                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `Empty </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/>`_                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `control </sdk/apps/qml/Ubuntu.Components/ListItems.SingleControl/#control-prop>`_  : Item

Detailed Description
--------------------

**Note:** **The component is deprecated. Use :ref:`ListItem <sdk_ubuntu_components_listitem>` component instead.**

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        ListItem.SingleControl {
            control: Button {
                anchors {
                    margins: units.gu(1)
                    fill: parent
                }
                text: "Large button"
            }
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_listitems_singlecontrol_control:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| control : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The control of this `SingleControl </sdk/apps/qml/Ubuntu.Components/ListItems.SingleControl/>`_  list item. The control will automatically be re-parented to, and centered in, this list item.

