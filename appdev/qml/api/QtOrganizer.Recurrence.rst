QtOrganizer.Recurrence
======================

.. raw:: html

   <p>

The Recurrence element contains a list of rules and dates on which the
recurrent item occurs, and a list of rules and dates on which exceptions
occur. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Recurrence -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtOrganizer 5.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

exceptionDates : list<date>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exceptionRules : list<RecurrenceRule>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

recurrenceDates : list<date>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

recurrenceRules : list<RecurrenceRule>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

onDetailChanged()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

bool setValue(field, value)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

variant value(field)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Recurrence-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The following fields are supported:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Recurrence.FieldRecurrenceRules

.. raw:: html

   </li>

.. raw:: html

   <li>

Recurrence.FieldExceptionRules

.. raw:: html

   </li>

.. raw:: html

   <li>

Recurrence.FieldRecurrenceDates

.. raw:: html

   </li>

.. raw:: html

   <li>

Recurrence.FieldExceptionDates

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@Recurrence -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$exceptionDates -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exceptionDates-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

exceptionDates : list<date>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the list of exception dates.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exceptionDates -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exceptionRules-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

exceptionRules : list<RecurrenceRule>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the list of exception rules.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also RecurrenceRule.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exceptionRules -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="recurrenceDates-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

recurrenceDates : list<date>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the list of recurrence dates.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@recurrenceDates -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="recurrenceRules-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

recurrenceRules : list<RecurrenceRule>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the list of recurrence rules.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also RecurrenceRule.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@recurrenceRules -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onDetailChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onDetailChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onDetailChanged()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

See also Detail::onDetailChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onDetailChanged -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$setValue -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setValue-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool setValue(field, value)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

See also Detail::setValue.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setValue -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

variant value(field)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

See also Detail::value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->


