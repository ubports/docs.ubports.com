.. _sdk_accounts_accountservice:
Accounts AccountService
=======================

Account settings for a specific service.
:ref:`More... <sdk_accounts_accountservice#details>`

``#include <Accounts/AccountService>``

Inherits QObject.

        Signals
---------------

        void 

:ref:`enabled <sdk_accounts_accountservice#ab2f0d21a6f535870b37dcb44b2f77205>`
(bool
:ref:`isEnabled <sdk_accounts_accountservice#ae2931e09e0fd8eac15c83f0254b4e4ac>`)

 

| Emitted when the enabledness state of the account service has changed.

 

void 

:ref:`changed <sdk_accounts_accountservice#a4db9a5f1a7e34ec6902ff9630d98b777>`
()

 

| Emitted when some setting has changed on the account service.

 

        Public Member Functions
-------------------------------

 

:ref:`AccountService <sdk_accounts_accountservice#aef5d4691113e384992926928928ae334>`
(Account
\*\ :ref:`account <sdk_accounts_accountservice#a490333c2ed4d6f107c5493a9465d993b>`,
const :ref:`Service <sdk_accounts_service>`
&\ :ref:`service <sdk_accounts_accountservice#a256dc9d961214d5f60642a290a288998>`)

 

| Constructor.

 

 

:ref:`AccountService <sdk_accounts_accountservice#a5183e298082ee83004c503197ff14e20>`
(Account
\*\ :ref:`account <sdk_accounts_accountservice#a490333c2ed4d6f107c5493a9465d993b>`,
const :ref:`Service <sdk_accounts_service>`
&\ :ref:`service <sdk_accounts_accountservice#a256dc9d961214d5f60642a290a288998>`,
QObject \*parent)

 

| Constructor.

 

        virtual 

:ref:`~AccountService <sdk_accounts_accountservice#a0622bfbd6cf486c0b73712ff02c0294e>`
()

 

| Destructor.

 

        Account \* 

:ref:`account <sdk_accounts_accountservice#a490333c2ed4d6f107c5493a9465d993b>`
() const

 

| Return the Account.

 

:ref:`Service <sdk_accounts_service>` 

:ref:`service <sdk_accounts_accountservice#a256dc9d961214d5f60642a290a288998>`
() const

 

| Return the Service.

 

bool 

:ref:`enabled <sdk_accounts_accountservice#a1d79980f25d38aba3d6777d0afe544f3>`
() const

 

| Check whether the account service is enabled.

 

        bool 

:ref:`isEnabled <sdk_accounts_accountservice#ae2931e09e0fd8eac15c83f0254b4e4ac>`
() const

 

| Check whether the account service is enabled.

 

        QStringList 

:ref:`allKeys <sdk_accounts_accountservice#a9936a9bd6fca45f1d03a63b1b485ed88>`
() const

 

| Return all the keys in the current group.

 

void 

:ref:`beginGroup <sdk_accounts_accountservice#aa889966b87d4315aea74c30088e9c8fa>`
(const QString &prefix)

 

| Enter a group.

 

        QStringList 

:ref:`childGroups <sdk_accounts_accountservice#af5b653c82d3a3d7765da47fe5db0e128>`
() const

 

| Return all the groups which are direct children of the current group.

 

        QStringList 

:ref:`childKeys <sdk_accounts_accountservice#a09f8085bca6d1c8b4837beabcea7b639>`
() const

 

| Return all the keys which are direct children of the current group.

 

void 

:ref:`clear <sdk_accounts_accountservice#ac8bb3912a3ce86b15842e79d0b421204>`
()

 

| Remove all the keys.

 

bool 

:ref:`contains <sdk_accounts_accountservice#aab9f06bc42480ab555a9757e14303e5f>`
(const QString &key) const

 

| Check whether the given key is in the current group.

 

        void 

:ref:`endGroup <sdk_accounts_accountservice#af964cd7bde81d0f118ea09e201e155dd>`
()

 

| Exit a group.

 

        QString 

:ref:`group <sdk_accounts_accountservice#a5adb315467de1866550658b4679bf9f9>`
() const

 

| Return the name of the current group.

 

