.. _sdk_qtorganizer_todo:
QtOrganizer Todo
================

The Todo element provides a task which should be completed.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`allDay <sdk_qtorganizer_todo_allDay-prop>` : bool
-  :ref:`dueDateTime <sdk_qtorganizer_todo_dueDateTime-prop>` :
   date
-  :ref:`finishedDateTime <sdk_qtorganizer_todo_finishedDateTime-prop>`
   : date
-  :ref:`percentageComplete <sdk_qtorganizer_todo_percentageComplete-prop>`
   : int
-  :ref:`priority <sdk_qtorganizer_todo_priority-prop>` :
   enumeration
-  :ref:`recurrence <sdk_qtorganizer_todo_recurrence-prop>` :
   Recurrence
-  :ref:`startDateTime <sdk_qtorganizer_todo_startDateTime-prop>` :
   date
-  :ref:`status <sdk_qtorganizer_todo_status-prop>` : enumeration

Signals
-------

-  :ref:`onItemChanged <sdk_qtorganizer_todo_onItemChanged-signal>`\ ()

Detailed Description
--------------------

**See also** :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>`,
:ref:`Event <sdk_qtorganizer_event>`,
:ref:`EventOccurrence <sdk_qtorganizer_eventoccurrence>`,
:ref:`Journal <sdk_qtorganizer_journal>`,
:ref:`TodoOccurrence <sdk_qtorganizer_todooccurrence>`,
:ref:`Note <sdk_qtorganizer_note>`, and QOrganizerTodo.

Property Documentation
----------------------

.. _sdk_qtorganizer_todo_allDay-prop:

+--------------------------------------------------------------------------+
|        \ allDay : bool                                                   |
+--------------------------------------------------------------------------+

This property indicates whether the time-of-day component of the Todo's
start date-time or due date-time is insignificant. If allDay is true,
the time-of-day component is considered insignificant, and the todo will
be an all-day item.

| 

.. _sdk_qtorganizer_todo_dueDateTime-prop:

+--------------------------------------------------------------------------+
|        \ dueDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the date time by which the task should be completed.

| 

.. _sdk_qtorganizer_todo_finishedDateTime-prop:

+--------------------------------------------------------------------------+
|        \ finishedDateTime : date                                         |
+--------------------------------------------------------------------------+

This property holds the date and time at which the task was completed,
if known.

| 

.. _sdk_qtorganizer_todo_percentageComplete-prop:

+--------------------------------------------------------------------------+
|        \ percentageComplete : int                                        |
+--------------------------------------------------------------------------+

This property holds the percentage of progress completed on the task
described by the todo item.

| 

.. _sdk_qtorganizer_todo_priority-prop:

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

.. _sdk_qtorganizer_todo_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ recurrence : `Recurrence <sdk_qtorganizer_recurrence>`     |
+--------------------------------------------------------------------------+

This property holds the recurrence element of the todo item.

| 

.. _sdk_qtorganizer_todo_startDateTime-prop:

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the date time at which the task should be started.

| 

.. _sdk_qtorganizer_todo_status-prop:

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the progress status of the task described by the
todo. The value can be one of:

-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.NotStarted
-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.InProgress
-  :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.Complete

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_todo_onItemChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onItemChanged()                                                 |
+--------------------------------------------------------------------------+

**See also**
:ref:`OrganizerItem::onItemChanged <sdk_qtorganizer_organizeritem#onItemChanged-signal>`.

| 
