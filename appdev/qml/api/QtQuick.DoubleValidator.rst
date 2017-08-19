QtQuick.DoubleValidator
=======================

.. raw:: html

   <p>

Defines a validator for non-integer numbers More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DoubleValidator -->

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

bottom : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

decimals : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

locale : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

notation : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

top : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DoubleValidator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The DoubleValidator type provides a validator for non-integer numbers.

.. raw:: html

   </p>

.. raw:: html

   <p>

Input is accepted if it contains a double that is within the valid range
and is in the correct format.

.. raw:: html

   </p>

.. raw:: html

   <p>

Input is accepected but invalid if it contains a double that is outside
the range or is in the wrong format; e.g. with too many digits after the
decimal point or is empty.

.. raw:: html

   </p>

.. raw:: html

   <p>

Input is rejected if it is not a double.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: If the valid range consists of just positive doubles (e.g. 0.0 to
100.0) and input is a negative double then it is rejected. If notation
is set to DoubleValidator.StandardNotation, and the input contains more
digits before the decimal point than a double in the valid range may
have, it is also rejected. If notation is
DoubleValidator.ScientificNotation, and the input is not in the valid
range, it is accecpted but invalid. The value may yet become valid by
changing the exponent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DoubleValidator -->

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

bottom : real

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

This property holds the validator's minimum acceptable value. By
default, this property contains a value of -infinity.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bottom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="decimals-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

decimals : int

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

This property holds the validator's maximum number of digits after the
decimal point. By default, this property contains a value of 1000.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@decimals -->

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

   <tr valign="top" id="notation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

notation : enumeration

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

This property holds the notation of how a string can describe a number.

.. raw:: html

   </p>

.. raw:: html

   <p>

The possible values for this property are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

DoubleValidator.StandardNotation

.. raw:: html

   </li>

.. raw:: html

   <li>

DoubleValidator.ScientificNotation (default)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If this property is set to DoubleValidator.ScientificNotation, the
written number may have an exponent part (e.g. 1.5E-2).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@notation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="top-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

top : real

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

This property holds the validator's maximum acceptable value. By
default, this property contains a value of infinity.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@top -->


