.. _sdk_qtcontacts_contact:
QtContacts Contact
==================

The Contact element represents an addressbook contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`address <sdk_qtcontacts_contact_address-prop>` : Address
-  :ref:`addresses <sdk_qtcontacts_contact_addresses-prop>` :
   list<Address>
-  :ref:`anniversary <sdk_qtcontacts_contact_anniversary-prop>` :
   Anniversary
-  :ref:`avatar <sdk_qtcontacts_contact_avatar-prop>` : Avatar
-  :ref:`birthday <sdk_qtcontacts_contact_birthday-prop>` :
   Birthday
-  :ref:`contactDetails <sdk_qtcontacts_contact_contactDetails-prop>`
   : list<ContactDetail>
-  :ref:`contactId <sdk_qtcontacts_contact_contactId-prop>` : int
-  :ref:`displayLabel <sdk_qtcontacts_contact_displayLabel-prop>` :
   DisplayLabel
-  :ref:`email <sdk_qtcontacts_contact_email-prop>` : EmailAddress
-  :ref:`emails <sdk_qtcontacts_contact_emails-prop>` :
   list<EmailAddress>
-  :ref:`extendedDetail <sdk_qtcontacts_contact_extendedDetail-prop>`
   : ExtendedDetail
-  :ref:`extendedDetails <sdk_qtcontacts_contact_extendedDetails-prop>`
   : list<ExtendedDetail>
-  :ref:`family <sdk_qtcontacts_contact_family-prop>` : Family
-  :ref:`favorite <sdk_qtcontacts_contact_favorite-prop>` :
   Favorite
-  :ref:`gender <sdk_qtcontacts_contact_gender-prop>` : Gender
-  :ref:`geolocation <sdk_qtcontacts_contact_geolocation-prop>` :
   GeoLocation
-  :ref:`globalPresence <sdk_qtcontacts_contact_globalPresence-prop>`
   : GlobalPresence
-  :ref:`guid <sdk_qtcontacts_contact_guid-prop>` : Guid
-  :ref:`hobby <sdk_qtcontacts_contact_hobby-prop>` : Hobby
-  :ref:`manager <sdk_qtcontacts_contact_manager-prop>` : string
-  :ref:`modified <sdk_qtcontacts_contact_modified-prop>` : bool
-  :ref:`name <sdk_qtcontacts_contact_name-prop>` : Name
-  :ref:`nickname <sdk_qtcontacts_contact_nickname-prop>` :
   Nickname
-  :ref:`note <sdk_qtcontacts_contact_note-prop>` : Note
-  :ref:`onlineAccount <sdk_qtcontacts_contact_onlineAccount-prop>`
   : OnlineAccount
-  :ref:`organization <sdk_qtcontacts_contact_organization-prop>` :
   Organization
-  :ref:`organizations <sdk_qtcontacts_contact_organizations-prop>`
   : list<Organization>
-  :ref:`phoneNumber <sdk_qtcontacts_contact_phoneNumber-prop>` :
   PhoneNumber
-  :ref:`phoneNumbers <sdk_qtcontacts_contact_phoneNumbers-prop>` :
   list<PhoneNumber>
-  :ref:`presence <sdk_qtcontacts_contact_presence-prop>` :
   Presence
-  :ref:`ringtone <sdk_qtcontacts_contact_ringtone-prop>` :
   Ringtone
-  :ref:`syncTarget <sdk_qtcontacts_contact_syncTarget-prop>` :
   SyncTarget
-  :ref:`tag <sdk_qtcontacts_contact_tag-prop>` : Tag
-  :ref:`timestamp <sdk_qtcontacts_contact_timestamp-prop>` :
   Timestamp
-  :ref:`type <sdk_qtcontacts_contact_type-prop>` : enumeration
-  :ref:`url <sdk_qtcontacts_contact_url-prop>` : Url
-  :ref:`urls <sdk_qtcontacts_contact_urls-prop>` : list<Url>
-  :ref:`version <sdk_qtcontacts_contact_version-prop>` : Version

