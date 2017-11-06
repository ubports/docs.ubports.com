.. _sdk_qtorganizer_organizermodel:

QtOrganizer OrganizerModel
==========================

The OrganizerModel element provides access to organizer items from the organizer store.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`ImportError <sdk_qtorganizer_organizermodel_ImportError>` : enumeration
-  :ref:`autoUpdate <sdk_qtorganizer_organizermodel_autoUpdate>` : bool
-  :ref:`availableManagers <sdk_qtorganizer_organizermodel_availableManagers>` : list<string>
-  :ref:`collections <sdk_qtorganizer_organizermodel_collections>` : list<Collection>
-  :ref:`endPeriod <sdk_qtorganizer_organizermodel_endPeriod>` : date
-  :ref:`error <sdk_qtorganizer_organizermodel_error>` : string
-  :ref:`fetchHint <sdk_qtorganizer_organizermodel_fetchHint>` : FetchHint
-  :ref:`filter <sdk_qtorganizer_organizermodel_filter>` : Filter
-  :ref:`itemCount <sdk_qtorganizer_organizermodel_itemCount>` : int
-  :ref:`items <sdk_qtorganizer_organizermodel_items>` : list<OrganizerItem>
-  :ref:`manager <sdk_qtorganizer_organizermodel_manager>` : string
-  :ref:`managerName <sdk_qtorganizer_organizermodel_managerName>` : string
-  :ref:`sortOrders <sdk_qtorganizer_organizermodel_sortOrders>` : list<SortOrder>
-  :ref:`startPeriod <sdk_qtorganizer_organizermodel_startPeriod>` : date

Signals
-------

-  :ref:`onExportCompleted <sdk_qtorganizer_organizermodel_onExportCompleted>`\ ()
-  :ref:`onImportCompleted <sdk_qtorganizer_organizermodel_onImportCompleted>`\ (ImportError *error*, URL *url*, list<string> *ids*)
-  :ref:`onItemsFetched <sdk_qtorganizer_organizermodel_onItemsFetched>`\ (int *requestId*, list<OrganizerItem> *fetchedItems*)
-  :ref:`onModelChanged <sdk_qtorganizer_organizermodel_onModelChanged>`\ ()

Methods
-------

-  :ref:`cancelUpdate <sdk_qtorganizer_organizermodel_cancelUpdate>`\ ()
-  Collection :ref:`collection <sdk_qtorganizer_organizermodel_collection>`\ (string *collectionId*)
-  bool :ref:`containsItems <sdk_qtorganizer_organizermodel_containsItems>`\ (date *start*, date *end*)
-  list<bool> :ref:`containsItems <sdk_qtorganizer_organizermodel_containsItems>`\ (date *start*, date *end*, int *interval*)
-  Collection :ref:`defaultCollection <sdk_qtorganizer_organizermodel_defaultCollection>`\ ()
-  :ref:`exportItems <sdk_qtorganizer_organizermodel_exportItems>`\ (url *url*, list<string> *profiles*)
-  :ref:`fetchCollections <sdk_qtorganizer_organizermodel_fetchCollections>`\ ()
-  int :ref:`fetchItems <sdk_qtorganizer_organizermodel_fetchItems>`\ (stringlist *itemIds*)
-  int :ref:`fetchItems <sdk_qtorganizer_organizermodel_fetchItems>`\ (date *start*, date *end*, Filter *filter*, int *maxCount*, list<SortOrder> *sortOrders*, FetchHint *fetchHint*)
-  :ref:`importItems <sdk_qtorganizer_organizermodel_importItems>`\ (url *url*, list<string> *profiles*)
-  OrganizerItem :ref:`item <sdk_qtorganizer_organizermodel_item>`\ (string *itemId*)
-  list<string> :ref:`itemIds <sdk_qtorganizer_organizermodel_itemIds>`\ (date *start*, date *end*)
-  list<OrganizerItem> :ref:`itemsByTimePeriod <sdk_qtorganizer_organizermodel_itemsByTimePeriod>`\ (date *start*, date *end*)
-  :ref:`removeCollection <sdk_qtorganizer_organizermodel_removeCollection>`\ (string *collectionId*)
-  :ref:`removeItem <sdk_qtorganizer_organizermodel_removeItem>`\ (OrganizerItem *item*)
-  :ref:`removeItem <sdk_qtorganizer_organizermodel_removeItem>`\ (string *itemId*)
-  :ref:`removeItems <sdk_qtorganizer_organizermodel_removeItems>`\ (list<OrganizerItem> *items*)
-  :ref:`removeItems <sdk_qtorganizer_organizermodel_removeItems>`\ (list<string> *itemId*)
-  :ref:`saveCollection <sdk_qtorganizer_organizermodel_saveCollection>`\ (Collection *collection*)
-  :ref:`saveItem <sdk_qtorganizer_organizermodel_saveItem>`\ (OrganizerItem *item*)
-  :ref:`update <sdk_qtorganizer_organizermodel_update>`\ ()
-  :ref:`updateCollections <sdk_qtorganizer_organizermodel_updateCollections>`\ ()
-  :ref:`updateItems <sdk_qtorganizer_organizermodel_updateItems>`\ ()

