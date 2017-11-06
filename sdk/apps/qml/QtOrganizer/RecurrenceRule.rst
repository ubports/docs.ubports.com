.. _sdk_qtorganizer_recurrencerule:

QtOrganizer RecurrenceRule
==========================

The RecurrenceRule element represents a rule by which a organizer item repeats.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`daysOfMonth <sdk_qtorganizer_recurrencerule_daysOfMonth>` : list<variant>
-  :ref:`daysOfWeek <sdk_qtorganizer_recurrencerule_daysOfWeek>` : list<variant>
-  :ref:`daysOfYear <sdk_qtorganizer_recurrencerule_daysOfYear>` : list<variant>
-  :ref:`firstDayOfWeek <sdk_qtorganizer_recurrencerule_firstDayOfWeek>` : enumeration
-  :ref:`frequency <sdk_qtorganizer_recurrencerule_frequency>` : enumeration
-  :ref:`interval <sdk_qtorganizer_recurrencerule_interval>` : int
-  :ref:`limit <sdk_qtorganizer_recurrencerule_limit>` : variant
-  :ref:`monthsOfYear <sdk_qtorganizer_recurrencerule_monthsOfYear>` : list<int>
-  :ref:`positions <sdk_qtorganizer_recurrencerule_positions>` : list<int>
-  :ref:`weeksOfYear <sdk_qtorganizer_recurrencerule_weeksOfYear>` : list<int>

Signals
-------

-  :ref:`onRecurrenceRuleChanged <sdk_qtorganizer_recurrencerule_onRecurrenceRuleChanged>`\ ()

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_qtorganizer_recurrencerule_daysOfMonth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| daysOfMonth : list<variant>                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of the days of the month that the item should recur on.

.. _sdk_qtorganizer_recurrencerule_daysOfWeek:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| daysOfWeek : list<variant>                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of the days of week that the item should recur on.

.. _sdk_qtorganizer_recurrencerule_daysOfYear:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| daysOfYear : list<variant>                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of the days of the year that the item should recur on.

.. _sdk_qtorganizer_recurrencerule_firstDayOfWeek:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| firstDayOfWeek : enumeration                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the day that the week starts on. If not set, this is Monday. The value can be one of:

-  Qt.Monday
-  Qt.Tuesday
-  Qt.Wednesday
-  Qt.Thursday
-  Qt.Friday
-  Qt.Saturday
-  Qt.Sunday

.. _sdk_qtorganizer_recurrencerule_frequency:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| frequency : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the frequency with which the item recurs, the value can be one of:

-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.Invalid - (default).
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.Daily
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.Weekly
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.Monthly
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.Yearly

.. _sdk_qtorganizer_recurrencerule_interval:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| interval : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the interval of recurrence. The default interval is 1.

.. _sdk_qtorganizer_recurrencerule_limit:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| limit : variant                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the limit condition of the recurrence rule, the value can be a limit date and time or a limit count. The default is no limit.

.. _sdk_qtorganizer_recurrencerule_monthsOfYear:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| monthsOfYear : list<int>                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of the months that the item should recur on, the list element value can be one of:

-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.January
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.February
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.March
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.April
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.May
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.June
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.July
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.August
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.September
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.October
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.November
-  :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.December

.. _sdk_qtorganizer_recurrencerule_positions:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| positions : list<int>                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the position-list of the recurrence rule.

.. _sdk_qtorganizer_recurrencerule_weeksOfYear:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| weeksOfYear : list<int>                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of the weeks of the year that the item should recur on.

Signal Documentation
--------------------

.. _sdk_qtorganizer_recurrencerule_onRecurrenceRuleChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onRecurrenceRuleChanged()                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when any of the :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`'s properties have been changed.