void 

:ref:`remove <sdk_accounts_accountservice#a89c0a3a6c660a5f577e5241a63052f2c>`
(const QString &key)

 

| Remove the given key.

 

        void 

**setValue** (const char \*key, const QVariant
&\ :ref:`value <sdk_accounts_accountservice#a299df626e5ca7968fd8b70f9c87acfbb>`)

 

void 

:ref:`setValue <sdk_accounts_accountservice#a48d1031ae51455e458b881c49c65a92e>`
(const QString &key, const QVariant
&\ :ref:`value <sdk_accounts_accountservice#a299df626e5ca7968fd8b70f9c87acfbb>`)

 

| Change the value of an account setting.

 

QVariant 

:ref:`value <sdk_accounts_accountservice#a299df626e5ca7968fd8b70f9c87acfbb>`
(const QString &key, const QVariant &defaultValue, SettingSource
\*source=0) const

 

| Retrieves the value of an account setting, as a QVariant.

 

QVariant 

:ref:`value <sdk_accounts_accountservice#a53cc185b2ceff59c833ebe939a6e18cb>`
(const QString &key, SettingSource \*source=0) const

 

| Retrieves the value of an account setting.

 

        QVariant 

**value** (const char \*key, SettingSource \*source=0) const

 

QStringList 

:ref:`changedFields <sdk_accounts_accountservice#a678e391f34362471f042719d3b388d81>`
() const

 

| This method should be called only in the context of a handler of the
  AccountService::changed() signal, and can be used to retrieve the set
  of changes.

 

:ref:`AuthData <sdk_accounts_authdata>` 

:ref:`authData <sdk_accounts_accountservice#a49a9f7deccedeebacadc37ae01ac83ab>`
() const

 

| Read the authentication data stored in the account (merging the
  service-specific settings with the global account settings).

 

Detailed Description
--------------------

Account settings for a specific service.

The :ref:`AccountService <sdk_accounts_accountservice>` class provides
access to the account settings for a specific service type. It is meant
to be easier to use than the Account class because it hides the
complexity of the account structure and gives access to only the limited
subset of account settings which are relevant to a service.

To get an :ref:`AccountService <sdk_accounts_accountservice>` one can use
the :ref:`Manager <sdk_accounts_manager>` methods accountServices() or
enabledAccountServices(), which both return a QList of account services.
Note that if the :ref:`Manager <sdk_accounts_manager>` was instantiated for
a specific service type, these lists will contain only those account
services matching that service type. The
:ref:`AccountService <sdk_accounts_accountservice>` can also be
instantiated with its
:ref:`AccountService <sdk_accounts_accountservice>`\ (Account \*account,
:ref:`Service <sdk_accounts_service>` \*service) constructor: this is
useful if one already has an Account instance.

This is intended to be a convenient wrapper over the accounts settings
specific for a service; as such, it doesn't offer all the editing
possibilities offered by the Account class, such as enabling the service
itself: these operations should ideally not be performed by consumer
applications, but by the account editing UI only.

Example code:

// Instantiate an account manager interested in e-mail services only.

:ref:`Accounts::Manager <sdk_accounts_manager>` \*manager = new
:ref:`Accounts::Manager <sdk_accounts_manager>`\ ("e-mail");

// Get the list of enabled AccountService objects of type e-mail.

Accounts::AccountServiceList services =
manager->enabledAccountServices();

// Loop through the account services and do something useful with them.

foreach (:ref:`Accounts::AccountService <sdk_accounts_accountservice>`
:ref:`service <sdk_accounts_accountservice#a256dc9d961214d5f60642a290a288998>`,
services) {

QString server =
service.\ :ref:`value <sdk_accounts_accountservice#a299df626e5ca7968fd8b70f9c87acfbb>`\ ("pop3/hostname").toString();

int port =
service.\ :ref:`value <sdk_accounts_accountservice#a299df626e5ca7968fd8b70f9c87acfbb>`\ ("pop3/port").toInt();

// Suppose that the e-mail address is stored in the global account

// settings; let's get it from there:

QString fromAddress =
service.\ :ref:`account <sdk_accounts_accountservice#a490333c2ed4d6f107c5493a9465d993b>`\ ()->valueAsString("username");

...

}

