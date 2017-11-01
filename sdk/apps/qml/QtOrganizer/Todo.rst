The Todo element provides a task which should be completed.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`allDay </sdk/apps/qml/QtOrganizer/Todo#allDay-prop>`__**** :
   bool
-  ****`dueDateTime </sdk/apps/qml/QtOrganizer/Todo#dueDateTime-prop>`__****
   : date
-  ****`finishedDateTime </sdk/apps/qml/QtOrganizer/Todo#finishedDateTime-prop>`__****
   : date
-  ****`percentageComplete </sdk/apps/qml/QtOrganizer/Todo#percentageComplete-prop>`__****
   : int
-  ****`priority </sdk/apps/qml/QtOrganizer/Todo#priority-prop>`__**** :
   enumeration
-  ****`recurrence </sdk/apps/qml/QtOrganizer/Todo#recurrence-prop>`__****
   : Recurrence
-  ****`startDateTime </sdk/apps/qml/QtOrganizer/Todo#startDateTime-prop>`__****
   : date
-  ****`status </sdk/apps/qml/QtOrganizer/Todo#status-prop>`__**** :
   enumeration

Signals
-------

-  ****`onItemChanged </sdk/apps/qml/QtOrganizer/Todo#onItemChanged-signal>`__****\ ()

Detailed Description
--------------------

**See also**
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__,
`Event </sdk/apps/qml/QtOrganizer/Event/>`__,
`EventOccurrence </sdk/apps/qml/QtOrganizer/EventOccurrence/>`__,
`Journal </sdk/apps/qml/QtOrganizer/Journal/>`__,
`TodoOccurrence </sdk/apps/qml/QtOrganizer/TodoOccurrence/>`__,
`Note </sdk/apps/qml/QtOrganizer/Note/>`__, and QOrganizerTodo.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ allDay : bool                                                   |
+--------------------------------------------------------------------------+

This property indicates whether the time-of-day component of the Todo's
start date-time or due date-time is insignificant. If allDay is true,
the time-of-day component is considered insignificant, and the todo will
be an all-day item.

| 

+--------------------------------------------------------------------------+
|        \ dueDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the date time by which the task should be completed.

| 

+--------------------------------------------------------------------------+
|        \ finishedDateTime : date                                         |
+--------------------------------------------------------------------------+

This property holds the date and time at which the task was completed,
if known.

| 

+--------------------------------------------------------------------------+
|        \ percentageComplete : int                                        |
+--------------------------------------------------------------------------+

This property holds the percentage of progress completed on the task
described by the todo item.

| 

+--------------------------------------------------------------------------+
|        \ priority : enumeration                                          |
+--------------------------------------------------------------------------+

This property holds the priority of the todo item. The value can be one
of:

-  Priority.Unknown
-  Priority.Highest
-  Priority.ExtremelyHigh
-  Priority.VeryHigh
-  Priority.High
-  Priority.Medium
-  Priority.Low
-  Priority.VeryLow
-  Priority.ExtremelyLow
-  Priority.Lowest

| 

+--------------------------------------------------------------------------+
|        \ recurrence :                                                    |
| `Recurrence </sdk/apps/qml/QtOrganizer/Recurrence/>`__                   |
+--------------------------------------------------------------------------+

This property holds the recurrence element of the todo item.

| 

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the date time at which the task should be started.

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the progress status of the task described by the
todo. The value can be one of:

-  `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.NotStarted
-  `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.InProgress
-  `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.Complete

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onItemChanged()                                                 |
+--------------------------------------------------------------------------+

**See also**
`OrganizerItem::onItemChanged </sdk/apps/qml/QtOrganizer/OrganizerItem#onItemChanged-signal>`__.

| 
