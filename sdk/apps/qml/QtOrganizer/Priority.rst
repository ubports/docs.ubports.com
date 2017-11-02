.. _sdk_qtorganizer_priority:
QtOrganizer Priority
====================

The Priority element contains the priority of the organizer item, which
may be used to resolve scheduling conflicts.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`priority <sdk_qtorganizer_priority_priority-prop>` :
   enumeration

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_priority_onDetailChanged-signal>`\ ()

Detailed Description
--------------------

The following fields are supported:

-  Priority.FieldPriority

**See also** QOrganizerItemPriority.

Property Documentation
----------------------

.. _sdk_qtorganizer_priority_priority-prop:

+--------------------------------------------------------------------------+
|        \ priority : enumeration                                          |
+--------------------------------------------------------------------------+

This property holds the priority associated with an organizer item. The
value can be one of:

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

Signal Documentation
--------------------

.. _sdk_qtorganizer_priority_onDetailChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::onDetailChanged <sdk_qtorganizer_detail#onDetailChanged-signal>`.

| 
