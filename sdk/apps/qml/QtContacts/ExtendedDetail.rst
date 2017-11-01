The ExtendedDetail element contains an extended detail of a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`data </sdk/apps/qml/QtContacts/ExtendedDetail#data-prop>`__****
   : variant
-  ****`name </sdk/apps/qml/QtContacts/ExtendedDetail#name-prop>`__****
   : string

Detailed Description
--------------------

Note for the jsondb manager backend: it converts extended detail data of
type date, time or javascript Date to a string expressed in local
timezone in ISO 8601 format without timezone specified. Javascript
function Date.parse() cannot be used to parse this string, since it
interprets the string without timezone specified being in UTC. It is
recommended to convert dates to strings before storing them to extended
details. For example, javascript functions Date.toISOString() and
Date.parse() can be used for the conversion.

`ExtendedDetail </sdk/apps/qml/QtContacts/ExtendedDetail/>`__ element
contains the following field types:

-  `ExtendedDetail </sdk/apps/qml/QtContacts/ExtendedDetail/>`__.Name
-  `ExtendedDetail </sdk/apps/qml/QtContacts/ExtendedDetail/>`__.Data

This element is part of the **QtContacts** module.

**See also** QContactExtendedDetail.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ data : variant                                                  |
+--------------------------------------------------------------------------+

This property holds the data of the extended detail.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the extended detail.

| 
