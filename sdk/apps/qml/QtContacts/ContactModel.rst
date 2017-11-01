The ContactModel element provides access to contacts from the contacts
store.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`ImportError </sdk/apps/qml/QtContacts/ContactModel#ImportError-prop>`__****
   : enumeration
-  ****`StorageLocation </sdk/apps/qml/QtContacts/ContactModel#StorageLocation-prop>`__****
   : enumeration
-  ****`autoUpdate </sdk/apps/qml/QtContacts/ContactModel#autoUpdate-prop>`__****
   : bool
-  ****`availableManagers </sdk/apps/qml/QtContacts/ContactModel#availableManagers-prop>`__****
   : list<string>
-  ****`contacts </sdk/apps/qml/QtContacts/ContactModel#contacts-prop>`__****
   : list<Contact>
-  ****`error </sdk/apps/qml/QtContacts/ContactModel#error-prop>`__****
   : string
-  ****`fetchHint </sdk/apps/qml/QtContacts/ContactModel#fetchHint-prop>`__****
   : FetchHint
-  ****`filter </sdk/apps/qml/QtContacts/ContactModel#filter-prop>`__****
   : Filter
-  ****`manager </sdk/apps/qml/QtContacts/ContactModel#manager-prop>`__****
   : string
-  ****`sortOrders </sdk/apps/qml/QtContacts/ContactModel#sortOrders-prop>`__****
   : list<SortOrder>
-  ****`storageLocations </sdk/apps/qml/QtContacts/ContactModel#storageLocations-prop>`__****
   : int

Signals
-------

-  ****`contactsFetched </sdk/apps/qml/QtContacts/ContactModel#contactsFetched-signal>`__****\ (int
   *requestId*, list<Contact> *fetchedContacts*)
-  ****`onImportCompleted </sdk/apps/qml/QtContacts/ContactModel#onImportCompleted-signal>`__****\ (ImportError
   *error*, URL *url*, list<string> *ids*)
-  ****`storageLocationsChanged </sdk/apps/qml/QtContacts/ContactModel#storageLocationsChanged-signal>`__****\ ()

Methods
-------

-  void
   ****`exportContacts </sdk/apps/qml/QtContacts/ContactModel#exportContacts-method>`__****\ (url
   *url*, list<string> *profiles*, list<variant> *declarativeContacts*)
-  int
   ****`fetchContacts </sdk/apps/qml/QtContacts/ContactModel#fetchContacts-method>`__****\ (list<string>
   *contactIds*)
-  void
   ****`importContacts </sdk/apps/qml/QtContacts/ContactModel#importContacts-method>`__****\ (url
   *url*, list<string> *profiles*)
-  ****`removeContact </sdk/apps/qml/QtContacts/ContactModel#removeContact-method>`__****\ (string
   *contactId*)
-  ****`removeContacts </sdk/apps/qml/QtContacts/ContactModel#removeContacts-method>`__****\ (list<string>
   *contactIds*)
-  ****`saveContact </sdk/apps/qml/QtContacts/ContactModel#saveContact-method>`__****\ (Contact
   *contact*, StorageLocation *storageLocation*)

Detailed Description
--------------------

This element is part of the **QtContacts** module.

`ContactModel </sdk/apps/qml/QtContacts/ContactModel/>`__ provides a
model of contacts from the contacts store. The contents of the model can
be specified with
`filter </sdk/apps/qml/QtContacts/ContactModel#filter-prop>`__,
`sortOrders </sdk/apps/qml/QtContacts/ContactModel#sortOrders-prop>`__
and `fetchHint </sdk/apps/qml/QtContacts/ContactModel#fetchHint-prop>`__
properties. Whether the model is automatically updated when the store or
`contacts </sdk/apps/qml/QtContacts/ContactModel#contacts-prop>`__
changes, can be controlled with
`ContactModel::autoUpdate </sdk/apps/qml/QtContacts/ContactModel#autoUpdate-prop>`__
property.

There are two ways of accessing the contact data: via model by using
views and delegates, or alternatively via
`contacts </sdk/apps/qml/QtContacts/ContactModel#contacts-prop>`__ list
property. Of the two, the model access is preferred. Direct list access
(i.e. non-model) is not guaranteed to be in order set by sortOrder.

At the moment the model roles provided by
`ContactModel </sdk/apps/qml/QtContacts/ContactModel/>`__ are display,
decoration and ``contact``. Through the ``contact`` role can access any
data provided by the Contact element.

**See also** RelationshipModel, Contact, and QContactManager.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ ImportError : enumeration                                       |
+--------------------------------------------------------------------------+

