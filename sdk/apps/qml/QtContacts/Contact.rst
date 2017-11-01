The Contact element represents an addressbook contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`address </sdk/apps/qml/QtContacts/Contact#address-prop>`__**** :
   Address
-  ****`addresses </sdk/apps/qml/QtContacts/Contact#addresses-prop>`__****
   : list<Address>
-  ****`anniversary </sdk/apps/qml/QtContacts/Contact#anniversary-prop>`__****
   : Anniversary
-  ****`avatar </sdk/apps/qml/QtContacts/Contact#avatar-prop>`__**** :
   Avatar
-  ****`birthday </sdk/apps/qml/QtContacts/Contact#birthday-prop>`__****
   : Birthday
-  ****`contactDetails </sdk/apps/qml/QtContacts/Contact#contactDetails-prop>`__****
   : list<ContactDetail>
-  ****`contactId </sdk/apps/qml/QtContacts/Contact#contactId-prop>`__****
   : int
-  ****`displayLabel </sdk/apps/qml/QtContacts/Contact#displayLabel-prop>`__****
   : DisplayLabel
-  ****`email </sdk/apps/qml/QtContacts/Contact#email-prop>`__**** :
   EmailAddress
-  ****`emails </sdk/apps/qml/QtContacts/Contact#emails-prop>`__**** :
   list<EmailAddress>
-  ****`extendedDetail </sdk/apps/qml/QtContacts/Contact#extendedDetail-prop>`__****
   : ExtendedDetail
-  ****`extendedDetails </sdk/apps/qml/QtContacts/Contact#extendedDetails-prop>`__****
   : list<ExtendedDetail>
-  ****`family </sdk/apps/qml/QtContacts/Contact#family-prop>`__**** :
   Family
-  ****`favorite </sdk/apps/qml/QtContacts/Contact#favorite-prop>`__****
   : Favorite
-  ****`gender </sdk/apps/qml/QtContacts/Contact#gender-prop>`__**** :
   Gender
-  ****`geolocation </sdk/apps/qml/QtContacts/Contact#geolocation-prop>`__****
   : GeoLocation
-  ****`globalPresence </sdk/apps/qml/QtContacts/Contact#globalPresence-prop>`__****
   : GlobalPresence
-  ****`guid </sdk/apps/qml/QtContacts/Contact#guid-prop>`__**** : Guid
-  ****`hobby </sdk/apps/qml/QtContacts/Contact#hobby-prop>`__**** :
   Hobby
-  ****`manager </sdk/apps/qml/QtContacts/Contact#manager-prop>`__**** :
   string
-  ****`modified </sdk/apps/qml/QtContacts/Contact#modified-prop>`__****
   : bool
-  ****`name </sdk/apps/qml/QtContacts/Contact#name-prop>`__**** : Name
-  ****`nickname </sdk/apps/qml/QtContacts/Contact#nickname-prop>`__****
   : Nickname
-  ****`note </sdk/apps/qml/QtContacts/Contact#note-prop>`__**** : Note
-  ****`onlineAccount </sdk/apps/qml/QtContacts/Contact#onlineAccount-prop>`__****
   : OnlineAccount
-  ****`organization </sdk/apps/qml/QtContacts/Contact#organization-prop>`__****
   : Organization
-  ****`organizations </sdk/apps/qml/QtContacts/Contact#organizations-prop>`__****
   : list<Organization>
-  ****`phoneNumber </sdk/apps/qml/QtContacts/Contact#phoneNumber-prop>`__****
   : PhoneNumber
-  ****`phoneNumbers </sdk/apps/qml/QtContacts/Contact#phoneNumbers-prop>`__****
   : list<PhoneNumber>
-  ****`presence </sdk/apps/qml/QtContacts/Contact#presence-prop>`__****
   : Presence
-  ****`ringtone </sdk/apps/qml/QtContacts/Contact#ringtone-prop>`__****
   : Ringtone
-  ****`syncTarget </sdk/apps/qml/QtContacts/Contact#syncTarget-prop>`__****
   : SyncTarget
