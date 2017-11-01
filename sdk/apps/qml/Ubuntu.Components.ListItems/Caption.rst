List item that shows a piece of text.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`text </sdk/apps/qml/Ubuntu.Components/ListItems.Caption#text-prop>`__****
   : string

Detailed Description
--------------------

**Note:** **The component is deprecated. Use
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ and Captiopns
components instead.**

Examples:

.. code:: qml

    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        ListItem.Standard {
            text: "Default list item."
        }
        ListItem.Caption {
            text: "This is a caption text, which can span multiple lines."
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ text : string                                                   |
+--------------------------------------------------------------------------+

The text that is shown in the list item as a label.

| 
