QtOrganizer.OrganizerItem
=========================

.. raw:: html

   <p>

The OrganizerItem element represents the in-memory version of a
organizer item. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OrganizerItem -->

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

collectionId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

description : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

displayLabel : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

guid : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

itemDetails : list<Detail>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

itemId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

itemType : enum

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

onItemChanged()

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

clearDetails()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

Detail detail(type)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

list<Detail> details(type)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void removeDetail(detail)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

save()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void setDetail(detail)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$OrganizerItem-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A OrganizerItem has a number of mandatory details. Different subclasses
of OrganizerItem (i.e., Event, EventOccurrence, Journal, Todo,
TodoOccurrence, Note) may have more mandatory details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Most frequently-used details can also be accessed through convenient
properties, e.g. displayLabel, while all details can be accessed through
detail(), details(), saveDetail(), among others.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Event, EventOccurrence, Journal, Todo, TodoOccurrence, Note,
QOrganizerManager, and QOrganizerItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OrganizerItem -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$collectionId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="collectionId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

collectionId : string

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

This property holds the id of collection where the item belongs to.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@collectionId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="description-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

description : string

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

This property holds the description text of the organizer item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@description -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="displayLabel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

displayLabel : string

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

This property holds the display label of the organizer item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@displayLabel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="guid-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

guid : string

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

This property holds the GUID string of the organizer item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@guid -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemDetails-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

itemDetails : list<Detail>

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

This property holds the details of the OrganizerItem object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemDetails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

itemId : string

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

This property holds the id of the OrganizerItem object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

itemType : enum

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

This property holds the type of the OrganizerItem object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemType -->

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

This property holds the manager uri which the OrganizerItem object comes
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

This property holds the dirty flag of the OrganizerItem object.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also save.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@modified -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$onItemChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="onItemChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

onItemChanged()

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

This signal is emitted, when any of the OrganizerItem's or child
element's (like Event, Todo etc) properties have been changed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@onItemChanged -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$clearDetails -->

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

Removes all details from the organizer item.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also removeDetail.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clearDetails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="detail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

Detail detail(type)

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

Returns the first detail stored in the organizer item with the given
type.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Detail::type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="details-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

list<Detail> details(type)

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

Returns all the details stored in the organizer item with the given
type.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Detail::type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@details -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeDetail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void removeDetail(detail)

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

Removes given detail from the organizer item.

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

Saves this OrganizerItem if the item has been modified.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also modified.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@save -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setDetail-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void setDetail(detail)

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

Saves the given detail in the organizer item, and sets its id.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setDetail -->


