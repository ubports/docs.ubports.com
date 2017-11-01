Provides information about a ListItem drag event.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.2          |
+---------------------+--------------------------------+

Properties
----------

-  ****`accept </sdk/apps/qml/Ubuntu.Components/ListItemDrag#accept-prop>`__****
   : bool
-  ****`from </sdk/apps/qml/Ubuntu.Components/ListItemDrag#from-prop>`__****
   : int
-  ****`maximumIndex </sdk/apps/qml/Ubuntu.Components/ListItemDrag#maximumIndex-prop>`__****
   : int
-  ****`minimumIndex </sdk/apps/qml/Ubuntu.Components/ListItemDrag#minimumIndex-prop>`__****
   : int
-  ****`status </sdk/apps/qml/Ubuntu.Components/ListItemDrag#status-prop>`__****
   : enum
-  ****`to </sdk/apps/qml/Ubuntu.Components/ListItemDrag#to-prop>`__****
   : int

Detailed Description
--------------------

The object cannot be instantiated and it is passed as parameter to
`ViewItems::dragUpdated </sdk/apps/qml/Ubuntu.Components/ViewItems#dragUpdated-signal>`__
attached signal. Developer can decide whether to accept or restrict the
dragging event based on the input provided by this event.

The direction of the drag can be found via the
`status </sdk/apps/qml/Ubuntu.Components/ListItemDrag#status-prop>`__
property and the source and destination the drag can be applied via
`from </sdk/apps/qml/Ubuntu.Components/ListItemDrag#from-prop>`__ and
`to </sdk/apps/qml/Ubuntu.Components/ListItemDrag#to-prop>`__
properties. The allowed directions can be configured through
`minimumIndex </sdk/apps/qml/Ubuntu.Components/ListItemDrag#minimumIndex-prop>`__
and
`maximumIndex </sdk/apps/qml/Ubuntu.Components/ListItemDrag#maximumIndex-prop>`__
properties, and the event acceptance through
`accept </sdk/apps/qml/Ubuntu.Components/ListItemDrag#accept-prop>`__
property. If the event is not accepted, the drag action will be
considered as cancelled.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ accept : bool                                                   |
+--------------------------------------------------------------------------+

The property can be used to dismiss the event. By default its value is
true, meaning the drag event is accepted. The value of false blocks the
drag event to be handled by the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__'s dragging
mechanism.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] from : int                                          |
+--------------------------------------------------------------------------+

Specifies the source index the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ is dragged
from.

| 

+--------------------------------------------------------------------------+
|        \ maximumIndex : int                                              |
+--------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ minimumIndex : int                                              |
+--------------------------------------------------------------------------+

These properties configure the minimum and maximum indexes the item can
be dragged. The properties can be set in
`ViewItems::dragUpdated </sdk/apps/qml/Ubuntu.Components/ViewItems#dragUpdated-signal>`__
signal. A negative value means no restriction defined on the dragging
interval side.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] status : enum                                       |
+--------------------------------------------------------------------------+

The property provides information about the status of the drag. Its
value can be one of the following:

-  **ListItemDrag.Started** - indicates that the dragging is about to
   start, giving opportunities to define restrictions on the dragging
   indexes, like
   `minimumIndex </sdk/apps/qml/Ubuntu.Components/ListItemDrag#minimumIndex-prop>`__,
   `maximumIndex </sdk/apps/qml/Ubuntu.Components/ListItemDrag#maximumIndex-prop>`__
-  **ListItemDrag.Moving** - the dragged item is moved upwards or
   downwards in the
   `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__
-  **ListItemDrag.Dropped** - indicates that the drag event is finished,
   and the dragged item is about to be dropped to the given position.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] to : int                                            |
+--------------------------------------------------------------------------+

Specifies the index the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ is dragged to
or dropped.

| 