Detailed Description
--------------------

:ref:`OrganizerModel <sdk_qtorganizer_organizermodel>` provides a model of organizer items from the organizer store. The contents of the model can be specified with :ref:`filter <sdk_qtorganizer_organizermodel_filter>`, :ref:`sortOrders <sdk_qtorganizer_organizermodel_sortOrders>` and :ref:`fetchHint <sdk_qtorganizer_organizermodel_fetchHint>` properties. Whether the model is automatically updated when the store or `C++ organizer </sdk/apps/qml/QtOrganizer/organizer/>`_  item changes, can be controlled with :ref:`OrganizerModel::autoUpdate <sdk_qtorganizer_organizermodel_autoUpdate>` property.

There are two ways of accessing the organizer item data: via the model by using views and delegates, or alternatively via `items </sdk/apps/qml/QtOrganizer/organizer/#items>`_  list property. Of the two, the model access is preferred. Direct list access (i.e. non-model) is not guaranteed to be in order set by sortOrder.

At the moment the model roles provided by :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>` are ``display`` and ``item``. Through the ``item`` role can access any data provided by the :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` element.

**Note:** Both the ``startPeriod`` and ``endPeriod`` are set by default to the current time (when the OrganizerModel was created). In most cases, both (or at least one) of the startPeriod and endPeriod should be set; otherwise, the OrganizerModel will contain zero items because the ``startPeriod`` and ``endPeriod`` are the same value. For example, if only ``endPeriod`` is provided, the OrganizerModel will contain all items from now (the time of the OrganizerModel's creation) to the ``endPeriod`` time.

**See also** OrganizerItem and QOrganizerManager.

Property Documentation
----------------------

.. _sdk_qtorganizer_organizermodel_ImportError:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ImportError : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the errors cases for :ref:`OrganizerModel::importItems() <sdk_qtorganizer_organizermodel_importItems>` -function.

-  OrganizerModel::ImportNoError Completed successfully, no error.
-  OrganizerModel::ImportUnspecifiedError Unspecified error.
-  OrganizerModel::ImportIOError Input/output error.
-  OrganizerModel::ImportOutOfMemoryError Out of memory error.
-  OrganizerModel::ImportNotReadyError Not ready for importing. Only one import operation can be active at a time.
-  OrganizerModel::ImportParseError Error during parsing.

.. _sdk_qtorganizer_organizermodel_autoUpdate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoUpdate : bool                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether or not the organizer model should be updated automatically, default value is true.

**See also** :ref:`OrganizerModel::update() <sdk_qtorganizer_organizermodel_update>`.

.. _sdk_qtorganizer_organizermodel_availableManagers:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| availableManagers : list<string>                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of available manager names. This property is read only.

.. _sdk_qtorganizer_organizermodel_collections:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| collections : list<:ref:`Collection <sdk_qtorganizer_collection>`>                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of collections in the organizer model.

**See also** :ref:`Collection <sdk_qtorganizer_collection>`.

.. _sdk_qtorganizer_organizermodel_endPeriod:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| endPeriod : date                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the end date and time period used by the organizer model to fetch organizer items. The default value is the datetime of :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>` creation.

.. _sdk_qtorganizer_organizermodel_error:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| error : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the latest error code returned by the organizer manager.

This property is read only.

.. _sdk_qtorganizer_organizermodel_fetchHint:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fetchHint : :ref:`FetchHint <sdk_qtorganizer_fetchhint>`                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the fetch hint instance used by the organizer model.

**See also** :ref:`FetchHint <sdk_qtorganizer_fetchhint>`.

.. _sdk_qtorganizer_organizermodel_filter:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| filter : :ref:`Filter <sdk_qtorganizer_filter>`                                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the filter instance used by the organizer model.

Set filter property to 'null', when you want to reset it to default value.

**See also** :ref:`Filter <sdk_qtorganizer_filter>`.

.. _sdk_qtorganizer_organizermodel_itemCount:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemCount : int                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the size of organizer items the :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>` currently holds.

This property is read only.

.. _sdk_qtorganizer_organizermodel_items:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| items : list<:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>`>                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of organizer items in the organizer model.

**See also** :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>`.

.. _sdk_qtorganizer_organizermodel_manager:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| manager : string                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the manager name or manager uri of the organizer backend engine. The manager uri format: qtorganizer:<managerid>:<key>=<value>&<key>=<value>.

For example, memory organizer engine has an optional id parameter, if user want to share the same memory engine with multiple :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>` instances, the manager property should declared like this:

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

.. _sdk_qtorganizer_organizermodel_managerName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| managerName : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the manager name of the organizer backend engine. This property is read only.

**See also** QOrganizerManager::fromUri().

.. _sdk_qtorganizer_organizermodel_sortOrders:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sortOrders : list<:ref:`SortOrder <sdk_qtorganizer_sortorder>`>                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of sort orders used by the organizer model.

**See also** :ref:`SortOrder <sdk_qtorganizer_sortorder>`.

.. _sdk_qtorganizer_organizermodel_startPeriod:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| startPeriod : date                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the start date and time period used by the organizer model to fetch organizer items. The default value is the datetime of :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>` creation.

Signal Documentation
--------------------

.. _sdk_qtorganizer_organizermodel_onExportCompleted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onExportCompleted()                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when :ref:`OrganizerModel::exportItems() <sdk_qtorganizer_organizermodel_exportItems>` completes. The success of operation can be seen on *error* which is defined in OrganizerModel::ExportError. *url* indicates the file, which was exported.

.. _sdk_qtorganizer_organizermodel_onImportCompleted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onImportCompleted(:ref:`ImportError <sdk_qtorganizer_organizermodel_ImportError>` *error*, URL *url*, list<string> *ids*)                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when :ref:`OrganizerModel::importItems() <sdk_qtorganizer_organizermodel_importItems>` completes. The success of operation can be seen on *error* which is defined in :ref:`OrganizerModel::ImportError <sdk_qtorganizer_organizermodel_ImportError>`. *url* indicates the file, which was imported. *ids* contains the imported items ids.

If the operation was successful, items are now imported to backend. If :ref:`OrganizerModel::autoUpdate <sdk_qtorganizer_organizermodel_autoUpdate>` is enabled, OrganizerModel::modelChanged will be emitted when imported items are also visible on :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>`'s data model.

**See also** :ref:`OrganizerModel::importItems <sdk_qtorganizer_organizermodel_importItems>`.

.. _sdk_qtorganizer_organizermodel_onItemsFetched:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onItemsFetched(int *requestId*, list<:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>`> *fetchedItems*)                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This handler is called when request of the given *requestId* is finished with the *fetchedItems*.

