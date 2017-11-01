ProgressionSlot holds an icon representing the progression symbol.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Icon </sdk/apps/qml/Ubuntu.Componen |
|                                      | ts/Icon/>`__                         |
+--------------------------------------+--------------------------------------+

Detailed Description
--------------------

`ProgressionSlot </sdk/apps/qml/Ubuntu.Components/ProgressionSlot/>`__
is designed to provide an easy way for developers to add a progression
symbol to the list item created using
`ListItemLayout </sdk/apps/qml/Ubuntu.Components/ListItemLayout/>`__ or
`SlotsLayout </sdk/apps/qml/Ubuntu.Components/SlotsLayout/>`__.

`ListItemLayout </sdk/apps/qml/Ubuntu.Components/ListItemLayout/>`__
will automatically accomodate the progression symbol as the last
trailing slot inside the layout. For more details, see
`ListItemLayout </sdk/apps/qml/Ubuntu.Components/ListItemLayout/>`__
documentation.

The following is an example of how easy it is to implement list items
using `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ with
`ListItemLayout </sdk/apps/qml/Ubuntu.Components/ListItemLayout/>`__ and
`ProgressionSlot </sdk/apps/qml/Ubuntu.Components/ProgressionSlot/>`__:

.. code:: qml

    ListItem {
        height: layout.height
        onClicked: pushPageOnStack()
        ListItemLayout {
            id: layout
            title.text: "Push a new page on the PageStack"
            ProgressionSlot {}
        }
    }

**See also**
`ListItemLayout </sdk/apps/qml/Ubuntu.Components/ListItemLayout/>`__.
