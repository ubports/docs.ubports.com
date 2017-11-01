The OrganizerModel element provides access to organizer items from the
organizer store.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`ImportError </sdk/apps/qml/QtOrganizer/OrganizerModel#ImportError-prop>`__****
   : enumeration
-  ****`autoUpdate </sdk/apps/qml/QtOrganizer/OrganizerModel#autoUpdate-prop>`__****
   : bool
-  ****`availableManagers </sdk/apps/qml/QtOrganizer/OrganizerModel#availableManagers-prop>`__****
   : list<string>
-  ****`collections </sdk/apps/qml/QtOrganizer/OrganizerModel#collections-prop>`__****
   : list<Collection>
-  ****`endPeriod </sdk/apps/qml/QtOrganizer/OrganizerModel#endPeriod-prop>`__****
   : date
-  ****`error </sdk/apps/qml/QtOrganizer/OrganizerModel#error-prop>`__****
   : string
-  ****`fetchHint </sdk/apps/qml/QtOrganizer/OrganizerModel#fetchHint-prop>`__****
   : FetchHint
-  ****`filter </sdk/apps/qml/QtOrganizer/OrganizerModel#filter-prop>`__****
   : Filter
-  ****`itemCount </sdk/apps/qml/QtOrganizer/OrganizerModel#itemCount-prop>`__****
   : int
-  ****`items </sdk/apps/qml/QtOrganizer/OrganizerModel#items-prop>`__****
   : list<OrganizerItem>
-  ****`manager </sdk/apps/qml/QtOrganizer/OrganizerModel#manager-prop>`__****
   : string
-  ****`managerName </sdk/apps/qml/QtOrganizer/OrganizerModel#managerName-prop>`__****
   : string
-  ****`sortOrders </sdk/apps/qml/QtOrganizer/OrganizerModel#sortOrders-prop>`__****
   : list<SortOrder>
-  ****`startPeriod </sdk/apps/qml/QtOrganizer/OrganizerModel#startPeriod-prop>`__****
   : date

Signals
-------

-  ****`onExportCompleted </sdk/apps/qml/QtOrganizer/OrganizerModel#onExportCompleted-signal>`__****\ ()
-  ****`onImportCompleted </sdk/apps/qml/QtOrganizer/OrganizerModel#onImportCompleted-signal>`__****\ (ImportError
   *error*, URL *url*, list<string> *ids*)
-  ****`onItemsFetched </sdk/apps/qml/QtOrganizer/OrganizerModel#onItemsFetched-signal>`__****\ (int
   *requestId*, list<OrganizerItem> *fetchedItems*)
-  ****`onModelChanged </sdk/apps/qml/QtOrganizer/OrganizerModel#onModelChanged-signal>`__****\ ()

Methods
-------

-  ****`cancelUpdate </sdk/apps/qml/QtOrganizer/OrganizerModel#cancelUpdate-method>`__****\ ()
-  Collection
   ****`collection </sdk/apps/qml/QtOrganizer/OrganizerModel#collection-method>`__****\ (string
   *collectionId*)
-  bool
   ****`containsItems </sdk/apps/qml/QtOrganizer/OrganizerModel#containsItems-method-2>`__****\ (date
   *start*, date *end*)
-  list<bool>
   ****`containsItems </sdk/apps/qml/QtOrganizer/OrganizerModel#containsItems-method>`__****\ (date
   *start*, date *end*, int *interval*)
-  Collection
   ****`defaultCollection </sdk/apps/qml/QtOrganizer/OrganizerModel#defaultCollection-method>`__****\ ()
-  ****`exportItems </sdk/apps/qml/QtOrganizer/OrganizerModel#exportItems-method>`__****\ (url
   *url*, list<string> *profiles*)
-  ****`fetchCollections </sdk/apps/qml/QtOrganizer/OrganizerModel#fetchCollections-method>`__****\ ()
-  int
   ****`fetchItems </sdk/apps/qml/QtOrganizer/OrganizerModel#fetchItems-method-2>`__****\ (stringlist
   *itemIds*)
