A list item with no contents.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components.ListItems   |
|                                      | 1.3                                  |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `AbstractButton </sdk/apps/qml/Ubunt |
|                                      | u.Components/AbstractButton/>`__     |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `Base </sdk/apps/qml/Ubuntu.Componen |
|                                      | ts/ListItems.Base/>`__,              |
|                                      | `Expandable </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/ListItems.Expandable/>`__,  |
|                                      | `SingleControl </sdk/apps/qml/Ubuntu |
|                                      | .Components/ListItems.SingleControl/ |
|                                      | >`__,                                |
|                                      | `Standard </sdk/apps/qml/Ubuntu.Comp |
|                                      | onents/ListItems.Standard/>`__,      |
|                                      | and                                  |
|                                      | `ValueSelector </sdk/apps/qml/Ubuntu |
|                                      | .Components/ListItems.ValueSelector/ |
|                                      | >`__.                                |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`backgroundIndicator </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#backgroundIndicator-prop>`__****
   : list<Item>
-  ****`confirmRemoval </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#confirmRemoval-prop>`__****
   : bool
-  ****`divider </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#divider-prop>`__****
   : ThinDivider
-  ****`highlightWhenPressed </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#highlightWhenPressed-prop>`__****
   : bool
-  ****`removable </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#removable-prop>`__****
   : bool
-  ****`selected </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#selected-prop>`__****
   : bool
-  ****`showDivider </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#showDivider-prop>`__****
   : bool
-  ****`swipingState </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#swipingState-prop>`__****
   : string
-  ****`waitingConfirmationForRemoval </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#waitingConfirmationForRemoval-prop>`__****
   : bool

Signals
-------

-  ****`itemRemoved </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#itemRemoved-signal>`__****\ ()

Methods
-------

-  ****`cancelItemRemoval </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#cancelItemRemoval-method>`__****\ ()

Detailed Description
--------------------

**Note:** **The component is deprecated. Use
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ component
instead.** The Empty class can be used for generic list items containing
other components such as buttons. It is selectable and can take mouse
clicks. It will attempt to detect if a thin dividing line at the bottom
of the item is suitable, but this behaviour can be overridden (using
`showDivider </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#showDivider-prop>`__).
For specific types of list items, see its subclasses.

The item will still remain in memory after being removed from the list
so it is up to the application to destroy it. This can be handled by the
signal
`itemRemoved </sdk/apps/qml/Ubuntu.Components/ListItems.Empty#itemRemoved-signal>`__
that is fired after all animation is done.

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

+--------------------------------------------------------------------------+
|        \ backgroundIndicator :                                           |
| list<`Item </sdk/apps/qml/QtQuick/Item/>`__>                             |
+--------------------------------------------------------------------------+

Defines the item background item to be showed during the item swiping

| 

+--------------------------------------------------------------------------+
|        \ confirmRemoval : bool                                           |
+--------------------------------------------------------------------------+

Defines if the item needs confirmation before removing by swiping.

| 

+--------------------------------------------------------------------------+
|        \ divider :                                                       |
| `ThinDivider </sdk/apps/qml/Ubuntu.Components/ListItems.ThinDivider/>`__ |
+--------------------------------------------------------------------------+

Exposes our the bottom line divider.

| 

+--------------------------------------------------------------------------+
|        \ highlightWhenPressed : bool                                     |
+--------------------------------------------------------------------------+

Highlight the list item when it is pressed. This is used to disable the
highlighting of the full list item when custom highlighting needs to be
implemented (for example in
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__.Standard which
can have a split).

| 

+--------------------------------------------------------------------------+
|        \ removable : bool                                                |
+--------------------------------------------------------------------------+

Defines if this item can be removed or not.

| 

+--------------------------------------------------------------------------+
|        \ selected : bool                                                 |
+--------------------------------------------------------------------------+

Specifies whether the list item is selected.

| 

+--------------------------------------------------------------------------+
|        \ showDivider : bool                                              |
+--------------------------------------------------------------------------+

Set to show or hide the thin bottom divider line (drawn by the
`ThinDivider </sdk/apps/qml/Ubuntu.Components/ListItems.ThinDivider/>`__
component). This line is shown by default except in cases where this
item is the delegate of a
`ListView </sdk/apps/qml/QtQuick/ListView/>`__.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] swipingState : string                               |
+--------------------------------------------------------------------------+

The current swiping state ("SwipingRight" or "")

| 

+--------------------------------------------------------------------------+
|        \ [read-only] waitingConfirmationForRemoval : bool                |
+--------------------------------------------------------------------------+

Defines if the item is waiting for the user interaction during the swipe
to delete

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ itemRemoved()                                                   |
+--------------------------------------------------------------------------+

This handler is called when the item is removed from the list

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancelItemRemoval()                                             |
+--------------------------------------------------------------------------+

Cancel item romoval

| 
