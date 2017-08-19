QtOrganizer.TodoOccurrence
==========================

.. raw:: html

   <p>

The TodoOccurrence element provides an occurrence of an event. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TodoOccurrence -->

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

allDay : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dueDateTime : date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

finishedDateTime : date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

originalDate : date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

parentId : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

percentageComplete : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

priority : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startDateTime : date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

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

onItemChanged()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TodoOccurrence-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerItem, Event, EventOccurrence, Journal, Todo, Note, and
QOrganizerTodoOccurrence.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TodoOccurrence -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$allDay -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="allDay-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

allDay : bool

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

This property indicates whether the time-of-day component of the todo
occurrence's start date-time or due date-time is insignificant. If
allDay is true, the time-of-day component is considered insignificant,
and the todo occurrence will be an all-day item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@allDay -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dueDateTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dueDateTime : date

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

This property holds the date time by which the task should be completed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dueDateTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="finishedDateTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

finishedDateTime : date

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

This property holds the date and time at which the task was completed,
if known.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@finishedDateTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="originalDate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

originalDate : date

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

This property holds the date at which the occurrence was originally
going to occur.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@originalDate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="parentId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

parentId : int

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

This property holds the id of the todo which is this occurrence's
parent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@parentId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="percentageComplete-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

percentageComplete : int

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

This property holds the percentage of progress completed on the task
described by the todo item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@percentageComplete -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="priority-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

priority : enumeration

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

This property holds the priority of the todo occurrence. The value can
be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Priority.Unknown

.. raw:: html

   </li>

.. raw:: html

   <li>

Priority.Highest

.. raw:: html

   </li>

.. raw:: html

   <li>

Priority.ExtremelyHigh

.. raw:: html

   </li>

.. raw:: html

   <li>

Priority.VeryHigh

.. raw:: html

   </li>

.. raw:: html

   <li>

Priority.High

.. raw:: html

   </li>

.. raw:: html

   <li>

Priority.Medium

.. raw:: html

   </li>

.. raw:: html

   <li>

Priority.Low

.. raw:: html

   </li>

.. raw:: html

   <li>

Priority.VeryLow

.. raw:: html

   </li>

.. raw:: html

   <li>

Priority.ExtremelyLow

.. raw:: html

   </li>

.. raw:: html

   <li>

Priority.Lowest

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@priority -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startDateTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

startDateTime : date

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

This property holds the date time at which the task should be started.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@startDateTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enumeration

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

This property holds the progress status of the task described by the
todo occurrence. The value can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

TodoProgress.NotStarted

.. raw:: html

   </li>

.. raw:: html

   <li>

TodoProgress.InProgress

.. raw:: html

   </li>

.. raw:: html

   <li>

TodoProgress.Complete

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onItemChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onItemChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onItemChanged()

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

See also OrganizerItem::onItemChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onItemChanged -->