**See also** :ref:`fetchItems <sdk_qtorganizer_organizermodel_fetchItems>`.

.. _sdk_qtorganizer_organizermodel_onModelChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onModelChanged()                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when there are changes in items contained by :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>`'s data model. Items have either been added, removed or modified. This signal is also always emitted during :ref:`OrganizerModel <sdk_qtorganizer_organizermodel>` construction when data model is ready for use, even in cases when data model is not having any items in it.

Method Documentation
--------------------

.. _sdk_qtorganizer_organizermodel_cancelUpdate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cancelUpdate()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Cancel the running organizer model content update request.

**See also** :ref:`OrganizerModel::autoUpdate <sdk_qtorganizer_organizermodel_autoUpdate>` and :ref:`OrganizerModel::update <sdk_qtorganizer_organizermodel_update>`.

.. _sdk_qtorganizer_organizermodel_:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Collection <sdk_qtorganizer_collection>` collection(string *collectionId*)                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the Collection object which collection id is the given *collectionId* and null if collection id is not found.

.. _sdk_qtorganizer_organizermodel_containsItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool containsItems(date *start*, date *end*)                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if there is at least one :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` between the given date range. Both the *start* and *end* parameters are optional, if no *end* parameter, returns true if there are item(s) after *start*, if neither start nor end date time provided, returns true if items in the current model is not empty, otherwise return false.

**See also** :ref:`itemIds() <sdk_qtorganizer_organizermodel_itemIds>`.

.. _sdk_qtorganizer_organizermodel_containsItems1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| list<bool> containsItems(date *start*, date *end*, int *interval*)                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a list of booleans telling if there is any item falling in the given time range.

For example, if the *start* time is 2011-12-08 14:00:00, the *end* time is 2011-12-08 20:00:00, and the *interval* is 3600 (seconds), a list of size 6 is returned, telling if there is any item falling in the range of 14:00:00 to 15:00:00, 15:00:00 to 16:00:00, ..., 19:00:00 to 20:00:00.

.. _sdk_qtorganizer_organizermodel_1:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Collection <sdk_qtorganizer_collection>` defaultCollection()                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the default Collection object.

