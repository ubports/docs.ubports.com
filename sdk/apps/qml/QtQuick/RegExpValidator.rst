.. _sdk_qtquick_regexpvalidator:

QtQuick RegExpValidator
=======================

Provides a string validator

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`regExp <sdk_qtquick_regexpvalidator_regExp>` : regExp

Detailed Description
--------------------

The :ref:`RegExpValidator <sdk_qtquick_regexpvalidator>` type provides a validator, which counts as valid any string which matches a specified regular expression.

Property Documentation
----------------------

.. _sdk_qtquick_regexpvalidator_regExp:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| regExp : :ref:`regExp <sdk_qtquick_regexpvalidator_regExp>`                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the regular expression used for validation.

Note that this property should be a regular expression in JS syntax, e.g /a/ for the regular expression matching "a".

By default, this property contains a regular expression with the pattern .\* that matches any string.

