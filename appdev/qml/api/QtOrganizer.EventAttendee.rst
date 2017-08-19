QtOrganizer.EventAttendee
=========================

.. raw:: html

   <p>

The EventAttendee element contains information about an attendee of an
event. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@EventAttendee -->

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

attendeeId : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

emailAddress : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

participationRole : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

participationStatus : variant

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

   <!-- $$$EventAttendee-description -->

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

EventAttendee.FieldName

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.FieldEmailAddress

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.FieldAddendeeId

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.FieldParticipationStatus

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.FieldParticipationRole

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QOrganizerEventAttendee.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@EventAttendee -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$attendeeId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="attendeeId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

attendeeId : variant

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

This property holds the unique identifier of the attendee.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@attendeeId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="emailAddress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

emailAddress : variant

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

This property holds the email address of the attendee.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@emailAddress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : variant

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

This property holds the name of the attendee.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="participationRole-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

participationRole : variant

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

This property holds the participation role of the attendee of the
event.The value can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

EventAttendee.RoleUnknown

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.RoleOrganizer

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.RoleChairperson

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.RoleHost

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.RoleRequiredParticipant

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.RoleOptionalParticipant

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.RoleNonParticipant

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@participationRole -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="participationStatus-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

participationStatus : variant

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

This property holds the participation status of the attendee of the
event. The value can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

EventAttendee.StatusUnknown

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.StatusAccepted

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.StatusDeclined

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.StatusTentative

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.StatusDelegated

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.StatusInProcess

.. raw:: html

   </li>

.. raw:: html

   <li>

EventAttendee.StatusCompleted

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@participationStatus -->

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


