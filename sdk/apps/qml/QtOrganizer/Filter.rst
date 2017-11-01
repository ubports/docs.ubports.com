The Filter element is used to filter items made available through a
backend.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`type </sdk/apps/qml/QtOrganizer/Filter#type-prop>`__**** :
   enumeration

Signals
-------

-  ****`onFilterChanged </sdk/apps/qml/QtOrganizer/Filter#onFilterChanged-signal>`__****\ ()

Detailed Description
--------------------

**See also** QOrganizerItemFilter.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ type : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the type value of this filter. It can be one of:

-  Filter.DefaultFilter A filter which matches everything (default).
-  Filter.\ `InvalidFilter </sdk/apps/qml/QtOrganizer/InvalidFilter/>`__
   An invalid filter which matches nothing.
-  Filter.\ `IntersectionFilter </sdk/apps/qml/QtOrganizer/IntersectionFilter/>`__
   A filter which matches all organizer items that are matched by all
   filters it includes.
-  Filter.\ `UnionFilter </sdk/apps/qml/QtOrganizer/UnionFilter/>`__ A
   filter which matches any organizer item that is matched by any of the
   filters it includes.
-  Filter.\ `CollectionFilter </sdk/apps/qml/QtOrganizer/CollectionFilter/>`__
   A filter which matches any organizer item that is matched by
   collection.
-  Filter.\ `DetailFilter </sdk/apps/qml/QtOrganizer/DetailFilter/>`__ A
   filter which matches organizer items containing exactly one given
   detail.
-  Filter.\ `DetailFieldFilter </sdk/apps/qml/QtOrganizer/DetailFieldFilter/>`__
   A filter which matches organizer items containing one or more details
   of a particular type with a particular field having a particular
   value.
-  Filter.\ `DetailRangeFilter </sdk/apps/qml/QtOrganizer/DetailRangeFilter/>`__
   A filter which matches organizer items containing one or more details
   of a particular type whose values are within a particular range.
-  Filter.\ `IdFilter </sdk/apps/qml/QtOrganizer/IdFilter/>`__ A filter
   which matches any organizer item whose ID is contained in a
   particular list of organizer item IDs.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onFilterChanged()                                               |
+--------------------------------------------------------------------------+

This signal is emitted, when any of the Filter's or child element's
(like `DetailFilter </sdk/apps/qml/QtOrganizer/DetailFilter/>`__,
`CollectionFilter </sdk/apps/qml/QtOrganizer/CollectionFilter/>`__ etc)
properties have been changed.

| 
