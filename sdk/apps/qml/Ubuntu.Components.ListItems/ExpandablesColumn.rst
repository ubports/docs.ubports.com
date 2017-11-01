A column to be used together with the Expandable item. This lays out its
content just like a regular Column inside a Flickable but when used
together with items of type Expandable it provides additional features
like automatically positioning the expanding item when it expands and
collapsing it again when the user taps outside of it.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Flickable </sdk/apps/qml/QtQuick/Fl |
|                                      | ickable/>`__                         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`children </sdk/apps/qml/Ubuntu.Components/ListItems.ExpandablesColumn#children-prop>`__****
   : QtObject
-  ****`expandedItem </sdk/apps/qml/Ubuntu.Components/ListItems.ExpandablesColumn#expandedItem-prop>`__****
   : Item

Methods
-------

-  ****`collapse </sdk/apps/qml/Ubuntu.Components/ListItems.ExpandablesColumn#collapse-method>`__****\ ()
-  ****`expandItem </sdk/apps/qml/Ubuntu.Components/ListItems.ExpandablesColumn#expandItem-method>`__****\ (*item*)

Detailed Description
--------------------

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    ListItem.ExpandablesColumn {
        anchors { left: parent.left; right: parent.right }
        height: units.gu(24)
        Repeater {
            model: 8
            ListItem.Expandable {
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

Reparent any content to inside the Column.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] expandedItem :                                      |
| `Item </sdk/apps/qml/QtQuick/Item/>`__                                   |
+--------------------------------------------------------------------------+

Points to the currently expanded item. Null if no item is expanded.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ collapse()                                                      |
+--------------------------------------------------------------------------+

Collapse the currently expanded item. If there isn't any item expanded,
this function does nothing.

| 

+--------------------------------------------------------------------------+
|        \ expandItem( *item*)                                             |
+--------------------------------------------------------------------------+

Expand the given item. The item must be a child of this
`ListView </sdk/apps/qml/QtQuick/ListView/>`__.

| 
