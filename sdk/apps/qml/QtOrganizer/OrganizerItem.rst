.. _sdk_qtorganizer_organizeritem:
QtOrganizer OrganizerItem
=========================

The OrganizerItem element represents the in-memory version of a
organizer item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`collectionId <sdk_qtorganizer_organizeritem_collectionId-prop>`
   : string
-  :ref:`description <sdk_qtorganizer_organizeritem_description-prop>`
   : string
-  :ref:`displayLabel <sdk_qtorganizer_organizeritem_displayLabel-prop>`
   : string
-  :ref:`guid <sdk_qtorganizer_organizeritem_guid-prop>` : string
-  :ref:`itemDetails <sdk_qtorganizer_organizeritem_itemDetails-prop>`
   : list<Detail>
-  :ref:`itemId <sdk_qtorganizer_organizeritem_itemId-prop>` :
   string
-  :ref:`itemType <sdk_qtorganizer_organizeritem_itemType-prop>` :
   enum
-  :ref:`manager <sdk_qtorganizer_organizeritem_manager-prop>` :
   string
-  :ref:`modified <sdk_qtorganizer_organizeritem_modified-prop>` :
   bool

Signals
-------

-  :ref:`onItemChanged <sdk_qtorganizer_organizeritem_onItemChanged-signal>`\ ()

Methods
-------

-  :ref:`clearDetails <sdk_qtorganizer_organizeritem_clearDetails-method>`\ ()
-  Detail
   **:ref:`detail <sdk_qtorganizer_organizeritem#detail-method>`**\ (type)
-  list<Detail>
   **:ref:`details <sdk_qtorganizer_organizeritem#details-method>`**\ (type)
-  void
   **:ref:`removeDetail <sdk_qtorganizer_organizeritem#removeDetail-method>`**\ (detail)
-  :ref:`save <sdk_qtorganizer_organizeritem_save-method>`\ ()
-  void
   **:ref:`setDetail <sdk_qtorganizer_organizeritem#setDetail-method>`**\ (detail)

Detailed Description
--------------------

A :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` has a number of
mandatory details. Different subclasses of
:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` (i.e., Event,
:ref:`EventOccurrence <sdk_qtorganizer_eventoccurrence>`, Journal, Todo,
:ref:`TodoOccurrence <sdk_qtorganizer_todooccurrence>`, Note) may have more
mandatory details.

Most frequently-used details can also be accessed through convenient
properties, e.g.
:ref:`displayLabel <sdk_qtorganizer_organizeritem#displayLabel-prop>`,
while all details can be accessed through
:ref:`detail() <sdk_qtorganizer_organizeritem#detail-method>`,
:ref:`details() <sdk_qtorganizer_organizeritem#details-method>`,
saveDetail(), among others.

**See also** Event, EventOccurrence, Journal, Todo, TodoOccurrence,
Note, QOrganizerManager, and QOrganizerItem.

Property Documentation
----------------------

.. _sdk_qtorganizer_organizeritem_collectionId-prop:

+--------------------------------------------------------------------------+
|        \ collectionId : string                                           |
+--------------------------------------------------------------------------+

This property holds the id of collection where the item belongs to.

| 

.. _sdk_qtorganizer_organizeritem_description-prop:

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

This property holds the description text of the organizer item.

| 

.. _sdk_qtorganizer_organizeritem_displayLabel-prop:

+--------------------------------------------------------------------------+
|        \ displayLabel : string                                           |
+--------------------------------------------------------------------------+

This property holds the display label of the organizer item.

| 

.. _sdk_qtorganizer_organizeritem_guid-prop:

+--------------------------------------------------------------------------+
|        \ guid : string                                                   |
+--------------------------------------------------------------------------+

This property holds the GUID string of the organizer item.

| 

.. _sdk_qtorganizer_organizeritem_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ itemDetails : list<`Detail <sdk_qtorganizer_detail>`>         |
+--------------------------------------------------------------------------+

This property holds the details of the
:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` object.

| 

.. _sdk_qtorganizer_organizeritem_itemId-prop:

+--------------------------------------------------------------------------+
|        \ itemId : string                                                 |
+--------------------------------------------------------------------------+

This property holds the id of the
:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` object.

| 

.. _sdk_qtorganizer_organizeritem_itemType-prop:

+--------------------------------------------------------------------------+
|        \ itemType : enum                                                 |
+--------------------------------------------------------------------------+

This property holds the type of the
:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` object.

| 

.. _sdk_qtorganizer_organizeritem_manager-prop:

+--------------------------------------------------------------------------+
|        \ manager : string                                                |
+--------------------------------------------------------------------------+

This property holds the manager uri which the
:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` object comes from.

| 

.. _sdk_qtorganizer_organizeritem_modified-prop:

+--------------------------------------------------------------------------+
|        \ modified : bool                                                 |
+--------------------------------------------------------------------------+

This property holds the dirty flag of the
:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` object.

**See also** :ref:`save <sdk_qtorganizer_organizeritem#save-method>`.

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_organizeritem_onItemChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onItemChanged()                                                 |
+--------------------------------------------------------------------------+

This signal is emitted, when any of the
:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>`'s or child element's
(like Event, Todo etc) properties have been changed.

| 

Method Documentation
--------------------

.. _sdk_qtorganizer_organizeritem_clearDetails-method:

+--------------------------------------------------------------------------+
|        \ clearDetails()                                                  |
+--------------------------------------------------------------------------+

Removes all details from the organizer item.

**See also**
:ref:`removeDetail <sdk_qtorganizer_organizeritem#removeDetail-method>`.

| 

.. _sdk_qtorganizer_organizeritem_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ `Detail <sdk_qtorganizer_detail>` detail(type)                |
+--------------------------------------------------------------------------+

Returns the first detail stored in the organizer item with the given
*type*.

**See also** :ref:`Detail::type <sdk_qtorganizer_detail#type-prop>`.

| 

.. _sdk_qtorganizer_organizeritem_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ list<`Detail <sdk_qtorganizer_detail>`> details(type)         |
+--------------------------------------------------------------------------+

Returns all the details stored in the organizer item with the given
*type*.

**See also** :ref:`Detail::type <sdk_qtorganizer_detail#type-prop>`.

| 

.. _sdk_qtorganizer_organizeritem_void-method:

+--------------------------------------------------------------------------+
|        \ void                                                            |
| removeDetail(:ref:`detail <sdk_qtorganizer_organizeritem#detail-method>`)   |
+--------------------------------------------------------------------------+

Removes given *detail* from the organizer item.

| 

.. _sdk_qtorganizer_organizeritem_save-method:

+--------------------------------------------------------------------------+
|        \ save()                                                          |
+--------------------------------------------------------------------------+

Saves this :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` if the item
has been modified.

**See also** :ref:`modified <sdk_qtorganizer_organizeritem#modified-prop>`.

| 

.. _sdk_qtorganizer_organizeritem_void-method:

+--------------------------------------------------------------------------+
|        \ void                                                            |
| setDetail(:ref:`detail <sdk_qtorganizer_organizeritem#detail-method>`)      |
+--------------------------------------------------------------------------+

Saves the given *detail* in the organizer item, and sets its id.

| 
