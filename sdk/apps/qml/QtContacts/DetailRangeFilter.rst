.. _sdk_qtcontacts_detailrangefilter:

QtContacts DetailRangeFilter
============================

The DetailRangeFilter element provides a filter based around a detail value range criterion.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`detail <sdk_qtcontacts_detailrangefilter_detail>` : enumeration
-  :ref:`field <sdk_qtcontacts_detailrangefilter_field>` : int
-  :ref:`matchFlags <sdk_qtcontacts_detailrangefilter_matchFlags>` : enumeration
-  :ref:`max <sdk_qtcontacts_detailrangefilter_max>` : variant
-  :ref:`min <sdk_qtcontacts_detailrangefilter_min>` : variant
-  :ref:`rangeFlags <sdk_qtcontacts_detailrangefilter_rangeFlags>` : enumeration

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactDetailRangeFilter.

Property Documentation
----------------------

.. _sdk_qtcontacts_detailrangefilter_detail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detail : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail type of which details will be matched to.

**See also** :ref:`ContactDetail::type <sdk_qtcontacts_contactdetail_type>` and :ref:`DetailFilter::detail <sdk_qtcontacts_detailfilter_detail>`.

.. _sdk_qtcontacts_detailrangefilter_field:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| field : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail field type of which detail fields will be matched to. Detail field types are enumeration values defined in each detail elements.

**See also** :ref:`DetailFilter::field <sdk_qtcontacts_detailfilter_field>`.

.. _sdk_qtcontacts_detailrangefilter_matchFlags:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| matchFlags : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the match flags of the criterion, which define semantics such as case sensitivity, and exact matching.

**See also** :ref:`DetailFilter::matchFlags <sdk_qtcontacts_detailfilter_matchFlags>`.

.. _sdk_qtcontacts_detailrangefilter_max:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| max : variant                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the upper bound of the value range criterion. By default, there is no upper bound.

.. _sdk_qtcontacts_detailrangefilter_min:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| min : variant                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the lower bound of the value range criterion. By default, there is no lower bound.

.. _sdk_qtcontacts_detailrangefilter_rangeFlags:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rangeFlags : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a set of flags which defines the boundary condition semantics of the value range criterion.The valid range flags include:

-  :ref:`DetailRangeFilter <sdk_qtcontacts_detailrangefilter>`.IncludeLower
-  :ref:`DetailRangeFilter <sdk_qtcontacts_detailrangefilter>`.IncludeUpper
-  :ref:`DetailRangeFilter <sdk_qtcontacts_detailrangefilter>`.ExcludeLower
-  :ref:`DetailRangeFilter <sdk_qtcontacts_detailrangefilter>`.ExcludeUpper