-  int
   ****`fetchItems </sdk/apps/qml/QtOrganizer/OrganizerModel#fetchItems-method>`__****\ (date
   *start*, date *end*, Filter *filter*, int *maxCount*, list<SortOrder>
   *sortOrders*, FetchHint *fetchHint*)
-  ****`importItems </sdk/apps/qml/QtOrganizer/OrganizerModel#importItems-method>`__****\ (url
   *url*, list<string> *profiles*)
-  OrganizerItem
   ****`item </sdk/apps/qml/QtOrganizer/OrganizerModel#item-method>`__****\ (string
   *itemId*)
-  list<string>
   ****`itemIds </sdk/apps/qml/QtOrganizer/OrganizerModel#itemIds-method>`__****\ (date
   *start*, date *end*)
-  list<OrganizerItem>
   ****`itemsByTimePeriod </sdk/apps/qml/QtOrganizer/OrganizerModel#itemsByTimePeriod-method>`__****\ (date
   *start*, date *end*)
-  ****`removeCollection </sdk/apps/qml/QtOrganizer/OrganizerModel#removeCollection-method>`__****\ (string
   *collectionId*)
-  ****`removeItem </sdk/apps/qml/QtOrganizer/OrganizerModel#removeItem-method-2>`__****\ (OrganizerItem
   *item*)
-  ****`removeItem </sdk/apps/qml/QtOrganizer/OrganizerModel#removeItem-method>`__****\ (string
   *itemId*)
-  ****`removeItems </sdk/apps/qml/QtOrganizer/OrganizerModel#removeItems-method-2>`__****\ (list<OrganizerItem>
   *items*)
-  ****`removeItems </sdk/apps/qml/QtOrganizer/OrganizerModel#removeItems-method>`__****\ (list<string>
   *itemId*)
-  ****`saveCollection </sdk/apps/qml/QtOrganizer/OrganizerModel#saveCollection-method>`__****\ (Collection
   *collection*)
-  ****`saveItem </sdk/apps/qml/QtOrganizer/OrganizerModel#saveItem-method>`__****\ (OrganizerItem
   *item*)
-  ****`update </sdk/apps/qml/QtOrganizer/OrganizerModel#update-method>`__****\ ()
-  ****`updateCollections </sdk/apps/qml/QtOrganizer/OrganizerModel#updateCollections-method>`__****\ ()
-  ****`updateItems </sdk/apps/qml/QtOrganizer/OrganizerModel#updateItems-method>`__****\ ()

Detailed Description
--------------------

`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__ provides
a model of organizer items from the organizer store. The contents of the
model can be specified with
`filter </sdk/apps/qml/QtOrganizer/OrganizerModel#filter-prop>`__,
`sortOrders </sdk/apps/qml/QtOrganizer/OrganizerModel#sortOrders-prop>`__
and
`fetchHint </sdk/apps/qml/QtOrganizer/OrganizerModel#fetchHint-prop>`__
properties. Whether the model is automatically updated when the store or
`C++ organizer </sdk/apps/qml/QtOrganizer/organizer/>`__ item changes,
can be controlled with
`OrganizerModel::autoUpdate </sdk/apps/qml/QtOrganizer/OrganizerModel#autoUpdate-prop>`__
property.

There are two ways of accessing the organizer item data: via the model
by using views and delegates, or alternatively via
`items </sdk/apps/qml/QtOrganizer/organizer#items>`__ list property. Of
the two, the model access is preferred. Direct list access (i.e.
non-model) is not guaranteed to be in order set by sortOrder.

At the moment the model roles provided by
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__ are
``display`` and ``item``. Through the ``item`` role can access any data
provided by the
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__ element.

