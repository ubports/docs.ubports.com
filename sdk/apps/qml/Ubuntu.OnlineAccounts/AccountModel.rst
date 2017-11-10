.. _sdk_ubuntu_onlineaccounts_accountmodel:

Ubuntu.OnlineAccounts AccountModel
==================================

Model of available online accounts.

+---------------------+----------------------------------+
| Import Statement:   | import Ubuntu.OnlineAccounts .   |
+---------------------+----------------------------------+

Properties
----------

-  :ref:`accountList <sdk_ubuntu_onlineaccounts_accountmodel_accountList>` : list<Account>
-  :ref:`applicationId <sdk_ubuntu_onlineaccounts_accountmodel_applicationId>` : string
-  :ref:`ready <sdk_ubuntu_onlineaccounts_accountmodel_ready>` : bool
-  :ref:`serviceId <sdk_ubuntu_onlineaccounts_accountmodel_serviceId>` : string

Signals
-------

-  :ref:`accessReply <sdk_ubuntu_onlineaccounts_accountmodel_accessReply>`\ (jsobject *reply*, jsobject *authenticationData*)

Methods
-------

-  variant :ref:`get <sdk_ubuntu_onlineaccounts_accountmodel_get>`\ (int *row*, string *roleName*)
-  void :ref:`requestAccess <sdk_ubuntu_onlineaccounts_accountmodel_requestAccess>`\ (string *serviceId*, jsobject *parameters*)

Detailed Description
--------------------

The :ref:`AccountModel <sdk_ubuntu_onlineaccounts_accountmodel>` lists all the accounts available to the application.

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
-  ``serviceId`` is a service identifier (e.g., "myapp.developer\_myapp\_google")
-  ``authenticationMethod`` is the authentication method used on this account;
-  ``settings`` is a dictionary of the settings stored into the account
-  ``account`` is the :ref:`Account <sdk_ubuntu_onlineaccounts_account>` object

**See also** :ref:`Account::authenticationMethod <sdk_ubuntu_onlineaccounts_account_authenticationMethod>` and :ref:`Account <sdk_ubuntu_onlineaccounts_account>`.

Property Documentation
----------------------

.. _sdk_ubuntu_onlineaccounts_accountmodel_accountList:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accountList : list<:ref:`Account <sdk_ubuntu_onlineaccounts_account>`>                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of accounts in the model. This list has exactly the same contents as the model data, and is provided as a property just as a convenience for those cases when a model is not required.

.. _sdk_ubuntu_onlineaccounts_accountmodel_applicationId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| applicationId : string                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The short application identifier (that is, the ``APP_ID`` minus the version component) of the client. If not given, the identifier will be deduced from the APP\_ID environment variable.

.. _sdk_ubuntu_onlineaccounts_accountmodel_ready:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ready : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Whether the model is up to date: retrieving the account list is an asynchronous operation, and therefore short delays are expected between changing one model parameter and receiving the updated account list. Applications should not rely on the model contents while this property is false.

.. _sdk_ubuntu_onlineaccounts_accountmodel_serviceId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| serviceId : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If this property is set, only accounts providing the given service will be returned.

Signal Documentation
--------------------

.. _sdk_ubuntu_onlineaccounts_accountmodel_accessReply:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accessReply(jsobject *reply*, jsobject *authenticationData*)                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Emitted when the request initiated with :ref:`AccountModel::requestAccess() <sdk_ubuntu_onlineaccounts_accountmodel_requestAccess>` completes. The *reply* object contains the access reply:

-  ``account`` if access to an account was granted, this property will hold an :ref:`Account <sdk_ubuntu_onlineaccounts_account>` object
-  ``errorCode`` :ref:`error code <sdk_ubuntu_onlineaccounts_account_errorcode>`, if an error occurred
-  ``errorText`` is a textual description of the error, not meant for the end-user; it can be used for debugging purposes

The second parameter, the *authenticationData* object, will contain the authentication reply.

Method Documentation
--------------------

.. _sdk_ubuntu_onlineaccounts_accountmodel_get:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| variant get(int *row*, string *roleName*)                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the data at *row* for the role *roleName*.

.. _sdk_ubuntu_onlineaccounts_accountmodel_requestAccess:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void requestAccess(string *serviceId*, jsobject *parameters*)                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Requests the user to grant this application access to an account providing the given service. The user will be asked whether this application should be given access to the desired account; if no such accounts are currently registered in the system, the user will be guided to create a new one.

It should be noted that account authorizations persist across application restart; therefore, this method should be called only when the application needs a new account to appear in the model.

Each call to this method will cause the :ref:`accessReply <sdk_ubuntu_onlineaccounts_accountmodel_accessReply>` signal to be emitted at some time later. Note that the operation will involve interactions with the end-user, so don't expect a reply to be emitted immediately.

The *parameters* parameter can be used to pass authentication data (similarly to how the :ref:`Account::authenticate() <sdk_ubuntu_onlineaccounts_account_authenticate>` method works), if it's desired to perform the authentication at the same time.

**See also** :ref:`accessReply <sdk_ubuntu_onlineaccounts_accountmodel_accessReply>`.

