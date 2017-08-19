QtOrganizer.OrganizerModel
==========================

.. raw:: html

   <p>

The OrganizerModel element provides access to organizer items from the
organizer store. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OrganizerModel -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtOrganizer 5.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

ImportError : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

autoUpdate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

availableManagers : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

collections : list<Collection>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

endPeriod : date

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fetchHint : FetchHint

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

filter : Filter

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

itemCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

items : list<OrganizerItem>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

manager : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

managerName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sortOrders : list<SortOrder>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startPeriod : date

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

onExportCompleted()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onImportCompleted(ImportError error, URL url, list<string> ids)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onItemsFetched(int requestId, list<OrganizerItem> fetchedItems)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onModelChanged()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

cancelUpdate()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

Collection collection(string collectionId)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool containsItems(date start, date end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

list<bool> containsItems(date start, date end, int interval)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

Collection defaultCollection()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exportItems(url url, list<string> profiles)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fetchCollections()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int fetchItems(stringlist itemIds)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int fetchItems(date start, date end, Filter filter, int maxCount,
list<SortOrder> sortOrders, FetchHint fetchHint)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

importItems(url url, list<string> profiles)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

OrganizerItem item(string itemId)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

list<string> itemIds(date start, date end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

list<OrganizerItem> itemsByTimePeriod(date start, date end)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeCollection(string collectionId)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeItem(OrganizerItem item)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeItem(string itemId)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeItems(list<OrganizerItem> items)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeItems(list<string> itemId)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

saveCollection(Collection collection)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

saveItem(OrganizerItem item)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

update()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

updateCollections()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

updateItems()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$OrganizerModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

OrganizerModel provides a model of organizer items from the organizer
store. The contents of the model can be specified with filter,
sortOrders and fetchHint properties. Whether the model is automatically
updated when the store or C++ organizer item changes, can be controlled
with OrganizerModel::autoUpdate property.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two ways of accessing the organizer item data: via the model
by using views and delegates, or alternatively via items list property.
Of the two, the model access is preferred. Direct list access (i.e.
non-model) is not guaranteed to be in order set by sortOrder.

.. raw:: html

   </p>

.. raw:: html

   <p>

At the moment the model roles provided by OrganizerModel are display and
item. Through the item role can access any data provided by the
OrganizerItem element.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Both the startPeriod and endPeriod are set by default to the
current time (when the OrganizerModel was created). In most cases, both
(or at least one) of the startPeriod and endPeriod should be set;
otherwise, the OrganizerModel will contain zero items because the
startPeriod and endPeriod are the same value. For example, if only
endPeriod is provided, the OrganizerModel will contain all items from
now (the time of the OrganizerModel's creation) to the endPeriod time.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerItem and QOrganizerManager.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OrganizerModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$ImportError -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ImportError-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ImportError : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Defines the errors cases for OrganizerModel::importItems() -function.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

OrganizerModel::ImportNoError Completed successfully, no error.

.. raw:: html

   </li>

.. raw:: html

   <li>

OrganizerModel::ImportUnspecifiedError Unspecified error.

.. raw:: html

   </li>

.. raw:: html

   <li>

OrganizerModel::ImportIOError Input/output error.

.. raw:: html

   </li>

.. raw:: html

   <li>

OrganizerModel::ImportOutOfMemoryError Out of memory error.

.. raw:: html

   </li>

.. raw:: html

   <li>

OrganizerModel::ImportNotReadyError Not ready for importing. Only one
import operation can be active at a time.

.. raw:: html

   </li>

.. raw:: html

   <li>

OrganizerModel::ImportParseError Error during parsing.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@ImportError -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoUpdate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoUpdate : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property indicates whether or not the organizer model should be
updated automatically, default value is true.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerModel::update().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoUpdate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="availableManagers-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

availableManagers : list<string>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the list of available manager names. This property
is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@availableManagers -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collections-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

collections : list<Collection>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a list of collections in the organizer model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Collection.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collections -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="endPeriod-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

endPeriod : date

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the end date and time period used by the organizer
model to fetch organizer items. The default value is the datetime of
OrganizerModel creation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@endPeriod -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

error : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the latest error code returned by the organizer
manager.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fetchHint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fetchHint : FetchHint

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the fetch hint instance used by the organizer model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also FetchHint.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fetchHint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="filter-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

filter : Filter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the filter instance used by the organizer model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Set filter property to 'null', when you want to reset it to default
value.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Filter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@filter -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

itemCount : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the size of organizer items the OrganizerModel
currently holds.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="items-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

items : list<OrganizerItem>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a list of organizer items in the organizer model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@items -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="manager-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

manager : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the manager name or manager uri of the organizer
backend engine. The manager uri format:
qtorganizer:<managerid>:<key>=<value>&<key>=<value>.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, memory organizer engine has an optional id parameter, if
user want to share the same memory engine with multiple OrganizerModel
instances, the manager property should declared like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">model : OrganizerModel {
   manager:<span class="string">&quot;qtorganizer:memory:id=organizer1
   }
   </span></pre>

.. raw:: html

   <p>

instead of just the manager name:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">model : OrganizerModel {
   manager:<span class="string">&quot;memory&quot;</span>
   }</pre>

.. raw:: html

   <p>

See also QOrganizerManager::fromUri().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@manager -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="managerName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

managerName : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the manager name of the organizer backend engine.
This property is read only.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QOrganizerManager::fromUri().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@managerName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sortOrders-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sortOrders : list<SortOrder>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a list of sort orders used by the organizer model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SortOrder.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sortOrders -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startPeriod-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

startPeriod : date

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the start date and time period used by the organizer
model to fetch organizer items. The default value is the datetime of
OrganizerModel creation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@startPeriod -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onExportCompleted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onExportCompleted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onExportCompleted()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted, when OrganizerModel::exportItems() completes.
The success of operation can be seen on error which is defined in
OrganizerModel::ExportError. url indicates the file, which was exported.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onExportCompleted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onImportCompleted-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onImportCompleted(ImportError error, URL url, list<string> ids)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted, when OrganizerModel::importItems() completes.
The success of operation can be seen on error which is defined in
OrganizerModel::ImportError. url indicates the file, which was imported.
ids contains the imported items ids.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the operation was successful, items are now imported to backend. If
OrganizerModel::autoUpdate is enabled, OrganizerModel::modelChanged will
be emitted when imported items are also visible on OrganizerModel's data
model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerModel::importItems.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onImportCompleted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onItemsFetched-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onItemsFetched(int requestId, list<OrganizerItem> fetchedItems)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This handler is called when request of the given requestId is finished
with the fetchedItems.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also fetchItems.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onItemsFetched -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onModelChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onModelChanged()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted, when there are changes in items contained by
OrganizerModel's data model. Items have either been added, removed or
modified. This signal is also always emitted during OrganizerModel
construction when data model is ready for use, even in cases when data
model is not having any items in it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onModelChanged -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancelUpdate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancelUpdate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancelUpdate()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Cancel the running organizer model content update request.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerModel::autoUpdate and OrganizerModel::update.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancelUpdate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collection-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

Collection collection(string collectionId)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the Collection object which collection id is the given
collectionId and null if collection id is not found.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="containsItems-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool containsItems(date start, date end)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns true if there is at least one OrganizerItem between the given
date range. Both the start and end parameters are optional, if no end
parameter, returns true if there are item(s) after start, if neither
start nor end date time provided, returns true if items in the current
model is not empty, otherwise return false.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also itemIds().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@containsItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="containsItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

list<bool> containsItems(date start, date end, int interval)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns a list of booleans telling if there is any item falling in the
given time range.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if the start time is 2011-12-08 14:00:00, the end time is
2011-12-08 20:00:00, and the interval is 3600 (seconds), a list of size
6 is returned, telling if there is any item falling in the range of
14:00:00 to 15:00:00, 15:00:00 to 16:00:00, ..., 19:00:00 to 20:00:00.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@containsItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultCollection-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

Collection defaultCollection()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the default Collection object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultCollection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exportItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

exportItems(url url, list<string> profiles)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Export organizer items into a vcalendar file to the given url by
optional profiles. At the moment only the local file url is supported in
export method.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exportItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fetchCollections-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

fetchCollections()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Fetch asynchronously a list of organizer collections from the organizer
backend.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fetchCollections -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fetchItems-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int fetchItems(stringlist itemIds)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Starts a request to fetch items by the given itemIds, and returns the
unique ID of this request. -1 is returned if the request can't be
started.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the items fetched won't be added to the model, but can be
accessed through the onItemsFetched handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also onItemsFetched.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fetchItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fetchItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int fetchItems(date start, date end, Filter filter, int maxCount,
list<SortOrder> sortOrders, FetchHint fetchHint)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This method will start a request to fetch items between the given start
and end dates. Optionally a sort order, filter, fetchHint and maxCount
can be specified to narrow the search. If nothing is set for these
optional paramenters then defaults are applied, essentially any sort
order, default filter, default storage location and all items.

.. raw:: html

   </p>

.. raw:: html

   <p>

The unique ID of this request will be returned. If the request can't be
started -1 is returned. The end date must be greater than the start date
for this method to start a fetch request.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the items fetched won't be added to the model, but can be
accessed through the onItemsFetched handler. No properties in the model
are updated at all.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also onItemsFetched.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fetchItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="importItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

importItems(url url, list<string> profiles)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Import organizer items from a vcalendar by the given url and optional
profiles. Only one import operation can be active at a time.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@importItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="item-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

OrganizerItem item(string itemId)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the OrganizerItem object with the given itemId.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@item -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemIds-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

list<string> itemIds(date start, date end)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the list of organizer item ids between the given date range
start and end, excluding generated occurrences. Both the start and end
parameters are optional, if no end parameter, returns all item ids from
start, if neither start nor end date time provided, returns all item ids
in the current model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also containsItems().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemIds -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemsByTimePeriod-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

list<OrganizerItem> itemsByTimePeriod(date start, date end)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the list of organizer items between the given start and end
period.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemsByTimePeriod -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeCollection-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeCollection(string collectionId)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes asynchronously the organizer collection with the given
collectionId from the backend.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeCollection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeItem-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeItem(OrganizerItem item)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes the given organizer item from the backend.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeItem(string itemId)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes the organizer item with the given itemId from the backend.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeItems-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeItems(list<OrganizerItem> items)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes asynchronously the organizer items in the given items list from
the backend.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeItems(list<string> itemId)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes asynchronously the organizer items with the given ids from the
backend.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="saveCollection-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

saveCollection(Collection collection)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Saves asynchronously the given collection into the organizer backend.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@saveCollection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="saveItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

saveItem(OrganizerItem item)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Saves asynchronously the given item into the organizer backend.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@saveItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="update-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

update()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Manually update the organizer model content including both items and
collections.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerModel::updateItems, OrganizerModel::updateCollections,
and OrganizerModel::autoUpdate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@update -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="updateCollections-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

updateCollections()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Manually update the organizer model collections.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerModel::update, OrganizerModel::updateItems, and
OrganizerModel::autoUpdate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@updateCollections -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="updateItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

updateItems()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Manually update the organizer model items.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also OrganizerModel::update, OrganizerModel::updateCollections, and
OrganizerModel::autoUpdate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@updateItems -->


