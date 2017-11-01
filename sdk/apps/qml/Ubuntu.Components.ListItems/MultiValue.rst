List item displaying multiple values.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Base </sdk/apps/qml/Ubuntu.Componen |
|                                      | ts/ListItems.Base/>`__               |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`values </sdk/apps/qml/Ubuntu.Components/ListItems.MultiValue#values-prop>`__****
   : variant

Detailed Description
--------------------

**Note:** **The component is deprecated. Use
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component
instead.**

Examples:

.. code:: qml

    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        ListItem.MultiValue {
            text: "Label"
            values: ["Value 1", "Value 2", "Value 3", "Value 4"]
            onClicked: selected = !selected
        }
        ListItem.MultiValue {
            text: "Label"
            iconName: "compose"
            values: ["Value 1", "Value 2", "Value 3", "Value 4"]
            progression: true
            onClicked: print("clicked")
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ values : `variant <http://doc.qt.io/qt-5/qml-variant.html>`__   |
+--------------------------------------------------------------------------+

The list of values that will be shown under the label text

| 