Methods
-------

-  :ref:`addDetail <sdk_qtcontacts_contact_addDetail-method>`\ (detail)
-  :ref:`clearDetails <sdk_qtcontacts_contact_clearDetails-method>`\ ()
-  :ref:`isPreferredDetail <sdk_qtcontacts_contact_isPreferredDetail-method>`\ (actionName,
   detail)
-  :ref:`preferredDetail <sdk_qtcontacts_contact_preferredDetail-method>`\ (actionName,
   detail)
-  :ref:`removeDetail <sdk_qtcontacts_contact_removeDetail-method>`\ (detail)
-  :ref:`save <sdk_qtcontacts_contact_save-method>`\ ()
-  :ref:`setPreferredDetail <sdk_qtcontacts_contact_setPreferredDetail-method>`\ (actionName,
   detail)

Detailed Description
--------------------

The Contact element is part of the **QtContacts** module.

A Contact object has a collection of details (like a name, phone numbers
and email addresses). Each detail (which can have multiple fields) is
stored in an appropriate subclass of
:ref:`ContactDetail <sdk_qtcontacts_contactdetail>`, and the Contact allows
retrieving these details in various ways.

If some of the contact details are not unique details, all of this type
of detail values can be accessed by the property with the name in
plural. For example, if there are 3 phone numbers stored in a contact,
they can be accessed by
contact.\ :ref:`phoneNumbers <sdk_qtcontacts_contact#phoneNumbers-prop>`
property, which holds a list of all
:ref:`PhoneNumber <sdk_qtcontacts_phonenumber>` details. If a contact does
not contain a detail of particular type, the value of the corresponding
singular property (e.g.
:ref:`phoneNumber <sdk_qtcontacts_contact#phoneNumber-prop>`) in undefined
and the plural (e.g.
:ref:`phoneNumbers <sdk_qtcontacts_contact#phoneNumbers-prop>`) is empty.
The list of properties which support multiple detail instances depends
on the contact engine implementations.

**See also** QContact.

Property Documentation
----------------------

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ address : `Address <sdk_qtcontacts_address>`               |
+--------------------------------------------------------------------------+

This property holds the address detail of the Contact object. In case a
contact has several addresses then the first one is returned.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ addresses : list<`Address <sdk_qtcontacts_address>`>          |
+--------------------------------------------------------------------------+

This property holds the address details of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ anniversary : `Anniversary <sdk_qtcontacts_anniversary>`   |
+--------------------------------------------------------------------------+

This property holds the anniversary detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ avatar : `Avatar <sdk_qtcontacts_avatar>`                  |
+--------------------------------------------------------------------------+

This property holds the avatar detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ birthday : `Birthday <sdk_qtcontacts_birthday>`            |
+--------------------------------------------------------------------------+

This property holds the birthday detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_contactDetails-prop:

+--------------------------------------------------------------------------+
|        \ contactDetails :                                                |
| list<:ref:`ContactDetail <sdk_qtcontacts_contactdetail>`>                   |
+--------------------------------------------------------------------------+

This property holds the list of all the details that the contact has.

| 

.. _sdk_qtcontacts_contact_contactId-prop:

+--------------------------------------------------------------------------+
|        \ contactId : int                                                 |
+--------------------------------------------------------------------------+

This property holds the id of the Contact object. This property is read
only.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ displayLabel : `DisplayLabel <sdk_qtcontacts_displaylabel>`|
+--------------------------------------------------------------------------+

This property holds the displayLabel detail of the Contact object.
display label is the one which gets displayed when a contact is created
as per versit doc specs this is a "FN" property

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ email : `EmailAddress <sdk_qtcontacts_emailaddress>`       |
+--------------------------------------------------------------------------+

This property holds the email address detail of the Contact object. In
case a contact has several email addresses then the first one is
returned.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ emails : list<`EmailAddress <sdk_qtcontacts_emailaddress>`>   |
+--------------------------------------------------------------------------+

