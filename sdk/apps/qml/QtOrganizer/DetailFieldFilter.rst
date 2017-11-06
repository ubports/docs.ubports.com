.. _sdk_qtorganizer_detailfieldfilter:

QtOrganizer DetailFieldFilter
=============================

The DetailFieldFilter element provides a filter based around a detail value criterion.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`detail <sdk_qtorganizer_detailfieldfilter_detail>` : enum
-  :ref:`field <sdk_qtorganizer_detailfieldfilter_field>` : enum
-  :ref:`matchFlags <sdk_qtorganizer_detailfieldfilter_matchFlags>` : enumeration
-  :ref:`value <sdk_qtorganizer_detailfieldfilter_value>` : variant

Signals
-------

-  :ref:`onFilterChanged <sdk_qtorganizer_detailfieldfilter_onFilterChanged>`\ ()

Detailed Description
--------------------

Simple example how to utilize :ref:`DetailFieldFilter <sdk_qtorganizer_detailfieldfilter>` element together with :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>` and ListView elements:

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

.. _sdk_qtorganizer_detailfieldfilter_detail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detail : enum                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail type of which the detail filter will be matched to. The value shuold be the enumeration value of :ref:`Detail::type <sdk_qtorganizer_detail_type>`.

.. _sdk_qtorganizer_detailfieldfilter_field:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| field : enum                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail field type of which the detail field filter will be matched to. The value should be the filld enumeration value defined in each detail element.

**See also** :ref:`EventTime <sdk_qtorganizer_eventtime>`, :ref:`JournalTime <sdk_qtorganizer_journaltime>`, :ref:`TodoTime <sdk_qtorganizer_todotime>`, :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`, :ref:`Reminder <sdk_qtorganizer_reminder>`, :ref:`AudibleReminder <sdk_qtorganizer_audiblereminder>`, :ref:`VisualReminder <sdk_qtorganizer_visualreminder>`, :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`, :ref:`Comment <sdk_qtorganizer_comment>`, :ref:`Description <sdk_qtorganizer_description>`, :ref:`DisplayLabel <sdk_qtorganizer_displaylabel>`, :ref:`Guid <sdk_qtorganizer_guid>`, :ref:`Location <sdk_qtorganizer_location>`, :ref:`Parent <sdk_qtorganizer_parent>`, :ref:`Priority <sdk_qtorganizer_priority>`, :ref:`Recurrence <sdk_qtorganizer_recurrence>`, :ref:`Timestamp <sdk_qtorganizer_timestamp>`, :ref:`ItemType <sdk_qtorganizer_itemtype>`, and :ref:`Tag <sdk_qtorganizer_tag>`.

.. _sdk_qtorganizer_detailfieldfilter_matchFlags:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| matchFlags : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the semantics of the value matching criterion. The valid match flags include:

-  MatchExactly - Performs QVariant-based matching (default).
-  MatchContains - The search term is contained in the item.
-  MatchStartsWith - The search term matches the start of the item.
-  MatchEndsWith - The search term matches the end of the item.
-  MatchFixedString - Performs string-based matching. String-based comparisons are case-insensitive unless the ``MatchCaseSensitive`` flag is also specified.
-  MatchCaseSensitive - The search is case sensitive.

.. _sdk_qtorganizer_detailfieldfilter_value:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| value : variant                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value criterion of the detail field filter.

Signal Documentation
--------------------

.. _sdk_qtorganizer_detailfieldfilter_onFilterChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onFilterChanged()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`QtOrganizer5::Filter::onFilterChanged <sdk_qtorganizer_filter_onFilterChanged>`.

