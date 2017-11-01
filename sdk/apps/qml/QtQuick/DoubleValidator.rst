Defines a validator for non-integer numbers

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`bottom </sdk/apps/qml/QtQuick/DoubleValidator#bottom-prop>`__****
   : real
-  ****`decimals </sdk/apps/qml/QtQuick/DoubleValidator#decimals-prop>`__****
   : int
-  ****`locale </sdk/apps/qml/QtQuick/DoubleValidator#locale-prop>`__****
   : string
-  ****`notation </sdk/apps/qml/QtQuick/DoubleValidator#notation-prop>`__****
   : enumeration
-  ****`top </sdk/apps/qml/QtQuick/DoubleValidator#top-prop>`__**** :
   real

Detailed Description
--------------------

The `DoubleValidator </sdk/apps/qml/QtQuick/DoubleValidator/>`__ type
provides a validator for non-integer numbers.

Input is accepted if it contains a double that is within the valid range
and is in the correct format.

Input is accepected but invalid if it contains a double that is outside
the range or is in the wrong format; e.g. with too many digits after the
decimal point or is empty.

Input is rejected if it is not a double.

Note: If the valid range consists of just positive doubles (e.g. 0.0 to
100.0) and input is a negative double then it is rejected. If
`notation </sdk/apps/qml/QtQuick/DoubleValidator#notation-prop>`__ is
set to
`DoubleValidator </sdk/apps/qml/QtQuick/DoubleValidator/>`__.StandardNotation,
and the input contains more digits before the decimal point than a
double in the valid range may have, it is also rejected. If
`notation </sdk/apps/qml/QtQuick/DoubleValidator#notation-prop>`__ is
`DoubleValidator </sdk/apps/qml/QtQuick/DoubleValidator/>`__.ScientificNotation,
and the input is not in the valid range, it is accecpted but invalid.
The value may yet become valid by changing the exponent.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ bottom : real                                                   |
+--------------------------------------------------------------------------+

This property holds the validator's minimum acceptable value. By
default, this property contains a value of -infinity.

| 

+--------------------------------------------------------------------------+
|        \ decimals : int                                                  |
+--------------------------------------------------------------------------+

This property holds the validator's maximum number of digits after the
decimal point. By default, this property contains a value of 1000.

| 

+--------------------------------------------------------------------------+
|        \ locale : string                                                 |
+--------------------------------------------------------------------------+

This property holds the name of the locale used to interpret the number.

**See also** Qt.locale().

| 

+--------------------------------------------------------------------------+
|        \ notation : enumeration                                          |
+--------------------------------------------------------------------------+

This property holds the notation of how a string can describe a number.

The possible values for this property are:

-  `DoubleValidator </sdk/apps/qml/QtQuick/DoubleValidator/>`__.StandardNotation
-  `DoubleValidator </sdk/apps/qml/QtQuick/DoubleValidator/>`__.ScientificNotation
   (default)

If this property is set to
`DoubleValidator </sdk/apps/qml/QtQuick/DoubleValidator/>`__.ScientificNotation,
the written number may have an exponent part (e.g. 1.5E-2).

| 

+--------------------------------------------------------------------------+
|        \ top : real                                                      |
+--------------------------------------------------------------------------+

This property holds the validator's maximum acceptable value. By
default, this property contains a value of infinity.

| 
