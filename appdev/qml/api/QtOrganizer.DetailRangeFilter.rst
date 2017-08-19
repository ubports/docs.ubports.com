QtOrganizer.DetailRangeFilter
=============================

.. raw:: html

   <p>

The DetailRangeFilter element provides a filter based around a detail
value range criterion. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DetailRangeFilter -->

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

max : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

min : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rangeFlags : enumeration

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

   <!-- $$$DetailRangeFilter-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QOrganizerItemDetailRangeFilter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DetailRangeFilter -->

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

This property holds the detail field type of which the detail filter
will be matched to. The value should be the filld enumeration value
defined in each detail element.

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

This property holds the match flags of the criterion, which define
semantics such as case sensitivity, and exact matching.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also DetailFieldFilter::matchFlags.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@matchFlags -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="max-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

max : variant

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

This property holds the upper bound of the value range criterion. By
default, there is no upper bound.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@max -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="min-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

min : variant

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

This property holds the lower bound of the value range criterion. By
default, there is no lower bound.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@min -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rangeFlags-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rangeFlags : enumeration

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

This property holds a set of flags which defines the boundary condition
semantics of the value range criterion. The valid range flags include:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

DetailRangeFilter.IncludeLower

.. raw:: html

   </li>

.. raw:: html

   <li>

DetailRangeFilter.IncludeUpper

.. raw:: html

   </li>

.. raw:: html

   <li>

DetailRangeFilter.ExcludeLower

.. raw:: html

   </li>

.. raw:: html

   <li>

DetailRangeFilter.ExcludeUpper

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@rangeFlags -->

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


