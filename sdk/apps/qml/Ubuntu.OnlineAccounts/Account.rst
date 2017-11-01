Representation of an online account

+---------------------+----------------------------------+
| Import Statement:   | import Ubuntu.OnlineAccounts .   |
+---------------------+----------------------------------+

Properties
----------

-  ****`accountId </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#accountId-prop>`__****
   : int
-  ****`authenticationMethod </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#authenticationMethod-prop>`__****
   : enumeration
-  ****`displayName </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#displayName-prop>`__****
   : string
-  ****`service </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#service-prop>`__****
   : int
-  ****`serviceId </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#serviceId-prop>`__****
   : int
-  ****`settings </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#settings-prop>`__****
   : jsobject
-  ****`valid </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#valid-prop>`__****
   : bool

Signals
-------

-  ****`authenticationReply </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#authenticationReply-signal>`__****\ (jsobject
   *authenticationData*)

Methods
-------

-  void
   ****`authenticate </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#authenticate-method>`__****\ (jsobject
   *params*)

Detailed Description
--------------------

The Account object holds the information related to an account and
provides methods to interact with it. It's not possible to create such
objects from QML; instead, they are returned by the
`AccountModel </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel/>`__ in
the ``account`` role or in the
```accountList`` </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#accountList-prop>`__
property.

Here's an example on how to use the account object in a delegate:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.OnlineAccounts 2.0
    ListView {
        model: AccountModel {}
        delegate: Button {
            text: "Authenticate " + model.displayName
            onClicked: model.account.authenticate({})
            Connections {
                target: model.account
                onAuthenticationReply: {
                    console.log("Access token is " + reply['AccessToken'])
                }
            }
        }
    }

       \        

Error codes used in this module
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Some operations, such as the
`Account::authenticate() </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#authenticate-method>`__
and the
`AccountModel::requestAccess() </sdk/apps/qml/Ubuntu.OnlineAccounts/AccountModel#requestAccess-method>`__
methods, can fail and return one of these error codes:

-  ``Account.ErrorCodeNoAccount`` - The accounts is invalid
-  ``Account.ErrorCodeUserCanceled`` - The operation was canceled by the
   user
-  ``Account.ErrorCodePermissionDenied`` - The application has no
   permission to complete the operation

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ accountId : int                                                 |
+--------------------------------------------------------------------------+

Numeric identifier of the account. This property remains constant during
the lifetime of the account. Note, however, that if the user deletes the
account and re-creates it, its ID will be different.

| 

+--------------------------------------------------------------------------+
|        \ authenticationMethod : enumeration                              |
+--------------------------------------------------------------------------+

The authentication method used when authenticating with the account.
Currently, these authentication methods are supported:

-  ``Account.AuthenticationMethodOAuth1`` - OAuth 1.0
-  ``Account.AuthenticationMethodOAuth2`` - OAuth 2.0
-  ``Account.AuthenticationMethodSasl`` - SASL
-  ``Account.AuthenticationMethodPassword`` - username/password

| 

+--------------------------------------------------------------------------+
|        \ displayName : string                                            |
+--------------------------------------------------------------------------+

The display name of the account. This is usually the user's login name,
but applications should not rely on the value of this property. Use it
only for display purposes.

| 

+--------------------------------------------------------------------------+
|        \ service : int                                                   |
+--------------------------------------------------------------------------+

Service data associated with this account. This is an object containing
the following properties:

``serviceId`` - same service ID returned by
`Account::serviceId </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#serviceId-prop>`__
``displayName`` - the localized display name for the service
``iconSource`` - URL for the icon; can be a "file://" URL to a local
file, or an icon from the theme if the URL starts with "image://theme/"

| 

+--------------------------------------------------------------------------+
|        \ serviceId : int                                                 |
+--------------------------------------------------------------------------+

Identifier for the service used with the account.

| 

+--------------------------------------------------------------------------+
|        \ settings : jsobject                                             |
+--------------------------------------------------------------------------+

A dictionary of the settings stored into the account.

| 

+--------------------------------------------------------------------------+
|        \ valid : bool                                                    |
+--------------------------------------------------------------------------+

Whether the account object is valid; this is usually ``true``, because
the ``AccountModel`` never gives out invalid accounts. However, it can
happen that a valid account becomes invalid while the application is
using it (if, for instance, the user deleted the account or revoked the
application's access rights to use it). As soon as this property becomes
``false``, the application should stop using this account.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ authenticationReply(jsobject *authenticationData*)              |
+--------------------------------------------------------------------------+

Emitted when the authentication completes. The *authenticationData*
object will contain the authentication reply. If the authentication
failed, the following two keys will be present:

-  ``errorCode`` is an `error
   code </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#errorcode>`__
-  ``errorText`` is a textual description of the error, not meant for
   the end-user; it can be used for debugging purposes

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void authenticate(jsobject *params*)                            |
+--------------------------------------------------------------------------+

Perform the authentication on this account. The *params* parameter can
be used to pass authentication data, such as the ClientId and
ClientSecret used in the OAuth flow. The list of the supported
authentication parameters depend on the authentication method being
used, and are documented in the Online Accounts development Guide in the
Ubuntu Developer Portal.

There are, however, two authentication parameters which are available
regardless of the authentication method being used:

-  ``invalidateCachedReply`` can be set to ``true`` when the previous
   authentication reply returned an invalid access token. It will ensure
   the creation of a new access token.
-  ``interactive`` is ``true`` by default; if set to ``false``, it will
   ensure that no interaction with the user will occur.

Each call to this method will cause the
`authenticationReply </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#authenticationReply-signal>`__
signal to be emitted at some time later. Note that the authentication
might involve interactions with the network or with the end-user, so
don't expect a reply to be emitted immediately.

**See also**
`authenticationReply </sdk/apps/qml/Ubuntu.OnlineAccounts/Account#authenticationReply-signal>`__.

| 
