.. _sdk_ubuntu_components_styles_combobuttonstyle:
Ubuntu.Components.Styles ComboButtonStyle
=========================================

Style API for ComboButton component.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Styles 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Item <sdk_qtquick_item>`       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  `comboListHolder </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/_comboListHolder-prop>`_ 
   : Item
-  `comboListMargin </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/_comboListMargin-prop>`_ 
   : real
-  `comboListPanel </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/_comboListPanel-prop>`_ 
   : Item
-  `defaultColor </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/_defaultColor-prop>`_ 
   : color
-  `defaultDropdownColor </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/_defaultDropdownColor-prop>`_ 
   : color
-  `defaultFont </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/_defaultFont-prop>`_ 
   : font
-  `defaultGradient </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/_defaultGradient-prop>`_ 
   : Gradient
-  `dropDownSeparatorWidth </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/_dropDownSeparatorWidth-prop>`_ 
   : real
-  `dropDownWidth </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/_dropDownWidth-prop>`_ 
   : real

Detailed Description
--------------------

The component defines the style API for the
:ref:`ComboButton <sdk_ubuntu_components_combobutton>` component.

Property Documentation
----------------------

.. _sdk_ubuntu_components_styles_combobuttonstyle_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ comboListHolder : `Item <sdk_qtquick_item>`                |
+--------------------------------------------------------------------------+

The item which will hold the combo list data. Implementations can point
both this and
`comboListPanel </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/#comboListPanel-prop>`_ 
to the same component, however separate items should be used if a gap
between the panel and the content is required. See Ambiance theme.

| 

.. _sdk_ubuntu_components_styles_combobuttonstyle_comboListMargin-prop:

+--------------------------------------------------------------------------+
|        \ comboListMargin : real                                          |
+--------------------------------------------------------------------------+

Distance between the combo list and the main button.

| 

.. _sdk_ubuntu_components_styles_combobuttonstyle_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ comboListPanel : `Item <sdk_qtquick_item>`                 |
+--------------------------------------------------------------------------+

The item pointing to the panel holding the combo list and additional
design artifacts. It is used by the component to drive the expansion
size.

| 

.. _sdk_ubuntu_components_styles_combobuttonstyle_defaultColor-prop:

+--------------------------------------------------------------------------+
|        \ defaultColor : color                                            |
+--------------------------------------------------------------------------+

Default color for the main button.

| 

.. _sdk_ubuntu_components_styles_combobuttonstyle_defaultDropdownColor-prop:

+--------------------------------------------------------------------------+
|        \ defaultDropdownColor : color                                    |
+--------------------------------------------------------------------------+

Default color for the dropdown button and the combo list both when
expanded and collapsed. Implementations can define different color for
expanded/collapsed using the *styledItem.expanded* property.

| 

.. _sdk_ubuntu_components_styles_combobuttonstyle_defaultFont-prop:

+--------------------------------------------------------------------------+
|        \ defaultFont : `font <http://doc.qt.io/qt-5/qml-font.html>`_     |
+--------------------------------------------------------------------------+

Default font used in the main button.

| 

.. _sdk_ubuntu_components_styles_combobuttonstyle_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ defaultGradient : `Gradient <sdk_qtquick_gradient>`        |
+--------------------------------------------------------------------------+

Default gradient for the main button.

| 

.. _sdk_ubuntu_components_styles_combobuttonstyle_dropDownSeparatorWidth-prop:

+--------------------------------------------------------------------------+
|        \ dropDownSeparatorWidth : real                                   |
+--------------------------------------------------------------------------+

Width of the dropdown button separator.

| 

.. _sdk_ubuntu_components_styles_combobuttonstyle_dropDownWidth-prop:

+--------------------------------------------------------------------------+
|        \ dropDownWidth : real                                            |
+--------------------------------------------------------------------------+

Width of the drop down button.

| 