This property holds the email address details of the Contact object.

| 

.. _sdk_qtcontacts_contact_extendedDetail-prop:

+--------------------------------------------------------------------------+
|        \ extendedDetail :                                                |
| :ref:`ExtendedDetail <sdk_qtcontacts_extendeddetail>`                       |
+--------------------------------------------------------------------------+

This property holds the extended detail of the Contact object. In case a
contact has several extended details then the first one is returned.

| 

.. _sdk_qtcontacts_contact_extendedDetails-prop:

+--------------------------------------------------------------------------+
|        \ extendedDetails :                                               |
| list<:ref:`ExtendedDetail <sdk_qtcontacts_extendeddetail>`>                 |
+--------------------------------------------------------------------------+

This property holds the extended details of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ family : `Family <sdk_qtcontacts_family>`                  |
+--------------------------------------------------------------------------+

This property holds the family detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ favorite : `Favorite <sdk_qtcontacts_favorite>`            |
+--------------------------------------------------------------------------+

This property holds the favorite detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ gender : `Gender <sdk_qtcontacts_gender>`                  |
+--------------------------------------------------------------------------+

This property holds the gender detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ geolocation : `GeoLocation <sdk_qtcontacts_geolocation>`   |
+--------------------------------------------------------------------------+

This property holds the geolocation detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_globalPresence-prop:

+--------------------------------------------------------------------------+
|        \ globalPresence :                                                |
| :ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`                       |
+--------------------------------------------------------------------------+

This property holds the globalPresence detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ guid : `Guid <sdk_qtcontacts_guid>`                        |
+--------------------------------------------------------------------------+

This property holds the guid detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ hobby : `Hobby <sdk_qtcontacts_hobby>`                     |
+--------------------------------------------------------------------------+

This property holds the hobby detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_manager-prop:

+--------------------------------------------------------------------------+
|        \ manager : string                                                |
+--------------------------------------------------------------------------+

This property holds the manager name which the Contact object comes
from.

| 

.. _sdk_qtcontacts_contact_modified-prop:

+--------------------------------------------------------------------------+
|        \ modified : bool                                                 |
+--------------------------------------------------------------------------+

This property holds the dirty flag of the Contact object. If the Contact
has been changed, returns true, otherwise returns false.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ name : `Name <sdk_qtcontacts_name>`                        |
+--------------------------------------------------------------------------+

This property holds the name detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ nickname : `Nickname <sdk_qtcontacts_nickname>`            |
+--------------------------------------------------------------------------+

This property holds the nickname detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ note : `Note <sdk_qtcontacts_note>`                        |
+--------------------------------------------------------------------------+

This property holds the note detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_onlineAccount-prop:

+--------------------------------------------------------------------------+
|        \ onlineAccount :                                                 |
| :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`                         |
+--------------------------------------------------------------------------+

This property holds the onlineAccount detail of the Contact object. In
case a contact has several accounts then the first one is returned.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ organization : `Organization <sdk_qtcontacts_organization>`|
+--------------------------------------------------------------------------+

This property holds the organization detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_organizations-prop:

+--------------------------------------------------------------------------+
|        \ organizations :                                                 |
| list<:ref:`Organization <sdk_qtcontacts_organization>`>                     |
+--------------------------------------------------------------------------+

This property holds the organization details of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ phoneNumber : `PhoneNumber <sdk_qtcontacts_phonenumber>`   |
+--------------------------------------------------------------------------+

This property holds the phone number detail of the Contact object. In
case a contact has several numbers then the first one is returned.

| 

.. _sdk_qtcontacts_contact_phoneNumbers-prop:

