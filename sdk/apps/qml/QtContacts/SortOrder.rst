The SortOrder element defines how a list of contacts should be ordered
according to some criteria.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`blankPolicy </sdk/apps/qml/QtContacts/SortOrder#blankPolicy-prop>`__****
   : enumeration
-  ****`caseSensitivity </sdk/apps/qml/QtContacts/SortOrder#caseSensitivity-prop>`__****
   : enumeration
-  ****`detail </sdk/apps/qml/QtContacts/SortOrder#detail-prop>`__**** :
   enumeration
-  ****`direction </sdk/apps/qml/QtContacts/SortOrder#direction-prop>`__****
   : enumeration
-  ****`field </sdk/apps/qml/QtContacts/SortOrder#field-prop>`__**** :
   int

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactSortOrder and ContactModel.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ blankPolicy : enumeration                                       |
+--------------------------------------------------------------------------+

This property enumerates the ways in which the sort order interprets
blanks when sorting contacts.

-  `SortOrder </sdk/apps/qml/QtContacts/SortOrder/>`__.BlanksFirst -
   Considers blank values to evaluate to less than all other values in
   comparisons.
-  `SortOrder </sdk/apps/qml/QtContacts/SortOrder/>`__.BlanksLast -
   Considers blank values to evaluate to greater than all other values
   in comparisons.

| 

+--------------------------------------------------------------------------+
|        \ caseSensitivity : enumeration                                   |
+--------------------------------------------------------------------------+

This property holds the case sensitivity of the sort order, the value
can be one of:

-  Qt.CaseInsensitive
-  Qt.CaseSensitive - (default)

| 

+--------------------------------------------------------------------------+
|        \ detail : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the detail type of the details which will be
inspected to perform sorting.

**See also**
`ContactDetail::type </sdk/apps/qml/QtContacts/ContactDetail#type-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ direction : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the direction of the sort order, the value can be
one of:

-  Qt.AscendingOrder - (default)
-  Qt.DescendingOrder

| 

+--------------------------------------------------------------------------+
|        \ field : int                                                     |
+--------------------------------------------------------------------------+

This property holds the detail field type of the details which will be
inspected to perform sorting. For each detail elements, there are
predefined field types.

| 
