QtContacts.SortOrder
====================

.. raw:: html

   <p>

The SortOrder element defines how a list of contacts should be ordered
according to some criteria. More...

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

detail : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

direction : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

field : int

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

   <p>

This element is part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QContactSortOrder and ContactModel.

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
blanks when sorting contacts.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

SortOrder.BlanksFirst - Considers blank values to evaluate to less than
all other values in comparisons.

.. raw:: html

   </li>

.. raw:: html

   <li>

SortOrder.BlanksLast - Considers blank values to evaluate to greater
than all other values in comparisons.

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

Qt.CaseInsensitive

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.CaseSensitive - (default)

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

detail : enumeration

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

This property holds the detail type of the details which will be
inspected to perform sorting.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ContactDetail::type.

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

Qt.AscendingOrder - (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.DescendingOrder

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

field : int

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

This property holds the detail field type of the details which will be
inspected to perform sorting. For each detail elements, there are
predefined field types.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@field -->