-  ****`tag </sdk/apps/qml/QtContacts/Contact#tag-prop>`__**** : Tag
-  ****`timestamp </sdk/apps/qml/QtContacts/Contact#timestamp-prop>`__****
   : Timestamp
-  ****`type </sdk/apps/qml/QtContacts/Contact#type-prop>`__**** :
   enumeration
-  ****`url </sdk/apps/qml/QtContacts/Contact#url-prop>`__**** : Url
-  ****`urls </sdk/apps/qml/QtContacts/Contact#urls-prop>`__**** :
   list<Url>
-  ****`version </sdk/apps/qml/QtContacts/Contact#version-prop>`__**** :
   Version

Methods
-------

-  ****`addDetail </sdk/apps/qml/QtContacts/Contact#addDetail-method>`__****\ (detail)
-  ****`clearDetails </sdk/apps/qml/QtContacts/Contact#clearDetails-method>`__****\ ()
-  ****`isPreferredDetail </sdk/apps/qml/QtContacts/Contact#isPreferredDetail-method>`__****\ (actionName,
   detail)
-  ****`preferredDetail </sdk/apps/qml/QtContacts/Contact#preferredDetail-method>`__****\ (actionName,
   detail)
-  ****`removeDetail </sdk/apps/qml/QtContacts/Contact#removeDetail-method>`__****\ (detail)
-  ****`save </sdk/apps/qml/QtContacts/Contact#save-method>`__****\ ()
-  ****`setPreferredDetail </sdk/apps/qml/QtContacts/Contact#setPreferredDetail-method>`__****\ (actionName,
   detail)

Detailed Description
--------------------

The Contact element is part of the **QtContacts** module.

A Contact object has a collection of details (like a name, phone numbers
and email addresses). Each detail (which can have multiple fields) is
stored in an appropriate subclass of
`ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__, and the
Contact allows retrieving these details in various ways.

If some of the contact details are not unique details, all of this type
of detail values can be accessed by the property with the name in
plural. For example, if there are 3 phone numbers stored in a contact,
they can be accessed by
contact.\ `phoneNumbers </sdk/apps/qml/QtContacts/Contact#phoneNumbers-prop>`__
property, which holds a list of all
`PhoneNumber </sdk/apps/qml/QtContacts/PhoneNumber/>`__ details. If a
contact does not contain a detail of particular type, the value of the
corresponding singular property (e.g.
`phoneNumber </sdk/apps/qml/QtContacts/Contact#phoneNumber-prop>`__) in
undefined and the plural (e.g.
`phoneNumbers </sdk/apps/qml/QtContacts/Contact#phoneNumbers-prop>`__)
is empty. The list of properties which support multiple detail instances
depends on the contact engine implementations.

**See also** QContact.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ address : `Address </sdk/apps/qml/QtContacts/Address/>`__       |
+--------------------------------------------------------------------------+

This property holds the address detail of the Contact object. In case a
contact has several addresses then the first one is returned.

| 

+--------------------------------------------------------------------------+
|        \ addresses :                                                     |
| list<`Address </sdk/apps/qml/QtContacts/Address/>`__>                    |
+--------------------------------------------------------------------------+

This property holds the address details of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ anniversary :                                                   |
| `Anniversary </sdk/apps/qml/QtContacts/Anniversary/>`__                  |
+--------------------------------------------------------------------------+

This property holds the anniversary detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ avatar : `Avatar </sdk/apps/qml/QtContacts/Avatar/>`__          |
+--------------------------------------------------------------------------+

This property holds the avatar detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ birthday : `Birthday </sdk/apps/qml/QtContacts/Birthday/>`__    |
+--------------------------------------------------------------------------+