.. _sdk_qtorganizer_organizermodel_exportItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| exportItems(url *url*, list<string> *profiles*)                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Export organizer items into a vcalendar file to the given *url* by optional *profiles*. At the moment only the local file url is supported in export method.

.. _sdk_qtorganizer_organizermodel_fetchCollections:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fetchCollections()                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fetch asynchronously a list of organizer collections from the organizer backend.

.. _sdk_qtorganizer_organizermodel_fetchItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| int fetchItems(stringlist *itemIds*)                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts a request to fetch items by the given *itemIds*, and returns the unique ID of this request. -1 is returned if the request can't be started.

Note that the items fetched won't be added to the model, but can be accessed through the :ref:`onItemsFetched <sdk_qtorganizer_organizermodel_onItemsFetched>` handler.

**See also** :ref:`onItemsFetched <sdk_qtorganizer_organizermodel_onItemsFetched>`.

.. _sdk_qtorganizer_organizermodel_fetchItems1:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| int fetchItems(date *start*, date *end*, :ref:`Filter <sdk_qtorganizer_filter>` *filter*, int *maxCount*, list<:ref:`SortOrder <sdk_qtorganizer_sortorder>`> *sortOrders*, :ref:`FetchHint <sdk_qtorganizer_fetchhint>` *fetchHint*)                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method will start a request to fetch items between the given *start* and *end* dates. Optionally a *sort* order, *filter*, *fetchHint* and *maxCount* can be specified to narrow the search. If nothing is set for these optional paramenters then defaults are applied, essentially any sort order, default filter, default storage location and all items.

The unique ID of this request will be returned. If the request can't be started -1 is returned. The end date must be greater than the start date for this method to start a fetch request.

