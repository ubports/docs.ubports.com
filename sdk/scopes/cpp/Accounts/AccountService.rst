Account settings for a specific service.
`More... </sdk/scopes/cpp/Accounts/AccountService#details>`__

``#include <Accounts/AccountService>``

Inherits QObject.

        Signals
---------------

        void 

`enabled </sdk/scopes/cpp/Accounts/AccountService#ab2f0d21a6f535870b37dcb44b2f77205>`__
(bool
`isEnabled </sdk/scopes/cpp/Accounts/AccountService#ae2931e09e0fd8eac15c83f0254b4e4ac>`__)

 

| Emitted when the enabledness state of the account service has changed.

 

void 

`changed </sdk/scopes/cpp/Accounts/AccountService#a4db9a5f1a7e34ec6902ff9630d98b777>`__
()

 

| Emitted when some setting has changed on the account service.

 

        Public Member Functions
-------------------------------

 

`AccountService </sdk/scopes/cpp/Accounts/AccountService#aef5d4691113e384992926928928ae334>`__
(Account
\*\ `account </sdk/scopes/cpp/Accounts/AccountService#a490333c2ed4d6f107c5493a9465d993b>`__,
const `Service </sdk/scopes/cpp/Accounts/Service/>`__
&\ `service </sdk/scopes/cpp/Accounts/AccountService#a256dc9d961214d5f60642a290a288998>`__)

 

| Constructor.

 

 

`AccountService </sdk/scopes/cpp/Accounts/AccountService#a5183e298082ee83004c503197ff14e20>`__
(Account
\*\ `account </sdk/scopes/cpp/Accounts/AccountService#a490333c2ed4d6f107c5493a9465d993b>`__,
const `Service </sdk/scopes/cpp/Accounts/Service/>`__
&\ `service </sdk/scopes/cpp/Accounts/AccountService#a256dc9d961214d5f60642a290a288998>`__,
QObject \*parent)

 

| Constructor.

 

        virtual 

`~AccountService </sdk/scopes/cpp/Accounts/AccountService#a0622bfbd6cf486c0b73712ff02c0294e>`__
()

 

| Destructor.

 

        Account \* 

`account </sdk/scopes/cpp/Accounts/AccountService#a490333c2ed4d6f107c5493a9465d993b>`__
() const

 

| Return the Account.

 

`Service </sdk/scopes/cpp/Accounts/Service/>`__ 

`service </sdk/scopes/cpp/Accounts/AccountService#a256dc9d961214d5f60642a290a288998>`__
() const

 

| Return the Service.

 

bool 

`enabled </sdk/scopes/cpp/Accounts/AccountService#a1d79980f25d38aba3d6777d0afe544f3>`__
() const

 

| Check whether the account service is enabled.

 

        bool 

`isEnabled </sdk/scopes/cpp/Accounts/AccountService#ae2931e09e0fd8eac15c83f0254b4e4ac>`__
() const

 

| Check whether the account service is enabled.

 

        QStringList 

`allKeys </sdk/scopes/cpp/Accounts/AccountService#a9936a9bd6fca45f1d03a63b1b485ed88>`__
() const

 

| Return all the keys in the current group.

 

void 

`beginGroup </sdk/scopes/cpp/Accounts/AccountService#aa889966b87d4315aea74c30088e9c8fa>`__
(const QString &prefix)

 

| Enter a group.

 

        QStringList 

`childGroups </sdk/scopes/cpp/Accounts/AccountService#af5b653c82d3a3d7765da47fe5db0e128>`__
() const

 

| Return all the groups which are direct children of the current group.

 

        QStringList 

`childKeys </sdk/scopes/cpp/Accounts/AccountService#a09f8085bca6d1c8b4837beabcea7b639>`__
() const

 

| Return all the keys which are direct children of the current group.

 

void 

`clear </sdk/scopes/cpp/Accounts/AccountService#ac8bb3912a3ce86b15842e79d0b421204>`__
()

 

| Remove all the keys.

 

bool 

`contains </sdk/scopes/cpp/Accounts/AccountService#aab9f06bc42480ab555a9757e14303e5f>`__
(const QString &key) const

 

| Check whether the given key is in the current group.

 

        void 

`endGroup </sdk/scopes/cpp/Accounts/AccountService#af964cd7bde81d0f118ea09e201e155dd>`__
()

 

| Exit a group.

 

        QString 

`group </sdk/scopes/cpp/Accounts/AccountService#a5adb315467de1866550658b4679bf9f9>`__
() const

 

| Return the name of the current group.

 

void 

