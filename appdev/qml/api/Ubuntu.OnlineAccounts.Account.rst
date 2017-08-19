Ubuntu.OnlineAccounts.Account
=============================

.. raw:: html

   <p>

Representation of an online account More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Account -->

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

import Ubuntu.OnlineAccounts .

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

accountId : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

authenticationMethod : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

displayName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

service : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

serviceId : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

settings : jsobject

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

valid : bool

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

authenticationReply(jsobject authenticationData)

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

void authenticate(jsobject params)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Account-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Account object holds the information related to an account and
provides methods to interact with it. It's not possible to create such
objects from QML; instead, they are returned by the AccountModel in the
account role or in the accountList property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here's an example on how to use the account object in a delegate:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import Ubuntu.OnlineAccounts 2.0
   <span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">AccountModel</span> {}
   <span class="name">delegate</span>: <span class="name">Button</span> {
   <span class="name">text</span>: <span class="string">&quot;Authenticate &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">displayName</span>
   <span class="name">onClicked</span>: <span class="name">model</span>.<span class="name">account</span>.<span class="name">authenticate</span>({})
   <span class="type">Connections</span> {
   <span class="name">target</span>: <span class="name">model</span>.<span class="name">account</span>
   <span class="name">onAuthenticationReply</span>: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Access token is &quot;</span> <span class="operator">+</span> <span class="name">reply</span>[<span class="string">'AccessToken'</span>])
   }
   }
   }
   }</pre>

.. raw:: html

   <h4>

Error codes used in this module

.. raw:: html

   </h4>

.. raw:: html

   <p>

Some operations, such as the Account::authenticate() and the
AccountModel::requestAccess() methods, can fail and return one of these
error codes:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Account.ErrorCodeNoAccount - The accounts is invalid

.. raw:: html

   </li>

.. raw:: html

   <li>

Account.ErrorCodeUserCanceled - The operation was canceled by the user

.. raw:: html

   </li>

.. raw:: html

   <li>

Account.ErrorCodePermissionDenied - The application has no permission to
complete the operation

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@Account -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accountId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accountId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

accountId : int

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

Numeric identifier of the account. This property remains constant during
the lifetime of the account. Note, however, that if the user deletes the
account and re-creates it, its ID will be different.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accountId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="authenticationMethod-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

authenticationMethod : enumeration

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

The authentication method used when authenticating with the account.
Currently, these authentication methods are supported:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Account.AuthenticationMethodOAuth1 - OAuth 1.0

.. raw:: html

   </li>

.. raw:: html

   <li>

Account.AuthenticationMethodOAuth2 - OAuth 2.0

.. raw:: html

   </li>

.. raw:: html

   <li>

Account.AuthenticationMethodSasl - SASL

.. raw:: html

   </li>

.. raw:: html

   <li>

Account.AuthenticationMethodPassword - username/password

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@authenticationMethod -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="displayName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

displayName : string

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

The display name of the account. This is usually the user's login name,
but applications should not rely on the value of this property. Use it
only for display purposes.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@displayName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="service-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

service : int

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

Service data associated with this account. This is an object containing
the following properties:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

serviceId - same service ID returned by Account::serviceId

.. raw:: html

   </li>

.. raw:: html

   <li>

displayName - the localized display name for the service

.. raw:: html

   </li>

.. raw:: html

   <li>

iconSource - URL for the icon; can be a "file://" URL to a local file,
or an icon from the theme if the URL starts with "image://theme/"

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="serviceId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

serviceId : int

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

Identifier for the service used with the account.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@serviceId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="settings-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

settings : jsobject

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

A dictionary of the settings stored into the account.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@settings -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="valid-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

valid : bool

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

Whether the account object is valid; this is usually true, because the
AccountModel never gives out invalid accounts. However, it can happen
that a valid account becomes invalid while the application is using it
(if, for instance, the user deleted the account or revoked the
application's access rights to use it). As soon as this property becomes
false, the application should stop using this account.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@valid -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$authenticationReply -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="authenticationReply-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

authenticationReply(jsobject authenticationData)

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

Emitted when the authentication completes. The authenticationData object
will contain the authentication reply. If the authentication failed, the
following two keys will be present:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

errorCode is an error code

.. raw:: html

   </li>

.. raw:: html

   <li>

errorText is a textual description of the error, not meant for the
end-user; it can be used for debugging purposes

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@authenticationReply -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$authenticate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="authenticate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void authenticate(jsobject params)

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

Perform the authentication on this account. The params parameter can be
used to pass authentication data, such as the ClientId and ClientSecret
used in the OAuth flow. The list of the supported authentication
parameters depend on the authentication method being used, and are
documented in the Online Accounts development Guide in the Ubuntu
Developer Portal.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are, however, two authentication parameters which are available
regardless of the authentication method being used:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

invalidateCachedReply can be set to true when the previous
authentication reply returned an invalid access token. It will ensure
the creation of a new access token.

.. raw:: html

   </li>

.. raw:: html

   <li>

interactive is true by default; if set to false, it will ensure that no
interaction with the user will occur.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Each call to this method will cause the authenticationReply signal to be
emitted at some time later. Note that the authentication might involve
interactions with the network or with the end-user, so don't expect a
reply to be emitted immediately.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also authenticationReply.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@authenticate -->


