`Manager </sdk/scopes/cpp/Accounts/Manager/>`__ of accounts, services
and providers. `More... </sdk/scopes/cpp/Accounts/Manager#details>`__

``#include <Accounts/Manager>``

Inherits QObject.

        Public Types
--------------------

enum  

`Option </sdk/scopes/cpp/Accounts/Manager#a0e65ad13124ea2cb5e255b640464e35f>`__
{
`DisableNotifications </sdk/scopes/cpp/Accounts/Manager#a0e65ad13124ea2cb5e255b640464e35fa8ab6226b5ae4221689bc2d25d6201ae9>`__
= 0x1 }

 

| Specifies options for the object.
  `More... </sdk/scopes/cpp/Accounts/Manager#a0e65ad13124ea2cb5e255b640464e35f>`__

 

        Signals
---------------

void 

`accountCreated </sdk/scopes/cpp/Accounts/Manager#ad6d2d0cfff2e9f11ab3327ddf573f1eb>`__
(Accounts::AccountId id)

 

| The signal is emitted when new account is created.

 

void 

`accountRemoved </sdk/scopes/cpp/Accounts/Manager#a9e18c1ab3efc480d15fe72d833e9ab95>`__
(Accounts::AccountId id)

 

| The signal is emitted when existing account is removed.

 

void 

`accountUpdated </sdk/scopes/cpp/Accounts/Manager#aa228f4eaf987ea3575c7ff9da03208e8>`__
(Accounts::AccountId id)

 

| The signal is emitted when any account property for a particular
  service is updated.

 

void 

`enabledEvent </sdk/scopes/cpp/Accounts/Manager#a9da726ad1ee02be3dea7c19b82bb373d>`__
(Accounts::AccountId id)

 

| If the manager has been created with serviceType, this signal will be
  emitted when an account (identified by AccountId) has been modified in
  such a way that the application might be interested to start/stop
  using it: the "enabled" flag on the account or in some service
  supported by the account and matching the AgManager::serviceType have
  changed.

 

        Public Member Functions
-------------------------------

 

`Manager </sdk/scopes/cpp/Accounts/Manager#a904954dc41cf98ac053b00f12dbc0090>`__
(QObject \*parent=0)

 

| Constructor.

 

 

`Manager </sdk/scopes/cpp/Accounts/Manager#a2d948d667caf0a065d995c847ef57176>`__
(const QString
&\ `serviceType </sdk/scopes/cpp/Accounts/Manager#a2ace548efe2fbf601ecf6efcfcf9c980>`__,
QObject \*parent=0)

 

| Constructs a manager initialized with service type.

 

 

`Manager </sdk/scopes/cpp/Accounts/Manager#a5140dac7527af074eca9a9f97c5a8cea>`__
(Options
`options </sdk/scopes/cpp/Accounts/Manager#a42ec574899ed53e05880ce02e40073a1>`__,
QObject \*parent=0)

 

| Constructor, allowing option flags to be specified.

 

         

`~Manager </sdk/scopes/cpp/Accounts/Manager#a829d7114e3ed38c555af0fb4e974a6f6>`__
()

 

| Destructor.

 

Account \* 

`account </sdk/scopes/cpp/Accounts/Manager#a8999bd6e99eb3f8ee49bdf6c8e387a6d>`__
(const AccountId &id) const

 

| Loads an account from the database.

 

AccountIdList 

`accountList </sdk/scopes/cpp/Accounts/Manager#af6cb7c309b94adfe0c000a2925745975>`__
(const QString
&\ `serviceType </sdk/scopes/cpp/Accounts/Manager#a2ace548efe2fbf601ecf6efcfcf9c980>`__\ =QString::null)
const

 

| Lists the accounts which support the requested service.

 

AccountIdList 

`accountListEnabled </sdk/scopes/cpp/Accounts/Manager#a5034b5eb730a95722ad1bd1dd76b7867>`__
(const QString
&\ `serviceType </sdk/scopes/cpp/Accounts/Manager#a2ace548efe2fbf601ecf6efcfcf9c980>`__\ =QString::null)
const

 

| Lists the enabled accounts which support the requested service that
  also must be enabled.

 

Account \* 

