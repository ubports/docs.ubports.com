Style API for action bar.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.Styles 1.3  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`backgroundColor </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle#backgroundColor-prop>`__****
   : color
-  ****`buttons </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle#buttons-prop>`__****
   : ActionItemProperties
-  ****`defaultDelegate </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle#defaultDelegate-prop>`__****
   : Component
-  ****`defaultNumberOfSlots </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle#defaultNumberOfSlots-prop>`__****
   : int
-  ****`overflowIconName </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle#overflowIconName-prop>`__****
   : string
-  ****`overflowIconSource </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle#overflowIconSource-prop>`__****
   : url
-  ****`overflowText </sdk/apps/qml/Ubuntu.Components/Styles.ActionBarStyle#overflowText-prop>`__****
   : string

Detailed Description
--------------------

The component defines the style API for the
`ActionBar </sdk/apps/qml/Ubuntu.Components/ActionBar/>`__ component.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ backgroundColor : color                                         |
+--------------------------------------------------------------------------+

The color of the background of the action bar.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] buttons :                                           |
| `ActionItemProperties </sdk/apps/qml/Ubuntu.Components/Styles.ActionItem |
| Properties/>`__                                                          |
+--------------------------------------------------------------------------+

Configuration of the colors of the action buttons in the action bar.

| 

+--------------------------------------------------------------------------+
|        \ defaultDelegate :                                               |
| `Component </sdk/apps/qml/QtQml/Component/>`__                           |
+--------------------------------------------------------------------------+

The default action delegate if the styled item does not provide a
different delegate.

| 

+--------------------------------------------------------------------------+
|        \ defaultNumberOfSlots : int                                      |
+--------------------------------------------------------------------------+

The default number of slots for the action bar.

| 

+--------------------------------------------------------------------------+
|        \ overflowIconName : string                                       |
+--------------------------------------------------------------------------+

The icon name for action of the overflow button.

| 

+--------------------------------------------------------------------------+
|        \ overflowIconSource :                                            |
| `url <http://doc.qt.io/qt-5/qml-url.html>`__                             |
+--------------------------------------------------------------------------+

The icon source for the action of the overflow button. Setting the icon
source will override the icon name.

| 

+--------------------------------------------------------------------------+
|        \ overflowText : string                                           |
+--------------------------------------------------------------------------+

The text for the action of the overflow button, which may be used in the
action delegate.

| 