+--------------------------------------------------------------------------+
|        \ phoneNumbers :                                                  |
| list<:ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`>                       |
+--------------------------------------------------------------------------+

This property holds the phone number details of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ presence : `Presence <sdk_qtcontacts_presence>`            |
+--------------------------------------------------------------------------+

This property holds the presence detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ ringtone : `Ringtone <sdk_qtcontacts_ringtone>`            |
+--------------------------------------------------------------------------+

This property holds the ringtone detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ syncTarget : `SyncTarget <sdk_qtcontacts_synctarget>`      |
+--------------------------------------------------------------------------+

This property holds the syncTarget detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ tag : `Tag <sdk_qtcontacts_tag>`                           |
+--------------------------------------------------------------------------+

This property holds the tag detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ timestamp : `Timestamp <sdk_qtcontacts_timestamp>`         |
+--------------------------------------------------------------------------+

This property holds the timestamp detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_type-prop:

+--------------------------------------------------------------------------+
|        \ type : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds type of the Contact, the value can be one of:

-  Contact.Contact
-  Contact.Group

| 

.. _sdk_qtcontacts_contact_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ url : `Url <sdk_qtcontacts_url>`                           |
+--------------------------------------------------------------------------+

This property holds the url detail of the Contact object.

| 

.. _sdk_qtcontacts_contact_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ urls : list<`Url <sdk_qtcontacts_url>`>                       |
+--------------------------------------------------------------------------+

This property holds the url details of the Contact object.

| 

.. _sdk_qtcontacts_contact_version-method:

+--------------------------------------------------------------------------+
|        \ version : Version                                               |
+--------------------------------------------------------------------------+

This property holds the version detail of the Contact object.

| 

Method Documentation
--------------------

.. _sdk_qtcontacts_contact_addDetail-method:

+--------------------------------------------------------------------------+
|        \ addDetail(detail)                                               |
+--------------------------------------------------------------------------+

Adds the given contact *detail* to the contact, returns true if
successful, otherwise returns false.

Note: If the *detail* has been added into the same contact before, this
operation will be ignored, so if you want to add a *detail* multiple
times, the *detail* should be copied before calling this function.

| 

.. _sdk_qtcontacts_contact_clearDetails-method:

+--------------------------------------------------------------------------+
|        \ clearDetails()                                                  |
+--------------------------------------------------------------------------+

Remove all detail objects in this contact.

| 

.. _sdk_qtcontacts_contact_isPreferredDetail-method:

+--------------------------------------------------------------------------+
|        \ isPreferredDetail(actionName, detail)                           |
+--------------------------------------------------------------------------+

Returns true if the given *detail* is a preferred detail for the given
*actionName*, or for any action if the *actionName* is empty.

**See also**
:ref:`preferredDetail() <sdk_qtcontacts_contact#preferredDetail-method>`.

| 

.. _sdk_qtcontacts_contact_preferredDetail-method:

+--------------------------------------------------------------------------+
|        \ preferredDetail(actionName, detail)                             |
+--------------------------------------------------------------------------+

Returns the preferred detail for a given *actionName*.

If the *actionName* is empty, or there is no preference recorded for the
supplied *actionName*, returns null.

**See also** preferredDetails().

| 

.. _sdk_qtcontacts_contact_removeDetail-method:

+--------------------------------------------------------------------------+
|        \ removeDetail(detail)                                            |
+--------------------------------------------------------------------------+

Removes the given contact *detail* from the contact, returns true if
successful, otherwise returns false.

| 

.. _sdk_qtcontacts_contact_save-method:

+--------------------------------------------------------------------------+
|        \ save()                                                          |
+--------------------------------------------------------------------------+

Saves this Contact if the contact has been modified.

**See also**
:ref:`Contact::modified <sdk_qtcontacts_contact#modified-prop>`.

| 

.. _sdk_qtcontacts_contact_setPreferredDetail-method:

+--------------------------------------------------------------------------+
|        \ setPreferredDetail(actionName, detail)                          |
+--------------------------------------------------------------------------+

Set a particular detail (*preferredDetail*) as the preferred detail for
any actions with the given *actionName*.

The *preferredDetail* object must exist in this object, and the
*actionName* cannot be empty.

Returns true if the preference could be recorded, and false otherwise.

**See also**
:ref:`preferredDetail() <sdk_qtcontacts_contact#preferredDetail-method>`.

| 
