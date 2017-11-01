Style API for ComboButton component.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Styles 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`comboListHolder </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#comboListHolder-prop>`__****
   : Item
-  ****`comboListMargin </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#comboListMargin-prop>`__****
   : real
-  ****`comboListPanel </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#comboListPanel-prop>`__****
   : Item
-  ****`defaultColor </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#defaultColor-prop>`__****
   : color
-  ****`defaultDropdownColor </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#defaultDropdownColor-prop>`__****
   : color
-  ****`defaultFont </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#defaultFont-prop>`__****
   : font
-  ****`defaultGradient </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#defaultGradient-prop>`__****
   : Gradient
-  ****`dropDownSeparatorWidth </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#dropDownSeparatorWidth-prop>`__****
   : real
-  ****`dropDownWidth </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#dropDownWidth-prop>`__****
   : real

Detailed Description
--------------------

The component defines the style API for the
`ComboButton </sdk/apps/qml/Ubuntu.Components/ComboButton/>`__
component.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ comboListHolder : `Item </sdk/apps/qml/QtQuick/Item/>`__        |
+--------------------------------------------------------------------------+

The item which will hold the combo list data. Implementations can point
both this and
`comboListPanel </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle#comboListPanel-prop>`__
to the same component, however separate items should be used if a gap
between the panel and the content is required. See Ambiance theme.

| 

+--------------------------------------------------------------------------+
|        \ comboListMargin : real                                          |
+--------------------------------------------------------------------------+

Distance between the combo list and the main button.

| 

+--------------------------------------------------------------------------+
|        \ comboListPanel : `Item </sdk/apps/qml/QtQuick/Item/>`__         |
+--------------------------------------------------------------------------+

The item pointing to the panel holding the combo list and additional
design artifacts. It is used by the component to drive the expansion
size.

| 

+--------------------------------------------------------------------------+
|        \ defaultColor : color                                            |
+--------------------------------------------------------------------------+

Default color for the main button.

| 

+--------------------------------------------------------------------------+
|        \ defaultDropdownColor : color                                    |
+--------------------------------------------------------------------------+

Default color for the dropdown button and the combo list both when
expanded and collapsed. Implementations can define different color for
expanded/collapsed using the *styledItem.expanded* property.

| 

+--------------------------------------------------------------------------+
|        \ defaultFont : `font <http://doc.qt.io/qt-5/qml-font.html>`__    |
+--------------------------------------------------------------------------+

Default font used in the main button.

| 

+--------------------------------------------------------------------------+
|        \ defaultGradient :                                               |
| `Gradient </sdk/apps/qml/QtQuick/Gradient/>`__                           |
+--------------------------------------------------------------------------+

Default gradient for the main button.

| 

+--------------------------------------------------------------------------+
|        \ dropDownSeparatorWidth : real                                   |
+--------------------------------------------------------------------------+

Width of the dropdown button separator.

| 

+--------------------------------------------------------------------------+
|        \ dropDownWidth : real                                            |
+--------------------------------------------------------------------------+

Width of the drop down button.

| 