Note
    User applications (with the notable exception of the accounts
    editing application) should never use account services which are not
    enabled, and should stop using an account when the account service
    becomes disabled. The latter can be done by connecting to the
    :ref:`changed() <sdk_accounts_accountservice#a4db9a5f1a7e34ec6902ff9630d98b777>`
    signal and checking if
    :ref:`isEnabled() <sdk_accounts_accountservice#ae2931e09e0fd8eac15c83f0254b4e4ac>`
    still returns true.
    Note that if the account gets deleted, it will always get disabled
    first; so, there is no need to connect to the Account::removed()
    signal; one can just monitor the
    :ref:`changed() <sdk_accounts_accountservice#a4db9a5f1a7e34ec6902ff9630d98b777>`
    signal from the :ref:`AccountService <sdk_accounts_accountservice>`
    objects.

Definition at line 39 of file account-service.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | explicit                             |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | `AccountService <s | (             |                                      |
|       | Account \*         | *accoun |                                      |
| t*,         |                        |                                      |
| | dk_accounts_accoun |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | tservice>`_        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | const              | *servic |                                      |
| e*          |                        |                                      |
| |                    |               |                                      |
|       | :ref:`Service <sdk_acco |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | unts_service>`_    |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Constructor.

Parameters
    +-----------+------------------------------------------------------------------+
    | account   | An Account.                                                      |
    +-----------+------------------------------------------------------------------+
    | service   | A :ref:`Service <sdk_accounts_service>` supported by the account.   |
    +-----------+------------------------------------------------------------------+

Definition at line 179 of file account-service.cpp.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | explicit                             |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | `AccountService <s | (             |                                      |
|       | Account \*         | *accoun |                                      |
| t*,         |                        |                                      |
| | dk_accounts_accoun |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | tservice>`_        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | const              | *servic |                                      |
| e*,         |                        |                                      |
| |                    |               |                                      |
|       | :ref:`Service <sdk_acco |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | unts_service>`_    |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | QObject \*         | *parent |                                      |
| *           |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Constructor.

Parameters
    +-----------+------------------------------------------------------------------+
    | account   | An Account.                                                      |
    +-----------+------------------------------------------------------------------+
    | service   | A :ref:`Service <sdk_accounts_service>` supported by the account.   |
    +-----------+------------------------------------------------------------------+
    | parent    | The parent object.                                               |
    +-----------+------------------------------------------------------------------+

Definition at line 191 of file account-service.cpp.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| `AuthData <sdk | (              |                | )              | const          |
| _accounts_auth |                |                |                |                |
| data>`_        |                |                |                |                |
| authData       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Read the authentication data stored in the account (merging the
service-specific settings with the global account settings).

The method and mechanism are read from the "auth/method" and
"auth/mechanism" keys, respectively. The authentication parameters are
found under the "auth/<method>/<mechanism>/" group.

Returns
    an :ref:`AuthData <sdk_accounts_authdata>` object, describing the
    authentication settings.

Definition at line 501 of file account-service.cpp.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | const        | *prefix*     | )            |              |
| beginGroup   |              | QString &    |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Enter a group.

This method never fails.

Parameters
    +--------------------------------------+--------------------------------------+
    | prefix                               |                                      |
    +--------------------------------------+--------------------------------------+

Definition at line 271 of file account-service.cpp.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | signal                               |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | changed        | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Emitted when some setting has changed on the account service.

You can use the
:ref:`changedFields() <sdk_accounts_accountservice#a678e391f34362471f042719d3b388d81>`
method to retrieve the list of the settings which have changed.

+----------------+----------------+----------------+----------------+----------------+
| QStringList    | (              |                | )              | const          |
| changedFields  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

This method should be called only in the context of a handler of the
:ref:`AccountService::changed() <sdk_accounts_accountservice#a4db9a5f1a7e34ec6902ff9630d98b777>`
signal, and can be used to retrieve the set of changes.

Returns
    a QStringList of the keys which have changed.

Definition at line 471 of file account-service.cpp.

