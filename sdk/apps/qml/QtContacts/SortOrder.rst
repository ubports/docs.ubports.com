.. _sdk_qtcontacts_sortorder:

QtContacts SortOrder
====================

The SortOrder element defines how a list of contacts should be ordered according to some criteria.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`blankPolicy <sdk_qtcontacts_sortorder_blankPolicy>` : enumeration
-  :ref:`caseSensitivity <sdk_qtcontacts_sortorder_caseSensitivity>` : enumeration
-  :ref:`detail <sdk_qtcontacts_sortorder_detail>` : enumeration
-  :ref:`direction <sdk_qtcontacts_sortorder_direction>` : enumeration
-  :ref:`field <sdk_qtcontacts_sortorder_field>` : int

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactSortOrder and ContactModel.

Property Documentation
----------------------

.. _sdk_qtcontacts_sortorder_blankPolicy:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| blankPolicy : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property enumerates the ways in which the sort order interprets blanks when sorting contacts.

-  :ref:`SortOrder <sdk_qtcontacts_sortorder>`.BlanksFirst - Considers blank values to evaluate to less than all other values in comparisons.
-  :ref:`SortOrder <sdk_qtcontacts_sortorder>`.BlanksLast - Considers blank values to evaluate to greater than all other values in comparisons.

.. _sdk_qtcontacts_sortorder_caseSensitivity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| caseSensitivity : enumeration                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the case sensitivity of the sort order, the value can be one of:

-  Qt.CaseInsensitive
-  Qt.CaseSensitive - (default)

.. _sdk_qtcontacts_sortorder_detail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detail : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail type of the details which will be inspected to perform sorting.

**See also** :ref:`ContactDetail::type <sdk_qtcontacts_contactdetail_type>`.

.. _sdk_qtcontacts_sortorder_direction:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| direction : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the direction of the sort order, the value can be one of:

-  Qt.AscendingOrder - (default)
-  Qt.DescendingOrder

.. _sdk_qtcontacts_sortorder_field:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| field : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail field type of the details which will be inspected to perform sorting. For each detail elements, there are predefined field types.

