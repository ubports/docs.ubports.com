Ubuntu.OnlineAccounts.AccountService
====================================

.. raw:: html

   <p>

Represents an instance of a service in an Online Accounts More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AccountService -->

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

import Ubuntu.OnlineAccounts 0.1

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

accountId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

authData : jsobject

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

autoSync : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

credentials : Credentials

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

displayName : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

objectHandle : object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

provider : jsobject

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

service : jsobject

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

serviceEnabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

settings : jsobject

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

authenticated(jsobject reply)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

authenticationError(jsobject error)

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

void authenticate(jsobject sessionData)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void cancelAuthentication()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void updateServiceEnabled(bool enabled)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void updateSettings(jsobject settings)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AccountService-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The AccountService element represents a service within an existing
online account. It can be used to obtain an authentication token to use
the service it refers to.

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently, an AccountService is valid only if its objectHandle property
is set to a value obtained from an AccountServiceModel or an Account.

.. raw:: html

   </p>

.. raw:: html

   <p>

See AccountServiceModel's documentation for usage examples.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AccountService -->

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

accountId : string

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

The account's numeric ID; note that all AccountService objects which
work on the same online account will have the same ID.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accountId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="authData-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

authData : jsobject

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

An object providing information about the authentication. The returned
object will have at least these members:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

method is the authentication method

.. raw:: html

   </li>

.. raw:: html

   <li>

mechanism is the authentication mechanism (a sub-specification of the
method)

.. raw:: html

   </li>

.. raw:: html

   <li>

parameters is a dictionary of authentication parameters

.. raw:: html

   </li>

.. raw:: html

   <li>

credentialsId is the numeric identified of the credentials in the
secrets storage. See the Credentials element for more info.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@authData -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoSync-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoSync : bool

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

This property tells whether the AccountService should invoke the
Account::sync() method whenever updateSettings(), updateDisplayName() or
updateServiceEnabled() are called. By default, this property is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoSync -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="credentials-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

credentials : Credentials

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

The credentials used by this account service. This property is meant to
be used only when creating or editing the account, and serves to bind a
credentials record to the account: when the value of the
Credentials::credentialsId changes, an update of authData.credentialsId
will be queued (and immediately executed if autoSync is true). By
default, reading this property returns a null object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@credentials -->

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

The account's display name (usually the user's login or ID); note that
all AccountService objects which work on the same online account will
share the same display name.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@displayName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

This read-only property tells whether the AccountService is enabled. An
application shouldn't use an AccountService which is disabled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="objectHandle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

objectHandle : object

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

An opaque handle to the underlying C++ object. Until the property is
set, the AccountService element is uninitialized. Similarly, if the C++
object is destroyed (for instance, because the AccountServiceModel which
owns it is destroyed or if the account is deleted), expect the
AccountService to become invalid.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@objectHandle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="provider-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

provider : jsobject

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

An immutable object representing the provider which provides the
account. The returned object will have at least these members:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

id is the unique identifier for this provider

.. raw:: html

   </li>

.. raw:: html

   <li>

displayName

.. raw:: html

   </li>

.. raw:: html

   <li>

iconName

.. raw:: html

   </li>

.. raw:: html

   <li>

isSingleAccount, true if this provider supports creating one account at
most

.. raw:: html

   </li>

.. raw:: html

   <li>

translations, the localization domain for translating the provider's
display name

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@provider -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="service-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

service : jsobject

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

An immutable object representing the service which this AccountService
instantiates. The returned object will have at least these members:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

id is the unique identified for this service

.. raw:: html

   </li>

.. raw:: html

   <li>

displayName

.. raw:: html

   </li>

.. raw:: html

   <li>

iconName

.. raw:: html

   </li>

.. raw:: html

   <li>

serviceTypeId identifies the provided service type

.. raw:: html

   </li>

.. raw:: html

   <li>

translations, the localization domain for translating the provider's
display name

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@service -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="serviceEnabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

serviceEnabled : bool

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

This read-only property tells whether the service is enabled within the
account. This property differs from the enabled property in that the
enabled property also considers whether the account is enabled, while
this one only reflects the status of the service. Applications shouldn't
rely on the value on this property to decide whether to use the account
or not.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also enabled.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@serviceEnabled -->

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

A dictionary of all the account service's settings. This does not
include the authentication settings, which are available from the
AccountService::authData property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@settings -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$authenticated -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="authenticated-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

authenticated(jsobject reply)

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

Emitted when the authentication has been successfully completed. The
reply object will contain the authentication data, which depends on the
authentication method used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@authenticated -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="authenticationError-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

authenticationError(jsobject error)

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

Emitted when the authentication fails. The error object will contain the
following fields:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

code is a numeric error code (see Signon::Error for the meaning)

.. raw:: html

   </li>

.. raw:: html

   <li>

message is a textual description of the error, not meant for the
end-user

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@authenticationError -->

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

void authenticate(jsobject sessionData)

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

Perform the authentication on this account. The sessionData dictionary
is optional and if not given the value of authData::parameters will be
used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each call to this method will cause either of authenticated or
authenticationError signals to be emitted at some time later. Note that
the authentication might involve interactions with the network or with
the end-user, so don't expect these signals to be emitted immediately.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also authenticated and authenticationError.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@authenticate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancelAuthentication-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void cancelAuthentication()

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

Cancel an ongoing authentication on this account. This method does
nothing if there isn't any authentication process going on.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also authenticate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancelAuthentication -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="updateServiceEnabled-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void updateServiceEnabled(bool enabled)

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

Enables or disables the service within the account configuration. Since
the enabled property is the combination of the global account's
enabledness status and the specific service's status, its value might
not change after this method is called.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also enabled, serviceEnabled, and autoSync.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@updateServiceEnabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="updateSettings-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void updateSettings(jsobject settings)

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

Change some settings. Only the settings which are present in the
settings dictionary will be changed; all others settings will not be
affected. To remove a settings, set its value to null.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also autoSync.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@updateSettings -->