`createAccount </sdk/scopes/cpp/Accounts/Manager#ab094ae9aa044b74123f9269dd9e5627c>`__
(const QString &providerName)

 

| Creates a new account.

 

`Service </sdk/scopes/cpp/Accounts/Service/>`__ 

`service </sdk/scopes/cpp/Accounts/Manager#ac9b1bf173f68b9a0384cd1afad398931>`__
(const QString &serviceName) const

 

| Gets an object representing a service.

 

ServiceList 

`serviceList </sdk/scopes/cpp/Accounts/Manager#a77e3d998be834bacfb3378e64656edf8>`__
(const QString
&\ `serviceType </sdk/scopes/cpp/Accounts/Manager#a2ace548efe2fbf601ecf6efcfcf9c980>`__\ =QString::null)
const

 

| Gets the service list.

 

`Provider </sdk/scopes/cpp/Accounts/Provider/>`__ 

`provider </sdk/scopes/cpp/Accounts/Manager#a79085e0676834932f64d651f4231b2ec>`__
(const QString &providerName) const

 

| Gets an object representing a provider.

 

ProviderList 

`providerList </sdk/scopes/cpp/Accounts/Manager#aa4b53bc6ceef8d0c51b50c4b047409dc>`__
() const

 

| Gets a provider list.

 

`ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__ 

`serviceType </sdk/scopes/cpp/Accounts/Manager#a2ace548efe2fbf601ecf6efcfcf9c980>`__
(const QString &name) const

 

| Gets an object representing a service type.

 

`Application </sdk/scopes/cpp/Accounts/Application/>`__ 

`application </sdk/scopes/cpp/Accounts/Manager#a28ff538d5abd52ff691e30ed75a6b41f>`__
(const QString &applicationName) const

 

| Get an object representing an application.

 

ApplicationList 

`applicationList </sdk/scopes/cpp/Accounts/Manager#ae18f9f8c59a4e15e8849dd832c54b874>`__
(const `Service </sdk/scopes/cpp/Accounts/Service/>`__
&\ `service </sdk/scopes/cpp/Accounts/Manager#ac9b1bf173f68b9a0384cd1afad398931>`__)
const

 

| List the registered applications which support the given service.

 

QString 

`serviceType </sdk/scopes/cpp/Accounts/Manager#aa090de65c448278a23851f45f38fa9ce>`__
() const

 

| Gets the service type if given in manager constructor.

 

void 

`setTimeout </sdk/scopes/cpp/Accounts/Manager#a453a462fc339dae385360dc73128bf14>`__
(quint32
`timeout </sdk/scopes/cpp/Accounts/Manager#acd89c68759d802afa73ef928b293c82b>`__)

 

| Sets the timeout for database operations.

 

quint32 

`timeout </sdk/scopes/cpp/Accounts/Manager#acd89c68759d802afa73ef928b293c82b>`__
()

 

| Gets the database timeout.

 

void 

`setAbortOnTimeout </sdk/scopes/cpp/Accounts/Manager#a9b4396a045e666376bdb535553bce09b>`__
(bool abort)

 

| Sets whether to abort the application when a database timeout occurs.

 

bool 

`abortOnTimeout </sdk/scopes/cpp/Accounts/Manager#afdf5d9b1cf381bf5a83ac0bf41be522b>`__
() const

 

Options 

`options </sdk/scopes/cpp/Accounts/Manager#a42ec574899ed53e05880ce02e40073a1>`__
() const

 

`Error </sdk/scopes/cpp/Accounts/Error/>`__ 

`lastError </sdk/scopes/cpp/Accounts/Manager#a31f856d7b015a7478550d90feac77f48>`__
() const

 

| Gets the last error.

 

Detailed Description
--------------------

`Manager </sdk/scopes/cpp/Accounts/Manager/>`__ of accounts, services
and providers.

The `Manager </sdk/scopes/cpp/Accounts/Manager/>`__ offers ways to
create accounts, list accounts, services and providers. It also emits
signals when accounts are created and removed.

Definition at line 51 of file manager.h.

Member Enumeration Documentation
--------------------------------

+----------------------------------------------------------------------------------------+
| enum `Option </sdk/scopes/cpp/Accounts/Manager#a0e65ad13124ea2cb5e255b640464e35f>`__   |
+----------------------------------------------------------------------------------------+

Specifies options for the object.

