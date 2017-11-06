.. _sdk_qtquick_intvalidator:

QtQuick IntValidator
====================

Defines a validator for integer values

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`bottom <sdk_qtquick_intvalidator_bottom>` : int
-  :ref:`locale <sdk_qtquick_intvalidator_locale>` : string
-  :ref:`top <sdk_qtquick_intvalidator_top>` : int

Detailed Description
--------------------

The :ref:`IntValidator <sdk_qtquick_intvalidator>` type provides a validator for integer values.

If no :ref:`locale <sdk_qtquick_intvalidator_locale>` is set :ref:`IntValidator <sdk_qtquick_intvalidator>` uses the default locale to interpret the number and will accept locale specific digits, group separators, and positive and negative signs. In addition, :ref:`IntValidator <sdk_qtquick_intvalidator>` is always guaranteed to accept a number formatted according to the "C" locale.

Property Documentation
----------------------

.. _sdk_qtquick_intvalidator_bottom:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bottom : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the validator's lowest acceptable value. By default, this property's value is derived from the lowest signed integer available (typically -2147483647).

.. _sdk_qtquick_intvalidator_locale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| locale : string                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the locale used to interpret the number.

**See also** Qt.locale().

.. _sdk_qtquick_intvalidator_top:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| top : int                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the validator's highest acceptable value. By default, this property's value is derived from the highest signed integer available (typically 2147483647).

