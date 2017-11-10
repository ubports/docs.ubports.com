.. _sdk_ubuntu_onlineaccounts_account:

Ubuntu.OnlineAccounts Account
=============================

Representation of an online account

+---------------------+----------------------------------+
| Import Statement:   | import Ubuntu.OnlineAccounts .   |
+---------------------+----------------------------------+

Properties
----------

-  :ref:`accountId <sdk_ubuntu_onlineaccounts_account_accountId>` : int
-  :ref:`authenticationMethod <sdk_ubuntu_onlineaccounts_account_authenticationMethod>` : enumeration
-  :ref:`displayName <sdk_ubuntu_onlineaccounts_account_displayName>` : string
-  :ref:`service <sdk_ubuntu_onlineaccounts_account_service>` : int
-  :ref:`serviceId <sdk_ubuntu_onlineaccounts_account_serviceId>` : int
-  :ref:`settings <sdk_ubuntu_onlineaccounts_account_settings>` : jsobject
-  :ref:`valid <sdk_ubuntu_onlineaccounts_account_valid>` : bool

Signals
-------

-  :ref:`authenticationReply <sdk_ubuntu_onlineaccounts_account_authenticationReply>`\ (jsobject *authenticationData*)

Methods
-------

-  void :ref:`authenticate <sdk_ubuntu_onlineaccounts_account_authenticate>`\ (jsobject *params*)

Detailed Description
--------------------

The Account object holds the information related to an account and provides methods to interact with it. It's not possible to create such objects from QML; instead, they are returned by the :ref:`AccountModel <sdk_ubuntu_onlineaccounts_accountmodel>` in the ``account`` role or in the ```accountList`:ref:` <sdk_ubuntu_onlineaccounts_accountmodel_accountList>` property.

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

Error codes used in this module
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Some operations, such as the :ref:`Account::authenticate() <sdk_ubuntu_onlineaccounts_account_authenticate>` and the :ref:`AccountModel::requestAccess() <sdk_ubuntu_onlineaccounts_accountmodel_requestAccess>` methods, can fail and return one of these error codes:

-  ``Account.ErrorCodeNoAccount`` - The accounts is invalid
-  ``Account.ErrorCodeUserCanceled`` - The operation was canceled by the user
-  ``Account.ErrorCodePermissionDenied`` - The application has no permission to complete the operation

Property Documentation
----------------------

.. _sdk_ubuntu_onlineaccounts_account_accountId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accountId : int                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Numeric identifier of the account. This property remains constant during the lifetime of the account. Note, however, that if the user deletes the account and re-creates it, its ID will be different.

.. _sdk_ubuntu_onlineaccounts_account_authenticationMethod:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| authenticationMethod : enumeration                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The authentication method used when authenticating with the account. Currently, these authentication methods are supported:

-  ``Account.AuthenticationMethodOAuth1`` - OAuth 1.0
-  ``Account.AuthenticationMethodOAuth2`` - OAuth 2.0
-  ``Account.AuthenticationMethodSasl`` - SASL
-  ``Account.AuthenticationMethodPassword`` - username/password

.. _sdk_ubuntu_onlineaccounts_account_displayName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| displayName : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The display name of the account. This is usually the user's login name, but applications should not rely on the value of this property. Use it only for display purposes.

.. _sdk_ubuntu_onlineaccounts_account_service:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| service : int                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Service data associated with this account. This is an object containing the following properties:

``serviceId`` - same service ID returned by :ref:`Account::serviceId <sdk_ubuntu_onlineaccounts_account_serviceId>`
``displayName`` - the localized display name for the service
``iconSource`` - URL for the icon; can be a "file://" URL to a local file, or an icon from the theme if the URL starts with "image://theme/"

.. _sdk_ubuntu_onlineaccounts_account_serviceId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| serviceId : int                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Identifier for the service used with the account.

.. _sdk_ubuntu_onlineaccounts_account_settings:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| settings : jsobject                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

A dictionary of the settings stored into the account.

.. _sdk_ubuntu_onlineaccounts_account_valid:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| valid : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the account object is valid; this is usually ``true``, because the ``AccountModel`` never gives out invalid accounts. However, it can happen that a valid account becomes invalid while the application is using it (if, for instance, the user deleted the account or revoked the application's access rights to use it). As soon as this property becomes ``false``, the application should stop using this account.

Signal Documentation
--------------------

.. _sdk_ubuntu_onlineaccounts_account_authenticationReply:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| authenticationReply(jsobject *authenticationData*)                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Emitted when the authentication completes. The *authenticationData* object will contain the authentication reply. If the authentication failed, the following two keys will be present:

-  ``errorCode`` is an :ref:`error code <sdk_ubuntu_onlineaccounts_account_errorcode>`
-  ``errorText`` is a textual description of the error, not meant for the end-user; it can be used for debugging purposes

Method Documentation
--------------------

.. _sdk_ubuntu_onlineaccounts_account_authenticate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void authenticate(jsobject *params*)                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Perform the authentication on this account. The *params* parameter can be used to pass authentication data, such as the ClientId and ClientSecret used in the OAuth flow. The list of the supported authentication parameters depend on the authentication method being used, and are documented in the Online Accounts development Guide in the Ubuntu Developer Portal.

There are, however, two authentication parameters which are available regardless of the authentication method being used:

-  ``invalidateCachedReply`` can be set to ``true`` when the previous authentication reply returned an invalid access token. It will ensure the creation of a new access token.
-  ``interactive`` is ``true`` by default; if set to ``false``, it will ensure that no interaction with the user will occur.

Each call to this method will cause the :ref:`authenticationReply <sdk_ubuntu_onlineaccounts_account_authenticationReply>` signal to be emitted at some time later. Note that the authentication might involve interactions with the network or with the end-user, so don't expect a reply to be emitted immediately.

**See also** :ref:`authenticationReply <sdk_ubuntu_onlineaccounts_account_authenticationReply>`.