`remove </sdk/scopes/cpp/Accounts/AccountService#a89c0a3a6c660a5f577e5241a63052f2c>`__
(const QString &key)

 

| Remove the given key.

 

        void 

**setValue** (const char \*key, const QVariant
&\ `value </sdk/scopes/cpp/Accounts/AccountService#a299df626e5ca7968fd8b70f9c87acfbb>`__)

 

void 

`setValue </sdk/scopes/cpp/Accounts/AccountService#a48d1031ae51455e458b881c49c65a92e>`__
(const QString &key, const QVariant
&\ `value </sdk/scopes/cpp/Accounts/AccountService#a299df626e5ca7968fd8b70f9c87acfbb>`__)

 

| Change the value of an account setting.

 

QVariant 

`value </sdk/scopes/cpp/Accounts/AccountService#a299df626e5ca7968fd8b70f9c87acfbb>`__
(const QString &key, const QVariant &defaultValue, SettingSource
\*source=0) const

 

| Retrieves the value of an account setting, as a QVariant.

 

QVariant 

`value </sdk/scopes/cpp/Accounts/AccountService#a53cc185b2ceff59c833ebe939a6e18cb>`__
(const QString &key, SettingSource \*source=0) const

 

| Retrieves the value of an account setting.

 

        QVariant 

**value** (const char \*key, SettingSource \*source=0) const

 

QStringList 

`changedFields </sdk/scopes/cpp/Accounts/AccountService#a678e391f34362471f042719d3b388d81>`__
() const

 

| This method should be called only in the context of a handler of the
  AccountService::changed() signal, and can be used to retrieve the set
  of changes.

 

`AuthData </sdk/scopes/cpp/Accounts/AuthData/>`__ 

`authData </sdk/scopes/cpp/Accounts/AccountService#a49a9f7deccedeebacadc37ae01ac83ab>`__
() const

 

| Read the authentication data stored in the account (merging the
  service-specific settings with the global account settings).

 

Detailed Description
--------------------

Account settings for a specific service.

The `AccountService </sdk/scopes/cpp/Accounts/AccountService/>`__ class
provides access to the account settings for a specific service type. It
is meant to be easier to use than the Account class because it hides the
complexity of the account structure and gives access to only the limited
subset of account settings which are relevant to a service.

To get an `AccountService </sdk/scopes/cpp/Accounts/AccountService/>`__
one can use the `Manager </sdk/scopes/cpp/Accounts/Manager/>`__ methods
accountServices() or enabledAccountServices(), which both return a QList
of account services. Note that if the
`Manager </sdk/scopes/cpp/Accounts/Manager/>`__ was instantiated for a
specific service type, these lists will contain only those account
services matching that service type. The
`AccountService </sdk/scopes/cpp/Accounts/AccountService/>`__ can also
be instantiated with its
`AccountService </sdk/scopes/cpp/Accounts/AccountService/>`__\ (Account
\*account, `Service </sdk/scopes/cpp/Accounts/Service/>`__ \*service)
constructor: this is useful if one already has an Account instance.

This is intended to be a convenient wrapper over the accounts settings
specific for a service; as such, it doesn't offer all the editing
possibilities offered by the Account class, such as enabling the service
itself: these operations should ideally not be performed by consumer
applications, but by the account editing UI only.

Example code:

// Instantiate an account manager interested in e-mail services only.

`Accounts::Manager </sdk/scopes/cpp/Accounts/Manager/>`__ \*manager =
new
`Accounts::Manager </sdk/scopes/cpp/Accounts/Manager/>`__\ ("e-mail");

// Get the list of enabled AccountService objects of type e-mail.

Accounts::AccountServiceList services =
manager->enabledAccountServices();

// Loop through the account services and do something useful with them.

foreach
(`Accounts::AccountService </sdk/scopes/cpp/Accounts/AccountService/>`__
`service </sdk/scopes/cpp/Accounts/AccountService#a256dc9d961214d5f60642a290a288998>`__,
services) {

QString server =
service.\ `value </sdk/scopes/cpp/Accounts/AccountService#a299df626e5ca7968fd8b70f9c87acfbb>`__\ ("pop3/hostname").toString();

int port =
service.\ `value </sdk/scopes/cpp/Accounts/AccountService#a299df626e5ca7968fd8b70f9c87acfbb>`__\ ("pop3/port").toInt();

// Suppose that the e-mail address is stored in the global account

// settings; let's get it from there:

QString fromAddress =
service.\ `account </sdk/scopes/cpp/Accounts/AccountService#a490333c2ed4d6f107c5493a9465d993b>`__\ ()->valueAsString("username");

...

}

