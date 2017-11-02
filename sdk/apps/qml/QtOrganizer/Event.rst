.. _sdk_qtorganizer_event:
QtOrganizer Event
=================

The Event element provides an event in time which may reoccur.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`allDay <sdk_qtorganizer_event_allDay-prop>` : bool
-  :ref:`attendees <sdk_qtorganizer_event_attendees-prop>` :
   list<Detail>
-  :ref:`endDateTime <sdk_qtorganizer_event_endDateTime-prop>` :
   date
-  :ref:`location <sdk_qtorganizer_event_location-prop>` : string
-  :ref:`priority <sdk_qtorganizer_event_priority-prop>` :
   enumeration
-  :ref:`recurrence <sdk_qtorganizer_event_recurrence-prop>` :
   Recurrence
-  :ref:`startDateTime <sdk_qtorganizer_event_startDateTime-prop>`
   : date

Signals
-------

-  :ref:`onItemChanged <sdk_qtorganizer_event_onItemChanged-signal>`\ ()

Methods
-------

-  :ref:`clearDetails <sdk_qtorganizer_event_clearDetails-method>`\ ()
-  void
   **:ref:`removeDetail <sdk_qtorganizer_event#removeDetail-method>`**\ (detail)
-  void
   **:ref:`setDetail <sdk_qtorganizer_event#setDetail-method>`**\ (detail)

Detailed Description
--------------------

**See also** :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>`,
:ref:`EventOccurrence <sdk_qtorganizer_eventoccurrence>`,
:ref:`Journal <sdk_qtorganizer_journal>`, `Todo <sdk_qtorganizer_todo>`,
:ref:`TodoOccurrence <sdk_qtorganizer_todooccurrence>`,
:ref:`Note <sdk_qtorganizer_note>`, and QOrganizerEvent.

Property Documentation
----------------------

.. _sdk_qtorganizer_event_allDay-prop:

+--------------------------------------------------------------------------+
|        \ allDay : bool                                                   |
+--------------------------------------------------------------------------+

This property indicates whether the time-of-day component of the event's
start date-time or end date-time is insignificant. If allDay is true,
the time-of-day component is considered insignificant, and the event
will be an all-day item.

| 

.. _sdk_qtorganizer_event_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ attendees : list<`Detail <sdk_qtorganizer_detail>`>           |
+--------------------------------------------------------------------------+

This property holds the attendees list of the event.

| 

.. _sdk_qtorganizer_event_endDateTime-prop:

+--------------------------------------------------------------------------+
|        \ endDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the end date time of the event.

| 

.. _sdk_qtorganizer_event_location-prop:

+--------------------------------------------------------------------------+
|        \ location : string                                               |
+--------------------------------------------------------------------------+

This property holds the label of the location at which the event occurs.

| 

.. _sdk_qtorganizer_event_priority-prop:

+--------------------------------------------------------------------------+
|        \ priority : enumeration                                          |
+--------------------------------------------------------------------------+

This property holds the priority of the event. The value can be one of:

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

.. _sdk_qtorganizer_event_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ recurrence : `Recurrence <sdk_qtorganizer_recurrence>`     |
+--------------------------------------------------------------------------+

This property holds the recurrence element of the event item.

| 

.. _sdk_qtorganizer_event_startDateTime-prop:

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the start date time of the event.

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_event_onItemChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onItemChanged()                                                 |
+--------------------------------------------------------------------------+

**See also**
:ref:`OrganizerItem::onItemChanged <sdk_qtorganizer_organizeritem#onItemChanged-signal>`.

| 

Method Documentation
--------------------

.. _sdk_qtorganizer_event_clearDetails-method:

+--------------------------------------------------------------------------+
|        \ clearDetails()                                                  |
+--------------------------------------------------------------------------+

Removes all details from the organizer event.

**See also**
:ref:`removeDetail() <sdk_qtorganizer_event#removeDetail-method>`.

| 

.. _sdk_qtorganizer_event_void removeDetail-method:

+--------------------------------------------------------------------------+
|        \ void removeDetail(detail)                                       |
+--------------------------------------------------------------------------+

Removes given *detail* from the organizer event.

| 

.. _sdk_qtorganizer_event_void setDetail-method:

+--------------------------------------------------------------------------+
|        \ void setDetail(detail)                                          |
+--------------------------------------------------------------------------+

Saves the given *detail* in the organizer event, and sets its id.

| 