**Note:** Both the ``startPeriod`` and ``endPeriod`` are set by default
to the current time (when the OrganizerModel was created). In most
cases, both (or at least one) of the startPeriod and endPeriod should be
set; otherwise, the OrganizerModel will contain zero items because the
``startPeriod`` and ``endPeriod`` are the same value. For example, if
only ``endPeriod`` is provided, the OrganizerModel will contain all
items from now (the time of the OrganizerModel's creation) to the
``endPeriod`` time.

**See also** OrganizerItem and QOrganizerManager.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ ImportError : enumeration                                       |
+--------------------------------------------------------------------------+

Defines the errors cases for
`OrganizerModel::importItems() </sdk/apps/qml/QtOrganizer/OrganizerModel#importItems-method>`__
-function.

-  OrganizerModel::ImportNoError Completed successfully, no error.
-  OrganizerModel::ImportUnspecifiedError Unspecified error.
-  OrganizerModel::ImportIOError Input/output error.
-  OrganizerModel::ImportOutOfMemoryError Out of memory error.
-  OrganizerModel::ImportNotReadyError Not ready for importing. Only one
   import operation can be active at a time.
-  OrganizerModel::ImportParseError Error during parsing.

| 

+--------------------------------------------------------------------------+
|        \ autoUpdate : bool                                               |
+--------------------------------------------------------------------------+

This property indicates whether or not the organizer model should be
updated automatically, default value is true.

**See also**
`OrganizerModel::update() </sdk/apps/qml/QtOrganizer/OrganizerModel#update-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ availableManagers : list<string>                                |
+--------------------------------------------------------------------------+

This property holds the list of available manager names. This property
is read only.

| 

+--------------------------------------------------------------------------+
|        \ collections :                                                   |
| list<`Collection </sdk/apps/qml/QtOrganizer/Collection/>`__>             |
+--------------------------------------------------------------------------+

This property holds a list of collections in the organizer model.

**See also** `Collection </sdk/apps/qml/QtOrganizer/Collection/>`__.

| 

+--------------------------------------------------------------------------+
|        \ endPeriod : date                                                |
+--------------------------------------------------------------------------+

This property holds the end date and time period used by the organizer
model to fetch organizer items. The default value is the datetime of
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__ creation.

| 

+--------------------------------------------------------------------------+
|        \ error : string                                                  |
+--------------------------------------------------------------------------+

This property holds the latest error code returned by the organizer
manager.

This property is read only.

| 

+--------------------------------------------------------------------------+
|        \ fetchHint :                                                     |
| `FetchHint </sdk/apps/qml/QtOrganizer/FetchHint/>`__                     |
+--------------------------------------------------------------------------+

This property holds the fetch hint instance used by the organizer model.

**See also** `FetchHint </sdk/apps/qml/QtOrganizer/FetchHint/>`__.

| 

+--------------------------------------------------------------------------+
|        \ filter : `Filter </sdk/apps/qml/QtOrganizer/Filter/>`__         |
+--------------------------------------------------------------------------+

This property holds the filter instance used by the organizer model.

Set filter property to 'null', when you want to reset it to default
value.

**See also** `Filter </sdk/apps/qml/QtOrganizer/Filter/>`__.

| 

+--------------------------------------------------------------------------+
|        \ itemCount : int                                                 |
+--------------------------------------------------------------------------+

This property holds the size of organizer items the
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__ currently
holds.

This property is read only.

| 

+--------------------------------------------------------------------------+
|        \ items :                                                         |
| list<`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__>       |
+--------------------------------------------------------------------------+

This property holds a list of organizer items in the organizer model.

**See also**
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__.

| 

+--------------------------------------------------------------------------+
|        \ manager : string                                                |
+--------------------------------------------------------------------------+

This property holds the manager name or manager uri of the organizer
backend engine. The manager uri format:
qtorganizer:<managerid>:<key>=<value>&<key>=<value>.

For example, memory organizer engine has an optional id parameter, if
user want to share the same memory engine with multiple
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__
instances, the manager property should declared like this:

.. code:: cpp

    model : OrganizerModel {
       manager:"qtorganizer:memory:id=organizer1
    }

instead of just the manager name:

.. code:: cpp

    model : OrganizerModel {
       manager:"memory"
    }

**See also** QOrganizerManager::fromUri().

| 

+--------------------------------------------------------------------------+
|        \ managerName : string                                            |
+--------------------------------------------------------------------------+

This property holds the manager name of the organizer backend engine.
This property is read only.

**See also** QOrganizerManager::fromUri().

| 

+--------------------------------------------------------------------------+
|        \ sortOrders :                                                    |
| list<`SortOrder </sdk/apps/qml/QtOrganizer/SortOrder/>`__>               |
+--------------------------------------------------------------------------+

This property holds a list of sort orders used by the organizer model.

**See also** `SortOrder </sdk/apps/qml/QtOrganizer/SortOrder/>`__.

| 

+--------------------------------------------------------------------------+
|        \ startPeriod : date                                              |
+--------------------------------------------------------------------------+

This property holds the start date and time period used by the organizer
model to fetch organizer items. The default value is the datetime of
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__ creation.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onExportCompleted()                                             |
+--------------------------------------------------------------------------+

This signal is emitted, when
`OrganizerModel::exportItems() </sdk/apps/qml/QtOrganizer/OrganizerModel#exportItems-method>`__
completes. The success of operation can be seen on *error* which is
defined in OrganizerModel::ExportError. *url* indicates the file, which
was exported.

| 

+--------------------------------------------------------------------------+
|        \ onImportCompleted(`ImportError </sdk/apps/qml/QtOrganizer/Organ |
| izerModel#ImportError-prop>`__                                           |
| *error*, URL *url*, list<string> *ids*)                                  |
+--------------------------------------------------------------------------+

This signal is emitted, when
`OrganizerModel::importItems() </sdk/apps/qml/QtOrganizer/OrganizerModel#importItems-method>`__
completes. The success of operation can be seen on *error* which is
defined in
`OrganizerModel::ImportError </sdk/apps/qml/QtOrganizer/OrganizerModel#ImportError-prop>`__.
*url* indicates the file, which was imported. *ids* contains the
imported items ids.

If the operation was successful, items are now imported to backend. If
`OrganizerModel::autoUpdate </sdk/apps/qml/QtOrganizer/OrganizerModel#autoUpdate-prop>`__
is enabled, OrganizerModel::modelChanged will be emitted when imported
items are also visible on
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__'s data
model.

**See also**
`OrganizerModel::importItems </sdk/apps/qml/QtOrganizer/OrganizerModel#importItems-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ onItemsFetched(int *requestId*,                                 |
| list<`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__>       |
| *fetchedItems*)                                                          |
+--------------------------------------------------------------------------+

