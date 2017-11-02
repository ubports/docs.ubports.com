.. _sdk_qtorganizer_todooccurrence:
QtOrganizer TodoOccurrence
==========================

The TodoOccurrence element provides an occurrence of an event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`allDay <sdk_qtorganizer_todooccurrence_allDay-prop>` :
   bool
-  :ref:`dueDateTime <sdk_qtorganizer_todooccurrence_dueDateTime-prop>`
   : date
-  :ref:`finishedDateTime <sdk_qtorganizer_todooccurrence_finishedDateTime-prop>`
   : date
-  :ref:`originalDate <sdk_qtorganizer_todooccurrence_originalDate-prop>`
   : date
-  :ref:`parentId <sdk_qtorganizer_todooccurrence_parentId-prop>` :
   int
-  :ref:`percentageComplete <sdk_qtorganizer_todooccurrence_percentageComplete-prop>`
   : int
-  :ref:`priority <sdk_qtorganizer_todooccurrence_priority-prop>` :
   enumeration
-  :ref:`startDateTime <sdk_qtorganizer_todooccurrence_startDateTime-prop>`
   : date
-  :ref:`status <sdk_qtorganizer_todooccurrence_status-prop>` :
   enumeration

Signals
-------

-  :ref:`onItemChanged <sdk_qtorganizer_todooccurrence_onItemChanged-signal>`\ ()

Detailed Description
--------------------

**See also** OrganizerItem, Event, EventOccurrence, Journal, Todo, Note,
and QOrganizerTodoOccurrence.

Property Documentation
----------------------

.. _sdk_qtorganizer_todooccurrence_allDay-prop:

+--------------------------------------------------------------------------+
|        \ allDay : bool                                                   |
+--------------------------------------------------------------------------+

This property indicates whether the time-of-day component of the todo
occurrence's start date-time or due date-time is insignificant. If
allDay is true, the time-of-day component is considered insignificant,
and the todo occurrence will be an all-day item.

| 

.. _sdk_qtorganizer_todooccurrence_dueDateTime-prop:

+--------------------------------------------------------------------------+
|        \ dueDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the date time by which the task should be completed.

| 

.. _sdk_qtorganizer_todooccurrence_finishedDateTime-prop:

+--------------------------------------------------------------------------+
|        \ finishedDateTime : date                                         |
+--------------------------------------------------------------------------+

This property holds the date and time at which the task was completed,
if known.

| 

.. _sdk_qtorganizer_todooccurrence_originalDate-prop:

+--------------------------------------------------------------------------+
|        \ originalDate : date                                             |
+--------------------------------------------------------------------------+

This property holds the date at which the occurrence was originally
going to occur.

| 

.. _sdk_qtorganizer_todooccurrence_parentId-prop:

+--------------------------------------------------------------------------+
|        \ parentId : int                                                  |
+--------------------------------------------------------------------------+

This property holds the id of the todo which is this occurrence's
parent.

| 

.. _sdk_qtorganizer_todooccurrence_percentageComplete-prop:

+--------------------------------------------------------------------------+
|        \ percentageComplete : int                                        |
+--------------------------------------------------------------------------+

This property holds the percentage of progress completed on the task
described by the todo item.

| 

.. _sdk_qtorganizer_todooccurrence_priority-prop:

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

.. _sdk_qtorganizer_todooccurrence_startDateTime-prop:

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the date time at which the task should be started.

| 

.. _sdk_qtorganizer_todooccurrence_status-prop:

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the progress status of the task described by the
todo occurrence. The value can be one of:

-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.NotStarted
-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.InProgress
-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.Complete

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_todooccurrence_onItemChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onItemChanged()                                                 |
+--------------------------------------------------------------------------+

**See also**
:ref:`OrganizerItem::onItemChanged <sdk_qtorganizer_organizeritem#onItemChanged-signal>`.

| 
