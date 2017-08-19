QtOrganizer.Filter
==================

.. raw:: html

   <p>

The Filter element is used to filter items made available through a
backend. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Filter -->

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

onFilterChanged()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Filter-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QOrganizerItemFilter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Filter -->

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

This property holds the type value of this filter. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Filter.DefaultFilter A filter which matches everything (default).

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.InvalidFilter An invalid filter which matches nothing.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.IntersectionFilter A filter which matches all organizer items
that are matched by all filters it includes.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.UnionFilter A filter which matches any organizer item that is
matched by any of the filters it includes.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.CollectionFilter A filter which matches any organizer item that
is matched by collection.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.DetailFilter A filter which matches organizer items containing
exactly one given detail.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.DetailFieldFilter A filter which matches organizer items
containing one or more details of a particular type with a particular
field having a particular value.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.DetailRangeFilter A filter which matches organizer items
containing one or more details of a particular type whose values are
within a particular range.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.IdFilter A filter which matches any organizer item whose ID is
contained in a particular list of organizer item IDs.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@type -->

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

This signal is emitted, when any of the Filter's or child element's
(like DetailFilter, CollectionFilter etc) properties have been changed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onFilterChanged -->