Enumerator
       \ DisableNotifications 
Disable all inter-process notifications

Definition at line 60 of file manager.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Manager </s | (            | QObject \*   | *parent* =   | )            |              |
| dk/scopes/cp |              |              | ``0``        |              |              |
| p/Accounts/M |              |              |              |              |              |
| anager/>`__  |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Constructor.

Users should check for
manager->\ `lastError() </sdk/scopes/cpp/Accounts/Manager#a31f856d7b015a7478550d90feac77f48>`__
to check if manager construction was fully succesful.

Definition at line 146 of file manager.cpp.

References Error::DatabaseLocked.

+--------------------+--------------------+--------------------+--------------------+
| `Manager </sdk/sco | (                  | const QString &    | *serviceType*,     |
| pes/cpp/Accounts/M |                    |                    |                    |
| anager/>`__        |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QObject \*         | *parent* = ``0``   |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Constructs a manager initialized with service type.

This constructor should be used when there is an interest for just one
service type. Such a manager has influence on some class methods. When
listing the accounts and services only the ones supporting the given
service type will be returned. Also the creating account with this
manager will affect the acccount class method for listing services in
same manner. The signal
`enabledEvent() </sdk/scopes/cpp/Accounts/Manager#a9da726ad1ee02be3dea7c19b82bb373d>`__
will be emitted only when manager is created with this constructor.
Users should check for
manager->\ `lastError() </sdk/scopes/cpp/Accounts/Manager#a31f856d7b015a7478550d90feac77f48>`__
to check if manager construction was fully succesful.

Definition at line 173 of file manager.cpp.

References Error::DatabaseLocked.

+--------------------+--------------------+--------------------+--------------------+
| `Manager </sdk/sco | (                  | Options            | *options*,         |
| pes/cpp/Accounts/M |                    |                    |                    |
| anager/>`__        |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QObject \*         | *parent* = ``0``   |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Constructor, allowing option flags to be specified.

Users should check for
`lastError() </sdk/scopes/cpp/Accounts/Manager#a31f856d7b015a7478550d90feac77f48>`__
to check if manager construction was fully succesful.

Definition at line 194 of file manager.cpp.

References Manager::DisableNotifications.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| abortOnTimeout |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    Whether the application will be aborted when a database timeout
    occurs.

Definition at line 523 of file manager.cpp.

+----------------------+-----+----------------------+--------+-----+---------+
| Account \* account   | (   | const AccountId &    | *id*   | )   | const   |
+----------------------+-----+----------------------+--------+-----+---------+

Loads an account from the database.

Parameters
    +------+--------------------------------------+
    | id   | Id of the account to be retrieved.   |
    +------+--------------------------------------+

Returns
    Requested account or 0 if not found. If 0 is returned, call
    `lastError() </sdk/scopes/cpp/Accounts/Manager#a31f856d7b015a7478550d90feac77f48>`__
    to find out why.

Attention
    The objects returned by this method are shared, meaning that calling
    this method twice with the same id will return the same object. It
    is recommended that clients do not destroy the objects returned by
    this method, if there's the possibility that they are still being
    used in other parts of the application.

Definition at line 245 of file manager.cpp.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | signal                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | accountCreat | (            | Acco |                                      |
| unts::Ac | *id*         | )          |                                      |
|    |              |                  |                                      |
| | ed           |              | coun |                                      |
| tId      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

The signal is emitted when new account is created.

Parameters
    +------+-----------------------------+
    | id   | Identifier of the Account   |
    +------+-----------------------------+

+-----------------------------+-----+--------------------+-------------------------------------+-----+---------+
| AccountIdList accountList   | (   | const QString &    | *serviceType* = ``QString::null``   | )   | const   |
+-----------------------------+-----+--------------------+-------------------------------------+-----+---------+

Lists the accounts which support the requested service.

Parameters
    +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
    | serviceType   | Type of service that returned accounts must support. If not given and the manager is not constructed with service type, all accounts are returned.   |
    +---------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns
    List of account IDs.

Definition at line 266 of file manager.cpp.

+------------------------------------+-----+--------------------+-------------------------------------+-----+---------+
| AccountIdList accountListEnabled   | (   | const QString &    | *serviceType* = ``QString::null``   | )   | const   |
+------------------------------------+-----+--------------------+-------------------------------------+-----+---------+

