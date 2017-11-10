.. _sdk_qtorganizer_filter:

QtOrganizer Filter
==================

The Filter element is used to filter items made available through a backend.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`type <sdk_qtorganizer_filter_type>` : enumeration

Signals
-------

-  :ref:`onFilterChanged <sdk_qtorganizer_filter_onFilterChanged>`\ ()

Detailed Description
--------------------

**See also** QOrganizerItemFilter.

Property Documentation
----------------------

.. _sdk_qtorganizer_filter_type:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| type : enumeration                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type value of this filter. It can be one of:

-  Filter.DefaultFilter A filter which matches everything (default).
-  Filter.\ :ref:`InvalidFilter <sdk_qtorganizer_invalidfilter>` An invalid filter which matches nothing.
-  Filter.\ :ref:`IntersectionFilter <sdk_qtorganizer_intersectionfilter>` A filter which matches all organizer items that are matched by all filters it includes.
-  Filter.\ :ref:`UnionFilter <sdk_qtorganizer_unionfilter>` A filter which matches any organizer item that is matched by any of the filters it includes.
-  Filter.\ :ref:`CollectionFilter <sdk_qtorganizer_collectionfilter>` A filter which matches any organizer item that is matched by collection.
-  Filter.\ :ref:`DetailFilter <sdk_qtorganizer_detailfilter>` A filter which matches organizer items containing exactly one given detail.
-  Filter.\ :ref:`DetailFieldFilter <sdk_qtorganizer_detailfieldfilter>` A filter which matches organizer items containing one or more details of a particular type with a particular field having a particular value.
-  Filter.\ :ref:`DetailRangeFilter <sdk_qtorganizer_detailrangefilter>` A filter which matches organizer items containing one or more details of a particular type whose values are within a particular range.
-  Filter.\ :ref:`IdFilter <sdk_qtorganizer_idfilter>` A filter which matches any organizer item whose ID is contained in a particular list of organizer item IDs.

Signal Documentation
--------------------

.. _sdk_qtorganizer_filter_onFilterChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onFilterChanged()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when any of the Filter's or child element's (like :ref:`DetailFilter <sdk_qtorganizer_detailfilter>`, :ref:`CollectionFilter <sdk_qtorganizer_collectionfilter>` etc) properties have been changed.

