View column metrics configuration for SplitView.

+---------------------+------------+
| Import Statement:   | import .   |
+---------------------+------------+

Properties
----------

-  ****`fillWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#fillWidth-prop>`__****
   : bool
-  ****`maximumWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#maximumWidth-prop>`__****
   : real
-  ****`minimumWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#minimumWidth-prop>`__****
   : real
-  ****`preferredWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#preferredWidth-prop>`__****
   : real

Detailed Description
--------------------

The component provides width metrics configuration for
`SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`__ layout
columns. The values are applied on columns by an active
`SplitViewLayout </sdk/apps/qml/Ubuntu.Components/SplitViewLayout/>`__.
On resizing, the values are preserved for the entire lifetime of the
component, even when the active layout is changed into an other one.
When changed back, the previous values will be used.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ fillWidth : bool                                                |
+--------------------------------------------------------------------------+

If set, the column width will take the space available after all the
other columns with non-fill width are configured. This means that if
there is more than one column configured to fill width, the reminder
width is split evenly between these columns. If all columns are
configured to fill width, the colum widths will be split evenly between
all the columns.

**Note:** When a column configured with fillWidth is resized, the
properties will not be altered, but the fillWidth wioll no longer be
taken into account. Instead, the
`preferredWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#preferredWidth-prop>`__
will drive the width of that column from that point on.

| 

+--------------------------------------------------------------------------+
|        \ maximumWidth : real                                             |
+--------------------------------------------------------------------------+

Specifies the maximum width of the column. The number must be a positive
value and bigger than the
`minimumWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#minimumWidth-prop>`__
value.

| 

+--------------------------------------------------------------------------+
|        \ minimumWidth : real                                             |
+--------------------------------------------------------------------------+

Specifies the minimum width of the column. The number must be a positive
value and less or equal than the
`maximumWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#maximumWidth-prop>`__
value.

| 

+--------------------------------------------------------------------------+
|        \ preferredWidth : real                                           |
+--------------------------------------------------------------------------+

The property holds the preferred width of the column. The value must be
situated in between
`minimumWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#minimumWidth-prop>`__
and
`maximumWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#maximumWidth-prop>`__.
In case
`fillWidth </sdk/apps/qml/Ubuntu.Components/ViewColumn#fillWidth-prop>`__
is set, the value will hold the actual width of the column, but setting
its value will not affect the width of the column.

| 
