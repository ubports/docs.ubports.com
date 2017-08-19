QtContacts.ContactModel
=======================

.. raw:: html

   <p>

The ContactModel element provides access to contacts from the contacts
store. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContactModel -->

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

import QtContacts 5.0

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

StorageLocation : enumeration

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

contacts : list<Contact>

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

manager : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sortOrders : list<SortOrder>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

storageLocations : int

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

contactsFetched(int requestId, list<Contact> fetchedContacts)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onImportCompleted(ImportError error, URL url, list<string> ids)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

storageLocationsChanged()

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

void exportContacts(url url, list<string> profiles, list<variant>
declarativeContacts)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

int fetchContacts(list<string> contactIds)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void importContacts(url url, list<string> profiles)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeContact(string contactId)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeContacts(list<string> contactIds)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

saveContact(Contact contact, StorageLocation storageLocation)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ContactModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This element is part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <p>

ContactModel provides a model of contacts from the contacts store. The
contents of the model can be specified with filter, sortOrders and
fetchHint properties. Whether the model is automatically updated when
the store or contacts changes, can be controlled with
ContactModel::autoUpdate property.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two ways of accessing the contact data: via model by using
views and delegates, or alternatively via contacts list property. Of the
two, the model access is preferred. Direct list access (i.e. non-model)
is not guaranteed to be in order set by sortOrder.

.. raw:: html

   </p>

.. raw:: html

   <p>

At the moment the model roles provided by ContactModel are display,
decoration and contact. Through the contact role can access any data
provided by the Contact element.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also RelationshipModel, Contact, and QContactManager.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContactModel -->

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

Defines the errors cases for ContactModel::importContacts() -function.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ContactModel::ImportNoError Completed successfully, no error.

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactModel::ImportUnspecifiedError Unspecified error.

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactModel::ImportIOError Input/output error.

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactModel::ImportOutOfMemoryError Out of memory error.

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactModel::ImportNotReadyError Not ready for importing. Only one
import operation can be active at a time.

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactModel::ImportParseError Error during parsing.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@ImportError -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="StorageLocation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

StorageLocation : enumeration

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

Defines the different storage locations for saving contacts and model
population purposes.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ContactModel::UserDataStorage A storage location where user data is
stored.

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactModel::SystemStorage A storage location where system files are
stored.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Depending on the backend implementation, the access rights for different
storage locations might vary.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ContactModel::storageLocations and ContactModel::saveContact.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StorageLocation -->

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

This property indicates whether or not the contact model should be
updated automatically, default value is true.

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

   <tr valign="top" id="contacts-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contacts : list<Contact>

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

This property holds the list of contacts.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Contact.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contacts -->

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

This property holds the latest error code returned by the contact
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

This property holds the fetch hint instance used by the contact model.

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

This property holds the filter instance used by the contact model.

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

This property holds the manager uri of the contact backend engine.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@manager -->

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

This property holds a list of sort orders used by the contacts model.

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

   <tr valign="top" id="storageLocations-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

storageLocations : int

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

This property indicates which storage location is used to populate the
model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Only one storage location can be used for each model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Storage location is a backend specific feature. Some backends support it
and some might just ignore it. If backend is having some specific
requirements and they're not met, backend returns
StorageLocationsNotExistingError.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ContactModel::StorageLocation and ContactModel::saveContact.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@storageLocations -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$contactsFetched -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contactsFetched-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

contactsFetched(int requestId, list<Contact> fetchedContacts)

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

This signal is emitted, when a contact fetch request is finished.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ContactModel::fetchContacts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contactsFetched -->

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

This signal is emitted, when ContactModel::importContacts() completes.
The success of operation can be seen on error which is defined in
ContactModel::ImportError. url indicates the file, which was imported.
ids contains the imported contacts ids.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the operation was successful, contacts are now imported to backend.
If ContactModel::autoUpdate is enabled, ContactModel::modelChanged will
be emitted when imported contacts are also visible on ContactModel's
data model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ContactModel::importContacts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onImportCompleted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="storageLocationsChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

storageLocationsChanged()

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

This signal is emitted, when ContactModel::storageLocations property
changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ContactModel::storageLocations.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@storageLocationsChanged -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$exportContacts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exportContacts-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void exportContacts(url url, list<string> profiles, list<variant>
declarativeContacts)

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

Export all contacts of this model into a vcard file to the given url by
optional profiles. The optional declarativeContacts list can be used to
export an arbitrary list of QDeclarativeContact objects not necessarily
belonging to the data set of this model. At the moment only the local
file url is supported in export method. Also, only one export operation
can be active at a time. Supported profiles are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

"Sync" exports contacts in sync mode, currently, this is the same as
passing in an empty list, and is generally what you want.

.. raw:: html

   </li>

.. raw:: html

   <li>

"Backup" exports contacts in backup mode, this will add non-standard
properties to the generated vCard to try to save every detail of the
contacts. Only use this if the vCard is going to be imported using the
backup profile. #include "moc\_qdeclarativecontactmodel\_p.cpp"

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QVersitContactHandlerFactory,
QVersitContactHandlerFactory::ProfileSync(), and
QVersitContactHandlerFactory::ProfileBackup().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exportContacts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fetchContacts-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

int fetchContacts(list<string> contactIds)

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

Starts a request to fetch contacts by the given contactIds, and returns
the unique ID of this request. -1 is returned if the request can't be
started.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the contacts fetched won't be added to the model, but can be
accessed through the contactsFetched signal handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ContactModel::contactsFetched.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fetchContacts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="importContacts-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void importContacts(url url, list<string> profiles)

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

Import contacts from a vcard by the given url and optional profiles.
Only one import operation can be active at a time. Supported profiles
are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

"Sync" Imports contacts in sync mode, currently, this is the same as
passing in an empty list, and is generally what you want.

.. raw:: html

   </li>

.. raw:: html

   <li>

"Backup" imports contacts in backup mode, use this mode if the vCard was
generated by exporting in backup mode.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QVersitContactHandlerFactory,
QVersitContactHandlerFactory::ProfileSync(), and
QVersitContactHandlerFactory::ProfileBackup().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@importContacts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeContact-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeContact(string contactId)

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

Remove the contact from the contacts store by given contactId. After
removing a contact it is not possible to save it again.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Contact::contactId.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeContact -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeContacts-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeContacts(list<string> contactIds)

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

Remove the list of contacts from the contacts store by given contactIds.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Contact::contactId.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeContacts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="saveContact-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

saveContact(Contact contact, StorageLocation storageLocation =
UserDataStorage)

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

Save the given contact into the contacts backend.

.. raw:: html

   </p>

.. raw:: html

   <p>

The location for storing the contact can be defined with storageLocation
for new contacts. When the contact is updated, ie saved again,
storageLocation is ignored and the contact is saved to the same location
as it were before.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once saved successfully, the dirty flags of this contact will be reset.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Contact::modified.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@saveContact -->