This handler is called when request of the given *requestId* is finished
with the *fetchedItems*.

**See also**
`fetchItems </sdk/apps/qml/QtOrganizer/OrganizerModel#fetchItems-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ onModelChanged()                                                |
+--------------------------------------------------------------------------+

This signal is emitted, when there are changes in items contained by
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__'s data
model. Items have either been added, removed or modified. This signal is
also always emitted during
`OrganizerModel </sdk/apps/qml/QtOrganizer/OrganizerModel/>`__
construction when data model is ready for use, even in cases when data
model is not having any items in it.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancelUpdate()                                                  |
+--------------------------------------------------------------------------+

Cancel the running organizer model content update request.

**See also**
`OrganizerModel::autoUpdate </sdk/apps/qml/QtOrganizer/OrganizerModel#autoUpdate-prop>`__
and
`OrganizerModel::update </sdk/apps/qml/QtOrganizer/OrganizerModel#update-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ `Collection </sdk/apps/qml/QtOrganizer/Collection/>`__          |
| collection(string *collectionId*)                                        |
+--------------------------------------------------------------------------+

Returns the Collection object which collection id is the given
*collectionId* and null if collection id is not found.

| 

+--------------------------------------------------------------------------+
|        \ bool containsItems(date *start*, date *end*)                    |
+--------------------------------------------------------------------------+

Returns true if there is at least one
`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__ between the
given date range. Both the *start* and *end* parameters are optional, if
no *end* parameter, returns true if there are item(s) after *start*, if
neither start nor end date time provided, returns true if items in the
current model is not empty, otherwise return false.

