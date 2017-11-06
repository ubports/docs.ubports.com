.. _sdk_qtorganizer_detail:

QtOrganizer Detail
==================

The Detail element represents a single, complete detail about a organizer item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`type <sdk_qtorganizer_detail_type>` : enumeration

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_detail_onDetailChanged>`\ ()

Methods
-------

-  bool :ref:`removeValue <sdk_qtorganizer_detail_removeValue>`\ (field)
-  bool :ref:`setValue <sdk_qtorganizer_detail_setValue>`\ (field, value)
-  variant :ref:`value <sdk_qtorganizer_detail_value>`\ (field)

Detailed Description
--------------------

**See also** QOrganizerItemDetail.

Property Documentation
----------------------

.. _sdk_qtorganizer_detail_type:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| type : enumeration                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type of the detail and is read only. It can be one of:

-  Detail.Undefined
-  Detail.Classification
-  Detail.Comment
-  Detail.Description
-  Detail.\ :ref:`DisplayLabel <sdk_qtorganizer_displaylabel>`
-  Detail.\ :ref:`ItemType <sdk_qtorganizer_itemtype>`
-  Detail.Guid
-  Detail.Location
-  Detail.Parent
-  Detail.Priority
-  Detail.Recurrence
-  Detail.Tag
-  Detail.Timestamp
-  Detail.Version
-  Detail.Reminder
-  Detail.\ :ref:`AudibleReminder <sdk_qtorganizer_audiblereminder>`
-  Detail.\ :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`
-  Detail.\ :ref:`VisualReminder <sdk_qtorganizer_visualreminder>`
-  Detail.\ :ref:`ExtendedDetail <sdk_qtorganizer_extendeddetail>`
-  Detail.\ :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`
-  Detail.\ :ref:`EventRsvp <sdk_qtorganizer_eventrsvp>`
-  Detail.\ :ref:`EventTime <sdk_qtorganizer_eventtime>`
-  Detail.\ :ref:`JournalTime <sdk_qtorganizer_journaltime>`
-  Detail.\ :ref:`TodoTime <sdk_qtorganizer_todotime>`
-  Detail.\ :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`

**See also** :ref:`Classification <sdk_qtorganizer_classification>`, :ref:`Comment <sdk_qtorganizer_comment>`, :ref:`Description <sdk_qtorganizer_description>`, :ref:`DisplayLabel <sdk_qtorganizer_displaylabel>`, :ref:`ItemType <sdk_qtorganizer_itemtype>`, :ref:`Guid <sdk_qtorganizer_guid>`, :ref:`Location <sdk_qtorganizer_location>`, :ref:`Parent <sdk_qtorganizer_parent>`, :ref:`Priority <sdk_qtorganizer_priority>`, :ref:`Recurrence <sdk_qtorganizer_recurrence>`, :ref:`Tag <sdk_qtorganizer_tag>`, :ref:`Timestamp <sdk_qtorganizer_timestamp>`, :ref:`Version <sdk_qtorganizer_version>`, :ref:`Reminder <sdk_qtorganizer_reminder>`, :ref:`AudibleReminder <sdk_qtorganizer_audiblereminder>`, :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`, :ref:`VisualReminder <sdk_qtorganizer_visualreminder>`, :ref:`ExtendedDetail <sdk_qtorganizer_extendeddetail>`, :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`, :ref:`EventRsvp <sdk_qtorganizer_eventrsvp>`, :ref:`EventTime <sdk_qtorganizer_eventtime>`, :ref:`JournalTime <sdk_qtorganizer_journaltime>`, :ref:`TodoTime <sdk_qtorganizer_todotime>`, and :ref:`TodoProgress <sdk_qtorganizer_todoprogress>`.

Signal Documentation
--------------------

.. _sdk_qtorganizer_detail_onDetailChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onDetailChanged()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when any of the Details's or child element's (like :ref:`EventTime <sdk_qtorganizer_eventtime>`, :ref:`DisplayLabel <sdk_qtorganizer_displaylabel>` etc) properties have been changed.

Method Documentation
--------------------

.. _sdk_qtorganizer_detail_removeValue:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool removeValue(field)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes the value stored in this detail for the given *field*. Returns true if a value was stored for the given key and the operation succeeded, and false otherwise.

.. _sdk_qtorganizer_detail_setValue:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool setValue(field, value)                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Inserts *value* into the detail for the given *key* if value is valid. If value is invalid, removes the field with the given key from the detail. Returns true if the given value was set for the key (if the value was valid), or if the given key was removed from detail (if the value was invalid), otherwise returns false if the key was unable to be removed (and the value was invalid).

.. _sdk_qtorganizer_detail_value:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| variant value(field)                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the value stored in this detail for the given *field*, or an empty variant if not available.

