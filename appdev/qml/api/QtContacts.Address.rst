QtContacts.Address
==================

.. raw:: html

   <p>

The Address element contains an address of a contact. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Address -->

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

country : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

locality : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

postOfficeBox : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

postcode : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

region : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

street : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

subTypes : list<variant>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Address-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The fields in the Address element are based on the segments of the ADR
property of a Versit vCard file.

.. raw:: html

   </p>

.. raw:: html

   <p>

Address element contains the following field types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Address.Street

.. raw:: html

   </li>

.. raw:: html

   <li>

Address.Locality

.. raw:: html

   </li>

.. raw:: html

   <li>

Address.Region

.. raw:: html

   </li>

.. raw:: html

   <li>

Address.PostCode

.. raw:: html

   </li>

.. raw:: html

   <li>

Address.Country

.. raw:: html

   </li>

.. raw:: html

   <li>

Address.SubTypes

.. raw:: html

   </li>

.. raw:: html

   <li>

Address.PostOfficeBox

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Versit ® is a trademark of the Internet Mail Consortium. This element is
part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Address -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$country -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="country-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

country : string

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

This property holds the name of the country of the address.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@country -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="locality-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

locality : string

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

This property holds the name of the city, town or suburb of the address.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@locality -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="postOfficeBox-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

postOfficeBox : string

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

This property holds the post office box identifier of the mailing
address.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@postOfficeBox -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="postcode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

postcode : string

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

This property holds the postal code for the address.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@postcode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="region-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

region : string

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

This property holds the name or identifier of the state, province or
region of the address.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@region -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="street-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

street : string

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

This property holds the street number and street name of the address.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@street -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="subTypes-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

subTypes : list<variant>

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

This property stores the sub types of the address.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Address.Parcel - An address for parcel delivery.

.. raw:: html

   </li>

.. raw:: html

   <li>

Address.Postal - An address for postal delivery.

.. raw:: html

   </li>

.. raw:: html

   <li>

Address.Domestic - An address for domestic mail delivery.

.. raw:: html

   </li>

.. raw:: html

   <li>

Address.International - An address for international mail delivery.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@subTypes -->