This property holds the birthday detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ contactDetails :                                                |
| list<`ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__>        |
+--------------------------------------------------------------------------+

This property holds the list of all the details that the contact has.

| 

+--------------------------------------------------------------------------+
|        \ contactId : int                                                 |
+--------------------------------------------------------------------------+

This property holds the id of the Contact object. This property is read
only.

| 

+--------------------------------------------------------------------------+
|        \ displayLabel :                                                  |
| `DisplayLabel </sdk/apps/qml/QtContacts/DisplayLabel/>`__                |
+--------------------------------------------------------------------------+

This property holds the displayLabel detail of the Contact object.
display label is the one which gets displayed when a contact is created
as per versit doc specs this is a "FN" property

| 

+--------------------------------------------------------------------------+
|        \ email :                                                         |
| `EmailAddress </sdk/apps/qml/QtContacts/EmailAddress/>`__                |
+--------------------------------------------------------------------------+

This property holds the email address detail of the Contact object. In
case a contact has several email addresses then the first one is
returned.

| 

+--------------------------------------------------------------------------+
|        \ emails :                                                        |
| list<`EmailAddress </sdk/apps/qml/QtContacts/EmailAddress/>`__>          |
+--------------------------------------------------------------------------+

This property holds the email address details of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ extendedDetail :                                                |
| `ExtendedDetail </sdk/apps/qml/QtContacts/ExtendedDetail/>`__            |
+--------------------------------------------------------------------------+

This property holds the extended detail of the Contact object. In case a
contact has several extended details then the first one is returned.

| 

+--------------------------------------------------------------------------+
|        \ extendedDetails :                                               |
| list<`ExtendedDetail </sdk/apps/qml/QtContacts/ExtendedDetail/>`__>      |
+--------------------------------------------------------------------------+

This property holds the extended details of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ family : `Family </sdk/apps/qml/QtContacts/Family/>`__          |
+--------------------------------------------------------------------------+

This property holds the family detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ favorite : `Favorite </sdk/apps/qml/QtContacts/Favorite/>`__    |
+--------------------------------------------------------------------------+

This property holds the favorite detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ gender : `Gender </sdk/apps/qml/QtContacts/Gender/>`__          |
+--------------------------------------------------------------------------+

This property holds the gender detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ geolocation :                                                   |
| `GeoLocation </sdk/apps/qml/QtContacts/GeoLocation/>`__                  |
+--------------------------------------------------------------------------+

This property holds the geolocation detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ globalPresence :                                                |
| `GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__            |
+--------------------------------------------------------------------------+

This property holds the globalPresence detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ guid : `Guid </sdk/apps/qml/QtContacts/Guid/>`__                |
+--------------------------------------------------------------------------+

This property holds the guid detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ hobby : `Hobby </sdk/apps/qml/QtContacts/Hobby/>`__             |
+--------------------------------------------------------------------------+

This property holds the hobby detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ manager : string                                                |
+--------------------------------------------------------------------------+

This property holds the manager name which the Contact object comes
from.

| 

+--------------------------------------------------------------------------+
|        \ modified : bool                                                 |
+--------------------------------------------------------------------------+

This property holds the dirty flag of the Contact object. If the Contact
has been changed, returns true, otherwise returns false.

| 

+--------------------------------------------------------------------------+
|        \ name : `Name </sdk/apps/qml/QtContacts/Name/>`__                |
+--------------------------------------------------------------------------+

This property holds the name detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ nickname : `Nickname </sdk/apps/qml/QtContacts/Nickname/>`__    |
+--------------------------------------------------------------------------+

This property holds the nickname detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ note : `Note </sdk/apps/qml/QtContacts/Note/>`__                |
+--------------------------------------------------------------------------+

