QtOrganizer.SortOrder
=====================

.. raw:: html

   <p>

The SortOrder element defines how a list of organizer item should be
ordered according to some criteria. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SortOrder -->

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

blankPolicy : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

caseSensitivity : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

detail : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

direction : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

field : string

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

onSortOrderChanged()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SortOrder-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SortOrder -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$blankPolicy -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="blankPolicy-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

blankPolicy : enumeration

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

This property enumerates the ways in which the sort order interprets
blanks when sorting organizer.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

SortOrder.BlanksFirst Considers blank values to evaluate to less than
all other values in comparisons.

.. raw:: html

   </li>

.. raw:: html

   <li>

SortOrder.BlanksLast Considers blank values to evaluate to greater than
all other values in comparisons.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@blankPolicy -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="caseSensitivity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

caseSensitivity : enumeration

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

This property holds the case sensitivity of the sort order, the value
can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.CaseInsensitive Sets the case sensitivity of the sort order to
insensitivity.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.CaseSensitive Sets the case sensitivity of the sort order to
sensitivity (default).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@caseSensitivity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="detail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

detail : string

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

This property holds the detail type of which the sorting will be
performed to. The value should be the enumeration value of Detail::type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="direction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

direction : enumeration

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

This property holds the direction of the sort order, the value can be
one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.AscendingOrder The items will be sorted by the ascending order
(default).

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.DescendingOrder The items will be sorted by the descending order.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="field-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

field : string

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

This property holds the detail field type of which the sorting will be
performed to. The value should be the filld enumeration value defined in
each detail element.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also EventTime, JournalTime, TodoTime, TodoProgress, Reminder,
AudibleReminder, VisualReminder, EmailReminder, Comment, Description,
DisplayLabel, Guid, Location, Parent, Priority, Recurrence, Timestamp,
ItemType, and Tag.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@field -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onSortOrderChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onSortOrderChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onSortOrderChanged()

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

This signal is emitted, when any of the SortOrder's properties have been
changed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onSortOrderChanged -->


