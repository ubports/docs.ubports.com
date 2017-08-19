QtContacts.Contact
==================

.. raw:: html

   <p>

The Contact element represents an addressbook contact. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Contact -->

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

address : Address

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

addresses : list<Address>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

anniversary : Anniversary

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

avatar : Avatar

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

birthday : Birthday

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contactDetails : list<ContactDetail>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contactId : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

displayLabel : DisplayLabel

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

email : EmailAddress

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

emails : list<EmailAddress>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

extendedDetail : ExtendedDetail

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

extendedDetails : list<ExtendedDetail>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

family : Family

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

favorite : Favorite

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

gender : Gender

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

geolocation : GeoLocation

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

globalPresence : GlobalPresence

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

guid : Guid

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

hobby : Hobby

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

manager : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

modified : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : Name

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

nickname : Nickname

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

note : Note

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

onlineAccount : OnlineAccount

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

organization : Organization

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

organizations : list<Organization>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

phoneNumber : PhoneNumber

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

phoneNumbers : list<PhoneNumber>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

presence : Presence

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ringtone : Ringtone

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

syncTarget : SyncTarget

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tag : Tag

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

timestamp : Timestamp

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

type : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

url : Url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

urls : list<Url>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

version : Version

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

addDetail(detail)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

clearDetails()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isPreferredDetail(actionName, detail)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

preferredDetail(actionName, detail)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeDetail(detail)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

save()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

setPreferredDetail(actionName, detail)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Contact-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Contact element is part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <p>

A Contact object has a collection of details (like a name, phone numbers
and email addresses). Each detail (which can have multiple fields) is
stored in an appropriate subclass of ContactDetail, and the Contact
allows retrieving these details in various ways.

.. raw:: html

   </p>

.. raw:: html

   <p>

If some of the contact details are not unique details, all of this type
of detail values can be accessed by the property with the name in
plural. For example, if there are 3 phone numbers stored in a contact,
they can be accessed by contact.phoneNumbers property, which holds a
list of all PhoneNumber details. If a contact does not contain a detail
of particular type, the value of the corresponding singular property
(e.g. phoneNumber) in undefined and the plural (e.g. phoneNumbers) is
empty. The list of properties which support multiple detail instances
depends on the contact engine implementations.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QContact.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Contact -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$address -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="address-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

address : Address

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

This property holds the address detail of the Contact object. In case a
contact has several addresses then the first one is returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@address -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addresses-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

addresses : list<Address>

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

This property holds the address details of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addresses -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="anniversary-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anniversary : Anniversary

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

This property holds the anniversary detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@anniversary -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="avatar-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

avatar : Avatar

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

This property holds the avatar detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@avatar -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="birthday-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

birthday : Birthday

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

This property holds the birthday detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@birthday -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contactDetails-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contactDetails : list<ContactDetail>

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

This property holds the list of all the details that the contact has.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contactDetails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contactId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contactId : int

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

This property holds the id of the Contact object. This property is read
only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contactId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="displayLabel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

displayLabel : DisplayLabel

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

This property holds the displayLabel detail of the Contact object.
display label is the one which gets displayed when a contact is created
as per versit doc specs this is a "FN" property

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@displayLabel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="email-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

email : EmailAddress

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

This property holds the email address detail of the Contact object. In
case a contact has several email addresses then the first one is
returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@email -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="emails-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

emails : list<EmailAddress>

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

This property holds the email address details of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@emails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="extendedDetail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

extendedDetail : ExtendedDetail

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

This property holds the extended detail of the Contact object. In case a
contact has several extended details then the first one is returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@extendedDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="extendedDetails-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

extendedDetails : list<ExtendedDetail>

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

This property holds the extended details of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@extendedDetails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="family-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

family : Family

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

This property holds the family detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@family -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="favorite-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

favorite : Favorite

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

This property holds the favorite detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@favorite -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="gender-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

gender : Gender

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

This property holds the gender detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gender -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="geolocation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

geolocation : GeoLocation

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

This property holds the geolocation detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@geolocation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="globalPresence-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

globalPresence : GlobalPresence

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

This property holds the globalPresence detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@globalPresence -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="guid-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

guid : Guid

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

This property holds the guid detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@guid -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="hobby-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

hobby : Hobby

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

This property holds the hobby detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@hobby -->

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

This property holds the manager name which the Contact object comes
from.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@manager -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="modified-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

modified : bool

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

This property holds the dirty flag of the Contact object. If the Contact
has been changed, returns true, otherwise returns false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@modified -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : Name

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

This property holds the name detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nickname-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

nickname : Nickname

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

This property holds the nickname detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nickname -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="note-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

note : Note

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

This property holds the note detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@note -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onlineAccount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

onlineAccount : OnlineAccount

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

This property holds the onlineAccount detail of the Contact object. In
case a contact has several accounts then the first one is returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onlineAccount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="organization-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

organization : Organization

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

This property holds the organization detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@organization -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="organizations-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

organizations : list<Organization>

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

This property holds the organization details of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@organizations -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="phoneNumber-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

phoneNumber : PhoneNumber

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

This property holds the phone number detail of the Contact object. In
case a contact has several numbers then the first one is returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@phoneNumber -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="phoneNumbers-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

phoneNumbers : list<PhoneNumber>

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

This property holds the phone number details of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@phoneNumbers -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="presence-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

presence : Presence

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

This property holds the presence detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@presence -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ringtone-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ringtone : Ringtone

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

This property holds the ringtone detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ringtone -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="syncTarget-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

syncTarget : SyncTarget

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

This property holds the syncTarget detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@syncTarget -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tag-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

tag : Tag

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

This property holds the tag detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tag -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="timestamp-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

timestamp : Timestamp

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

This property holds the timestamp detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@timestamp -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="type-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

type : enumeration

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

This property holds type of the Contact, the value can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Contact.Contact

.. raw:: html

   </li>

.. raw:: html

   <li>

Contact.Group

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@type -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="url-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

url : Url

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

This property holds the url detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@url -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="urls-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

urls : list<Url>

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

This property holds the url details of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@urls -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="version-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

version : Version

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

This property holds the version detail of the Contact object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@version -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addDetail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

addDetail(detail)

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

Adds the given contact detail to the contact, returns true if
successful, otherwise returns false.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: If the detail has been added into the same contact before, this
operation will be ignored, so if you want to add a detail multiple
times, the detail should be copied before calling this function.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clearDetails-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clearDetails()

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

Remove all detail objects in this contact.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clearDetails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isPreferredDetail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

isPreferredDetail(actionName, detail)

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

Returns true if the given detail is a preferred detail for the given
actionName, or for any action if the actionName is empty.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also preferredDetail().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isPreferredDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="preferredDetail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

preferredDetail(actionName, detail)

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

Returns the preferred detail for a given actionName.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the actionName is empty, or there is no preference recorded for the
supplied actionName, returns null.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also preferredDetails().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@preferredDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeDetail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeDetail(detail)

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

Removes the given contact detail from the contact, returns true if
successful, otherwise returns false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="save-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

save()

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

Saves this Contact if the contact has been modified.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Contact::modified.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@save -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setPreferredDetail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setPreferredDetail(actionName, detail)

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

Set a particular detail (preferredDetail) as the preferred detail for
any actions with the given actionName.

.. raw:: html

   </p>

.. raw:: html

   <p>

The preferredDetail object must exist in this object, and the actionName
cannot be empty.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the preference could be recorded, and false otherwise.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also preferredDetail().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setPreferredDetail -->