Lists the enabled accounts which support the requested service that also
must be enabled.

Parameters
    +---------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | serviceType   | Type of service that returned accounts must support. If not given and the manager is not constructed with service type, all enabled accounts are returned.   |
    +---------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns
    List of account IDs.

Definition at line 301 of file manager.cpp.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | signal                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | accountRemov | (            | Acco |                                      |
| unts::Ac | *id*         | )          |                                      |
|    |              |                  |                                      |
| | ed           |              | coun |                                      |
| tId      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

The signal is emitted when existing account is removed.

Parameters
    +------+-----------------------------+
    | id   | Identifier of the Account   |
    +------+-----------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | signal                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | accountUpdat | (            | Acco |                                      |
| unts::Ac | *id*         | )          |                                      |
|    |              |                  |                                      |
| | ed           |              | coun |                                      |
| tId      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

The signal is emitted when any account property for a particular service
is updated.

To receive this notification user has to create accounts manager using
`Manager(const QString &serviceType, QObject
\*parent) </sdk/scopes/cpp/Accounts/Manager#a2d948d667caf0a065d995c847ef57176>`__
constructor. Update notification is only emitted when manager is created
for particular type of service.

Parameters
    +------+-----------------------------+
    | id   | Identifier of the Account   |
    +------+-----------------------------+

+-----------------------------------------------------------------------+-----+--------------------+---------------------+-----+---------+
| `Application </sdk/scopes/cpp/Accounts/Application/>`__ application   | (   | const QString &    | *applicationName*   | )   | const   |
+-----------------------------------------------------------------------+-----+--------------------+---------------------+-----+---------+

Get an object representing an application.

Parameters
    +-------------------+------------------------------------+
    | applicationName   | Name of the application to load.   |
    +-------------------+------------------------------------+

Returns
    The requested
    `Application </sdk/scopes/cpp/Accounts/Application/>`__, or an
    invalid `Application </sdk/scopes/cpp/Accounts/Application/>`__
    object if not found.

Definition at line 448 of file manager.cpp.

Referenced by Manager::applicationList().

+-----------------------------------+-----+------------------------------------------------------------+-------------+-----+---------+
| ApplicationList applicationList   | (   | const `Service </sdk/scopes/cpp/Accounts/Service/>`__ &    | *service*   | )   | const   |
+-----------------------------------+-----+------------------------------------------------------------+-------------+-----+---------+

List the registered applications which support the given service.

Parameters
    +-----------+--------------------------------+
    | service   | The service to be supported.   |
    +-----------+--------------------------------+

Returns
    A list of `Application </sdk/scopes/cpp/Accounts/Application/>`__
    objects.

Definition at line 462 of file manager.cpp.

References Manager::application().

+--------------+--------------+--------------+--------------+--------------+--------------+
| Account \*   | (            | const        | *providerNam | )            |              |
| createAccoun |              | QString &    | e*           |              |              |
| t            |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Creates a new account.

Parameters
    +----------------+-----------------------------+
    | providerName   | Name of account provider.   |
    +----------------+-----------------------------+

Returns
    Created account or NULL if some error occurs.

Definition at line 331 of file manager.cpp.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | signal                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | enabledEvent | (            | Acco |                                      |
| unts::Ac | *id*         | )          |                                      |
|    |              |                  |                                      |
| |              |              | coun |                                      |
| tId      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

If the manager has been created with serviceType, this signal will be
emitted when an account (identified by AccountId) has been modified in
such a way that the application might be interested to start/stop using
it: the "enabled" flag on the account or in some service supported by
the account and matching the AgManager::serviceType have changed.

Note
    In practice, this signal might be emitted more often than when
    strictly needed; applications must call Account::enabledServices()
    to get the current state.

Parameters
    +------+-----------------------------+
    | id   | identifier of the Account   |
    +------+-----------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `Error </sdk/s | (              |                | )              | const          |
| copes/cpp/Acco |                |                |                |                |
| unts/Error/>`_ |                |                |                |                |
| _              |                |                |                |                |
| lastError      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Gets the last error.

Not all operations set/reset the error; see the individual methods'
documentation to see if they set the last error or not. Call this method
right after an account operation has failed; if no error occurred, the
result of this method are undefined.

