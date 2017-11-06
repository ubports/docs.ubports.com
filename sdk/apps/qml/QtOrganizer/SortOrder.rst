.. _sdk_qtorganizer_sortorder:

QtOrganizer SortOrder
=====================

The SortOrder element defines how a list of organizer item should be ordered according to some criteria.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`blankPolicy <sdk_qtorganizer_sortorder_blankPolicy>` : enumeration
-  :ref:`caseSensitivity <sdk_qtorganizer_sortorder_caseSensitivity>` : enumeration
-  :ref:`detail <sdk_qtorganizer_sortorder_detail>` : string
-  :ref:`direction <sdk_qtorganizer_sortorder_direction>` : enumeration
-  :ref:`field <sdk_qtorganizer_sortorder_field>` : string

Signals
-------

-  :ref:`onSortOrderChanged <sdk_qtorganizer_sortorder_onSortOrderChanged>`\ ()

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_qtorganizer_sortorder_blankPolicy:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| blankPolicy : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property enumerates the ways in which the sort order interprets blanks when sorting organizer.

-  :ref:`SortOrder <sdk_qtorganizer_sortorder>`.BlanksFirst Considers blank values to evaluate to less than all other values in comparisons.
-  :ref:`SortOrder <sdk_qtorganizer_sortorder>`.BlanksLast Considers blank values to evaluate to greater than all other values in comparisons.

.. _sdk_qtorganizer_sortorder_caseSensitivity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| caseSensitivity : enumeration                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the case sensitivity of the sort order, the value can be one of:

-  Qt.CaseInsensitive Sets the case sensitivity of the sort order to insensitivity.
-  Qt.CaseSensitive Sets the case sensitivity of the sort order to sensitivity (default).

.. _sdk_qtorganizer_sortorder_detail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detail : string                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail type of which the sorting will be performed to. The value should be the enumeration value of :ref:`Detail::type <sdk_qtorganizer_detail_type>`.

.. _sdk_qtorganizer_sortorder_direction:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| direction : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the direction of the sort order, the value can be one of:

-  Qt.AscendingOrder The items will be sorted by the ascending order (default).
-  Qt.DescendingOrder The items will be sorted by the descending order.

.. _sdk_qtorganizer_sortorder_field:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| field : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail field type of which the sorting will be performed to. The value should be the filld enumeration value defined in each detail element.

**See also** :ref:`EventTime <sdk_qtorganizer_eventtime>`, :ref:`JournalTime <sdk_qtorganizer_journaltime>`, :ref:`TodoTime <sdk_qtorganizer_todotime>`, :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`, :ref:`Reminder <sdk_qtorganizer_reminder>`, :ref:`AudibleReminder <sdk_qtorganizer_audiblereminder>`, :ref:`VisualReminder <sdk_qtorganizer_visualreminder>`, :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`, :ref:`Comment <sdk_qtorganizer_comment>`, :ref:`Description <sdk_qtorganizer_description>`, :ref:`DisplayLabel <sdk_qtorganizer_displaylabel>`, :ref:`Guid <sdk_qtorganizer_guid>`, :ref:`Location <sdk_qtorganizer_location>`, :ref:`Parent <sdk_qtorganizer_parent>`, :ref:`Priority <sdk_qtorganizer_priority>`, :ref:`Recurrence <sdk_qtorganizer_recurrence>`, :ref:`Timestamp <sdk_qtorganizer_timestamp>`, :ref:`ItemType <sdk_qtorganizer_itemtype>`, and :ref:`Tag <sdk_qtorganizer_tag>`.

Signal Documentation
--------------------

.. _sdk_qtorganizer_sortorder_onSortOrderChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onSortOrderChanged()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when any of the :ref:`SortOrder <sdk_qtorganizer_sortorder>`'s properties have been changed.

