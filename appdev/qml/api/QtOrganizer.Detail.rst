QtOrganizer.Detail
==================

.. raw:: html

   <p>

The Detail element represents a single, complete detail about a
organizer item. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Detail -->

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

type : enumeration

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

bool removeValue(field)

.. raw:: html

   </li>

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

   <!-- $$$Detail-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QOrganizerItemDetail.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Detail -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$type -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="type-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

type : enumeration

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

This property holds the type of the detail and is read only. It can be
one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Detail.Undefined

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Classification

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Comment

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Description

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.DisplayLabel

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.ItemType

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Guid

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Location

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Parent

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Priority

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Recurrence

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Tag

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Timestamp

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Version

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.Reminder

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.AudibleReminder

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.EmailReminder

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.VisualReminder

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.ExtendedDetail

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.EventAttendee

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.EventRsvp

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.EventTime

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.JournalTime

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.TodoTime

.. raw:: html

   </li>

.. raw:: html

   <li>

Detail.TodoProgress

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Classification, Comment, Description, DisplayLabel, ItemType,
Guid, Location, Parent, Priority, Recurrence, Tag, Timestamp, Version,
Reminder, AudibleReminder, EmailReminder, VisualReminder,
ExtendedDetail, EventAttendee, EventRsvp, EventTime, JournalTime,
TodoTime, and TodoProgress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@type -->

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

This signal is emitted, when any of the Details's or child element's
(like EventTime, DisplayLabel etc) properties have been changed.

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

   <!-- $$$removeValue -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeValue-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool removeValue(field)

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

Removes the value stored in this detail for the given field. Returns
true if a value was stored for the given key and the operation
succeeded, and false otherwise.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeValue -->

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

Inserts value into the detail for the given key if value is valid. If
value is invalid, removes the field with the given key from the detail.
Returns true if the given value was set for the key (if the value was
valid), or if the given key was removed from detail (if the value was
invalid), otherwise returns false if the key was unable to be removed
(and the value was invalid).

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

Returns the value stored in this detail for the given field, or an empty
variant if not available.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->


