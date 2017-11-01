The Recurrence element contains a list of rules and dates on which the
recurrent item occurs, and a list of rules and dates on which exceptions
occur.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`exceptionDates </sdk/apps/qml/QtOrganizer/Recurrence#exceptionDates-prop>`__****
   : list<date>
-  ****`exceptionRules </sdk/apps/qml/QtOrganizer/Recurrence#exceptionRules-prop>`__****
   : list<RecurrenceRule>
-  ****`recurrenceDates </sdk/apps/qml/QtOrganizer/Recurrence#recurrenceDates-prop>`__****
   : list<date>
-  ****`recurrenceRules </sdk/apps/qml/QtOrganizer/Recurrence#recurrenceRules-prop>`__****
   : list<RecurrenceRule>

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/Recurrence#onDetailChanged-signal>`__****\ ()

Methods
-------

-  bool
   ****`setValue </sdk/apps/qml/QtOrganizer/Recurrence#setValue-method>`__****\ (field,
   value)
-  variant
   ****`value </sdk/apps/qml/QtOrganizer/Recurrence#value-method>`__****\ (field)

Detailed Description
--------------------

The following fields are supported:

-  Recurrence.FieldRecurrenceRules
-  Recurrence.FieldExceptionRules
-  Recurrence.FieldRecurrenceDates
-  Recurrence.FieldExceptionDates

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ exceptionDates : list<date>                                     |
+--------------------------------------------------------------------------+

This property holds the list of exception dates.

| 

+--------------------------------------------------------------------------+
|        \ exceptionRules :                                                |
| list<`RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__>     |
+--------------------------------------------------------------------------+

This property holds the list of exception rules.

**See also**
`RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.

| 

+--------------------------------------------------------------------------+
|        \ recurrenceDates : list<date>                                    |
+--------------------------------------------------------------------------+

This property holds the list of recurrence dates.

| 

+--------------------------------------------------------------------------+
|        \ recurrenceRules :                                               |
| list<`RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__>     |
+--------------------------------------------------------------------------+

This property holds the list of recurrence rules.

**See also**
`RecurrenceRule </sdk/apps/qml/QtOrganizer/RecurrenceRule/>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool setValue(field, value)                                     |
+--------------------------------------------------------------------------+

**See also**
`Detail::setValue </sdk/apps/qml/QtOrganizer/Detail#setValue-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ variant value(field)                                            |
+--------------------------------------------------------------------------+

**See also**
`Detail::value </sdk/apps/qml/QtOrganizer/Detail#value-method>`__.

| 
