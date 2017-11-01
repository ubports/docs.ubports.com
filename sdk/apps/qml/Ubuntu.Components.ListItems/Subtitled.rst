List item displaying a second string under the main label.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Base </sdk/apps/qml/Ubuntu.Componen |
|                                      | ts/ListItems.Base/>`__               |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`subText </sdk/apps/qml/Ubuntu.Components/ListItems.Subtitled#subText-prop>`__****
   : string

Detailed Description
--------------------

**Note:** **The component is deprecated. Use
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component
instead.**

Examples:

.. code:: qml

    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        ListItem.Subtitled {
            text: "Idle"
            subText: "Secondary label"
        }
        ListItem.Subtitled {
            text: "Disabled"
            enabled: false
            subText: "Secondary label"
        }
        ListItem.Subtitled {
            text: "Selected"
            selected: true
            subText: "Secondary label"
        }
        ListItem.Subtitled {
            text: "Progression"
            subText: "Secondary label"
            progression: true
        }
        ListItem.Subtitled {
            text: "Icon"
            subText: "Secondary label"
            iconName: "compose"
        }
        ListItem.Subtitled {
            text: "Multiple lines"
            subText: "This is a multi-line subText.\nUp to 5 lines are supported."
        }
        ListItem.Subtitled {
            text: "Multiple lines"
            subText: "It also works well with icons and progression."
            iconName: "compose"
            progression: true
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ subText : string                                                |
+--------------------------------------------------------------------------+

The list of strings that will be shown under the label text

| 
