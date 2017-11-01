The TodoOccurrence element provides an occurrence of an event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`allDay </sdk/apps/qml/QtOrganizer/TodoOccurrence#allDay-prop>`__****
   : bool
-  ****`dueDateTime </sdk/apps/qml/QtOrganizer/TodoOccurrence#dueDateTime-prop>`__****
   : date
-  ****`finishedDateTime </sdk/apps/qml/QtOrganizer/TodoOccurrence#finishedDateTime-prop>`__****
   : date
-  ****`originalDate </sdk/apps/qml/QtOrganizer/TodoOccurrence#originalDate-prop>`__****
   : date
-  ****`parentId </sdk/apps/qml/QtOrganizer/TodoOccurrence#parentId-prop>`__****
   : int
-  ****`percentageComplete </sdk/apps/qml/QtOrganizer/TodoOccurrence#percentageComplete-prop>`__****
   : int
-  ****`priority </sdk/apps/qml/QtOrganizer/TodoOccurrence#priority-prop>`__****
   : enumeration
-  ****`startDateTime </sdk/apps/qml/QtOrganizer/TodoOccurrence#startDateTime-prop>`__****
   : date
-  ****`status </sdk/apps/qml/QtOrganizer/TodoOccurrence#status-prop>`__****
   : enumeration

Signals
-------

-  ****`onItemChanged </sdk/apps/qml/QtOrganizer/TodoOccurrence#onItemChanged-signal>`__****\ ()

Detailed Description
--------------------

**See also** OrganizerItem, Event, EventOccurrence, Journal, Todo, Note,
and QOrganizerTodoOccurrence.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ allDay : bool                                                   |
+--------------------------------------------------------------------------+

This property indicates whether the time-of-day component of the todo
occurrence's start date-time or due date-time is insignificant. If
allDay is true, the time-of-day component is considered insignificant,
and the todo occurrence will be an all-day item.

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
|        \ originalDate : date                                             |
+--------------------------------------------------------------------------+

This property holds the date at which the occurrence was originally
going to occur.

| 

+--------------------------------------------------------------------------+
|        \ parentId : int                                                  |
+--------------------------------------------------------------------------+

This property holds the id of the todo which is this occurrence's
parent.

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

This property holds the priority of the todo occurrence. The value can
be one of:

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
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the date time at which the task should be started.

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the progress status of the task described by the
todo occurrence. The value can be one of:

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
