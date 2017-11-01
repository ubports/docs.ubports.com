A set of properties attached to the ListItem's parent item or ListView.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.2          |
+---------------------+--------------------------------+

Attached Properties
-------------------

-  ****`dragMode </sdk/apps/qml/Ubuntu.Components/ViewItems#dragMode-attached-prop>`__****
   : bool
-  ****`expandedIndices </sdk/apps/qml/Ubuntu.Components/ViewItems#expandedIndices-attached-prop>`__****
   : list<int>
-  ****`expansionFlags </sdk/apps/qml/Ubuntu.Components/ViewItems#expansionFlags-attached-prop>`__****
   : ExpansionFlags
-  ****`selectMode </sdk/apps/qml/Ubuntu.Components/ViewItems#selectMode-attached-prop>`__****
   : bool
-  ****`selectedIndices </sdk/apps/qml/Ubuntu.Components/ViewItems#selectedIndices-attached-prop>`__****
   : list<int>

Attached Signals
----------------

-  ****`dragUpdated </sdk/apps/qml/Ubuntu.Components/ViewItems#dragUpdated-signal>`__****\ (ListItemDrag
   *event*)

Detailed Description
--------------------

These properties are automatically attached to the parent item of the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__, or to
`ListView </sdk/apps/qml/QtQuick/ListView/>`__, when the component is
used as delegate.

Attached Property Documentation
-------------------------------

+--------------------------------------------------------------------------+
|        \ ViewItems.dragMode : bool                                       |
+--------------------------------------------------------------------------+

The property drives the dragging mode of the ListItems within a
`ListView </sdk/apps/qml/QtQuick/ListView/>`__. It has no effect on any
other parent of the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__.

When set, `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__
content will be disabled and a panel will be shown enabling the dragging
mode. The items can be dragged by dragging this handler only. The
feature can be activated same time with
`ListItem::selectMode </sdk/apps/qml/Ubuntu.Components/ListItem#selectMode-prop>`__.

The panel is configured by the style.

**See also**
`ListItemStyle </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/>`__
and
`dragUpdated </sdk/apps/qml/Ubuntu.Components/ViewItems#dragUpdated-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ ViewItems.expandedIndices : list<int>                           |
+--------------------------------------------------------------------------+

The property contains the indexes of the ListItems marked as expanded.
The indexes are model indexes when used in
`ListView </sdk/apps/qml/QtQuick/ListView/>`__, and child indexes in
other components. The property being writable, initial expansion
configuration can be provided for a view, and provides ability to save
the expansion state.

**Note:** If the
`ViewItems::expansionFlags </sdk/apps/qml/Ubuntu.Components/ViewItems#expansionFlags-attached-prop>`__
is having ``ViewItems.Exclusive`` flags set, only the last item from the
list will be considered and set as expanded.

This QML property was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ ViewItems.expansionFlags : ExpansionFlags                       |
+--------------------------------------------------------------------------+

Flags driving the expansion behavior.

+-------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Flag                                                                                | description                                                                                                                                                                                            |
+=====================================================================================+========================================================================================================================================================================================================+
| `ViewItems </sdk/apps/qml/Ubuntu.Components/ViewItems/>`__.Exclusive                | When set, only one `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ can be expanded at a time. **Set by default**.                                                                             |
+-------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `ViewItems </sdk/apps/qml/Ubuntu.Components/ViewItems/>`__.UnlockExpanded           | When set, the `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__'s leading/trailing actions can be swiped in.                                                                                    |
+-------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `ViewItems </sdk/apps/qml/Ubuntu.Components/ViewItems/>`__.CollapseOnOutsidePress   | When set, the active expaned `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ collapses automatically when clicked outside of its area. The flag also turns ``ViewItems.Exclusive`` flag on.   |
+-------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This QML property was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ ViewItems.selectMode : bool                                     |
+--------------------------------------------------------------------------+

The property drives whether list items are selectable or not.

When set, the ListItems of the Item the property is attached to will
enter into selection state. ListItems provide a visual clue which can be
used to toggle the selection state of each, which in order will be
reflected in the
`ViewItems.selectedIndices </sdk/apps/qml/Ubuntu.Components/ViewItems#selectedIndices-attached-prop>`__
list.