**See also**
`itemIds() </sdk/apps/qml/QtOrganizer/OrganizerModel#itemIds-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ list<bool> containsItems(date *start*, date *end*, int          |
| *interval*)                                                              |
+--------------------------------------------------------------------------+

Returns a list of booleans telling if there is any item falling in the
given time range.

For example, if the *start* time is 2011-12-08 14:00:00, the *end* time
is 2011-12-08 20:00:00, and the *interval* is 3600 (seconds), a list of
size 6 is returned, telling if there is any item falling in the range of
14:00:00 to 15:00:00, 15:00:00 to 16:00:00, ..., 19:00:00 to 20:00:00.

| 

+--------------------------------------------------------------------------+
|        \ `Collection </sdk/apps/qml/QtOrganizer/Collection/>`__          |
| defaultCollection()                                                      |
+--------------------------------------------------------------------------+

Returns the default Collection object.

| 

+--------------------------------------------------------------------------+
|        \ exportItems(url *url*, list<string> *profiles*)                 |
+--------------------------------------------------------------------------+

Export organizer items into a vcalendar file to the given *url* by
optional *profiles*. At the moment only the local file url is supported
in export method.

| 

+--------------------------------------------------------------------------+
|        \ fetchCollections()                                              |
+--------------------------------------------------------------------------+

Fetch asynchronously a list of organizer collections from the organizer
backend.

| 

+--------------------------------------------------------------------------+
|        \ int fetchItems(stringlist *itemIds*)                            |
+--------------------------------------------------------------------------+

Starts a request to fetch items by the given *itemIds*, and returns the
unique ID of this request. -1 is returned if the request can't be
started.

Note that the items fetched won't be added to the model, but can be
accessed through the
`onItemsFetched </sdk/apps/qml/QtOrganizer/OrganizerModel#onItemsFetched-signal>`__
handler.

**See also**
`onItemsFetched </sdk/apps/qml/QtOrganizer/OrganizerModel#onItemsFetched-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ int fetchItems(date *start*, date *end*,                        |
| `Filter </sdk/apps/qml/QtOrganizer/Filter/>`__ *filter*, int *maxCount*, |
| list<`SortOrder </sdk/apps/qml/QtOrganizer/SortOrder/>`__> *sortOrders*, |
| `FetchHint </sdk/apps/qml/QtOrganizer/FetchHint/>`__ *fetchHint*)        |
+--------------------------------------------------------------------------+

This method will start a request to fetch items between the given
*start* and *end* dates. Optionally a *sort* order, *filter*,
*fetchHint* and *maxCount* can be specified to narrow the search. If
nothing is set for these optional paramenters then defaults are applied,
essentially any sort order, default filter, default storage location and
all items.

The unique ID of this request will be returned. If the request can't be
started -1 is returned. The end date must be greater than the start date
for this method to start a fetch request.

Note that the items fetched won't be added to the model, but can be
accessed through the
`onItemsFetched </sdk/apps/qml/QtOrganizer/OrganizerModel#onItemsFetched-signal>`__
handler. No properties in the model are updated at all.

**See also**
`onItemsFetched </sdk/apps/qml/QtOrganizer/OrganizerModel#onItemsFetched-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ importItems(url *url*, list<string> *profiles*)                 |
+--------------------------------------------------------------------------+

Import organizer items from a vcalendar by the given *url* and optional
*profiles*. Only one import operation can be active at a time.

| 

+--------------------------------------------------------------------------+
|        \ `OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__    |
| item(string *itemId*)                                                    |
+--------------------------------------------------------------------------+

Returns the `OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>`__
object with the given *itemId*.

| 

+--------------------------------------------------------------------------+
|        \ list<string> itemIds(date *start*, date *end*)                  |
+--------------------------------------------------------------------------+

