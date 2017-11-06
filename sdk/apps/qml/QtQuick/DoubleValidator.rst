.. _sdk_qtquick_doublevalidator:

QtQuick DoubleValidator
=======================

Defines a validator for non-integer numbers

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`bottom <sdk_qtquick_doublevalidator_bottom>` : real
-  :ref:`decimals <sdk_qtquick_doublevalidator_decimals>` : int
-  :ref:`locale <sdk_qtquick_doublevalidator_locale>` : string
-  :ref:`notation <sdk_qtquick_doublevalidator_notation>` : enumeration
-  :ref:`top <sdk_qtquick_doublevalidator_top>` : real

Detailed Description
--------------------

The :ref:`DoubleValidator <sdk_qtquick_doublevalidator>` type provides a validator for non-integer numbers.

Input is accepted if it contains a double that is within the valid range and is in the correct format.

Input is accepected but invalid if it contains a double that is outside the range or is in the wrong format; e.g. with too many digits after the decimal point or is empty.

Input is rejected if it is not a double.

Note: If the valid range consists of just positive doubles (e.g. 0.0 to 100.0) and input is a negative double then it is rejected. If :ref:`notation <sdk_qtquick_doublevalidator_notation>` is set to :ref:`DoubleValidator <sdk_qtquick_doublevalidator>`.StandardNotation, and the input contains more digits before the decimal point than a double in the valid range may have, it is also rejected. If :ref:`notation <sdk_qtquick_doublevalidator_notation>` is :ref:`DoubleValidator <sdk_qtquick_doublevalidator>`.ScientificNotation, and the input is not in the valid range, it is accecpted but invalid. The value may yet become valid by changing the exponent.

Property Documentation
----------------------

.. _sdk_qtquick_doublevalidator_bottom:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bottom : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the validator's minimum acceptable value. By default, this property contains a value of -infinity.

.. _sdk_qtquick_doublevalidator_decimals:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| decimals : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the validator's maximum number of digits after the decimal point. By default, this property contains a value of 1000.

.. _sdk_qtquick_doublevalidator_locale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| locale : string                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the locale used to interpret the number.

**See also** Qt.locale().

.. _sdk_qtquick_doublevalidator_notation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| notation : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the notation of how a string can describe a number.

The possible values for this property are:

-  :ref:`DoubleValidator <sdk_qtquick_doublevalidator>`.StandardNotation
-  :ref:`DoubleValidator <sdk_qtquick_doublevalidator>`.ScientificNotation (default)

If this property is set to :ref:`DoubleValidator <sdk_qtquick_doublevalidator>`.ScientificNotation, the written number may have an exponent part (e.g. 1.5E-2).

.. _sdk_qtquick_doublevalidator_top:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| top : real                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the validator's maximum acceptable value. By default, this property contains a value of infinity.

