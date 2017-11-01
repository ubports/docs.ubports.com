The EventTime element contains the start and end dates and times of a
recurring event series, or occurrence of an event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`allDay </sdk/apps/qml/QtOrganizer/EventTime#allDay-prop>`__****
   : date
-  ****`endDateTime </sdk/apps/qml/QtOrganizer/EventTime#endDateTime-prop>`__****
   : date
-  ****`startDateTime </sdk/apps/qml/QtOrganizer/EventTime#startDateTime-prop>`__****
   : date

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/EventTime#onDetailChanged-signal>`__****\ ()

Detailed Description
--------------------

The following fields are supported:

-  `EventTime </sdk/apps/qml/QtOrganizer/EventTime/>`__.FieldStartDateTime
-  `EventTime </sdk/apps/qml/QtOrganizer/EventTime/>`__.FieldEndDateTime
-  `EventTime </sdk/apps/qml/QtOrganizer/EventTime/>`__.FieldAllDay

**See also** QOrganizerEventTime.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ allDay : date                                                   |
+--------------------------------------------------------------------------+

This property holds whether the time is significant in the start
datetime.

| 

+--------------------------------------------------------------------------+
|        \ endDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the end date and time value of the event.

| 

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the start date and time value of the event.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 
