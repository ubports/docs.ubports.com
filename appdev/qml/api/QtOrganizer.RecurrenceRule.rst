QtOrganizer.RecurrenceRule
==========================

.. raw:: html

   <p>

The RecurrenceRule element represents a rule by which a organizer item
repeats. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RecurrenceRule -->

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

daysOfMonth : list<variant>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

daysOfWeek : list<variant>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

daysOfYear : list<variant>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

firstDayOfWeek : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frequency : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

interval : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

limit : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

monthsOfYear : list<int>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

positions : list<int>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

weeksOfYear : list<int>

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

onRecurrenceRuleChanged()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$RecurrenceRule-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RecurrenceRule -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$daysOfMonth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="daysOfMonth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

daysOfMonth : list<variant>

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

This property holds a list of the days of the month that the item should
recur on.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@daysOfMonth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="daysOfWeek-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

daysOfWeek : list<variant>

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

This property holds a list of the days of week that the item should
recur on.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@daysOfWeek -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="daysOfYear-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

daysOfYear : list<variant>

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

This property holds a list of the days of the year that the item should
recur on.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@daysOfYear -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="firstDayOfWeek-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

firstDayOfWeek : enumeration

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

This property holds the day that the week starts on. If not set, this is
Monday. The value can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.Monday

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Tuesday

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Wednesday

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Thursday

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Friday

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Saturday

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.Sunday

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@firstDayOfWeek -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frequency-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frequency : enumeration

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

This property holds the frequency with which the item recurs, the value
can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RecurrenceRule.Invalid - (default).

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.Daily

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.Weekly

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.Monthly

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.Yearly

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@frequency -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="interval-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

interval : int

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

This property holds the interval of recurrence. The default interval is
1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@interval -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="limit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

limit : variant

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

This property holds the limit condition of the recurrence rule, the
value can be a limit date and time or a limit count. The default is no
limit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@limit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="monthsOfYear-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

monthsOfYear : list<int>

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

This property holds a list of the months that the item should recur on,
the list element value can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RecurrenceRule.January

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.February

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.March

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.April

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.May

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.June

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.July

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.August

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.September

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.October

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.November

.. raw:: html

   </li>

.. raw:: html

   <li>

RecurrenceRule.December

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@monthsOfYear -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="positions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

positions : list<int>

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

This property holds the position-list of the recurrence rule.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@positions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="weeksOfYear-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

weeksOfYear : list<int>

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

This property holds a list of the weeks of the year that the item should
recur on.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@weeksOfYear -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onRecurrenceRuleChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onRecurrenceRuleChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onRecurrenceRuleChanged()

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

This signal is emitted, when any of the RecurrenceRule's properties have
been changed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onRecurrenceRuleChanged -->


