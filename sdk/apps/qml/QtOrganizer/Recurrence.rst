.. _sdk_qtorganizer_recurrence:
QtOrganizer Recurrence
======================

The Recurrence element contains a list of rules and dates on which the
recurrent item occurs, and a list of rules and dates on which exceptions
occur.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`exceptionDates <sdk_qtorganizer_recurrence_exceptionDates-prop>`
   : list<date>
-  :ref:`exceptionRules <sdk_qtorganizer_recurrence_exceptionRules-prop>`
   : list<RecurrenceRule>
-  :ref:`recurrenceDates <sdk_qtorganizer_recurrence_recurrenceDates-prop>`
   : list<date>
-  :ref:`recurrenceRules <sdk_qtorganizer_recurrence_recurrenceRules-prop>`
   : list<RecurrenceRule>

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_recurrence_onDetailChanged-signal>`\ ()

Methods
-------

-  bool
   **:ref:`setValue <sdk_qtorganizer_recurrence#setValue-method>`**\ (field,
   value)
-  variant
   **:ref:`value <sdk_qtorganizer_recurrence#value-method>`**\ (field)

Detailed Description
--------------------

The following fields are supported:

-  Recurrence.FieldRecurrenceRules
-  Recurrence.FieldExceptionRules
-  Recurrence.FieldRecurrenceDates
-  Recurrence.FieldExceptionDates

Property Documentation
----------------------

.. _sdk_qtorganizer_recurrence_exceptionDates-prop:

+--------------------------------------------------------------------------+
|        \ exceptionDates : list<date>                                     |
+--------------------------------------------------------------------------+

This property holds the list of exception dates.

| 

.. _sdk_qtorganizer_recurrence_exceptionRules-prop:

+--------------------------------------------------------------------------+
|        \ exceptionRules :                                                |
| list<:ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`>                |
+--------------------------------------------------------------------------+

This property holds the list of exception rules.

**See also** :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.

| 

.. _sdk_qtorganizer_recurrence_recurrenceDates-prop:

+--------------------------------------------------------------------------+
|        \ recurrenceDates : list<date>                                    |
+--------------------------------------------------------------------------+

This property holds the list of recurrence dates.

| 

.. _sdk_qtorganizer_recurrence_recurrenceRules-prop:

+--------------------------------------------------------------------------+
|        \ recurrenceRules :                                               |
| list<:ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`>                |
+--------------------------------------------------------------------------+

This property holds the list of recurrence rules.

**See also** :ref:`RecurrenceRule <sdk_qtorganizer_recurrencerule>`.

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_recurrence_onDetailChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::onDetailChanged <sdk_qtorganizer_detail#onDetailChanged-signal>`.

| 

Method Documentation
--------------------

.. _sdk_qtorganizer_recurrence_bool setValue-method:

+--------------------------------------------------------------------------+
|        \ bool setValue(field, value)                                     |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::setValue <sdk_qtorganizer_detail#setValue-method>`.

| 

.. _sdk_qtorganizer_recurrence_variant value-method:

+--------------------------------------------------------------------------+
|        \ variant value(field)                                            |
+--------------------------------------------------------------------------+

**See also** :ref:`Detail::value <sdk_qtorganizer_detail#value-method>`.

| 
