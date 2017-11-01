Component configuring the metrics of a column in AdaptivePageLayout.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `QtObject </sdk/apps/qml/QtQml/QtObj |
|                                      | ect/>`__                             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`fillWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#fillWidth-prop>`__****
   : bool
-  ****`maximumWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#maximumWidth-prop>`__****
   : real
-  ****`minimumWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#minimumWidth-prop>`__****
   : real
-  ****`preferredWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#preferredWidth-prop>`__****
   : real

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ fillWidth : bool                                                |
+--------------------------------------------------------------------------+

Specifies whether the width of the column should fill the available
space of the
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
column or not. Defaults to *false*.

| 

+--------------------------------------------------------------------------+
|        \ maximumWidth : real                                             |
+--------------------------------------------------------------------------+

Specifies the maximum width of the column. A maximum value of 0 will be
ignored. Defaults to the maximum positive value.

| 

+--------------------------------------------------------------------------+
|        \ minimumWidth : real                                             |
+--------------------------------------------------------------------------+

Specifies the minimum width of the column. Defaults to 0.

| 

+--------------------------------------------------------------------------+
|        \ preferredWidth : real                                           |
+--------------------------------------------------------------------------+

Specifies the preferred width of the column when the layout is
initialized. Defaults to 0.
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
clamps the given value between
`minimumWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#minimumWidth-prop>`__
and
`maximumWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#maximumWidth-prop>`__.
The value must be set if the
`fillWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#fillWidth-prop>`__
and
`minimumWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#minimumWidth-prop>`__
are not set.

| 
