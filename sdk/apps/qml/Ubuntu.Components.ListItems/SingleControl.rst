A list item containing a single control

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Empty </sdk/apps/qml/Ubuntu.Compone |
|                                      | nts/ListItems.Empty/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`control </sdk/apps/qml/Ubuntu.Components/ListItems.SingleControl#control-prop>`__****
   : Item

Detailed Description
--------------------

**Note:** **The component is deprecated. Use
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component
instead.**

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        ListItem.SingleControl {
            control: Button {
                anchors {
                    margins: units.gu(1)
                    fill: parent
                }
                text: "Large button"
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ control : `Item </sdk/apps/qml/QtQuick/Item/>`__                |
+--------------------------------------------------------------------------+

The control of this
`SingleControl </sdk/apps/qml/Ubuntu.Components/ListItems.SingleControl/>`__
list item. The control will automatically be re-parented to, and
centered in, this list item.

| 
