QtContacts.ExtendedDetail
=========================

.. raw:: html

   <p>

The ExtendedDetail element contains an extended detail of a contact.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ExtendedDetail -->

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

data : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ExtendedDetail-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Note for the jsondb manager backend: it converts extended detail data of
type date, time or javascript Date to a string expressed in local
timezone in ISO 8601 format without timezone specified. Javascript
function Date.parse() cannot be used to parse this string, since it
interprets the string without timezone specified being in UTC. It is
recommended to convert dates to strings before storing them to extended
details. For example, javascript functions Date.toISOString() and
Date.parse() can be used for the conversion.

.. raw:: html

   </p>

.. raw:: html

   <p>

ExtendedDetail element contains the following field types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ExtendedDetail.Name

.. raw:: html

   </li>

.. raw:: html

   <li>

ExtendedDetail.Data

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This element is part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QContactExtendedDetail.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ExtendedDetail -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$data -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="data-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

data : variant

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

This property holds the data of the extended detail.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@data -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

This property holds the name of the extended detail.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->