+----------------+----------------+----------------+----------------+----------------+
| void clear     | (              |                | )              |                |
+----------------+----------------+----------------+----------------+----------------+

Remove all the keys.

See also
    `remove(const QString
    &key) <sdk_accounts_accountservice#a89c0a3a6c660a5f577e5241a63052f2c>:ref:`

Definition at line 316 of file account-service.cpp.

+-----------------+-----+--------------------+---------+-----+---------+
| bool contains   | (   | const QString &    | *key*   | )   | const   |
+-----------------+-----+--------------------+---------+-----+---------+

Check whether the given key is in the current group.

Parameters
    +-------+--------------------------------+
    | key   | The key name of the setting.   |
    +-------+--------------------------------+

Definition at line 331 of file account-service.cpp.

References AccountService::childKeys().

+----------------+----------------+----------------+----------------+----------------+
| bool enabled   | (              |                | )              | const          |
+----------------+----------------+----------------+----------------+----------------+

Check whether the account service is enabled.

Note
    this is just a wrapper of isEnabled

See also
    :ref:`isEnabled() <sdk_accounts_accountservice#ae2931e09e0fd8eac15c83f0254b4e4ac>`

**`Deprecated: </sdk/scopes/cpp/Accounts/deprecated/#_deprecated000001>`_ **
    use isEnabled instead

Definition at line 231 of file account-service.cpp.

References AccountService::isEnabled().

+--------------+--------------+--------------+--------------+--------------+--------------+
| void remove  | (            | const        | *key*        | )            |              |
|              |              | QString &    |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Remove the given key.

If the key is the empty string, all keys in the current group are
removed.

Parameters
    +-------+--------------------------------+
    | key   | The key name of the setting.   |
    +-------+--------------------------------+

Definition at line 363 of file account-service.cpp.

References AccountService::allKeys().

+----------------+----------------+----------------+----------------+----------------+
| :ref:`Service <sdk_ | (              |                | )              | const          |
| accounts_servi |                |                |                |                |
| ce>`_          |                |                |                |                |
| service        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return the :ref:`Service <sdk_accounts_service>`.

Do not delete this object explicitly.

Definition at line 218 of file account-service.cpp.

+--------------------+--------------------+--------------------+--------------------+
| void setValue      | (                  | const QString &    | *key*,             |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | const QVariant &   | *value*            |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Change the value of an account setting.

Parameters
    +---------+---------------------------------+
    | key     | The name of the setting.        |
    +---------+---------------------------------+
    | value   | The new value of the setting.   |
    +---------+---------------------------------+

Definition at line 391 of file account-service.cpp.

+--------------------+--------------------+--------------------+--------------------+
| QVariant value     | (                  | const QString &    | *key*,             |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | const QVariant &   | *defaultValue*,    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | SettingSource \*   | *source* = ``0``   |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Retrieves the value of an account setting, as a QVariant.

Parameters
    +----------------+------------------------------------------------------------------------------------------+
    | key            | The key whose value must be retrieved.                                                   |
    +----------------+------------------------------------------------------------------------------------------+
    | defaultValue   | Value returned if the key is unset.                                                      |
    +----------------+------------------------------------------------------------------------------------------+
    | source         | Indicates whether the value comes from the account, the service template or was unset.   |
    +----------------+------------------------------------------------------------------------------------------+

Returns
    The value associated to *key*.

This method operates on the currently selected service.

Definition at line 423 of file account-service.cpp.

Referenced by AccountService::value().

+--------------------+--------------------+--------------------+--------------------+
| QVariant value     | (                  | const QString &    | *key*,             |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | SettingSource \*   | *source* = ``0``   |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    | const              |
+--------------------+--------------------+--------------------+--------------------+

Retrieves the value of an account setting.

Parameters
    +----------+------------------------------------------------------------------------------------------+
    | key      | The key whose value must be retrieved                                                    |
    +----------+------------------------------------------------------------------------------------------+
    | source   | Indicates whether the value comes from the account, the service template or was unset.   |
    +----------+------------------------------------------------------------------------------------------+

Returns the value of the setting, or an invalid QVariant if unset.

Definition at line 454 of file account-service.cpp.

References AccountService::value().

