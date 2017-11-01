An expandable list item with no contents. The Expandable class can be
used for generic list items containing other components such as buttons.
It subclasses Empty and thus brings all that functionality, but
additionally provides means to expand and collapse the item.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Empty </sdk/apps/qml/Ubuntu.Compone |
|                                      | nts/ListItems.Empty/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`children </sdk/apps/qml/Ubuntu.Components/ListItems.Expandable#children-prop>`__****
   : QtObject
-  ****`collapseOnClick </sdk/apps/qml/Ubuntu.Components/ListItems.Expandable#collapseOnClick-prop>`__****
   : bool
-  ****`collapsedHeight </sdk/apps/qml/Ubuntu.Components/ListItems.Expandable#collapsedHeight-prop>`__****
   : real
-  ****`expanded </sdk/apps/qml/Ubuntu.Components/ListItems.Expandable#expanded-prop>`__****
   : bool
-  ****`expandedHeight </sdk/apps/qml/Ubuntu.Components/ListItems.Expandable#expandedHeight-prop>`__****
   : real

Detailed Description
--------------------

When used together with an
`UbuntuListView </sdk/apps/qml/Ubuntu.Components/UbuntuListView/>`__ or
`ExpandablesColumn </sdk/apps/qml/Ubuntu.Components/ListItems.ExpandablesColumn/>`__
it can coordinate with other items in the list to make sure it is
scrolled while expanding to be fully visible in the view. Additionally
it is made sure that only one Expandable item is expanded at a time and
it is collapsed when the user clicks outside the item.

You can set
`expanded </sdk/apps/qml/Ubuntu.Components/ListItems.Expandable#expanded-prop>`__
to true/false to expand/collapse the item.

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    Item {
        ListModel {
            id: listModel
        }
        ListItem.UbuntuListView {
            anchors { left: parent.left; right: parent.right }
            height: units.gu(24)
            model: listModel
            delegate: ListItem.Expandable {
                id: expandingItem
                expandedHeight: units.gu(30)
                onClicked: {
                    expanded = true;
                }
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] children :                                            |
| `QtObject </sdk/apps/qml/QtQml/QtObject/>`__                             |
+--------------------------------------------------------------------------+

Reparent any content to inside the Flickable

| 

+--------------------------------------------------------------------------+
|        \ collapseOnClick : bool                                          |
+--------------------------------------------------------------------------+

If set to true, the item will collapse again when the user clicks
somewhere in the always visible (when collapsed) area.

| 

+--------------------------------------------------------------------------+
|        \ collapsedHeight : real                                          |
+--------------------------------------------------------------------------+

The collapsed (normal) height of the item. Defaults to the standard
height for list items.

| 

+--------------------------------------------------------------------------+
|        \ expanded : bool                                                 |
+--------------------------------------------------------------------------+

Reflects the expanded state. Set this to true/false to expand/collapse
the item.

| 

+--------------------------------------------------------------------------+
|        \ expandedHeight : real                                           |
+--------------------------------------------------------------------------+

The expanded height of the item's content. Defaults to the same as
`collapsedHeight </sdk/apps/qml/Ubuntu.Components/ListItems.Expandable#collapsedHeight-prop>`__
which disables the expanding feature. In order for the item to be
expandable, set this to the expanded size. Note that the actual expanded
size can be smaller if there is not enough space in the containing list.
In that case the item becomes flickable automatically.

| 
