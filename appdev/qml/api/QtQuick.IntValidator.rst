QtQuick.IntValidator
====================

.. raw:: html

   <p>

Defines a validator for integer values More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@IntValidator -->

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

import QtQuick 2.4

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

bottom : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

locale : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

top : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$IntValidator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The IntValidator type provides a validator for integer values.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no locale is set IntValidator uses the default locale to interpret
the number and will accept locale specific digits, group separators, and
positive and negative signs. In addition, IntValidator is always
guaranteed to accept a number formatted according to the "C" locale.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@IntValidator -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$bottom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="bottom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

bottom : int

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

This property holds the validator's lowest acceptable value. By default,
this property's value is derived from the lowest signed integer
available (typically -2147483647).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bottom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="locale-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

locale : string

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

This property holds the name of the locale used to interpret the number.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt.locale().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@locale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="top-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

top : int

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

This property holds the validator's highest acceptable value. By
default, this property's value is derived from the highest signed
integer available (typically 2147483647).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@top -->


