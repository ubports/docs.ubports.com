.. _sdk_qtcontacts_filter:

QtContacts Filter
=================

The Filter element is used as a property of ContactModel, to allow selection of contacts which have certain details or properties.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`type <sdk_qtcontacts_filter_type>` : enumeration

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactFilter.

Property Documentation
----------------------

.. _sdk_qtcontacts_filter_type:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| type : enumeration                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type value of this filter. It can be one of:

-  Filter.DefaultFilter - A filter which matches everything (default).
-  Filter.\ :ref:`InvalidFilter <sdk_qtcontacts_invalidfilter>` - An invalid filter which matches nothing.
-  Filter.\ :ref:`DetailFilter <sdk_qtcontacts_detailfilter>` - A filter which matches contacts containing one or more details of a particular definition with a particular value.
-  Filter.\ :ref:`DetailRangeFilter <sdk_qtcontacts_detailrangefilter>` - A filter which matches contacts containing one or more details of a particular definition whose values are within a particular range.
-  Filter.\ :ref:`ChangeLogFilter <sdk_qtcontacts_changelogfilter>` - A filter which matches contacts whose timestamps have been updated since some particular date and time.
-  Filter.\ :ref:`ActionFilter <sdk_qtcontacts_actionfilter>` - A filter which matches contacts for which a particular action is available, or which contain a detail with a particular value for which a particular action is available.
-  Filter.\ :ref:`RelationshipFilter <sdk_qtcontacts_relationshipfilter>` - A filter which matches contacts which participate in a particular type of relationship, or relationship with a specified contact.
-  Filter.\ :ref:`IntersectionFilter <sdk_qtcontacts_intersectionfilter>` - A filter which matches all contacts that are matched by all filters it includes.
-  Filter.\ :ref:`UnionFilter <sdk_qtcontacts_unionfilter>` - A filter which matches any contact that is matched by any of the filters it includes.
-  Filter.\ :ref:`IdFilter <sdk_qtcontacts_idfilter>` - A filter which matches any contact whose local id is contained in a particular list of contact local ids.

