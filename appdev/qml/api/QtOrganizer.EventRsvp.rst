QtOrganizer.EventRsvp
=====================

.. raw:: html

   <p>

The EventRsvp element contains Rsvp-information of an event. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@EventRsvp -->

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

organizerEmail : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

organizerName : variant

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

   <li class="fn">

responseDate : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

responseDeadline : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

responseRequirement : variant

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

   <!-- $$$EventRsvp-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

EventRsvp detail contains user specific information about calendar event
like participation status and role, information about response dates and
information about organizer of the event. See more details from the
properties themselves and the QOrganizerEventRsvp.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QOrganizerEventRsvp.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@EventRsvp -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$organizerEmail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="organizerEmail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

organizerEmail : variant

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

This property holds organizer's email of the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@organizerEmail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="organizerName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

organizerName : variant

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

This property holds organizer's name of the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@organizerName -->

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

This property holds the calendar user's participation role related to
the event. See EventAttendee::participationRole for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also EventAttendee::participationRole.

.. raw:: html

   </p>

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

This property holds the calendar user's participation status related to
the event. See EventAttendee::participationStatus for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also EventAttendee::participationStatus.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@participationStatus -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="responseDate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

responseDate : variant

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

This property holds the date when user responded to the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@responseDate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="responseDeadline-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

responseDeadline : variant

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

This property holds the last date for responding the event.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@responseDeadline -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="responseRequirement-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

responseRequirement : variant

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

This property holds the response requirement of the event. The value can
be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

EventRsvp.ResponseNotRequired

.. raw:: html

   </li>

.. raw:: html

   <li>

EventRsvp.ResponseRequired

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@responseRequirement -->

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