| 

+--------------------------------------------------------------------------+
|        \ ViewItems.selectedIndices : list<int>                           |
+--------------------------------------------------------------------------+

The property contains the indexes of the ListItems marked as selected.
The indexes are model indexes when used in
`ListView </sdk/apps/qml/QtQuick/ListView/>`__, and child indexes in
other components. The property being writable, initial selection
configuration can be provided for a view, and provides ability to save
the selection state.

| 

Attached Signal Documentation
-----------------------------

+--------------------------------------------------------------------------+
|        \ dragUpdated(`ListItemDrag </sdk/apps/qml/Ubuntu.Components/List |
| ItemDrag/>`__                                                            |
| *event*)                                                                 |
+--------------------------------------------------------------------------+

The signal is emitted whenever a dragging related event occurrs. The
**event.status** specifies the dragging event type. Depending on the
type, the
`ListItemDrag </sdk/apps/qml/Ubuntu.Components/ListItemDrag/>`__ event
properties will have the following meaning:

+-----------+-------------------------------------------------+------------------------------------------------------+----------------------------------------------------------+----------------------------------------------------------+
| status    | from                                            | to                                                   | minimumIndex                                             | maximumIndex                                             |
+===========+=================================================+======================================================+==========================================================+==========================================================+
| Started   | the index of the item to be dragged             | -1                                                   | default (-1), can be changed to restrict moves           | default (-1), can be changed to restrict moves           |
+-----------+-------------------------------------------------+------------------------------------------------------+----------------------------------------------------------+----------------------------------------------------------+
| Moving    | source index from where the item dragged from   | destination index where the item can be dragged to   | the same value set at *Started*, can be changed          | the same value set at *Started*, can be changed          |
+-----------+-------------------------------------------------+------------------------------------------------------+----------------------------------------------------------+----------------------------------------------------------+
| Dropped   | source index from where the item dragged from   | destination index where the item can be dragged to   | the value set at *Started/Moving*, changes are omitted   | the value set at *Started/Moving*, changes are omitted   |
+-----------+-------------------------------------------------+------------------------------------------------------+----------------------------------------------------------+----------------------------------------------------------+

Implementations **must move the model data** in order to re-order the
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ content. If the move is
not acceptable, it must be cancelled by setting **event.accept** to
*false*, in which case the dragged index (**from**) will not be updated
and next time the signal is emitted will be the same.

An example implementation of a live dragging with restrictions:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    ListView {
        width: units.gu(40)
        height: units.gu(40)
        model: ListModel {
            // initiate with random data
        }
        delegate: ListItem {
            // content
        }
        ViewItems.dragMode: true
        ViewItems.onDragUpdated: {
            if (event.status == ListViewDrag.Started) {
                if (event.from < 5) {
                    // deny dragging on the first 5 element
                    event.accept = false;
                } else if (event.from >= 5 && event.from <= 10 &&
                           event.to >= 5 && event.to <= 10) {
                    // specify the interval
                    event.minimumIndex = 5;
                    event.maximumIndex = 10;
                } else if (event.from > 10) {
                    // prevent dragging to the first 11 items area
                    event.minimumIndex = 11;
                }
            } else {
                model.move(event.from, event.to, 1);
            }
        }
    }

A drag'n'drop implementation might be required when model changes are
too expensive, and continuously updating while dragging would cause lot
of traffic. The following example illustrates how to implement such a
scenario:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    ListView {
       width: units.gu(40)
       height: units.gu(40)
       model: ListModel {
           // initiate with random data
       }
       delegate: ListItem {
           // content
       }
       ViewItems.dragMode: true
       ViewItems.onDragUpdated: {
           if (event.direction == ListItemDrag.Dropped) {
               // this is the last event, so drop the item
               model.move(event.from, event.to, 1);
           } else if (event.direction != ListItemDrag.Started) {
               // do not accept the moving events, so drag.from will
               // always contain the original drag index
               event.accept = false;
           }
       }
    }

**Note:** Do not forget to set **event.accept** to false in
**dragUpdated** in case the drag event handling is not accepted,
otherwise the system will not know whether the move has been performed
or not, and selected indexes will not be synchronized properly.

| 
