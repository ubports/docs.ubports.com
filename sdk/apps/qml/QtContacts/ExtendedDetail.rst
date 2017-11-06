.. _sdk_qtcontacts_extendeddetail:

QtContacts ExtendedDetail
=========================

The ExtendedDetail element contains an extended detail of a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`data <sdk_qtcontacts_extendeddetail_data>` : variant
-  :ref:`name <sdk_qtcontacts_extendeddetail_name>` : string

Detailed Description
--------------------

Note for the jsondb manager backend: it converts extended detail data of type date, time or javascript Date to a string expressed in local timezone in ISO 8601 format without timezone specified. Javascript function Date.parse() cannot be used to parse this string, since it interprets the string without timezone specified being in UTC. It is recommended to convert dates to strings before storing them to extended details. For example, javascript functions Date.toISOString() and Date.parse() can be used for the conversion.

:ref:`ExtendedDetail <sdk_qtcontacts_extendeddetail>` element contains the following field types:

-  :ref:`ExtendedDetail <sdk_qtcontacts_extendeddetail>`.Name
-  :ref:`ExtendedDetail <sdk_qtcontacts_extendeddetail>`.Data

This element is part of the **QtContacts** module.

**See also** QContactExtendedDetail.

Property Documentation
----------------------

.. _sdk_qtcontacts_extendeddetail_data:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| data : variant                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the data of the extended detail.

.. _sdk_qtcontacts_extendeddetail_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the extended detail.

