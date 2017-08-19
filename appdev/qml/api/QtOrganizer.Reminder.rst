QtOrganizer.Reminder
====================

.. raw:: html

   <p>

The Reminder element contains information about when and how the user
wants to reminded of the item. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Reminder -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

AudibleReminder, EmailReminder, and VisualReminder.

.. raw:: html

   </p>

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

reminderType : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

repetitionCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

repetitionDelay : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

secondsBeforeStart : int

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

   <!-- $$$Reminder-description -->

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

Reminder.FieldRepetitionCount

.. raw:: html

   </li>

.. raw:: html

   <li>

Reminder.FieldRepetitionDelay

.. raw:: html

   </li>

.. raw:: html

   <li>

Reminder.FieldSecondsBeforeStart

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QOrganizerItemReminder.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Reminder -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$reminderType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reminderType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

reminderType : enumeration

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

This property holds the reminder type of this reminder for an organizer
item. The value can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Reminder.NoReminder

.. raw:: html

   </li>

.. raw:: html

   <li>

Reminder.VisualReminder

.. raw:: html

   </li>

.. raw:: html

   <li>

Reminder.AudibleReminder

.. raw:: html

   </li>

.. raw:: html

   <li>

Reminder.EmailReminder

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@reminderType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="repetitionCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

repetitionCount : int

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

This property holds the number of times the user should be reminded of
the item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@repetitionCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="repetitionDelay-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

repetitionDelay : int

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

This property holds the delay (in seconds) between each repetition of
the reminder.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@repetitionDelay -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="secondsBeforeStart-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

secondsBeforeStart : int

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

This property holds the number of seconds prior to the activation of the
item at which the user wants to be reminded of the item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@secondsBeforeStart -->

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


