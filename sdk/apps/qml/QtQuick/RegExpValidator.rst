Provides a string validator

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`regExp </sdk/apps/qml/QtQuick/RegExpValidator#regExp-prop>`__****
   : regExp

Detailed Description
--------------------

The `RegExpValidator </sdk/apps/qml/QtQuick/RegExpValidator/>`__ type
provides a validator, which counts as valid any string which matches a
specified regular expression.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ regExp :                                                        |
| `regExp </sdk/apps/qml/QtQuick/RegExpValidator#regExp-prop>`__           |
+--------------------------------------------------------------------------+

This property holds the regular expression used for validation.

Note that this property should be a regular expression in JS syntax, e.g
/a/ for the regular expression matching "a".

By default, this property contains a regular expression with the pattern
.\* that matches any string.

| 