Note
    User applications (with the notable exception of the accounts
    editing application) should never use account services which are not
    enabled, and should stop using an account when the account service
    becomes disabled. The latter can be done by connecting to the
    `changed() </sdk/scopes/cpp/Accounts/AccountService#a4db9a5f1a7e34ec6902ff9630d98b777>`__
    signal and checking if
    `isEnabled() </sdk/scopes/cpp/Accounts/AccountService#ae2931e09e0fd8eac15c83f0254b4e4ac>`__
    still returns true.
    Note that if the account gets deleted, it will always get disabled
    first; so, there is no need to connect to the Account::removed()
    signal; one can just monitor the
    `changed() </sdk/scopes/cpp/Accounts/AccountService#a4db9a5f1a7e34ec6902ff9630d98b777>`__
    signal from the
    `AccountService </sdk/scopes/cpp/Accounts/AccountService/>`__
    objects.

Definition at line 39 of file account-service.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | explicit                             |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | `AccountService </ | (             |                                      |
|       | Account \*         | *accoun |                                      |
| t*,         |                        |                                      |
| | sdk/scopes/cpp/Acc |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ounts/AccountServi |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ce/>`__            |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | const              | *servic |                                      |
| e*          |                        |                                      |
| |                    |               |                                      |
|       | `Service </sdk/sco |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | pes/cpp/Accounts/S |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ervice/>`__        |         |                                      |
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
    +-----------+-------------------------------------------------------------------------------+
    | account   | An Account.                                                                   |
    +-----------+-------------------------------------------------------------------------------+
    | service   | A `Service </sdk/scopes/cpp/Accounts/Service/>`__ supported by the account.   |
    +-----------+-------------------------------------------------------------------------------+

Definition at line 179 of file account-service.cpp.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | explicit                             |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | `AccountService </ | (             |                                      |
|       | Account \*         | *accoun |                                      |
| t*,         |                        |                                      |
| | sdk/scopes/cpp/Acc |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ounts/AccountServi |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ce/>`__            |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | const              | *servic |                                      |
| e*,         |                        |                                      |
| |                    |               |                                      |
|       | `Service </sdk/sco |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | pes/cpp/Accounts/S |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ervice/>`__        |         |                                      |
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
    +-----------+-------------------------------------------------------------------------------+
    | account   | An Account.                                                                   |
    +-----------+-------------------------------------------------------------------------------+
    | service   | A `Service </sdk/scopes/cpp/Accounts/Service/>`__ supported by the account.   |
    +-----------+-------------------------------------------------------------------------------+
    | parent    | The parent object.                                                            |
    +-----------+-------------------------------------------------------------------------------+

Definition at line 191 of file account-service.cpp.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| `AuthData </sd | (              |                | )              | const          |
| k/scopes/cpp/A |                |                |                |                |
| ccounts/AuthDa |                |                |                |                |
| ta/>`__        |                |                |                |                |
| authData       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Read the authentication data stored in the account (merging the
service-specific settings with the global account settings).

The method and mechanism are read from the "auth/method" and
"auth/mechanism" keys, respectively. The authentication parameters are
found under the "auth/<method>/<mechanism>/" group.

Returns
    an `AuthData </sdk/scopes/cpp/Accounts/AuthData/>`__ object,
    describing the authentication settings.

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
`changedFields() </sdk/scopes/cpp/Accounts/AccountService#a678e391f34362471f042719d3b388d81>`__
method to retrieve the list of the settings which have changed.

+----------------+----------------+----------------+----------------+----------------+
| QStringList    | (              |                | )              | const          |
| changedFields  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

This method should be called only in the context of a handler of the
`AccountService::changed() </sdk/scopes/cpp/Accounts/AccountService#a4db9a5f1a7e34ec6902ff9630d98b777>`__
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
    &key) </sdk/scopes/cpp/Accounts/AccountService#a89c0a3a6c660a5f577e5241a63052f2c>`__

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
    `isEnabled() </sdk/scopes/cpp/Accounts/AccountService#ae2931e09e0fd8eac15c83f0254b4e4ac>`__

**`Deprecated: </sdk/scopes/cpp/Accounts/deprecated#_deprecated000001>`__**
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
| `Service </sdk | (              |                | )              | const          |
| /scopes/cpp/Ac |                |                |                |                |
| counts/Service |                |                |                |                |
| />`__          |                |                |                |                |
| service        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return the `Service </sdk/scopes/cpp/Accounts/Service/>`__.

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

