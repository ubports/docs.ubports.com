.. _sdk_accounts_watch:
Accounts Watch
==============

Monitors an account key or group of keys.
:ref:`More... <sdk_accounts_watch#details>`

``#include <Accounts/Account>``

Inherits QObject.

        Signals
---------------

        void 

**displayNameChanged** (const QString &displayName)

 

        void 

**enabledChanged** (const QString &serviceName, bool enabled)

 

        void 

**error** (:ref:`Accounts::Error <sdk_accounts_error>` error)

 

        void 

**synced** ()

 

        void 

**removed** ()

 

        Public Member Functions
-------------------------------

uint 

:ref:`credentialsId <sdk_accounts_watch#a483d9a1edcbc46d7070eb70ae23b5989>`
()

 

void 

:ref:`setCredentialsId <sdk_accounts_watch#a54a9de969058292a257d9d692785ca63>`
(const uint id)

 

| Sets the accounts credentials ID.

 

        QString 

**displayName** () const

 

        void 

**setDisplayName** (const QString &displayName)

 

        QString 

**providerName** () const

 

:ref:` <>` `Provider <sdk_accounts_provider>` 

**provider** () const

 

        void 

**selectService** (const :ref:`Service <sdk_accounts_service>`
&service=\ :ref:`Service <sdk_accounts_service>`\ ())

 

:ref:` <>` `Service <sdk_accounts_service>` 

**selectedService** () const

 

        QStringList 

**allKeys** () const

 

        void 

**beginGroup** (const QString &prefix)

 

        QStringList 

**childGroups** () const

 

        QStringList 

**childKeys** () const

 

        void 

**clear** ()

 

        bool 

**contains** (const QString &key) const

 

        void 

**endGroup** ()

 

        QString 

**group** () const

 

        bool 

**isWritable** () const

 

        void 

**remove** (const QString &key)

 

        void 

**setValue** (const QString &key, const QVariant &value)

 

        QVariant 

**value** (const QString &key, const QVariant &defaultValue=QVariant(),
SettingSource \*source=0) const

 

        SettingSource 

**value** (const QString &key, QVariant &value) const

 

        QString 

**valueAsString** (const QString &key, QString
default\_value=QString::null, SettingSource \*source=0) const

 

        int 

**valueAsInt** (const QString &key, int default\_value=0, SettingSource
\*source=0) const

 

        quint64 

**valueAsUInt64** (const QString &key, quint64 default\_value=0,
SettingSource \*source=0) const

 

        bool 

**valueAsBool** (const QString &key, bool default\_value=false,
SettingSource \*source=0) const

 

:ref:` <>` `Watch <sdk_accounts_watch>` \* 

**watchKey** (const QString &key=QString())

 

        void 

**sync** ()

 

        bool 

**syncAndBlock** ()

 

        void 

**remove** ()

 

        void 

**sign** (const QString &key, const char \*token)

 

        bool 

**verify** (const QString &key, const char \*\*token)

 

        bool 

**verifyWithTokens** (const QString &key, QList< const char \* > tokens)

 

Detailed Description
--------------------

Monitors an account key or group of keys.

A watch is created via the Account::watch method and is a simple object
which will emit the notify() signal when the value of the key (or group)
that it is monitoring is changed.

Definition at line 70 of file account.h.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| uint           | (              |                | )              |                |
| credentialsId  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Q\_SIGNALS: void notify(const char \*key); };

class ACCOUNTS\_EXPORT Account: public QObject { Q\_OBJECT

public: Account(\ :ref:`Manager <sdk_accounts_manager>` \*manager, const
QString &provider, QObject \*parent = 0); virtual ~Account();

static Account \*fromId(\ :ref:`Manager <sdk_accounts_manager>` \*manager,
AccountId id, QObject \*parent = 0);

AccountId id() const;

:ref:`Manager <sdk_accounts_manager>` \*manager() const;

bool supportsService(const QString &serviceType) const;

ServiceList services(const QString &serviceType = QString()) const;
ServiceList enabledServices() const;

bool enabled() const; bool isEnabled() const; void setEnabled(bool);

/\*! Gets the account's credentials ID in Signon database.

The credentials ID is first read from the currently selected service; if
it is not found, then it is ready from the global account settings. In
any case, the currently selected service is not altered.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | inline                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | void         | (            | cons |                                      |
| t uint   | *id*         | )          |                                      |
|    |              |                  |                                      |
| | setCredentia |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | lsId         |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Sets the accounts credentials ID.

The change will be written only when sync() is called.

This method operates on the currently selected service.

Definition at line 134 of file account.h.

