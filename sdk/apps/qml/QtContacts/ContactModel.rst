.. _sdk_qtcontacts_contactmodel:

QtContacts ContactModel
=======================

The ContactModel element provides access to contacts from the contacts store.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`ImportError <sdk_qtcontacts_contactmodel_ImportError>` : enumeration
-  :ref:`StorageLocation <sdk_qtcontacts_contactmodel_StorageLocation>` : enumeration
-  :ref:`autoUpdate <sdk_qtcontacts_contactmodel_autoUpdate>` : bool
-  :ref:`availableManagers <sdk_qtcontacts_contactmodel_availableManagers>` : list<string>
-  :ref:`contacts <sdk_qtcontacts_contactmodel_contacts>` : list<Contact>
-  :ref:`error <sdk_qtcontacts_contactmodel_error>` : string
-  :ref:`fetchHint <sdk_qtcontacts_contactmodel_fetchHint>` : FetchHint
-  :ref:`filter <sdk_qtcontacts_contactmodel_filter>` : Filter
-  :ref:`manager <sdk_qtcontacts_contactmodel_manager>` : string
-  :ref:`sortOrders <sdk_qtcontacts_contactmodel_sortOrders>` : list<SortOrder>
-  :ref:`storageLocations <sdk_qtcontacts_contactmodel_storageLocations>` : int

Signals
-------

-  :ref:`contactsFetched <sdk_qtcontacts_contactmodel_contactsFetched>`\ (int *requestId*, list<Contact> *fetchedContacts*)
-  :ref:`onImportCompleted <sdk_qtcontacts_contactmodel_onImportCompleted>`\ (ImportError *error*, URL *url*, list<string> *ids*)
-  :ref:`storageLocationsChanged <sdk_qtcontacts_contactmodel_storageLocationsChanged>`\ ()

Methods
-------

-  void :ref:`exportContacts <sdk_qtcontacts_contactmodel_exportContacts>`\ (url *url*, list<string> *profiles*, list<variant> *declarativeContacts*)
-  int :ref:`fetchContacts <sdk_qtcontacts_contactmodel_fetchContacts>`\ (list<string> *contactIds*)
-  void :ref:`importContacts <sdk_qtcontacts_contactmodel_importContacts>`\ (url *url*, list<string> *profiles*)
-  :ref:`removeContact <sdk_qtcontacts_contactmodel_removeContact>`\ (string *contactId*)
-  :ref:`removeContacts <sdk_qtcontacts_contactmodel_removeContacts>`\ (list<string> *contactIds*)
-  :ref:`saveContact <sdk_qtcontacts_contactmodel_saveContact>`\ (Contact *contact*, StorageLocation *storageLocation*)

Detailed Description
--------------------

This element is part of the **QtContacts** module.

:ref:`ContactModel <sdk_qtcontacts_contactmodel>` provides a model of contacts from the contacts store. The contents of the model can be specified with :ref:`filter <sdk_qtcontacts_contactmodel_filter>`, :ref:`sortOrders <sdk_qtcontacts_contactmodel_sortOrders>` and :ref:`fetchHint <sdk_qtcontacts_contactmodel_fetchHint>` properties. Whether the model is automatically updated when the store or :ref:`contacts <sdk_qtcontacts_contactmodel_contacts>` changes, can be controlled with :ref:`ContactModel::autoUpdate <sdk_qtcontacts_contactmodel_autoUpdate>` property.

There are two ways of accessing the contact data: via model by using views and delegates, or alternatively via :ref:`contacts <sdk_qtcontacts_contactmodel_contacts>` list property. Of the two, the model access is preferred. Direct list access (i.e. non-model) is not guaranteed to be in order set by sortOrder.

At the moment the model roles provided by :ref:`ContactModel <sdk_qtcontacts_contactmodel>` are display, decoration and ``contact``. Through the ``contact`` role can access any data provided by the Contact element.

**See also** RelationshipModel, Contact, and QContactManager.

Property Documentation
----------------------

.. _sdk_qtcontacts_contactmodel_ImportError:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ImportError : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the errors cases for :ref:`ContactModel::importContacts() <sdk_qtcontacts_contactmodel_importContacts>` -function.

