.. _sdk_ubuntu_components_listitems_empty:

Ubuntu.Components.ListItems Empty
=================================

A list item with no contents.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.ListItems 1.3                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`AbstractButton <sdk_ubuntu_components_abstractbutton>`                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | `Base </sdk/apps/qml/Ubuntu.Components/ListItems.Base/>`_ , `Expandable </sdk/apps/qml/Ubuntu.Components/ListItems.Expandable/>`_ ,                       |
|                                                                                                                                                        | `SingleControl </sdk/apps/qml/Ubuntu.Components/ListItems.SingleControl/>`_ , `Standard </sdk/apps/qml/Ubuntu.Components/ListItems.Standard/>`_ , and     |
|                                                                                                                                                        | `ValueSelector </sdk/apps/qml/Ubuntu.Components/ListItems.ValueSelector/>`_ .                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `backgroundIndicator </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#backgroundIndicator-prop>`_  : list<Item>
-  `confirmRemoval </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#confirmRemoval-prop>`_  : bool
-  `divider </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#divider-prop>`_  : ThinDivider
-  `highlightWhenPressed </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#highlightWhenPressed-prop>`_  : bool
-  `removable </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#removable-prop>`_  : bool
-  `selected </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#selected-prop>`_  : bool
-  `showDivider </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#showDivider-prop>`_  : bool
-  `swipingState </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#swipingState-prop>`_  : string
-  `waitingConfirmationForRemoval </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#waitingConfirmationForRemoval-prop>`_  : bool

Signals
-------

-  `itemRemoved </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#itemRemoved-signal>`_ \ ()

Methods
-------

-  `cancelItemRemoval </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#cancelItemRemoval-method>`_ \ ()

Detailed Description
--------------------

**Note:** **The component is deprecated. Use :ref:`ListItem <sdk_ubuntu_components_listitem>` component instead.** The Empty class can be used for generic list items containing other components such as buttons. It is selectable and can take mouse clicks. It will attempt to detect if a thin dividing line at the bottom of the item is suitable, but this behaviour can be overridden (using `showDivider </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#showDivider-prop>`_ ). For specific types of list items, see its subclasses.

The item will still remain in memory after being removed from the list so it is up to the application to destroy it. This can be handled by the signal `itemRemoved </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/#itemRemoved-signal>`_  that is fired after all animation is done.

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    Item {
        Model {
            id: contactModel
            ListElement {
                name: "Bill Smith"
                number: "555 3264"
            }
            ListElement {
                name: "John Brown"
                number: "555 8426"
            }
        }
        ListView {
             width: 180; height: 200
             model: contactModel
             delegate: ListItem.Empty {
                height: units.gu(6)
                removable: true
                onItemRemoved: contactModel.remove(index)
                Text {
                    text: name + " " + number
                    anchors.centerIn: parent
                }
            }
        }
    }

See the documentation of the derived classes of Empty for more examples.

Property Documentation
----------------------

.. _sdk_ubuntu_components_listitems_empty_backgroundIndicator:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| backgroundIndicator : list<:ref:`Item <sdk_qtquick_item>`>                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the item background item to be showed during the item swiping

.. _sdk_ubuntu_components_listitems_empty_confirmRemoval:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| confirmRemoval : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines if the item needs confirmation before removing by swiping.

.. _sdk_ubuntu_components_listitems_empty_divider:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| divider : `ThinDivider </sdk/apps/qml/Ubuntu.Components/ListItems.ThinDivider/>`_                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Exposes our the bottom line divider.

.. _sdk_ubuntu_components_listitems_empty_highlightWhenPressed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlightWhenPressed : bool                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Highlight the list item when it is pressed. This is used to disable the highlighting of the full list item when custom highlighting needs to be implemented (for example in :ref:`ListItem <sdk_ubuntu_components_listitem>`.Standard which can have a split).

.. _sdk_ubuntu_components_listitems_empty_removable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removable : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines if this item can be removed or not.

.. _sdk_ubuntu_components_listitems_empty_selected:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selected : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies whether the list item is selected.

.. _sdk_ubuntu_components_listitems_empty_showDivider:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| showDivider : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set to show or hide the thin bottom divider line (drawn by the `ThinDivider </sdk/apps/qml/Ubuntu.Components/ListItems.ThinDivider/>`_  component). This line is shown by default except in cases where this item is the delegate of a :ref:`ListView <sdk_qtquick_listview>`.

.. _sdk_ubuntu_components_listitems_empty_swipingState:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] swipingState : string                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The current swiping state ("SwipingRight" or "")

.. _sdk_ubuntu_components_listitems_empty_waitingConfirmationForRemoval:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] waitingConfirmationForRemoval : bool                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines if the item is waiting for the user interaction during the swipe to delete

Signal Documentation
--------------------

.. _sdk_ubuntu_components_listitems_empty_itemRemoved:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemRemoved()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This handler is called when the item is removed from the list

Method Documentation
--------------------

.. _sdk_ubuntu_components_listitems_empty_cancelItemRemoval:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cancelItemRemoval()                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Cancel item romoval

