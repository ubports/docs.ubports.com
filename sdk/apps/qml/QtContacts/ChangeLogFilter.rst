.. _sdk_qtcontacts_changelogfilter:

QtContacts ChangeLogFilter
==========================

The ChangeLogFilter element provides a filter based around a contact timestamp criterion.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`eventType <sdk_qtcontacts_changelogfilter_eventType>` : enumeration
-  :ref:`since <sdk_qtcontacts_changelogfilter_since>` : date

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactChangeLogFilter.

Property Documentation
----------------------

.. _sdk_qtcontacts_changelogfilter_eventType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| eventType : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type of change that this filter will match against.

.. _sdk_qtcontacts_changelogfilter_since:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| since : date                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the date and time lower-bound criterion of the filter.The value can be one of:

-  :ref:`ChangeLogFilter <sdk_qtcontacts_changelogfilter>`.EventAdded
-  :ref:`ChangeLogFilter <sdk_qtcontacts_changelogfilter>`.EventChanged
-  :ref:`ChangeLogFilter <sdk_qtcontacts_changelogfilter>`.EventRemoved

