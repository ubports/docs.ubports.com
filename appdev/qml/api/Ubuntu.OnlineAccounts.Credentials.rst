Ubuntu.OnlineAccounts.Credentials
=================================

.. raw:: html

   <p>

Holds the account's credentials More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Credentials -->

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

acl : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

caption : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

credentialsId : quint32

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

methods : jsobject

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

secret : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

storeSecret : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

userName : string

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

removed()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

synced()

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

void remove()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void sync()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Credentials-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Credentials element contains the information about an account's
credentials. Informations like user name and password are stored into
the account's secret storage via this object. If the credentialsId
property is set to a valid credentials ID (which can be obtained via the
AccountService's authData.credentialsId property) the Credentials
element will load the informations stored in the secrets database, with
the notable exception of the secret field, which cannot be read back via
this interface (but only via the AccountService::authenticate method);
if the credentialsId field is not set, then this interface can be used
to create a new record in the secrets storage, by calling the sync()
method once all the desired fields have been set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Credentials -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$acl -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="acl-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

acl : list<string>

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

The ACL (Access Control List) for the credentials. The string "\*"
should be used when no access control needs to be performed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@acl -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="caption-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

caption : string

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

A description of the credentials. This could be set to the name of the
account provider, for instance.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@caption -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="credentialsId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

credentialsId : quint32

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

Numeric identifier of the credentials record in the secret storage
database. A value of 0 means that this object has not been stored into
the database yet.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also sync.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@credentialsId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="methods-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

methods : jsobject

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

A dictionary describing the authentication methods and mechanisms which
are allowed on the credentials. The keys of the dictionary should be the
authentication methods, and the values should be lists of mechanisms.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Credentials</a></span> {
   <span class="name">methods</span>: { &quot;oauth2&quot;: [ <span class="string">&quot;web_server&quot;</span>, <span class="string">&quot;user_agent&quot;</span>], &quot;password&quot;: [ <span class="string">&quot;password&quot;</span> ] }
   }</pre>

.. raw:: html

   <!-- @@@methods -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="secret-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

secret : string

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

The secret information for this credentials; usually this is the user's
password. Note that when retrieving a Credentials object from the
secrets database, this field will not be retrieved. See the detailed
description of the Credentials element for a full explanation of this.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also credentialsId.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@secret -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="storeSecret-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

storeSecret : bool

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

Whether the secret should be stored in the secrets storage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@storeSecret -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="userName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

userName : string

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

The user name.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@userName -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$removed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removed()

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

Emitted when the credentials have been deleted from the secrets storage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="synced-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

synced()

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

Emitted when the changes have been stored into the permanent secrets
storage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@synced -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$remove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="remove-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void remove()

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

Deletes the credentials from the secrets storage.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also removed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@remove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sync-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void sync()

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

Writes the changes to the secrets storage.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also synced.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sync -->


