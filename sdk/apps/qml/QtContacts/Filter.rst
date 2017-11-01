The Filter element is used as a property of ContactModel, to allow
selection of contacts which have certain details or properties.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`type </sdk/apps/qml/QtContacts/Filter#type-prop>`__**** :
   enumeration

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactFilter.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ type : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the type value of this filter. It can be one of:

-  Filter.DefaultFilter - A filter which matches everything (default).
-  Filter.\ `InvalidFilter </sdk/apps/qml/QtContacts/InvalidFilter/>`__
   - An invalid filter which matches nothing.
-  Filter.\ `DetailFilter </sdk/apps/qml/QtContacts/DetailFilter/>`__ -
   A filter which matches contacts containing one or more details of a
   particular definition with a particular value.
-  Filter.\ `DetailRangeFilter </sdk/apps/qml/QtContacts/DetailRangeFilter/>`__
   - A filter which matches contacts containing one or more details of a
   particular definition whose values are within a particular range.
-  Filter.\ `ChangeLogFilter </sdk/apps/qml/QtContacts/ChangeLogFilter/>`__
   - A filter which matches contacts whose timestamps have been updated
   since some particular date and time.
-  Filter.\ `ActionFilter </sdk/apps/qml/QtContacts/ActionFilter/>`__ -
   A filter which matches contacts for which a particular action is
   available, or which contain a detail with a particular value for
   which a particular action is available.
-  Filter.\ `RelationshipFilter </sdk/apps/qml/QtContacts/RelationshipFilter/>`__
   - A filter which matches contacts which participate in a particular
   type of relationship, or relationship with a specified contact.
-  Filter.\ `IntersectionFilter </sdk/apps/qml/QtContacts/IntersectionFilter/>`__
   - A filter which matches all contacts that are matched by all filters
   it includes.
-  Filter.\ `UnionFilter </sdk/apps/qml/QtContacts/UnionFilter/>`__ - A
   filter which matches any contact that is matched by any of the
   filters it includes.
-  Filter.\ `IdFilter </sdk/apps/qml/QtContacts/IdFilter/>`__ - A filter
   which matches any contact whose local id is contained in a particular
   list of contact local ids.

| 
