Ubuntu.OnlineAccounts.AccountModel
==================================

.. raw:: html

   <p>

Model of available online accounts. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AccountModel -->

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

accountList : list<Account>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

applicationId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ready : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

serviceId : string

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

accessReply(jsobject reply, jsobject authenticationData)

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

variant get(int row, string roleName)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void requestAccess(string serviceId, jsobject parameters)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AccountModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The AccountModel lists all the accounts available to the application.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import Ubuntu.OnlineAccounts 2.0
   <span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">AccountModel</span> {
   <span class="name">applicationId</span>: <span class="string">&quot;myapp.developer_myapp&quot;</span>
   }
   <span class="name">delegate</span>: <span class="name">Text</span> {
   <span class="name">text</span>: <span class="name">model</span>.<span class="name">displayName</span>
   }
   }</pre>

.. raw:: html

   <p>

The model defines the following roles:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

displayName is the name of the account (usually the user's login)

.. raw:: html

   </li>

.. raw:: html

   <li>

accountId is a numeric ID for the account

.. raw:: html

   </li>

.. raw:: html

   <li>

serviceId is a service identifier (e.g.,
"myapp.developer\_myapp\_google")

.. raw:: html

   </li>

.. raw:: html

   <li>

authenticationMethod is the authentication method used on this account;

.. raw:: html

   </li>

.. raw:: html

   <li>

settings is a dictionary of the settings stored into the account

.. raw:: html

   </li>

.. raw:: html

   <li>

account is the Account object

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Account::authenticationMethod and Account.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AccountModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accountList -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accountList-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

accountList : list<Account>

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

List of accounts in the model. This list has exactly the same contents
as the model data, and is provided as a property just as a convenience
for those cases when a model is not required.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accountList -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="applicationId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

applicationId : string

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

The short application identifier (that is, the APP\_ID minus the version
component) of the client. If not given, the identifier will be deduced
from the APP\_ID environment variable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@applicationId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ready-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ready : bool

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

Whether the model is up to date: retrieving the account list is an
asynchronous operation, and therefore short delays are expected between
changing one model parameter and receiving the updated account list.
Applications should not rely on the model contents while this property
is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ready -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="serviceId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

serviceId : string

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

If this property is set, only accounts providing the given service will
be returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@serviceId -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accessReply -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accessReply-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

accessReply(jsobject reply, jsobject authenticationData)

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

Emitted when the request initiated with AccountModel::requestAccess()
completes. The reply object contains the access reply:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

account if access to an account was granted, this property will hold an
Account object

.. raw:: html

   </li>

.. raw:: html

   <li>

errorCode error code, if an error occurred

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

   <p>

The second parameter, the authenticationData object, will contain the
authentication reply.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accessReply -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="get-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

variant get(int row, string roleName)

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

Returns the data at row for the role roleName.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="requestAccess-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void requestAccess(string serviceId, jsobject parameters)

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

Requests the user to grant this application access to an account
providing the given service. The user will be asked whether this
application should be given access to the desired account; if no such
accounts are currently registered in the system, the user will be guided
to create a new one.

.. raw:: html

   </p>

.. raw:: html

   <p>

It should be noted that account authorizations persist across
application restart; therefore, this method should be called only when
the application needs a new account to appear in the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each call to this method will cause the accessReply signal to be emitted
at some time later. Note that the operation will involve interactions
with the end-user, so don't expect a reply to be emitted immediately.

.. raw:: html

   </p>

.. raw:: html

   <p>

The parameters parameter can be used to pass authentication data
(similarly to how the Account::authenticate() method works), if it's
desired to perform the authentication at the same time.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also accessReply.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@requestAccess -->


