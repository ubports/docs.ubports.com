The Event element provides an event in time which may reoccur.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`allDay </sdk/apps/qml/QtOrganizer/Event#allDay-prop>`__**** :
   bool
-  ****`attendees </sdk/apps/qml/QtOrganizer/Event#attendees-prop>`__****
   : list<Detail>
-  ****`endDateTime </sdk/apps/qml/QtOrganizer/Event#endDateTime-prop>`__****
   : date
-  ****`location </sdk/apps/qml/QtOrganizer/Event#location-prop>`__****
   : string
-  ****`priority </sdk/apps/qml/QtOrganizer/Event#priority-prop>`__****
   : enumeration
-  ****`recurrence </sdk/apps/qml/QtOrganizer/Event#recurrence-prop>`__****
   : Recurrence
-  ****`startDateTime </sdk/apps/qml/QtOrganizer/Event#startDateTime-prop>`__****
   : date

Signals
-------

-  ****`onItemChanged </sdk/apps/qml/QtOrganizer/Event#onItemChanged-signal>`__****\ ()

Methods
-------

-  ****`clearDetails </sdk/apps/qml/QtOrganizer/Event#clearDetails-method>`__****\ ()
-  void
   ****`removeDetail </sdk/apps/qml/QtOrganizer/Event#removeDetail-method>`__****\ (detail)
-  void
   ****`setDetail </sdk/apps/qml/QtOrganizer/Event#setDetail-method>`__****\ (detail)

Detailed Description
--------------------

**See also**
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__,
`EventOccurrence </sdk/apps/qml/QtOrganizer/EventOccurrence/>`__,
`Journal </sdk/apps/qml/QtOrganizer/Journal/>`__,
`Todo </sdk/apps/qml/QtOrganizer/Todo/>`__,
`TodoOccurrence </sdk/apps/qml/QtOrganizer/TodoOccurrence/>`__,
`Note </sdk/apps/qml/QtOrganizer/Note/>`__, and QOrganizerEvent.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ allDay : bool                                                   |
+--------------------------------------------------------------------------+

This property indicates whether the time-of-day component of the event's
start date-time or end date-time is insignificant. If allDay is true,
the time-of-day component is considered insignificant, and the event
will be an all-day item.

| 

+--------------------------------------------------------------------------+
|        \ attendees :                                                     |
| list<`Detail </sdk/apps/qml/QtOrganizer/Detail/>`__>                     |
+--------------------------------------------------------------------------+

This property holds the attendees list of the event.

| 

+--------------------------------------------------------------------------+
|        \ endDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the end date time of the event.

| 

+--------------------------------------------------------------------------+
|        \ location : string                                               |
+--------------------------------------------------------------------------+

This property holds the label of the location at which the event occurs.

| 

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

+--------------------------------------------------------------------------+
|        \ recurrence :                                                    |
| `Recurrence </sdk/apps/qml/QtOrganizer/Recurrence/>`__                   |
+--------------------------------------------------------------------------+

This property holds the recurrence element of the event item.

| 

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the start date time of the event.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onItemChanged()                                                 |
+--------------------------------------------------------------------------+

**See also**
`OrganizerItem::onItemChanged </sdk/apps/qml/QtOrganizer/OrganizerItem#onItemChanged-signal>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ clearDetails()                                                  |
+--------------------------------------------------------------------------+

Removes all details from the organizer event.

**See also**
`removeDetail() </sdk/apps/qml/QtOrganizer/Event#removeDetail-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ void removeDetail(detail)                                       |
+--------------------------------------------------------------------------+

Removes given *detail* from the organizer event.

| 

+--------------------------------------------------------------------------+
|        \ void setDetail(detail)                                          |
+--------------------------------------------------------------------------+

Saves the given *detail* in the organizer event, and sets its id.

| 
