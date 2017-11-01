Model of available online accounts.

+---------------------+----------------------------------+
| Import Statement:   | import Ubuntu.OnlineAccounts .   |
+---------------------+----------------------------------+

Properties
----------

-  ****`accountList </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#accountList-prop>`__****
   : list<Account>
-  ****`applicationId </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#applicationId-prop>`__****
   : string
-  ****`ready </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#ready-prop>`__****
   : bool
-  ****`serviceId </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#serviceId-prop>`__****
   : string

Signals
-------

-  ****`accessReply </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#accessReply-signal>`__****\ (jsobject
   *reply*, jsobject *authenticationData*)

Methods
-------

-  variant
   ****`get </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#get-method>`__****\ (int
   *row*, string *roleName*)
-  void
   ****`requestAccess </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#requestAccess-method>`__****\ (string
   *serviceId*, jsobject *parameters*)

Detailed Description
--------------------

The `AccountModel </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel/>`__
lists all the accounts available to the application.

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.OnlineAccounts 2.0
    ListView {
        model: AccountModel {
            applicationId: "myapp.developer_myapp"
        }
        delegate: Text {
            text: model.displayName
        }
    }

The model defines the following roles:

-  ``displayName`` is the name of the account (usually the user's login)
-  ``accountId`` is a numeric ID for the account
-  ``serviceId`` is a service identifier (e.g.,
   "myapp.developer\_myapp\_google")
-  ``authenticationMethod`` is the authentication method used on this
   account;
-  ``settings`` is a dictionary of the settings stored into the account
-  ``account`` is the
   `Account </sdk/apps/qml/Ubuntu.OnlineAccounts/Account/>`__ object

**See also**
`Account::authenticationMethod </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#authenticationMethod-prop>`__
and `Account </sdk/apps/qml/Ubuntu.OnlineAccounts/Account/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ accountList :                                                   |
| list<`Account </sdk/apps/qml/Ubuntu.OnlineAccounts/Account/>`__>         |
+--------------------------------------------------------------------------+

List of accounts in the model. This list has exactly the same contents
as the model data, and is provided as a property just as a convenience
for those cases when a model is not required.

| 

+--------------------------------------------------------------------------+
|        \ applicationId : string                                          |
+--------------------------------------------------------------------------+

The short application identifier (that is, the ``APP_ID`` minus the
version component) of the client. If not given, the identifier will be
deduced from the APP\_ID environment variable.

| 

+--------------------------------------------------------------------------+
|        \ ready : bool                                                    |
+--------------------------------------------------------------------------+

Whether the model is up to date: retrieving the account list is an
asynchronous operation, and therefore short delays are expected between
changing one model parameter and receiving the updated account list.
Applications should not rely on the model contents while this property
is false.

| 

+--------------------------------------------------------------------------+
|        \ serviceId : string                                              |
+--------------------------------------------------------------------------+

If this property is set, only accounts providing the given service will
be returned.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ accessReply(jsobject *reply*, jsobject *authenticationData*)    |
+--------------------------------------------------------------------------+

Emitted when the request initiated with
`AccountModel::requestAccess() </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#requestAccess-method>`__
completes. The *reply* object contains the access reply:

-  ``account`` if access to an account was granted, this property will
   hold an `Account </sdk/apps/qml/Ubuntu.OnlineAccounts/Account/>`__
   object
-  ``errorCode`` `error
   code </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#errorcode>`__, if
   an error occurred
-  ``errorText`` is a textual description of the error, not meant for
   the end-user; it can be used for debugging purposes

The second parameter, the *authenticationData* object, will contain the
authentication reply.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ variant get(int *row*, string *roleName*)                       |
+--------------------------------------------------------------------------+

Returns the data at *row* for the role *roleName*.

| 

+--------------------------------------------------------------------------+
|        \ void requestAccess(string *serviceId*, jsobject *parameters*)   |
+--------------------------------------------------------------------------+

Requests the user to grant this application access to an account
providing the given service. The user will be asked whether this
application should be given access to the desired account; if no such
accounts are currently registered in the system, the user will be guided
to create a new one.

It should be noted that account authorizations persist across
application restart; therefore, this method should be called only when
the application needs a new account to appear in the model.

Each call to this method will cause the
`accessReply </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#accessReply-signal>`__
signal to be emitted at some time later. Note that the operation will
involve interactions with the end-user, so don't expect a reply to be
emitted immediately.

The *parameters* parameter can be used to pass authentication data
(similarly to how the
`Account::authenticate() </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#authenticate-method>`__
method works), if it's desired to perform the authentication at the same
time.

**See also**
`accessReply </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#accessReply-signal>`__.

| 
