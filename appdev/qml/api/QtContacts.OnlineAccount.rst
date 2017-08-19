QtContacts.OnlineAccount
========================

.. raw:: html

   <p>

The OnlineAccount element contains a note associated with a contact.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OnlineAccount -->

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

accountUri : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

capabilities : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

protocol : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

serviceProvider : string

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

   <!-- $$$OnlineAccount-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

OnlineAccount element contains the following field types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

OnlineAccount.AccountUri - the account uri value.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.ServiceProvider - the account service provider name.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Protocol - the account protocol value.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Capabilities - the account capabilities value.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.SubTypes - the sub types of an online account.

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

   <!-- @@@OnlineAccount -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accountUri -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accountUri-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

accountUri : string

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

This property holds the value of the account uri.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accountUri -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="capabilities-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

capabilities : list<string>

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

This property holds the value of the account capabilities.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@capabilities -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="protocol-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

protocol : enumeration

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

This property holds the protocol enumeration value.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

OnlineAccount.Unknown - indicates this online account is for one
unsupported protocol.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Aim - indicates this online account is for the AIM
protocol.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Icq - indicates this online account is for the ICQ
protocol.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Irc - indicates this online account is for the IRC
protocol.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Jabber - indicates this online account is for the jabber
protocol.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Msn - indicates this online account is for the MSN
protocol.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Qq - indicates this online account is for the QQ protocol.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Skype - indicates this online account is for the Skype
protocol.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Yahoo - indicates this online account is for the Yahoo
protocol.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@protocol -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="serviceProvider-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

serviceProvider : string

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

This property holds the value of the account service provider name.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@serviceProvider -->

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

This property holds the value of the sub types of an online account.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

OnlineAccount.Unknown (default)

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Sip - indicating this online account supports SIP.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.SipVoip - indicating this online account supports SIP
based VOIP.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.Impp - indicating this online account supports IMPP.

.. raw:: html

   </li>

.. raw:: html

   <li>

OnlineAccount.VideoShare - indicating this online account supports
VideoShare.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@subTypes -->


