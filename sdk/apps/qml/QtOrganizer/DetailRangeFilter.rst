.. _sdk_qtorganizer_detailrangefilter:

QtOrganizer DetailRangeFilter
=============================

The DetailRangeFilter element provides a filter based around a detail value range criterion.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`detail <sdk_qtorganizer_detailrangefilter_detail>` : enum
-  :ref:`field <sdk_qtorganizer_detailrangefilter_field>` : enum
-  :ref:`matchFlags <sdk_qtorganizer_detailrangefilter_matchFlags>` : enumeration
-  :ref:`max <sdk_qtorganizer_detailrangefilter_max>` : variant
-  :ref:`min <sdk_qtorganizer_detailrangefilter_min>` : variant
-  :ref:`rangeFlags <sdk_qtorganizer_detailrangefilter_rangeFlags>` : enumeration

Signals
-------

-  :ref:`onFilterChanged <sdk_qtorganizer_detailrangefilter_onFilterChanged>`\ ()

Detailed Description
--------------------

**See also** QOrganizerItemDetailRangeFilter.

Property Documentation
----------------------

.. _sdk_qtorganizer_detailrangefilter_detail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detail : enum                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail type of which the detail filter will be matched to. The value shuold be the enumeration value of :ref:`Detail::type <sdk_qtorganizer_detail_type>`.

.. _sdk_qtorganizer_detailrangefilter_field:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| field : enum                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail field type of which the detail filter will be matched to. The value should be the filld enumeration value defined in each detail element.

**See also** :ref:`EventTime <sdk_qtorganizer_eventtime>`, :ref:`JournalTime <sdk_qtorganizer_journaltime>`, :ref:`TodoTime <sdk_qtorganizer_todotime>`, :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`, :ref:`Reminder <sdk_qtorganizer_reminder>`, :ref:`AudibleReminder <sdk_qtorganizer_audiblereminder>`, :ref:`VisualReminder <sdk_qtorganizer_visualreminder>`, :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`, :ref:`Comment <sdk_qtorganizer_comment>`, :ref:`Description <sdk_qtorganizer_description>`, :ref:`DisplayLabel <sdk_qtorganizer_displaylabel>`, :ref:`Guid <sdk_qtorganizer_guid>`, :ref:`Location <sdk_qtorganizer_location>`, :ref:`Parent <sdk_qtorganizer_parent>`, :ref:`Priority <sdk_qtorganizer_priority>`, :ref:`Recurrence <sdk_qtorganizer_recurrence>`, :ref:`Timestamp <sdk_qtorganizer_timestamp>`, :ref:`ItemType <sdk_qtorganizer_itemtype>`, and :ref:`Tag <sdk_qtorganizer_tag>`.

.. _sdk_qtorganizer_detailrangefilter_matchFlags:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| matchFlags : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the match flags of the criterion, which define semantics such as case sensitivity, and exact matching.

**See also** :ref:`DetailFieldFilter::matchFlags <sdk_qtorganizer_detailfieldfilter_matchFlags>`.

.. _sdk_qtorganizer_detailrangefilter_max:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| max : variant                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the upper bound of the value range criterion. By default, there is no upper bound.

.. _sdk_qtorganizer_detailrangefilter_min:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| min : variant                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the lower bound of the value range criterion. By default, there is no lower bound.

.. _sdk_qtorganizer_detailrangefilter_rangeFlags:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rangeFlags : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a set of flags which defines the boundary condition semantics of the value range criterion. The valid range flags include:

-  :ref:`DetailRangeFilter <sdk_qtorganizer_detailrangefilter>`.IncludeLower
-  :ref:`DetailRangeFilter <sdk_qtorganizer_detailrangefilter>`.IncludeUpper
-  :ref:`DetailRangeFilter <sdk_qtorganizer_detailrangefilter>`.ExcludeLower
-  :ref:`DetailRangeFilter <sdk_qtorganizer_detailrangefilter>`.ExcludeUpper

Signal Documentation
--------------------

.. _sdk_qtorganizer_detailrangefilter_onFilterChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onFilterChanged()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`QtOrganizer5::Filter::onFilterChanged <sdk_qtorganizer_filter_onFilterChanged>`.

