The RecurrenceRule element represents a rule by which a organizer item
repeats.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`daysOfMonth </sdk/apps/qml/QtOrganizer/RecurrenceRule#daysOfMonth-prop>`__****
   : list<variant>
-  ****`daysOfWeek </sdk/apps/qml/QtOrganizer/RecurrenceRule#daysOfWeek-prop>`__****
   : list<variant>
-  ****`daysOfYear </sdk/apps/qml/QtOrganizer/RecurrenceRule#daysOfYear-prop>`__****
   : list<variant>
-  ****`firstDayOfWeek </sdk/apps/qml/QtOrganizer/RecurrenceRule#firstDayOfWeek-prop>`__****
   : enumeration
-  ****`frequency </sdk/apps/qml/QtOrganizer/RecurrenceRule#frequency-prop>`__****
   : enumeration
-  ****`interval </sdk/apps/qml/QtOrganizer/RecurrenceRule#interval-prop>`__****
   : int
-  ****`limit </sdk/apps/qml/QtOrganizer/RecurrenceRule#limit-prop>`__****
   : variant
-  ****`monthsOfYear </sdk/apps/qml/QtOrganizer/RecurrenceRule#monthsOfYear-prop>`__****
   : list<int>
-  ****`positions </sdk/apps/qml/QtOrganizer/RecurrenceRule#positions-prop>`__****
   : list<int>
-  ****`weeksOfYear </sdk/apps/qml/QtOrganizer/RecurrenceRule#weeksOfYear-prop>`__****
   : list<int>

Signals
-------

-  ****`onRecurrenceRuleChanged </sdk/apps/qml/QtOrganizer/RecurrenceRule#onRecurrenceRuleChanged-signal>`__****\ ()

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ daysOfMonth : list<variant>                                     |
+--------------------------------------------------------------------------+

This property holds a list of the days of the month that the item should
recur on.

| 

+--------------------------------------------------------------------------+
|        \ daysOfWeek : list<variant>                                      |
+--------------------------------------------------------------------------+

This property holds a list of the days of week that the item should
recur on.

| 

+--------------------------------------------------------------------------+
|        \ daysOfYear : list<variant>                                      |
+--------------------------------------------------------------------------+

This property holds a list of the days of the year that the item should
recur on.

| 

+--------------------------------------------------------------------------+
|        \ firstDayOfWeek : enumeration                                    |
+--------------------------------------------------------------------------+

This property holds the day that the week starts on. If not set, this is
Monday. The value can be one of:

-  Qt.Monday
-  Qt.Tuesday
-  Qt.Wednesday
-  Qt.Thursday
-  Qt.Friday
-  Qt.Saturday
-  Qt.Sunday

| 

+--------------------------------------------------------------------------+
|        \ frequency : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the frequency with which the item recurs, the value
can be one of:

-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.Invalid
   - (default).
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.Daily
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.Weekly
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.Monthly
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.Yearly

| 

+--------------------------------------------------------------------------+
|        \ interval : int                                                  |
+--------------------------------------------------------------------------+

This property holds the interval of recurrence. The default interval is
1.

| 

+--------------------------------------------------------------------------+
|        \ limit : variant                                                 |
+--------------------------------------------------------------------------+

This property holds the limit condition of the recurrence rule, the
value can be a limit date and time or a limit count. The default is no
limit.

| 

+--------------------------------------------------------------------------+
|        \ monthsOfYear : list<int>                                        |
+--------------------------------------------------------------------------+

This property holds a list of the months that the item should recur on,
the list element value can be one of:

-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.January
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.February
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.March
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.April
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.May
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.June
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.July
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.August
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.September
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.October
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.November
-  `RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.December

| 

+--------------------------------------------------------------------------+
|        \ positions : list<int>                                           |
+--------------------------------------------------------------------------+

This property holds the position-list of the recurrence rule.

| 

+--------------------------------------------------------------------------+
|        \ weeksOfYear : list<int>                                         |
+--------------------------------------------------------------------------+

This property holds a list of the weeks of the year that the item should
recur on.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onRecurrenceRuleChanged()                                       |
+--------------------------------------------------------------------------+

This signal is emitted, when any of the
`RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__'s
properties have been changed.

| 
