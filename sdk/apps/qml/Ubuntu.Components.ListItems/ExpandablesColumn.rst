.. _sdk_ubuntu_components_listitems_expandablescolumn:

Ubuntu.Components.ListItems ExpandablesColumn
=============================================

A column to be used together with the Expandable item. This lays out its content just like a regular Column inside a Flickable but when used together with items of type Expandable it provides additional features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.ListItems 1.3                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Flickable <sdk_qtquick_flickable>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `children </sdk/apps/qml/Ubuntu.Components/ListItems.ExpandablesColumn/#children-prop>`_  : QtObject
-  `expandedItem </sdk/apps/qml/Ubuntu.Components/ListItems.ExpandablesColumn/#expandedItem-prop>`_  : Item

Methods
-------

-  `collapse </sdk/apps/qml/Ubuntu.Components/ListItems.ExpandablesColumn/#collapse-method>`_ \ ()
-  `expandItem </sdk/apps/qml/Ubuntu.Components/ListItems.ExpandablesColumn/#expandItem-method>`_ \ (*item*)

Detailed Description
--------------------

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    ListItem.ExpandablesColumn {
        anchors { left: parent.left; right: parent.right }
        height: units.gu(24)
        Repeater {
            model: 8
            ListItem.Expandable {
                expandedHeight: units.gu(30)
                onClicked: {
                    expanded = true;
                }
            }
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_listitems_expandablescolumn_children:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] children : :ref:`QtObject <sdk_qtqml_qtobject>`                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Reparent any content to inside the Column.

.. _sdk_ubuntu_components_listitems_expandablescolumn_expandedItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] expandedItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Points to the currently expanded item. Null if no item is expanded.

Method Documentation
--------------------

.. _sdk_ubuntu_components_listitems_expandablescolumn_collapse:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| collapse()                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Collapse the currently expanded item. If there isn't any item expanded, this function does nothing.

.. _sdk_ubuntu_components_listitems_expandablescolumn_expandItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| expandItem( *item*)                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Expand the given item. The item must be a child of this :ref:`ListView <sdk_qtquick_listview>`.

