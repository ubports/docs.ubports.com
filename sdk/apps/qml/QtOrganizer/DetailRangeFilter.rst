The DetailRangeFilter element provides a filter based around a detail
value range criterion.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`detail </sdk/apps/qml/QtOrganizer/DetailRangeFilter#detail-prop>`__****
   : enum
-  ****`field </sdk/apps/qml/QtOrganizer/DetailRangeFilter#field-prop>`__****
   : enum
-  ****`matchFlags </sdk/apps/qml/QtOrganizer/DetailRangeFilter#matchFlags-prop>`__****
   : enumeration
-  ****`max </sdk/apps/qml/QtOrganizer/DetailRangeFilter#max-prop>`__****
   : variant
-  ****`min </sdk/apps/qml/QtOrganizer/DetailRangeFilter#min-prop>`__****
   : variant
-  ****`rangeFlags </sdk/apps/qml/QtOrganizer/DetailRangeFilter#rangeFlags-prop>`__****
   : enumeration

Signals
-------

-  ****`onFilterChanged </sdk/apps/qml/QtOrganizer/DetailRangeFilter#onFilterChanged-signal>`__****\ ()

Detailed Description
--------------------

**See also** QOrganizerItemDetailRangeFilter.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ detail : enum                                                   |
+--------------------------------------------------------------------------+

This property holds the detail type of which the detail filter will be
matched to. The value shuold be the enumeration value of
`Detail::type </sdk/apps/qml/QtOrganizer/Detail#type-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ field : enum                                                    |
+--------------------------------------------------------------------------+

This property holds the detail field type of which the detail filter
will be matched to. The value should be the filld enumeration value
defined in each detail element.

**See also** `EventTime </sdk/apps/qml/QtOrganizer/EventTime/>`__,
`JournalTime </sdk/apps/qml/QtOrganizer/JournalTime/>`__,
`TodoTime </sdk/apps/qml/QtOrganizer/TodoTime/>`__,
`TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__,
`Reminder </sdk/apps/qml/QtOrganizer/Reminder/>`__,
`AudibleReminder </sdk/apps/qml/QtOrganizer/AudibleReminder/>`__,
`VisualReminder </sdk/apps/qml/QtOrganizer/VisualReminder/>`__,
`EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__,
`Comment </sdk/apps/qml/QtOrganizer/Comment/>`__,
`Description </sdk/apps/qml/QtOrganizer/Description/>`__,
`DisplayLabel </sdk/apps/qml/QtOrganizer/DisplayLabel/>`__,
`Guid </sdk/apps/qml/QtOrganizer/Guid/>`__,
`Location </sdk/apps/qml/QtOrganizer/Location/>`__,
`Parent </sdk/apps/qml/QtOrganizer/Parent/>`__,
`Priority </sdk/apps/qml/QtOrganizer/Priority/>`__,
`Recurrence </sdk/apps/qml/QtOrganizer/Recurrence/>`__,
`Timestamp </sdk/apps/qml/QtOrganizer/Timestamp/>`__,
`ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__, and
`Tag </sdk/apps/qml/QtOrganizer/Tag/>`__.

| 

+--------------------------------------------------------------------------+
|        \ matchFlags : enumeration                                        |
+--------------------------------------------------------------------------+

This property holds the match flags of the criterion, which define
semantics such as case sensitivity, and exact matching.

**See also**
`DetailFieldFilter::matchFlags </sdk/apps/qml/QtOrganizer/DetailFieldFilter#matchFlags-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ max : variant                                                   |
+--------------------------------------------------------------------------+

This property holds the upper bound of the value range criterion. By
default, there is no upper bound.

| 

+--------------------------------------------------------------------------+
|        \ min : variant                                                   |
+--------------------------------------------------------------------------+

This property holds the lower bound of the value range criterion. By
default, there is no lower bound.

| 

+--------------------------------------------------------------------------+
|        \ rangeFlags : enumeration                                        |
+--------------------------------------------------------------------------+

This property holds a set of flags which defines the boundary condition
semantics of the value range criterion. The valid range flags include:

-  `DetailRangeFilter </sdk/apps/qml/QtOrganizer/DetailRangeFilter/>`__.IncludeLower
-  `DetailRangeFilter </sdk/apps/qml/QtOrganizer/DetailRangeFilter/>`__.IncludeUpper
-  `DetailRangeFilter </sdk/apps/qml/QtOrganizer/DetailRangeFilter/>`__.ExcludeLower
-  `DetailRangeFilter </sdk/apps/qml/QtOrganizer/DetailRangeFilter/>`__.ExcludeUpper

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onFilterChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`QtOrganizer5::Filter::onFilterChanged </sdk/apps/qml/QtOrganizer/Filter#onFilterChanged-signal>`__.

| 