Returns
    The last error.

Definition at line 554 of file manager.cpp.

+----------------+----------------+----------------+----------------+----------------+
| Manager::Optio | (              |                | )              | const          |
| ns             |                |                |                |                |
| options        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    Configuration options for this object.

Definition at line 531 of file manager.cpp.

References Manager::DisableNotifications.

+--------------------------------------------------------------+-----+--------------------+------------------+-----+---------+
| `Provider </sdk/scopes/cpp/Accounts/Provider/>`__ provider   | (   | const QString &    | *providerName*   | )   | const   |
+--------------------------------------------------------------+-----+--------------------+------------------+-----+---------+

Gets an object representing a provider.

Parameters
    +----------------+----------------------------+
    | providerName   | Name of provider to get.   |
    +----------------+----------------------------+

Returns
    Requested provider or NULL if not found.

Definition at line 392 of file manager.cpp.

Referenced by Manager::providerList().

+----------------+----------------+----------------+----------------+----------------+
| ProviderList   | (              |                | )              | const          |
| providerList   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Gets a provider list.

Returns
    List of registered providers.

Definition at line 406 of file manager.cpp.

References Manager::provider().

+-----------------------------------------------------------+-----+--------------------+-----------------+-----+---------+
| `Service </sdk/scopes/cpp/Accounts/Service/>`__ service   | (   | const QString &    | *serviceName*   | )   | const   |
+-----------------------------------------------------------+-----+--------------------+-----------------+-----+---------+

Gets an object representing a service.

Parameters
    +---------------+---------------------------+
    | serviceName   | Name of service to get.   |
    +---------------+---------------------------+

Returns
    The requested service or an invalid service if not found.

Definition at line 342 of file manager.cpp.

Referenced by Manager::serviceList().

+---------------------------+-----+--------------------+-------------------------------------+-----+---------+
| ServiceList serviceList   | (   | const QString &    | *serviceType* = ``QString::null``   | )   | const   |
+---------------------------+-----+--------------------+-------------------------------------+-----+---------+

Gets the service list.

If the manager is constructed with given service type only the services
which supports the service type will be returned.

Parameters
    +---------------+------------------------------------------------------------------------------------------------------------------------------+
    | serviceType   | Type of services to be listed. If not given and the manager is not constructed with service type, all services are listed.   |
    +---------------+------------------------------------------------------------------------------------------------------------------------------+

Returns
    List of `Service </sdk/scopes/cpp/Accounts/Service/>`__ objects.

Definition at line 360 of file manager.cpp.

References Manager::service().

+-----------------------------------------------------------------------+-----+--------------------+----------+-----+---------+
| `ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__ serviceType   | (   | const QString &    | *name*   | )   | const   |
+-----------------------------------------------------------------------+-----+--------------------+----------+-----+---------+

Gets an object representing a service type.

Parameters
    +--------+---------------------------------+
    | name   | Name of service type to load.   |
    +--------+---------------------------------+

Returns
    Requested service type or NULL if not found.

Definition at line 433 of file manager.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| serviceType    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Gets the service type if given in manager constructor.

Returns
    `Service </sdk/scopes/cpp/Accounts/Service/>`__ type or NULL if not
    given.

Definition at line 482 of file manager.cpp.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | bool         | *abort*      | )            |              |
| setAbortOnTi |              |              |              |              |              |
| meout        |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Sets whether to abort the application when a database timeout occurs.

By default the library does not abort the application.

Definition at line 514 of file manager.cpp.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | quint32      | *timeout*    | )            |              |
| setTimeout   |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Sets the timeout for database operations.

Parameters
    +-----------+------------------------------------+
    | timeout   | The new timeout in milliseconds.   |
    +-----------+------------------------------------+

This tells the library how long it is allowed to block while waiting for
a locked DB to become accessible. Higher values mean a higher chance of
successful reads, but also mean that the execution might be blocked for
a longer time. The default is 5 seconds.

Definition at line 496 of file manager.cpp.

+----------------+----------------+----------------+----------------+----------------+
| quint32        | (              |                | )              |                |
| timeout        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Gets the database timeout.

Returns
    The timeout (in milliseconds) for database operations.

Definition at line 505 of file manager.cpp.