-  ContactModel::ImportNoError Completed successfully, no error.
-  ContactModel::ImportUnspecifiedError Unspecified error.
-  ContactModel::ImportIOError Input/output error.
-  ContactModel::ImportOutOfMemoryError Out of memory error.
-  ContactModel::ImportNotReadyError Not ready for importing. Only one import operation can be active at a time.
-  ContactModel::ImportParseError Error during parsing.

.. _sdk_qtcontacts_contactmodel_StorageLocation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| StorageLocation : enumeration                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Defines the different storage locations for saving contacts and model population purposes.

-  ContactModel::UserDataStorage A storage location where user data is stored.
-  ContactModel::SystemStorage A storage location where system files are stored.

Depending on the backend implementation, the access rights for different storage locations might vary.

**See also** :ref:`ContactModel::storageLocations <sdk_qtcontacts_contactmodel_storageLocations>` and :ref:`ContactModel::saveContact <sdk_qtcontacts_contactmodel_saveContact>`.

.. _sdk_qtcontacts_contactmodel_autoUpdate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoUpdate : bool                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether or not the contact model should be updated automatically, default value is true.

.. _sdk_qtcontacts_contactmodel_availableManagers:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| availableManagers : list<string>                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of available manager names. This property is read only.

.. _sdk_qtcontacts_contactmodel_contacts:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contacts : list<:ref:`Contact <sdk_qtcontacts_contact>`>                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of contacts.

**See also** `Contact </sdk/apps/qml/QtContacts/qtcontacts-overview/#contact>`_ .

.. _sdk_qtcontacts_contactmodel_error:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| error : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the latest error code returned by the contact manager.

This property is read only.

.. _sdk_qtcontacts_contactmodel_fetchHint:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fetchHint : :ref:`FetchHint <sdk_qtcontacts_fetchhint>`                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the fetch hint instance used by the contact model.

**See also** :ref:`FetchHint <sdk_qtcontacts_fetchhint>`.

