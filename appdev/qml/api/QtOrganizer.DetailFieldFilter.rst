QtOrganizer.DetailFieldFilter
=============================

.. raw:: html

   <p>

The DetailFieldFilter element provides a filter based around a detail
value criterion. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DetailFieldFilter -->

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

detail : enum

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

field : enum

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

matchFlags : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

value : variant

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

onFilterChanged()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DetailFieldFilter-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Simple example how to utilize DetailFieldFilter element together with
OrganizerModel and ListView elements:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   height: <span class="number">400</span>; width: <span class="number">400</span>;
   OrganizerModel{
   id: organizer
   startPeriod: <span class="string">&quot;2009-01-01&quot;</span>
   endPeriod: <span class="string">&quot;2012-12-31&quot;</span>
   filter: todoFilter
   }
   DetailFieldFilter {
   id: todoFilter
   detail: Detail<span class="operator">.</span>Type
   field: Type<span class="operator">.</span>FieldType
   value: Type<span class="operator">.</span>Todo
   }
   ListView {
   width: parent<span class="operator">.</span>width; height: parent<span class="operator">.</span>height;
   model: organizer<span class="operator">.</span>items
   delegate: Text {text: displayLabel}
   }
   }</pre>

.. raw:: html

   <p>

See also QOrganizerItemDetailFieldFilter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DetailFieldFilter -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$detail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="detail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

detail : enum

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

This property holds the detail type of which the detail filter will be
matched to. The value shuold be the enumeration value of Detail::type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="field-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

field : enum

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

This property holds the detail field type of which the detail field
filter will be matched to. The value should be the filld enumeration
value defined in each detail element.

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

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="matchFlags-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

matchFlags : enumeration

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

This property holds the semantics of the value matching criterion. The
valid match flags include:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

MatchExactly - Performs QVariant-based matching (default).

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchContains - The search term is contained in the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchStartsWith - The search term matches the start of the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchEndsWith - The search term matches the end of the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchFixedString - Performs string-based matching. String-based
comparisons are case-insensitive unless the MatchCaseSensitive flag is
also specified.

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchCaseSensitive - The search is case sensitive.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@matchFlags -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

value : variant

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

This property holds the value criterion of the detail field filter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onFilterChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onFilterChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onFilterChanged()

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

See also QtOrganizer5::Filter::onFilterChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onFilterChanged -->


