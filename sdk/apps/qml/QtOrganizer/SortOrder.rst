The SortOrder element defines how a list of organizer item should be
ordered according to some criteria.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`blankPolicy </sdk/apps/qml/QtOrganizer/SortOrder#blankPolicy-prop>`__****
   : enumeration
-  ****`caseSensitivity </sdk/apps/qml/QtOrganizer/SortOrder#caseSensitivity-prop>`__****
   : enumeration
-  ****`detail </sdk/apps/qml/QtOrganizer/SortOrder#detail-prop>`__****
   : string
-  ****`direction </sdk/apps/qml/QtOrganizer/SortOrder#direction-prop>`__****
   : enumeration
-  ****`field </sdk/apps/qml/QtOrganizer/SortOrder#field-prop>`__**** :
   string

Signals
-------

-  ****`onSortOrderChanged </sdk/apps/qml/QtOrganizer/SortOrder#onSortOrderChanged-signal>`__****\ ()

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ blankPolicy : enumeration                                       |
+--------------------------------------------------------------------------+

This property enumerates the ways in which the sort order interprets
blanks when sorting organizer.

-  `SortOrder </sdk/apps/qml/QtOrganizer/SortOrder/>`__.BlanksFirst
   Considers blank values to evaluate to less than all other values in
   comparisons.
-  `SortOrder </sdk/apps/qml/QtOrganizer/SortOrder/>`__.BlanksLast
   Considers blank values to evaluate to greater than all other values
   in comparisons.

| 

+--------------------------------------------------------------------------+
|        \ caseSensitivity : enumeration                                   |
+--------------------------------------------------------------------------+

This property holds the case sensitivity of the sort order, the value
can be one of:

-  Qt.CaseInsensitive Sets the case sensitivity of the sort order to
   insensitivity.
-  Qt.CaseSensitive Sets the case sensitivity of the sort order to
   sensitivity (default).

| 

+--------------------------------------------------------------------------+
|        \ detail : string                                                 |
+--------------------------------------------------------------------------+

This property holds the detail type of which the sorting will be
performed to. The value should be the enumeration value of
`Detail::type </sdk/apps/qml/QtOrganizer/Detail#type-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ direction : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the direction of the sort order, the value can be
one of:

-  Qt.AscendingOrder The items will be sorted by the ascending order
   (default).
-  Qt.DescendingOrder The items will be sorted by the descending order.

| 

+--------------------------------------------------------------------------+
|        \ field : string                                                  |
+--------------------------------------------------------------------------+

This property holds the detail field type of which the sorting will be
performed to. The value should be the filld enumeration value defined in
each detail element.

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

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onSortOrderChanged()                                            |
+--------------------------------------------------------------------------+

This signal is emitted, when any of the
`SortOrder </sdk/apps/qml/QtOrganizer/SortOrder/>`__'s properties have
been changed.

| 