Defines the errors cases for
`ContactModel::importContacts() </sdk/apps/qml/QtContacts/ContactModel#importContacts-method>`__
-function.

-  ContactModel::ImportNoError Completed successfully, no error.
-  ContactModel::ImportUnspecifiedError Unspecified error.
-  ContactModel::ImportIOError Input/output error.
-  ContactModel::ImportOutOfMemoryError Out of memory error.
-  ContactModel::ImportNotReadyError Not ready for importing. Only one
   import operation can be active at a time.
-  ContactModel::ImportParseError Error during parsing.

| 

+--------------------------------------------------------------------------+
|        \ StorageLocation : enumeration                                   |
+--------------------------------------------------------------------------+

Defines the different storage locations for saving contacts and model
population purposes.

-  ContactModel::UserDataStorage A storage location where user data is
   stored.
-  ContactModel::SystemStorage A storage location where system files are
   stored.

Depending on the backend implementation, the access rights for different
storage locations might vary.

**See also**
`ContactModel::storageLocations </sdk/apps/qml/QtContacts/ContactModel#storageLocations-prop>`__
and
`ContactModel::saveContact </sdk/apps/qml/QtContacts/ContactModel#saveContact-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ autoUpdate : bool                                               |
+--------------------------------------------------------------------------+

This property indicates whether or not the contact model should be
updated automatically, default value is true.

| 

+--------------------------------------------------------------------------+
|        \ availableManagers : list<string>                                |
+--------------------------------------------------------------------------+

This property holds the list of available manager names. This property
is read only.

| 

+--------------------------------------------------------------------------+
|        \ contacts :                                                      |
| list<`Contact </sdk/apps/qml/QtContacts/Contact/>`__>                    |
+--------------------------------------------------------------------------+

This property holds the list of contacts.

**See also**
`Contact </sdk/apps/qml/QtContacts/qtcontacts-overview#contact>`__.

| 

+--------------------------------------------------------------------------+
|        \ error : string                                                  |
+--------------------------------------------------------------------------+

This property holds the latest error code returned by the contact
manager.

This property is read only.

| 

+--------------------------------------------------------------------------+
|        \ fetchHint : `FetchHint </sdk/apps/qml/QtContacts/FetchHint/>`__ |
+--------------------------------------------------------------------------+

This property holds the fetch hint instance used by the contact model.

**See also** `FetchHint </sdk/apps/qml/QtContacts/FetchHint/>`__.

| 

+--------------------------------------------------------------------------+
|        \ filter : `Filter </sdk/apps/qml/QtContacts/Filter/>`__          |
+--------------------------------------------------------------------------+

This property holds the filter instance used by the contact model.

**See also** `Filter </sdk/apps/qml/QtContacts/Filter/>`__.

| 

+--------------------------------------------------------------------------+
|        \ manager : string                                                |
+--------------------------------------------------------------------------+

This property holds the manager uri of the contact backend engine.

| 

+--------------------------------------------------------------------------+
|        \ sortOrders :                                                    |
| list<`SortOrder </sdk/apps/qml/QtContacts/SortOrder/>`__>                |
+--------------------------------------------------------------------------+

This property holds a list of sort orders used by the contacts model.

**See also** `SortOrder </sdk/apps/qml/QtContacts/SortOrder/>`__.

| 

+--------------------------------------------------------------------------+
|        \ storageLocations : int                                          |
+--------------------------------------------------------------------------+

This property indicates which storage location is used to populate the
model.

Only one storage location can be used for each model.

Storage location is a backend specific feature. Some backends support it
and some might just ignore it. If backend is having some specific
requirements and they're not met, backend returns
StorageLocationsNotExistingError.

**See also**
`ContactModel::StorageLocation </sdk/apps/qml/QtContacts/ContactModel#StorageLocation-prop>`__
and
`ContactModel::saveContact </sdk/apps/qml/QtContacts/ContactModel#saveContact-method>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ contactsFetched(int *requestId*,                                |
| list<`Contact </sdk/apps/qml/QtContacts/Contact/>`__> *fetchedContacts*) |
+--------------------------------------------------------------------------+

This signal is emitted, when a contact fetch request is finished.

**See also**
`ContactModel::fetchContacts </sdk/apps/qml/QtContacts/ContactModel#fetchContacts-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ onImportCompleted(`ImportError </sdk/apps/qml/QtContacts/Contac |
| tModel#ImportError-prop>`__                                              |
| *error*, URL *url*, list<string> *ids*)                                  |
+--------------------------------------------------------------------------+

