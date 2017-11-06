.. _sdk_ubuntu_components_viewcolumn:

Ubuntu.Components ViewColumn
============================

View column metrics configuration for SplitView.

+---------------------+------------+
| Import Statement:   | import .   |
+---------------------+------------+

Properties
----------

-  :ref:`fillWidth <sdk_ubuntu_components_viewcolumn_fillWidth>` : bool
-  :ref:`maximumWidth <sdk_ubuntu_components_viewcolumn_maximumWidth>` : real
-  :ref:`minimumWidth <sdk_ubuntu_components_viewcolumn_minimumWidth>` : real
-  :ref:`preferredWidth <sdk_ubuntu_components_viewcolumn_preferredWidth>` : real

Detailed Description
--------------------

The component provides width metrics configuration for `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_  layout columns. The values are applied on columns by an active :ref:`SplitViewLayout <sdk_ubuntu_components_splitviewlayout>`. On resizing, the values are preserved for the entire lifetime of the component, even when the active layout is changed into an other one. When changed back, the previous values will be used.

Property Documentation
----------------------

.. _sdk_ubuntu_components_viewcolumn_fillWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fillWidth : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If set, the column width will take the space available after all the other columns with non-fill width are configured. This means that if there is more than one column configured to fill width, the reminder width is split evenly between these columns. If all columns are configured to fill width, the colum widths will be split evenly between all the columns.

**Note:** When a column configured with fillWidth is resized, the properties will not be altered, but the fillWidth wioll no longer be taken into account. Instead, the :ref:`preferredWidth <sdk_ubuntu_components_viewcolumn_preferredWidth>` will drive the width of that column from that point on.

.. _sdk_ubuntu_components_viewcolumn_maximumWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumWidth : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the maximum width of the column. The number must be a positive value and bigger than the :ref:`minimumWidth <sdk_ubuntu_components_viewcolumn_minimumWidth>` value.

.. _sdk_ubuntu_components_viewcolumn_minimumWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| minimumWidth : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the minimum width of the column. The number must be a positive value and less or equal than the :ref:`maximumWidth <sdk_ubuntu_components_viewcolumn_maximumWidth>` value.

.. _sdk_ubuntu_components_viewcolumn_preferredWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| preferredWidth : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the preferred width of the column. The value must be situated in between :ref:`minimumWidth <sdk_ubuntu_components_viewcolumn_minimumWidth>` and :ref:`maximumWidth <sdk_ubuntu_components_viewcolumn_maximumWidth>`. In case :ref:`fillWidth <sdk_ubuntu_components_viewcolumn_fillWidth>` is set, the value will hold the actual width of the column, but setting its value will not affect the width of the column.

