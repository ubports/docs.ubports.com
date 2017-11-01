List item displaying single selected value when not expanded, where
expanding it opens a listing of all the possible values for selection.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Empty </sdk/apps/qml/Ubuntu.Compone |
|                                      | nts/ListItems.Empty/>`__             |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`expanded </sdk/apps/qml/Ubuntu.Components/ListItems.ValueSelector#expanded-prop>`__****
   : bool
-  ****`fallbackIconName </sdk/apps/qml/Ubuntu.Components/ListItems.ValueSelector#fallbackIconName-prop>`__****
   : string
-  ****`fallbackIconSource </sdk/apps/qml/Ubuntu.Components/ListItems.ValueSelector#fallbackIconSource-prop>`__****
   : url
-  ****`iconFrame </sdk/apps/qml/Ubuntu.Components/ListItems.ValueSelector#iconFrame-prop>`__****
   : bool
-  ****`selectedIndex </sdk/apps/qml/Ubuntu.Components/ListItems.ValueSelector#selectedIndex-prop>`__****
   : int
-  ****`values </sdk/apps/qml/Ubuntu.Components/ListItems.ValueSelector#values-prop>`__****
   : variant

Detailed Description
--------------------

\*\*\*\*DEPRECATED! PLEASE USE ITEM SELECTOR OR FOR THE UBUNTU SHAPE
VERSION THE OPTION SELECTOR.\*\*\*\*

Examples:

.. code:: qml

    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        width: 250
        ListItem.ValueSelector {
            text: "Standard"
            values: ["Value 1", "Value 2", "Value 3", "Value 4"]
        }
        ListItem.ValueSelector {
            text: "Disabled"
            values: ["Value 1", "Value 2", "Value 3", "Value 4"]
            enabled: false
        }
        ListItem.ValueSelector {
            text: "Expanded"
            values: ["Value 1", "Value 2", "Value 3", "Value 4"]
            expanded: true
        }
        ListItem.ValueSelector {
            text: "Icon"
            iconName: "compose"
            values: ["Value 1", "Value 2", "Value 3", "Value 4"]
            selectedIndex: 2
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ expanded : bool                                                 |
+--------------------------------------------------------------------------+

Specifies whether the selector is 'open' or 'closed'.

| 

+--------------------------------------------------------------------------+
|        \ fallbackIconName : string                                       |
+--------------------------------------------------------------------------+

The icon shown in the list item if iconName failed to load (optional).

If both
`fallbackIconSource </sdk/apps/qml/Ubuntu.Components/ListItems.ValueSelector#fallbackIconSource-prop>`__
and fallbackIconName are defined, fallbackIconName will be ignored.

**Note:** The complete list of icons available in Ubuntu is not
published yet. For now please refer to the folders where the icon themes
are installed:

-  Ubuntu Touch: /usr/share/icons/suru
-  Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

| 

+--------------------------------------------------------------------------+
|        \ fallbackIconSource :                                            |
| `url <http://doc.qt.io/qt-5/qml-url.html>`__                             |
+--------------------------------------------------------------------------+

The location of the icon to show in the list item if iconSource failed
to load (optional).

| 

+--------------------------------------------------------------------------+
|        \ iconFrame : bool                                                |
+--------------------------------------------------------------------------+

Show or hide the frame around the icon

| 

+--------------------------------------------------------------------------+
|        \ selectedIndex : int                                             |
+--------------------------------------------------------------------------+

The index of the currently selected element from the
`values </sdk/apps/qml/Ubuntu.Components/ListItems.ValueSelector#values-prop>`__
array.

| 

+--------------------------------------------------------------------------+
|        \ values : `variant <http://doc.qt.io/qt-5/qml-variant.html>`__   |
+--------------------------------------------------------------------------+

The list of values that will be shown under the label text

| 
