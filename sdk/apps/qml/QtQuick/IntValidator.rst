Defines a validator for integer values

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`bottom </sdk/apps/qml/QtQuick/IntValidator#bottom-prop>`__**** :
   int
-  ****`locale </sdk/apps/qml/QtQuick/IntValidator#locale-prop>`__**** :
   string
-  ****`top </sdk/apps/qml/QtQuick/IntValidator#top-prop>`__**** : int

Detailed Description
--------------------

The `IntValidator </sdk/apps/qml/QtQuick/IntValidator/>`__ type provides
a validator for integer values.

If no `locale </sdk/apps/qml/QtQuick/IntValidator#locale-prop>`__ is set
`IntValidator </sdk/apps/qml/QtQuick/IntValidator/>`__ uses the default
locale to interpret the number and will accept locale specific digits,
group separators, and positive and negative signs. In addition,
`IntValidator </sdk/apps/qml/QtQuick/IntValidator/>`__ is always
guaranteed to accept a number formatted according to the "C" locale.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ bottom : int                                                    |
+--------------------------------------------------------------------------+

This property holds the validator's lowest acceptable value. By default,
this property's value is derived from the lowest signed integer
available (typically -2147483647).

| 

+--------------------------------------------------------------------------+
|        \ locale : string                                                 |
+--------------------------------------------------------------------------+

This property holds the name of the locale used to interpret the number.

**See also** Qt.locale().

| 

+--------------------------------------------------------------------------+
|        \ top : int                                                       |
+--------------------------------------------------------------------------+

This property holds the validator's highest acceptable value. By
default, this property's value is derived from the highest signed
integer available (typically 2147483647).

| 
