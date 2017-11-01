The EventOccurrence element provides an occurrence of an event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`allDay </sdk/apps/qml/QtOrganizer/EventOccurrence#allDay-prop>`__****
   : bool
-  ****`endDateTime </sdk/apps/qml/QtOrganizer/EventOccurrence#endDateTime-prop>`__****
   : date
-  ****`location </sdk/apps/qml/QtOrganizer/EventOccurrence#location-prop>`__****
   : string
-  ****`originalDate </sdk/apps/qml/QtOrganizer/EventOccurrence#originalDate-prop>`__****
   : date
-  ****`parentId </sdk/apps/qml/QtOrganizer/EventOccurrence#parentId-prop>`__****
   : int
-  ****`priority </sdk/apps/qml/QtOrganizer/EventOccurrence#priority-prop>`__****
   : enumeration
-  ****`startDateTime </sdk/apps/qml/QtOrganizer/EventOccurrence#startDateTime-prop>`__****
   : date

Signals
-------

-  ****`onItemChanged </sdk/apps/qml/QtOrganizer/EventOccurrence#onItemChanged-signal>`__****\ ()

Detailed Description
--------------------

**See also**
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__,
`Event </sdk/apps/qml/QtOrganizer/Event/>`__,
`Journal </sdk/apps/qml/QtOrganizer/Journal/>`__,
`Todo </sdk/apps/qml/QtOrganizer/Todo/>`__,
`TodoOccurrence </sdk/apps/qml/QtOrganizer/TodoOccurrence/>`__,
`Note </sdk/apps/qml/QtOrganizer/Note/>`__, and
QOrganizerEventOccurrence.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ allDay : bool                                                   |
+--------------------------------------------------------------------------+

This property indicates whether the time-of-day component of the event
occurrence's start date-time or end date-time is insignificant. If
allDay is true, the time-of-day component is considered insignificant,
and the event occurrence will be an all-day item.

| 

+--------------------------------------------------------------------------+
|        \ endDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the date time at which the event occurrence ends.

| 

+--------------------------------------------------------------------------+
|        \ location : string                                               |
+--------------------------------------------------------------------------+

This property holds the label of the location at which the event
occurrence is held.

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

This property holds the id of the event which is this occurrence's
parent.

| 

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

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the start date time of the event occurrence.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onItemChanged()                                                 |
+--------------------------------------------------------------------------+

**See also**
`OrganizerItem::onItemChanged </sdk/apps/qml/QtOrganizer/OrganizerItem#onItemChanged-signal>`__.

| 
