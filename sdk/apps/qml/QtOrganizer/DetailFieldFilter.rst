The DetailFieldFilter element provides a filter based around a detail
value criterion.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`detail </sdk/apps/qml/QtOrganizer/DetailFieldFilter#detail-prop>`__****
   : enum
-  ****`field </sdk/apps/qml/QtOrganizer/DetailFieldFilter#field-prop>`__****
   : enum
-  ****`matchFlags </sdk/apps/qml/QtOrganizer/DetailFieldFilter#matchFlags-prop>`__****
   : enumeration
-  ****`value </sdk/apps/qml/QtOrganizer/DetailFieldFilter#value-prop>`__****
   : variant

Signals
-------

-  ****`onFilterChanged </sdk/apps/qml/QtOrganizer/DetailFieldFilter#onFilterChanged-signal>`__****\ ()

Detailed Description
--------------------

Simple example how to utilize
`DetailFieldFilter </sdk/apps/qml/QtOrganizer/DetailFieldFilter/>`__
element together with
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__ and
ListView elements:

.. code:: cpp

    Rectangle {
        height: 400; width: 400;
        OrganizerModel{
            id: organizer
            startPeriod: "2009-01-01"
            endPeriod: "2012-12-31"
            filter: todoFilter
        }
        DetailFieldFilter {
            id: todoFilter
            detail: Detail.Type
            field: Type.FieldType
            value: Type.Todo
        }
        ListView {
            width: parent.width; height: parent.height;
            model: organizer.items
            delegate: Text {text: displayLabel}
        }
    }

**See also** QOrganizerItemDetailFieldFilter.

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

This property holds the detail field type of which the detail field
filter will be matched to. The value should be the filld enumeration
value defined in each detail element.

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

This property holds the semantics of the value matching criterion. The
valid match flags include:

-  MatchExactly - Performs QVariant-based matching (default).
-  MatchContains - The search term is contained in the item.
-  MatchStartsWith - The search term matches the start of the item.
-  MatchEndsWith - The search term matches the end of the item.
-  MatchFixedString - Performs string-based matching. String-based
   comparisons are case-insensitive unless the ``MatchCaseSensitive``
   flag is also specified.
-  MatchCaseSensitive - The search is case sensitive.

| 

+--------------------------------------------------------------------------+
|        \ value : variant                                                 |
+--------------------------------------------------------------------------+

This property holds the value criterion of the detail field filter.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onFilterChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`QtOrganizer5::Filter::onFilterChanged </sdk/apps/qml/QtOrganizer/Filter#onFilterChanged-signal>`__.

| 