This signal is emitted, when
`ContactModel::importContacts() </sdk/apps/qml/QtContacts/ContactModel#importContacts-method>`__
completes. The success of operation can be seen on *error* which is
defined in
`ContactModel::ImportError </sdk/apps/qml/QtContacts/ContactModel#ImportError-prop>`__.
*url* indicates the file, which was imported. *ids* contains the
imported contacts ids.

If the operation was successful, contacts are now imported to backend.
If
`ContactModel::autoUpdate </sdk/apps/qml/QtContacts/ContactModel#autoUpdate-prop>`__
is enabled, ContactModel::modelChanged will be emitted when imported
contacts are also visible on
`ContactModel </sdk/apps/qml/QtContacts/ContactModel/>`__'s data model.

**See also**
`ContactModel::importContacts </sdk/apps/qml/QtContacts/ContactModel#importContacts-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ storageLocationsChanged()                                       |
+--------------------------------------------------------------------------+

This signal is emitted, when
`ContactModel::storageLocations </sdk/apps/qml/QtContacts/ContactModel#storageLocations-prop>`__
property changes.

**See also**
`ContactModel::storageLocations </sdk/apps/qml/QtContacts/ContactModel#storageLocations-prop>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void exportContacts(url *url*, list<string> *profiles*,         |
| list<variant> *declarativeContacts*)                                     |
+--------------------------------------------------------------------------+

Export all contacts of this model into a vcard file to the given *url*
by optional *profiles*. The optional *declarativeContacts* list can be
used to export an arbitrary list of QDeclarativeContact objects not
necessarily belonging to the data set of this model. At the moment only
the local file url is supported in export method. Also, only one export
operation can be active at a time. Supported profiles are:

-  "Sync" exports contacts in sync mode, currently, this is the same as
   passing in an empty list, and is generally what you want.
-  "Backup" exports contacts in backup mode, this will add non-standard
   properties to the generated vCard to try to save every detail of the
   contacts. Only use this if the vCard is going to be imported using
   the backup profile. #include "moc\_qdeclarativecontactmodel\_p.cpp"

**See also** QVersitContactHandlerFactory,
QVersitContactHandlerFactory::ProfileSync(), and
QVersitContactHandlerFactory::ProfileBackup().

| 

+--------------------------------------------------------------------------+
|        \ int fetchContacts(list<string> *contactIds*)                    |
+--------------------------------------------------------------------------+

Starts a request to fetch contacts by the given *contactIds*, and
returns the unique ID of this request. -1 is returned if the request
can't be started.

Note that the contacts fetched won't be added to the model, but can be
accessed through the
`contactsFetched </sdk/apps/qml/QtContacts/ContactModel#contactsFetched-signal>`__
signal handler.

**See also**
`ContactModel::contactsFetched </sdk/apps/qml/QtContacts/ContactModel#contactsFetched-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ void importContacts(url *url*, list<string> *profiles*)         |
+--------------------------------------------------------------------------+

Import contacts from a vcard by the given *url* and optional *profiles*.
Only one import operation can be active at a time. Supported profiles
are:

-  "Sync" Imports contacts in sync mode, currently, this is the same as
   passing in an empty list, and is generally what you want.
-  "Backup" imports contacts in backup mode, use this mode if the vCard
   was generated by exporting in backup mode.

**See also** QVersitContactHandlerFactory,
QVersitContactHandlerFactory::ProfileSync(), and
QVersitContactHandlerFactory::ProfileBackup().

| 

+--------------------------------------------------------------------------+
|        \ removeContact(string *contactId*)                               |
+--------------------------------------------------------------------------+

Remove the contact from the contacts store by given *contactId*. After
removing a contact it is not possible to save it again.

**See also**
`Contact::contactId </sdk/apps/qml/QtContacts/Contact#contactId-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ removeContacts(list<string> *contactIds*)                       |
+--------------------------------------------------------------------------+

Remove the list of contacts from the contacts store by given
*contactIds*.

**See also**
`Contact::contactId </sdk/apps/qml/QtContacts/Contact#contactId-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ saveContact(`Contact </sdk/apps/qml/QtContacts/Contact/>`__     |
| *contact*,                                                               |
| `StorageLocation </sdk/apps/qml/QtContacts/ContactModel#StorageLocation- |
| prop>`__                                                                 |
| *storageLocation* = UserDataStorage)                                     |
+--------------------------------------------------------------------------+

Save the given *contact* into the contacts backend.

The location for storing the contact can be defined with
*storageLocation* for new contacts. When the contact is updated, ie
saved again, *storageLocation* is ignored and the contact is saved to
the same location as it were before.

Once saved successfully, the dirty flags of this contact will be reset.

**See also**
`Contact::modified </sdk/apps/qml/QtContacts/Contact#modified-prop>`__.

| 