.. _sdk_qtcontacts_contactmodel_filter:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| filter : :ref:`Filter <sdk_qtcontacts_filter>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the filter instance used by the contact model.

**See also** :ref:`Filter <sdk_qtcontacts_filter>`.

.. _sdk_qtcontacts_contactmodel_manager:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| manager : string                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the manager uri of the contact backend engine.

.. _sdk_qtcontacts_contactmodel_sortOrders:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sortOrders : list<:ref:`SortOrder <sdk_qtcontacts_sortorder>`>                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of sort orders used by the contacts model.

**See also** :ref:`SortOrder <sdk_qtcontacts_sortorder>`.

.. _sdk_qtcontacts_contactmodel_storageLocations:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| storageLocations : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates which storage location is used to populate the model.

Only one storage location can be used for each model.

Storage location is a backend specific feature. Some backends support it and some might just ignore it. If backend is having some specific requirements and they're not met, backend returns StorageLocationsNotExistingError.

**See also** :ref:`ContactModel::StorageLocation <sdk_qtcontacts_contactmodel_StorageLocation>` and :ref:`ContactModel::saveContact <sdk_qtcontacts_contactmodel_saveContact>`.

Signal Documentation
--------------------

.. _sdk_qtcontacts_contactmodel_contactsFetched:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contactsFetched(int *requestId*, list<:ref:`Contact <sdk_qtcontacts_contact>`> *fetchedContacts*)                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when a contact fetch request is finished.

**See also** :ref:`ContactModel::fetchContacts <sdk_qtcontacts_contactmodel_fetchContacts>`.

.. _sdk_qtcontacts_contactmodel_onImportCompleted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onImportCompleted(:ref:`ImportError <sdk_qtcontacts_contactmodel_ImportError>` *error*, URL *url*, list<string> *ids*)                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when :ref:`ContactModel::importContacts() <sdk_qtcontacts_contactmodel_importContacts>` completes. The success of operation can be seen on *error* which is defined in :ref:`ContactModel::ImportError <sdk_qtcontacts_contactmodel_ImportError>`. *url* indicates the file, which was imported. *ids* contains the imported contacts ids.

If the operation was successful, contacts are now imported to backend. If :ref:`ContactModel::autoUpdate <sdk_qtcontacts_contactmodel_autoUpdate>` is enabled, ContactModel::modelChanged will be emitted when imported contacts are also visible on :ref:`ContactModel <sdk_qtcontacts_contactmodel>`'s data model.

**See also** :ref:`ContactModel::importContacts <sdk_qtcontacts_contactmodel_importContacts>`.

.. _sdk_qtcontacts_contactmodel_storageLocationsChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| storageLocationsChanged()                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted, when :ref:`ContactModel::storageLocations <sdk_qtcontacts_contactmodel_storageLocations>` property changes.

**See also** :ref:`ContactModel::storageLocations <sdk_qtcontacts_contactmodel_storageLocations>`.

Method Documentation
--------------------

.. _sdk_qtcontacts_contactmodel_exportContacts:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void exportContacts(url *url*, list<string> *profiles*, list<variant> *declarativeContacts*)                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Export all contacts of this model into a vcard file to the given *url* by optional *profiles*. The optional *declarativeContacts* list can be used to export an arbitrary list of QDeclarativeContact objects not necessarily belonging to the data set of this model. At the moment only the local file url is supported in export method. Also, only one export operation can be active at a time. Supported profiles are:

-  "Sync" exports contacts in sync mode, currently, this is the same as passing in an empty list, and is generally what you want.
-  "Backup" exports contacts in backup mode, this will add non-standard properties to the generated vCard to try to save every detail of the contacts. Only use this if the vCard is going to be imported using the backup profile. #include "moc\_qdeclarativecontactmodel\_p.cpp"

**See also** QVersitContactHandlerFactory, QVersitContactHandlerFactory::ProfileSync(), and QVersitContactHandlerFactory::ProfileBackup().

.. _sdk_qtcontacts_contactmodel_fetchContacts:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| int fetchContacts(list<string> *contactIds*)                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts a request to fetch contacts by the given *contactIds*, and returns the unique ID of this request. -1 is returned if the request can't be started.

Note that the contacts fetched won't be added to the model, but can be accessed through the :ref:`contactsFetched <sdk_qtcontacts_contactmodel_contactsFetched>` signal handler.

**See also** :ref:`ContactModel::contactsFetched <sdk_qtcontacts_contactmodel_contactsFetched>`.

.. _sdk_qtcontacts_contactmodel_importContacts:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void importContacts(url *url*, list<string> *profiles*)                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Import contacts from a vcard by the given *url* and optional *profiles*. Only one import operation can be active at a time. Supported profiles are:

-  "Sync" Imports contacts in sync mode, currently, this is the same as passing in an empty list, and is generally what you want.
-  "Backup" imports contacts in backup mode, use this mode if the vCard was generated by exporting in backup mode.

**See also** QVersitContactHandlerFactory, QVersitContactHandlerFactory::ProfileSync(), and QVersitContactHandlerFactory::ProfileBackup().

.. _sdk_qtcontacts_contactmodel_removeContact:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeContact(string *contactId*)                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Remove the contact from the contacts store by given *contactId*. After removing a contact it is not possible to save it again.

**See also** :ref:`Contact::contactId <sdk_qtcontacts_contact_contactId>`.

.. _sdk_qtcontacts_contactmodel_removeContacts:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeContacts(list<string> *contactIds*)                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Remove the list of contacts from the contacts store by given *contactIds*.

**See also** :ref:`Contact::contactId <sdk_qtcontacts_contact_contactId>`.

.. _sdk_qtcontacts_contactmodel_saveContact:

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| saveContact(:ref:`Contact <sdk_qtcontacts_contact>` *contact*, :ref:`StorageLocation <sdk_qtcontacts_contactmodel_StorageLocation>` *storageLocation* = UserDataStorage)                                                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Save the given *contact* into the contacts backend.

The location for storing the contact can be defined with *storageLocation* for new contacts. When the contact is updated, ie saved again, *storageLocation* is ignored and the contact is saved to the same location as it were before.

Once saved successfully, the dirty flags of this contact will be reset.

**See also** :ref:`Contact::modified <sdk_qtcontacts_contact_modified>`.

