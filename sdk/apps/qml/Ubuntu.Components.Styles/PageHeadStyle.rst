Style API for page header.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Styles 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`contentHeight </sdk/apps/qml/Ubuntu.Components/Styles.PageHeadStyle#contentHeight-prop>`__****
   : real
-  ****`fontWeight </sdk/apps/qml/Ubuntu.Components/Styles.PageHeadStyle#fontWeight-prop>`__****
   : int
-  ****`maximumNumberOfActions </sdk/apps/qml/Ubuntu.Components/Styles.PageHeadStyle#maximumNumberOfActions-prop>`__****
   : int
-  ****`textLeftMargin </sdk/apps/qml/Ubuntu.Components/Styles.PageHeadStyle#textLeftMargin-prop>`__****
   : real
-  ****`textSize </sdk/apps/qml/Ubuntu.Components/Styles.PageHeadStyle#textSize-prop>`__****
   : int

Detailed Description
--------------------

The component defines the style API for the page header component.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

The height of the header excluding the height of the bottom divider and
the (optional) row that displays the sections.

| 

+--------------------------------------------------------------------------+
|        \ fontWeight : int                                                |
+--------------------------------------------------------------------------+

The weight of the title font.

| 

+--------------------------------------------------------------------------+
|        \ maximumNumberOfActions : int                                    |
+--------------------------------------------------------------------------+

The number of slots for actions in the header, including the optional
(custom or automatic) back button in the left side of the header. If the
number of actions defined is larger than the numer of actions specified
here, extra actions are put into an overflow.

| 

+--------------------------------------------------------------------------+
|        \ textLeftMargin : real                                           |
+--------------------------------------------------------------------------+

Left margin of title text.

| 

+--------------------------------------------------------------------------+
|        \ textSize : int                                                  |
+--------------------------------------------------------------------------+

The size of the title Label.

| 
