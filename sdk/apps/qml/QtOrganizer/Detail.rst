The Detail element represents a single, complete detail about a
organizer item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`type </sdk/apps/qml/QtOrganizer/Detail#type-prop>`__**** :
   enumeration

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__****\ ()

Methods
-------

-  bool
   ****`removeValue </sdk/apps/qml/QtOrganizer/Detail#removeValue-method>`__****\ (field)
-  bool
   ****`setValue </sdk/apps/qml/QtOrganizer/Detail#setValue-method>`__****\ (field,
   value)
-  variant
   ****`value </sdk/apps/qml/QtOrganizer/Detail#value-method>`__****\ (field)

Detailed Description
--------------------

**See also** QOrganizerItemDetail.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ type : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the type of the detail and is read only. It can be
one of:

-  Detail.Undefined
-  Detail.Classification
-  Detail.Comment
-  Detail.Description
-  Detail.\ `DisplayLabel </sdk/apps/qml/QtOrganizer/DisplayLabel/>`__
-  Detail.\ `ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__
-  Detail.Guid
-  Detail.Location
-  Detail.Parent
-  Detail.Priority
-  Detail.Recurrence
-  Detail.Tag
-  Detail.Timestamp
-  Detail.Version
-  Detail.Reminder
-  Detail.\ `AudibleReminder </sdk/apps/qml/QtOrganizer/AudibleReminder/>`__
-  Detail.\ `EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__
-  Detail.\ `VisualReminder </sdk/apps/qml/QtOrganizer/VisualReminder/>`__
-  Detail.\ `ExtendedDetail </sdk/apps/qml/QtOrganizer/ExtendedDetail/>`__
-  Detail.\ `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__
-  Detail.\ `EventRsvp </sdk/apps/qml/QtOrganizer/EventRsvp/>`__
-  Detail.\ `EventTime </sdk/apps/qml/QtOrganizer/EventTime/>`__
-  Detail.\ `JournalTime </sdk/apps/qml/QtOrganizer/JournalTime/>`__
-  Detail.\ `TodoTime </sdk/apps/qml/QtOrganizer/TodoTime/>`__
-  Detail.\ `TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__

**See also**
`Classification </sdk/apps/qml/QtOrganizer/Classification/>`__,
`Comment </sdk/apps/qml/QtOrganizer/Comment/>`__,
`Description </sdk/apps/qml/QtOrganizer/Description/>`__,
`DisplayLabel </sdk/apps/qml/QtOrganizer/DisplayLabel/>`__,
`ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__,
`Guid </sdk/apps/qml/QtOrganizer/Guid/>`__,
`Location </sdk/apps/qml/QtOrganizer/Location/>`__,
`Parent </sdk/apps/qml/QtOrganizer/Parent/>`__,
`Priority </sdk/apps/qml/QtOrganizer/Priority/>`__,
`Recurrence </sdk/apps/qml/QtOrganizer/Recurrence/>`__,
`Tag </sdk/apps/qml/QtOrganizer/Tag/>`__,
`Timestamp </sdk/apps/qml/QtOrganizer/Timestamp/>`__,
`Version </sdk/apps/qml/QtOrganizer/Version/>`__,
`Reminder </sdk/apps/qml/QtOrganizer/Reminder/>`__,
`AudibleReminder </sdk/apps/qml/QtOrganizer/AudibleReminder/>`__,
`EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__,
`VisualReminder </sdk/apps/qml/QtOrganizer/VisualReminder/>`__,
`ExtendedDetail </sdk/apps/qml/QtOrganizer/ExtendedDetail/>`__,
`EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__,
`EventRsvp </sdk/apps/qml/QtOrganizer/EventRsvp/>`__,
`EventTime </sdk/apps/qml/QtOrganizer/EventTime/>`__,
`JournalTime </sdk/apps/qml/QtOrganizer/JournalTime/>`__,
`TodoTime </sdk/apps/qml/QtOrganizer/TodoTime/>`__, and
`TodoProgress </sdk/apps/qml/QtOrganizer/TodoProgress/>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

This signal is emitted, when any of the Details's or child element's
(like `EventTime </sdk/apps/qml/QtOrganizer/EventTime/>`__,
`DisplayLabel </sdk/apps/qml/QtOrganizer/DisplayLabel/>`__ etc)
properties have been changed.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool removeValue(field)                                         |
+--------------------------------------------------------------------------+

Removes the value stored in this detail for the given *field*. Returns
true if a value was stored for the given key and the operation
succeeded, and false otherwise.

| 

+--------------------------------------------------------------------------+
|        \ bool setValue(field, value)                                     |
+--------------------------------------------------------------------------+

Inserts *value* into the detail for the given *key* if value is valid.
If value is invalid, removes the field with the given key from the
detail. Returns true if the given value was set for the key (if the
value was valid), or if the given key was removed from detail (if the
value was invalid), otherwise returns false if the key was unable to be
removed (and the value was invalid).

| 

+--------------------------------------------------------------------------+
|        \ variant value(field)                                            |
+--------------------------------------------------------------------------+

Returns the value stored in this detail for the given *field*, or an
empty variant if not available.

| 
