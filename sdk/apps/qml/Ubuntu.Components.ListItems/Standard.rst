The standard list item class. It shows a basic list item with a label
(text), and optionally an icon, a progression arrow, and it can have an
embedded Item (control) that can be used for including Buttons, Switches
etc. inside the list item.

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

-  ****`control </sdk/apps/qml/Ubuntu.Components/ListItems.Standard#control-prop>`__****
   : Item
-  ****`fallbackIconName </sdk/apps/qml/Ubuntu.Components/ListItems.Standard#fallbackIconName-prop>`__****
   : string
-  ****`fallbackIconSource </sdk/apps/qml/Ubuntu.Components/ListItems.Standard#fallbackIconSource-prop>`__****
   : url
-  ****`iconFrame </sdk/apps/qml/Ubuntu.Components/ListItems.Standard#iconFrame-prop>`__****
   : bool
-  ****`progression </sdk/apps/qml/Ubuntu.Components/ListItems.Standard#progression-prop>`__****
   : bool

Detailed Description
--------------------

**Note:** **The component is deprecated. Use
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component
instead.**

`See also the Design Guidelines on List
Items <http://design.ubuntu.com/apps/building-blocks/list-items>`__.

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        ListItem.Standard {
            text: "Selectable standard list item"
            selected: false
            onClicked: selected = !selected
           }
        ListItem.Standard {
            text: "List item with icon"
            iconName: "compose"
        }
        ListItem.Standard {
            text: "With a progression arrow"
            progression: true
        }
        ListItem.Standard {
            text: "Control"
            control: Button {
                text: "Click me"
                width: units.gu(19)
                onClicked: print("Clicked")
            }
            progression: true
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ control : `Item </sdk/apps/qml/QtQuick/Item/>`__                |
+--------------------------------------------------------------------------+

An optional control that is displayed inside the list item. The width of
the control must be specified in order to determine the layout of the
list item.

| 

+--------------------------------------------------------------------------+
|        \ fallbackIconName : string                                       |
+--------------------------------------------------------------------------+

The icon shown in the list item if iconName failed to load (optional).

If both
`fallbackIconSource </sdk/apps/qml/Ubuntu.Components/ListItems.Standard#fallbackIconSource-prop>`__
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
|        \ progression : bool                                              |
+--------------------------------------------------------------------------+

Show or hide the progression symbol.

| 