This property holds the note detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ onlineAccount :                                                 |
| `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__              |
+--------------------------------------------------------------------------+

This property holds the onlineAccount detail of the Contact object. In
case a contact has several accounts then the first one is returned.

| 

+--------------------------------------------------------------------------+
|        \ organization :                                                  |
| `Organization </sdk/apps/qml/QtContacts/Organization/>`__                |
+--------------------------------------------------------------------------+

This property holds the organization detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ organizations :                                                 |
| list<`Organization </sdk/apps/qml/QtContacts/Organization/>`__>          |
+--------------------------------------------------------------------------+

This property holds the organization details of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ phoneNumber :                                                   |
| `PhoneNumber </sdk/apps/qml/QtContacts/PhoneNumber/>`__                  |
+--------------------------------------------------------------------------+

This property holds the phone number detail of the Contact object. In
case a contact has several numbers then the first one is returned.

| 

+--------------------------------------------------------------------------+
|        \ phoneNumbers :                                                  |
| list<`PhoneNumber </sdk/apps/qml/QtContacts/PhoneNumber/>`__>            |
+--------------------------------------------------------------------------+

This property holds the phone number details of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ presence : `Presence </sdk/apps/qml/QtContacts/Presence/>`__    |
+--------------------------------------------------------------------------+

This property holds the presence detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ ringtone : `Ringtone </sdk/apps/qml/QtContacts/Ringtone/>`__    |
+--------------------------------------------------------------------------+

This property holds the ringtone detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ syncTarget :                                                    |
| `SyncTarget </sdk/apps/qml/QtContacts/SyncTarget/>`__                    |
+--------------------------------------------------------------------------+

This property holds the syncTarget detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ tag : `Tag </sdk/apps/qml/QtContacts/Tag/>`__                   |
+--------------------------------------------------------------------------+

This property holds the tag detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ timestamp : `Timestamp </sdk/apps/qml/QtContacts/Timestamp/>`__ |
+--------------------------------------------------------------------------+

This property holds the timestamp detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ type : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds type of the Contact, the value can be one of:

-  Contact.Contact
-  Contact.Group

| 

+--------------------------------------------------------------------------+
|        \ url : `Url </sdk/apps/qml/QtContacts/Url/>`__                   |
+--------------------------------------------------------------------------+

This property holds the url detail of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ urls : list<`Url </sdk/apps/qml/QtContacts/Url/>`__>            |
+--------------------------------------------------------------------------+

This property holds the url details of the Contact object.

| 

+--------------------------------------------------------------------------+
|        \ version : Version                                               |
+--------------------------------------------------------------------------+

This property holds the version detail of the Contact object.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ addDetail(detail)                                               |
+--------------------------------------------------------------------------+

Adds the given contact *detail* to the contact, returns true if
successful, otherwise returns false.

Note: If the *detail* has been added into the same contact before, this
operation will be ignored, so if you want to add a *detail* multiple
times, the *detail* should be copied before calling this function.

| 

+--------------------------------------------------------------------------+
|        \ clearDetails()                                                  |
+--------------------------------------------------------------------------+

Remove all detail objects in this contact.

| 

+--------------------------------------------------------------------------+
|        \ isPreferredDetail(actionName, detail)                           |
+--------------------------------------------------------------------------+

Returns true if the given *detail* is a preferred detail for the given
*actionName*, or for any action if the *actionName* is empty.

**See also**
`preferredDetail() </sdk/apps/qml/QtContacts/Contact#preferredDetail-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ preferredDetail(actionName, detail)                             |
+--------------------------------------------------------------------------+

Returns the preferred detail for a given *actionName*.

If the *actionName* is empty, or there is no preference recorded for the
supplied *actionName*, returns null.

**See also** preferredDetails().

| 

+--------------------------------------------------------------------------+
|        \ removeDetail(detail)                                            |
+--------------------------------------------------------------------------+

Removes the given contact *detail* from the contact, returns true if
successful, otherwise returns false.

| 

+--------------------------------------------------------------------------+
|        \ save()                                                          |
+--------------------------------------------------------------------------+

Saves this Contact if the contact has been modified.

**See also**
`Contact::modified </sdk/apps/qml/QtContacts/Contact#modified-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ setPreferredDetail(actionName, detail)                          |
+--------------------------------------------------------------------------+

Set a particular detail (*preferredDetail*) as the preferred detail for
any actions with the given *actionName*.

The *preferredDetail* object must exist in this object, and the
*actionName* cannot be empty.

Returns true if the preference could be recorded, and false otherwise.

**See also**
`preferredDetail() </sdk/apps/qml/QtContacts/Contact#preferredDetail-method>`__.

| 
