QtContacts.Filter
=================

.. raw:: html

   <p>

The Filter element is used as a property of ContactModel, to allow
selection of contacts which have certain details or properties. More...

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

import QtContacts 5.0

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

This element is part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QContactFilter.

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

Filter.DefaultFilter - A filter which matches everything (default).

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.InvalidFilter - An invalid filter which matches nothing.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.DetailFilter - A filter which matches contacts containing one or
more details of a particular definition with a particular value.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.DetailRangeFilter - A filter which matches contacts containing
one or more details of a particular definition whose values are within a
particular range.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.ChangeLogFilter - A filter which matches contacts whose
timestamps have been updated since some particular date and time.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.ActionFilter - A filter which matches contacts for which a
particular action is available, or which contain a detail with a
particular value for which a particular action is available.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.RelationshipFilter - A filter which matches contacts which
participate in a particular type of relationship, or relationship with a
specified contact.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.IntersectionFilter - A filter which matches all contacts that are
matched by all filters it includes.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.UnionFilter - A filter which matches any contact that is matched
by any of the filters it includes.

.. raw:: html

   </li>

.. raw:: html

   <li>

Filter.IdFilter - A filter which matches any contact whose local id is
contained in a particular list of contact local ids.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@type -->


