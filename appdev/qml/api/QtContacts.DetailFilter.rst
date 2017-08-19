QtContacts.DetailFilter
=======================

.. raw:: html

   <p>

The DetailFilter element provides a filter based around a detail value
criterion. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DetailFilter -->

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

detail : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

field : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

matchFlags : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

value : variant

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DetailFilter-description -->

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

See also QContactDetailFilter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DetailFilter -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$detail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="detail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

detail : enumeration

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

This property holds the detail type of which details will be matched to.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ContactDetail::type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="field-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

field : int

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

This property holds the detail field type of which detail fields will be
matched to. Detail field types are enumeration values defined in each
detail elements.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Address, Anniversary, Avatar, Birthday, DisplayLabel,
EmailAddress, Family, Favorite, Gender, GeoLocation, GlobalPresence,
Guid, Name, Nickname, Note, OnlineAccount, Organization, PhoneNumber,
Presence, Ringtone, SyncTarget, Tag, Timestamp, Url, and Hobby.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@field -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="matchFlags-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

matchFlags : enumeration

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

This property holds the semantics of the value matching criterion. The
valid match flags include:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

MatchExactly - Performs QVariant-based matching (default).

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchContains - The search term is contained in the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchStartsWith - The search term matches the start of the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchEndsWith - The search term matches the end of the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchFixedString - Performs string-based matching. String-based
comparisons are case-insensitive unless the MatchCaseSensitive flag is
also specified.

.. raw:: html

   </li>

.. raw:: html

   <li>

MatchCaseSensitive - The search is case sensitive.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@matchFlags -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

value : variant

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

This property holds the value criterion of the detail filter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->


