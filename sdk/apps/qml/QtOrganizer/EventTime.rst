.. _sdk_qtorganizer_eventtime:
QtOrganizer EventTime
=====================

The EventTime element contains the start and end dates and times of a
recurring event series, or occurrence of an event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`allDay <sdk_qtorganizer_eventtime_allDay-prop>` : date
-  :ref:`endDateTime <sdk_qtorganizer_eventtime_endDateTime-prop>`
   : date
-  :ref:`startDateTime <sdk_qtorganizer_eventtime_startDateTime-prop>`
   : date

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_eventtime_onDetailChanged-signal>`\ ()

Detailed Description
--------------------

The following fields are supported:

-  :ref:`EventTime <sdk_qtorganizer_eventtime>`.FieldStartDateTime
-  :ref:`EventTime <sdk_qtorganizer_eventtime>`.FieldEndDateTime
-  :ref:`EventTime <sdk_qtorganizer_eventtime>`.FieldAllDay

**See also** QOrganizerEventTime.

Property Documentation
----------------------

.. _sdk_qtorganizer_eventtime_allDay-prop:

+--------------------------------------------------------------------------+
|        \ allDay : date                                                   |
+--------------------------------------------------------------------------+

This property holds whether the time is significant in the start
datetime.

| 

.. _sdk_qtorganizer_eventtime_endDateTime-prop:

+--------------------------------------------------------------------------+
|        \ endDateTime : date                                              |
+--------------------------------------------------------------------------+

This property holds the end date and time value of the event.

| 

.. _sdk_qtorganizer_eventtime_startDateTime-prop:

+--------------------------------------------------------------------------+
|        \ startDateTime : date                                            |
+--------------------------------------------------------------------------+

This property holds the start date and time value of the event.

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_eventtime_onDetailChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::onDetailChanged <sdk_qtorganizer_detail#onDetailChanged-signal>`.

| 
