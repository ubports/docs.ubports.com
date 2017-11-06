.. _sdk_ubuntu_components_listitems_multivalue:

Ubuntu.Components.ListItems MultiValue
======================================

List item displaying multiple values.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.ListItems 1.3                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `Base </sdk/apps/qml/Ubuntu.Components/ListItems.Base/>`_                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `values </sdk/apps/qml/Ubuntu.Components/ListItems.MultiValue/#values-prop>`_  : variant

Detailed Description
--------------------

**Note:** **The component is deprecated. Use :ref:`ListItem <sdk_ubuntu_components_listitem>` component instead.**

Examples:

.. code:: qml

    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        ListItem.MultiValue {
            text: "Label"
            values: ["Value 1", "Value 2", "Value 3", "Value 4"]
            onClicked: selected = !selected
        }
        ListItem.MultiValue {
            text: "Label"
            iconName: "compose"
            values: ["Value 1", "Value 2", "Value 3", "Value 4"]
            progression: true
            onClicked: print("clicked")
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_listitems_multivalue_values:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| values : `variant <http://doc.qt.io/qt-5/qml-variant.html>`_                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The list of values that will be shown under the label text

