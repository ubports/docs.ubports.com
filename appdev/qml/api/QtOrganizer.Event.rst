QtOrganizer.Event
=================

.. raw:: html

   <p>

The Event element provides an event in time which may reoccur. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Event -->

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

attendees : list<Detail>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

endDateTime : date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

location : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

priority : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

recurrence : Recurrence

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startDateTime : date

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

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

clearDetails()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void removeDetail(detail)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void setDetail(detail)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Event-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerItem, EventOccurrence, Journal, Todo, TodoOccurrence,
Note, and QOrganizerEvent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Event -->

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

This property indicates whether the time-of-day component of the event's
start date-time or end date-time is insignificant. If allDay is true,
the time-of-day component is considered insignificant, and the event
will be an all-day item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@allDay -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="attendees-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

attendees : list<Detail>

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

This property holds the attendees list of the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@attendees -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="endDateTime-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

endDateTime : date

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

This property holds the end date time of the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@endDateTime -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="location-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

location : string

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

This property holds the label of the location at which the event occurs.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@location -->

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

This property holds the priority of the event. The value can be one of:

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

   <tr valign="top" id="recurrence-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

recurrence : Recurrence

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

This property holds the recurrence element of the event item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@recurrence -->

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

This property holds the start date time of the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@startDateTime -->

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

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$clearDetails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clearDetails-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clearDetails()

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

Removes all details from the organizer event.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also removeDetail().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clearDetails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeDetail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void removeDetail(detail)

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

Removes given detail from the organizer event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setDetail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void setDetail(detail)

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

Saves the given detail in the organizer event, and sets its id.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setDetail -->


