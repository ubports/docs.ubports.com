QtContacts.Presence
===================

.. raw:: html

   <p>

The Presence element provides presence information for an online account
of a contact. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Presence -->

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

customMessage : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

imageUrl : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

nickname : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

state : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

stateText : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

timestamp : date

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Presence-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Presence element contains the following field types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Presence.Timestamp

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.Nickname

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.State

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.StateText

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.ImageUrl

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.CustomMessage

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This element is part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Presence -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$customMessage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="customMessage-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

customMessage : string

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

This property holds the custom status message from the contact for the
online account about which this detail stores presence information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@customMessage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="imageUrl-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

imageUrl : url

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

This property holds the last-known status image url of the contact for
the online account about which this detail stores presence information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@imageUrl -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="nickname-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

nickname : string

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

This property holds the nickname value of the Presence.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@nickname -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="state-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

state : enumeration

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

This property holds the presence state enumeration value.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Presence.Unknown - Signifies that the presence state of the contact is
not currently known (default).

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.Available - Signifies that the contact is available.

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.Hidden - Signifies that the contact is hidden.

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.Busy - Signifies that the contact is busy.

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.Away - Signifies that the contact is away.

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.ExtendedAway - Signifies that the contact is away for an
extended period of time.

.. raw:: html

   </li>

.. raw:: html

   <li>

Presence.Offline - Signifies that the contact is offline.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@state -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stateText-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

stateText : string

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

This property holds the text corresponding to the current presence
state.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stateText -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="timestamp-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

timestamp : date

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

This property holds the timestamp value of the Presence.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@timestamp -->