Returns the list of organizer item ids between the given date range
*start* and *end*, excluding generated occurrences. Both the *start* and
*end* parameters are optional, if no *end* parameter, returns all item
ids from *start*, if neither start nor end date time provided, returns
all item ids in the current model.

**See also**
`containsItems() </sdk/apps/qml/QtOrganizer/OrganizerModel#containsItems-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ list<`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerItem/>` |
| __>                                                                      |
| itemsByTimePeriod(date *start*, date *end*)                              |
+--------------------------------------------------------------------------+

Returns the list of organizer items between the given *start* and *end*
period.

| 

+--------------------------------------------------------------------------+
|        \ removeCollection(string *collectionId*)                         |
+--------------------------------------------------------------------------+

Removes asynchronously the organizer collection with the given
*collectionId* from the backend.

| 

+--------------------------------------------------------------------------+
|        \ removeItem(`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerI |
| tem/>`__                                                                 |
| *item*)                                                                  |
+--------------------------------------------------------------------------+

Removes the given organizer *item* from the backend.

| 

+--------------------------------------------------------------------------+
|        \ removeItem(string *itemId*)                                     |
+--------------------------------------------------------------------------+

Removes the organizer item with the given *itemId* from the backend.

| 

+--------------------------------------------------------------------------+
|        \ removeItems(list<`OrganizerItem </sdk/apps/qml/QtOrganizer/Orga |
| nizerItem/>`__>                                                          |
| *items*)                                                                 |
+--------------------------------------------------------------------------+

Removes asynchronously the organizer items in the given *items* list
from the backend.

| 

+--------------------------------------------------------------------------+
|        \ removeItems(list<string> *itemId*)                              |
+--------------------------------------------------------------------------+

Removes asynchronously the organizer items with the given *ids* from the
backend.

| 

+--------------------------------------------------------------------------+
|        \ saveCollection(`Collection </sdk/apps/qml/QtOrganizer/Collectio |
| n/>`__                                                                   |
| *collection*)                                                            |
+--------------------------------------------------------------------------+

Saves asynchronously the given *collection* into the organizer backend.

| 

+--------------------------------------------------------------------------+
|        \ saveItem(`OrganizerItem </sdk/apps/qml/QtOrganizer/OrganizerIte |
| m/>`__                                                                   |
| *item*)                                                                  |
+--------------------------------------------------------------------------+

Saves asynchronously the given *item* into the organizer backend.

| 

+--------------------------------------------------------------------------+
|        \ update()                                                        |
+--------------------------------------------------------------------------+

Manually update the organizer model content including both items and
collections.

**See also**
`OrganizerModel::updateItems </sdk/apps/qml/QtOrganizer/OrganizerModel#updateItems-method>`__,
`OrganizerModel::updateCollections </sdk/apps/qml/QtOrganizer/OrganizerModel#updateCollections-method>`__,
and
`OrganizerModel::autoUpdate </sdk/apps/qml/QtOrganizer/OrganizerModel#autoUpdate-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ updateCollections()                                             |
+--------------------------------------------------------------------------+

Manually update the organizer model collections.

**See also**
`OrganizerModel::update </sdk/apps/qml/QtOrganizer/OrganizerModel#update-method>`__,
`OrganizerModel::updateItems </sdk/apps/qml/QtOrganizer/OrganizerModel#updateItems-method>`__,
and
`OrganizerModel::autoUpdate </sdk/apps/qml/QtOrganizer/OrganizerModel#autoUpdate-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ updateItems()                                                   |
+--------------------------------------------------------------------------+

Manually update the organizer model items.

**See also**
`OrganizerModel::update </sdk/apps/qml/QtOrganizer/OrganizerModel#update-method>`__,
`OrganizerModel::updateCollections </sdk/apps/qml/QtOrganizer/OrganizerModel#updateCollections-method>`__,
and
`OrganizerModel::autoUpdate </sdk/apps/qml/QtOrganizer/OrganizerModel#autoUpdate-prop>`__.

| 
