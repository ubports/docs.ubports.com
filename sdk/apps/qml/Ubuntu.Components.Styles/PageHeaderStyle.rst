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

-  ****`backgroundColor </sdk/apps/qml/Ubuntu.Components/Styles.PageHeaderStyle#backgroundColor-prop>`__****
   : color
-  ****`buttons </sdk/apps/qml/Ubuntu.Components/Styles.PageHeaderStyle#buttons-prop>`__****
   : ActionItemProperties
-  ****`contentHeight </sdk/apps/qml/Ubuntu.Components/Styles.PageHeaderStyle#contentHeight-prop>`__****
   : real
-  ****`defaultActionDelegate </sdk/apps/qml/Ubuntu.Components/Styles.PageHeaderStyle#defaultActionDelegate-prop>`__****
   : Component
-  ****`dividerColor </sdk/apps/qml/Ubuntu.Components/Styles.PageHeaderStyle#dividerColor-prop>`__****
   : color
-  ****`foregroundColor </sdk/apps/qml/Ubuntu.Components/Styles.PageHeaderStyle#foregroundColor-prop>`__****
   : color
-  ****`subtitleColor </sdk/apps/qml/Ubuntu.Components/Styles.PageHeaderStyle#subtitleColor-prop>`__****
   : color
-  ****`subtitleComponent </sdk/apps/qml/Ubuntu.Components/Styles.PageHeaderStyle#subtitleComponent-prop>`__****
   : Component
-  ****`titleComponent </sdk/apps/qml/Ubuntu.Components/Styles.PageHeaderStyle#titleComponent-prop>`__****
   : Component

Detailed Description
--------------------

The component defines the style API for the
`PageHeader </sdk/apps/qml/Ubuntu.Components/PageHeader/>`__ component.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ backgroundColor : color                                         |
+--------------------------------------------------------------------------+

The color of the background of the header.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] buttons :                                           |
| `ActionItemProperties </sdk/apps/qml/Ubuntu.Components/Styles.ActionItem |
| Properties/>`__                                                          |
+--------------------------------------------------------------------------+

Configuration of the colors of the action buttons in the header.

| 

+--------------------------------------------------------------------------+
|        \ contentHeight : real                                            |
+--------------------------------------------------------------------------+

The height of the header excluding the divider and extension.

| 

+--------------------------------------------------------------------------+
|        \ defaultActionDelegate :                                         |
| `Component </sdk/apps/qml/QtQml/Component/>`__                           |
+--------------------------------------------------------------------------+

The delegate used for the buttons in the leading and trailing
`ActionBar </sdk/apps/qml/Ubuntu.Components/ActionBar/>`__ in the
header.

| 

+--------------------------------------------------------------------------+
|        \ dividerColor : color                                            |
+--------------------------------------------------------------------------+

The color of the divider at the bottom of the header.

| 

+--------------------------------------------------------------------------+
|        \ foregroundColor : color                                         |
+--------------------------------------------------------------------------+

The color of the title and the action buttons in the header.

| 

+--------------------------------------------------------------------------+
|        \ subtitleColor : color                                           |
+--------------------------------------------------------------------------+

The color of the (optional) subtitle.

| 

+--------------------------------------------------------------------------+
|        \ subtitleComponent :                                             |
| `Component </sdk/apps/qml/QtQml/Component/>`__                           |
+--------------------------------------------------------------------------+

The default component to display the subtitle.

| 

+--------------------------------------------------------------------------+
|        \ titleComponent : `Component </sdk/apps/qml/QtQml/Component/>`__ |
+--------------------------------------------------------------------------+

The default contents that will be loaded when no contents Item was set.

| 
