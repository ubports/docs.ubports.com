.. _sdk_qtorganizer_eventoccurrence:
QtOrganizer EventOccurrence
===========================

The EventOccurrence element provides an occurrence of an event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`allDay <sdk_qtorganizer_eventoccurrence_allDay-prop>` :
   bool
-  :ref:`endDateTime <sdk_qtorganizer_eventoccurrence_endDateTime-prop>`
   : date
-  :ref:`location <sdk_qtorganizer_eventoccurrence_location-prop>`
   : string
-  :ref:`originalDate <sdk_qtorganizer_eventoccurrence_originalDate-prop>`
   : date
-  :ref:`parentId <sdk_qtorganizer_eventoccurrence_parentId-prop>`
   : int
-  :ref:`priority <sdk_qtorganizer_eventoccurrence_priority-prop>`
   : enumeration
-  :ref:`startDateTime <sdk_qtorganizer_eventoccurrence_startDateTime-prop>`
   : date

Signals
-------

-  :ref:`onItemChanged <sdk_qtorganizer_eventoccurrence_onItemChanged-signal>`\ ()

Detailed Description
--------------------

**See also** :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>`,
:ref:`Event <sdk_qtorganizer_event>`,
:ref:`Journal <sdk_qtorganizer_journal>`, `Todo <sdk_qtorganizer_todo>`,
:ref:`TodoOccurrence <sdk_qtorganizer_todooccurrence>`,
:ref:`Note <sdk_qtorganizer_note>`, and QOrganizerEventOccurrence.

Property Documentation
----------------------

.. _sdk_qtorganizer_eventoccurrence_allDay-prop:

+--------------------------------------------------------------------------+
|        \ allDay : bool                                                   |
+--------------------------------------------------------------------------+

This property indicates whether the time-of-day component of the event
occurrence's start date-time or end date-time is insignificant. If
allDay is true, the time-of-day component is considered insignificant,
and the event occurrence will be an all-day item.

| 

.. _sdk_qtorganizer_eventoccurrence_endDateTime-prop:

+--------------------------------------------------------------------------+
|        \ endDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the date time at which the event occurrence ends.

| 

.. _sdk_qtorganizer_eventoccurrence_location-prop:

+--------------------------------------------------------------------------+
|        \ location : string                                               |
+--------------------------------------------------------------------------+

This property holds the label of the location at which the event
occurrence is held.

| 

.. _sdk_qtorganizer_eventoccurrence_originalDate-prop:

+--------------------------------------------------------------------------+
|        \ originalDate : date                                             |
+--------------------------------------------------------------------------+

This property holds the date at which the occurrence was originally
going to occur.

| 

.. _sdk_qtorganizer_eventoccurrence_parentId-prop:

+--------------------------------------------------------------------------+
|        \ parentId : int                                                  |
+--------------------------------------------------------------------------+

This property holds the id of the event which is this occurrence's
parent.

| 

.. _sdk_qtorganizer_eventoccurrence_priority-prop:

+--------------------------------------------------------------------------+
|        \ priority : enumeration                                          |
+--------------------------------------------------------------------------+

This property holds the priority of the event occurrence. The value can
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

.. _sdk_qtorganizer_eventoccurrence_startDateTime-prop:

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the start date time of the event occurrence.

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_eventoccurrence_onItemChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onItemChanged()                                                 |
+--------------------------------------------------------------------------+

**See also**
:ref:`OrganizerItem::onItemChanged <sdk_qtorganizer_organizeritem#onItemChanged-signal>`.

| 
