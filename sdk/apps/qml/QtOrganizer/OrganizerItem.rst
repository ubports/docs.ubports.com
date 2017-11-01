The OrganizerItem element represents the in-memory version of a
organizer item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`collectionId </sdk/apps/qml/QtOrganizer/OrganizerItem#collectionId-prop>`__****
   : string
-  ****`description </sdk/apps/qml/QtOrganizer/OrganizerItem#description-prop>`__****
   : string
-  ****`displayLabel </sdk/apps/qml/QtOrganizer/OrganizerItem#displayLabel-prop>`__****
   : string
-  ****`guid </sdk/apps/qml/QtOrganizer/OrganizerItem#guid-prop>`__****
   : string
-  ****`itemDetails </sdk/apps/qml/QtOrganizer/OrganizerItem#itemDetails-prop>`__****
   : list<Detail>
-  ****`itemId </sdk/apps/qml/QtOrganizer/OrganizerItem#itemId-prop>`__****
   : string
-  ****`itemType </sdk/apps/qml/QtOrganizer/OrganizerItem#itemType-prop>`__****
   : enum
-  ****`manager </sdk/apps/qml/QtOrganizer/OrganizerItem#manager-prop>`__****
   : string
-  ****`modified </sdk/apps/qml/QtOrganizer/OrganizerItem#modified-prop>`__****
   : bool

Signals
-------

-  ****`onItemChanged </sdk/apps/qml/QtOrganizer/OrganizerItem#onItemChanged-signal>`__****\ ()

Methods
-------

-  ****`clearDetails </sdk/apps/qml/QtOrganizer/OrganizerItem#clearDetails-method>`__****\ ()
-  Detail
   ****`detail </sdk/apps/qml/QtOrganizer/OrganizerItem#detail-method>`__****\ (type)
-  list<Detail>
   ****`details </sdk/apps/qml/QtOrganizer/OrganizerItem#details-method>`__****\ (type)
-  void
   ****`removeDetail </sdk/apps/qml/QtOrganizer/OrganizerItem#removeDetail-method>`__****\ (detail)
-  ****`save </sdk/apps/qml/QtOrganizer/OrganizerItem#save-method>`__****\ ()
-  void
   ****`setDetail </sdk/apps/qml/QtOrganizer/OrganizerItem#setDetail-method>`__****\ (detail)

Detailed Description
--------------------

A `OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__ has a
number of mandatory details. Different subclasses of
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__ (i.e.,
Event, `EventOccurrence </sdk/apps/qml/QtOrganizer/EventOccurrence/>`__,
Journal, Todo,
`TodoOccurrence </sdk/apps/qml/QtOrganizer/TodoOccurrence/>`__, Note)
may have more mandatory details.

Most frequently-used details can also be accessed through convenient
properties, e.g.
`displayLabel </sdk/apps/qml/QtOrganizer/OrganizerItem#displayLabel-prop>`__,
while all details can be accessed through
`detail() </sdk/apps/qml/QtOrganizer/OrganizerItem#detail-method>`__,
`details() </sdk/apps/qml/QtOrganizer/OrganizerItem#details-method>`__,
saveDetail(), among others.

**See also** Event, EventOccurrence, Journal, Todo, TodoOccurrence,
Note, QOrganizerManager, and QOrganizerItem.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ collectionId : string                                           |
+--------------------------------------------------------------------------+

This property holds the id of collection where the item belongs to.

| 

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

This property holds the description text of the organizer item.

| 

+--------------------------------------------------------------------------+
|        \ displayLabel : string                                           |
+--------------------------------------------------------------------------+

This property holds the display label of the organizer item.

| 

+--------------------------------------------------------------------------+
|        \ guid : string                                                   |
+--------------------------------------------------------------------------+

This property holds the GUID string of the organizer item.

| 

+--------------------------------------------------------------------------+
|        \ itemDetails :                                                   |
| list<`Detail </sdk/apps/qml/QtOrganizer/Detail/>`__>                     |
+--------------------------------------------------------------------------+

This property holds the details of the
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__ object.

| 

+--------------------------------------------------------------------------+
|        \ itemId : string                                                 |
+--------------------------------------------------------------------------+

This property holds the id of the
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__ object.

| 

+--------------------------------------------------------------------------+
|        \ itemType : enum                                                 |
+--------------------------------------------------------------------------+

This property holds the type of the
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__ object.

| 

+--------------------------------------------------------------------------+
|        \ manager : string                                                |
+--------------------------------------------------------------------------+

This property holds the manager uri which the
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__ object
comes from.

| 

+--------------------------------------------------------------------------+
|        \ modified : bool                                                 |
+--------------------------------------------------------------------------+

This property holds the dirty flag of the
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__ object.

**See also**
`save </sdk/apps/qml/QtOrganizer/OrganizerItem#save-method>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onItemChanged()                                                 |
+--------------------------------------------------------------------------+

This signal is emitted, when any of the
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__'s or child
element's (like Event, Todo etc) properties have been changed.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ clearDetails()                                                  |
+--------------------------------------------------------------------------+

Removes all details from the organizer item.

**See also**
`removeDetail </sdk/apps/qml/QtOrganizer/OrganizerItem#removeDetail-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ `Detail </sdk/apps/qml/QtOrganizer/Detail/>`__ detail(type)     |
+--------------------------------------------------------------------------+

Returns the first detail stored in the organizer item with the given
*type*.

**See also**
`Detail::type </sdk/apps/qml/QtOrganizer/Detail#type-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ list<`Detail </sdk/apps/qml/QtOrganizer/Detail/>`__>            |
| details(type)                                                            |
+--------------------------------------------------------------------------+

Returns all the details stored in the organizer item with the given
*type*.

**See also**
`Detail::type </sdk/apps/qml/QtOrganizer/Detail#type-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ void                                                            |
| removeDetail(`detail </sdk/apps/qml/QtOrganizer/OrganizerItem#detail-met |
| hod>`__)                                                                 |
+--------------------------------------------------------------------------+

Removes given *detail* from the organizer item.

| 

+--------------------------------------------------------------------------+
|        \ save()                                                          |
+--------------------------------------------------------------------------+

Saves this `OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__
if the item has been modified.

**See also**
`modified </sdk/apps/qml/QtOrganizer/OrganizerItem#modified-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ void                                                            |
| setDetail(`detail </sdk/apps/qml/QtOrganizer/OrganizerItem#detail-method |
| >`__)                                                                    |
+--------------------------------------------------------------------------+

Saves the given *detail* in the organizer item, and sets its id.

| 
