The ChangeLogFilter element provides a filter based around a contact
timestamp criterion.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`eventType </sdk/apps/qml/QtContacts/ChangeLogFilter#eventType-prop>`__****
   : enumeration
-  ****`since </sdk/apps/qml/QtContacts/ChangeLogFilter#since-prop>`__****
   : date

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactChangeLogFilter.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ eventType : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the type of change that this filter will match
against.

| 

+--------------------------------------------------------------------------+
|        \ since : date                                                    |
+--------------------------------------------------------------------------+

This property holds the date and time lower-bound criterion of the
filter.The value can be one of:

-  `ChangeLogFilter </sdk/apps/qml/QtContacts/ChangeLogFilter/>`__.EventAdded
-  `ChangeLogFilter </sdk/apps/qml/QtContacts/ChangeLogFilter/>`__.EventChanged
-  `ChangeLogFilter </sdk/apps/qml/QtContacts/ChangeLogFilter/>`__.EventRemoved

| 