Note that the items fetched won't be added to the model, but can be accessed through the :ref:`onItemsFetched <sdk_qtorganizer_organizermodel_onItemsFetched>` handler. No properties in the model are updated at all.

**See also** :ref:`onItemsFetched <sdk_qtorganizer_organizermodel_onItemsFetched>`.

.. _sdk_qtorganizer_organizermodel_importItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| importItems(url *url*, list<string> *profiles*)                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Import organizer items from a vcalendar by the given *url* and optional *profiles*. Only one import operation can be active at a time.

.. _sdk_qtorganizer_organizermodel_2:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` item(string *itemId*)                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the :ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` object with the given *itemId*.

.. _sdk_qtorganizer_organizermodel_itemIds:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| list<string> itemIds(date *start*, date *end*)                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the list of organizer item ids between the given date range *start* and *end*, excluding generated occurrences. Both the *start* and *end* parameters are optional, if no *end* parameter, returns all item ids from *start*, if neither start nor end date time provided, returns all item ids in the current model.

**See also** :ref:`containsItems() <sdk_qtorganizer_organizermodel_containsItems>`.

.. _sdk_qtorganizer_organizermodel_list<:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| list<:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>`> itemsByTimePeriod(date *start*, date *end*)                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the list of organizer items between the given *start* and *end* period.

.. _sdk_qtorganizer_organizermodel_removeCollection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeCollection(string *collectionId*)                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes asynchronously the organizer collection with the given *collectionId* from the backend.

.. _sdk_qtorganizer_organizermodel_removeItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeItem(:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` *item*)                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes the given organizer *item* from the backend.

.. _sdk_qtorganizer_organizermodel_removeItem1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeItem(string *itemId*)                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes the organizer item with the given *itemId* from the backend.

.. _sdk_qtorganizer_organizermodel_removeItems:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeItems(list<:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>`> *items*)                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes asynchronously the organizer items in the given *items* list from the backend.

.. _sdk_qtorganizer_organizermodel_removeItems1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeItems(list<string> *itemId*)                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes asynchronously the organizer items with the given *ids* from the backend.

.. _sdk_qtorganizer_organizermodel_saveCollection:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| saveCollection(:ref:`Collection <sdk_qtorganizer_collection>` *collection*)                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Saves asynchronously the given *collection* into the organizer backend.

.. _sdk_qtorganizer_organizermodel_saveItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| saveItem(:ref:`OrganizerItem <sdk_qtorganizer_organizeritem>` *item*)                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Saves asynchronously the given *item* into the organizer backend.

.. _sdk_qtorganizer_organizermodel_update:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| update()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Manually update the organizer model content including both items and collections.

**See also** :ref:`OrganizerModel::updateItems <sdk_qtorganizer_organizermodel_updateItems>`, :ref:`OrganizerModel::updateCollections <sdk_qtorganizer_organizermodel_updateCollections>`, and :ref:`OrganizerModel::autoUpdate <sdk_qtorganizer_organizermodel_autoUpdate>`.

.. _sdk_qtorganizer_organizermodel_updateCollections:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| updateCollections()                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Manually update the organizer model collections.

**See also** :ref:`OrganizerModel::update <sdk_qtorganizer_organizermodel_update>`, :ref:`OrganizerModel::updateItems <sdk_qtorganizer_organizermodel_updateItems>`, and :ref:`OrganizerModel::autoUpdate <sdk_qtorganizer_organizermodel_autoUpdate>`.

.. _sdk_qtorganizer_organizermodel_updateItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| updateItems()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Manually update the organizer model items.

**See also** :ref:`OrganizerModel::update <sdk_qtorganizer_organizermodel_update>`, :ref:`OrganizerModel::updateCollections <sdk_qtorganizer_organizermodel_updateCollections>`, and :ref:`OrganizerModel::autoUpdate <sdk_qtorganizer_organizermodel_autoUpdate>`.

