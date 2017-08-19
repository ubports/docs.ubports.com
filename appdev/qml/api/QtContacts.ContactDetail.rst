QtContacts.ContactDetail
========================

.. raw:: html

   <p>

The ContactDetail element represents a single, complete detail about a
contact. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContactDetail -->

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

contexts : list<int>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

detailUri : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fields : list<int>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

linkedDetailUris : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

readOnly : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removable : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

type : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ContactDetail-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The ContactDetail element is part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QContactDetail.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContactDetail -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$contexts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contexts-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contexts : list<int>

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

This property holds one or more contexts that this detail is associated
with.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contexts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="detailUri-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

detailUri : string

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

This property holds the unique URI of the detail if one exists.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detailUri -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fields-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fields : list<int>

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

This property holds the list of all fields which this detail supports.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fields -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="linkedDetailUris-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

linkedDetailUris : list<string>

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

This property holds a list of detail URIs to which this detail is
linked.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@linkedDetailUris -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="readOnly-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

readOnly : bool

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

This property indicates whether or not this detail is writable. This
property is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@readOnly -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

removable : bool

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

This property indicates whether or not this detail is removale. This
property is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removable -->

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

This property holds the type of the detail.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

ContactDetail.Address

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Anniversary

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Avatar

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Birthday

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.DisplayLabel

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Email

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.ExtendedDetail

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Family

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Favorite

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Gender

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Geolocation

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.GlobalPresence

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Guid

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Hobby

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Name

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.NickName

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Note

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.OnlineAccount

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Organization

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.PhoneNumber

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Presence

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Ringtone

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.SyncTarget

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Tag

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Timestamp

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Url

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Version

.. raw:: html

   </li>

.. raw:: html

   <li>

ContactDetail.Unknown

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This property is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@type -->


