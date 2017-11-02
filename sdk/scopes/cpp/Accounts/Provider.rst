.. _sdk_accounts_provider:
Accounts Provider
=================

Representation of an account provider.
:ref:`More... <sdk_accounts_provider#details>`

``#include <Accounts/Provider>``

        Public Member Functions
-------------------------------

         

:ref:`Provider <sdk_accounts_provider#a0a281cda2c25f17e851f76142d4527a0>`
()

 

| Construct an invalid provider.

 

 

:ref:`Provider <sdk_accounts_provider#abff16d2acc53f89d7f633e85a4b90634>`
(const :ref:`Provider <sdk_accounts_provider>` &other)

 

| Copy constructor.

 

:ref:` <>` `Provider <sdk_accounts_provider>` & 

**operator=** (const :ref:`Provider <sdk_accounts_provider>` &other)

 

bool 

:ref:`isValid <sdk_accounts_provider#aac1b70a2ed67ead038c4d3f5ac4d8a81>` ()
const

 

| Check whether this object represents a Provider.

 

QString 

:ref:`name <sdk_accounts_provider#a2b0a198f837184bf6fff555cee3ce770>` ()
const

 

| Get the name of the provider.

 

QString 

:ref:`displayName <sdk_accounts_provider#a9def71dea12661002bb3a63b3b91d08d>`
() const

 

| Get the display name of the provider, untranslated.

 

QString 

:ref:`description <sdk_accounts_provider#aeaebc63d2181b1a4506603f4e03f1275>`
() const

 

| Get the description of the provider, untranslated.

 

QString 

:ref:`pluginName <sdk_accounts_provider#ac7fe5a9dd669a037edfa2930803311a5>`
() const

 

| Get the name of the account plugin associated with the provider.

 

QString 

:ref:`trCatalog <sdk_accounts_provider#a6c73afd4753195ea4eee794c95a770dd>`
() const

 

QString 

:ref:`iconName <sdk_accounts_provider#a038b22680aca535f9972908fe2f1f6a1>`
() const

 

QString 

:ref:`domainsRegExp <sdk_accounts_provider#ab0c2fc656cae3b09e456ec0747315ecc>`
() const

 

bool 

:ref:`isSingleAccount <sdk_accounts_provider#aa785668bfd84285ad40299410c02367d>`
() const

 

const QDomDocument 

:ref:`domDocument <sdk_accounts_provider#a305fe3a04c76c8069c3465621a7967cc>`
() const

 

        Friends
---------------

        bool 

**operator==** (const :ref:`Accounts::Provider <sdk_accounts_provider>`
&p1, const :ref:`Accounts::Provider <sdk_accounts_provider>` &p2)

 

Detailed Description
--------------------

Representation of an account provider.

The :ref:`Provider <sdk_accounts_provider>` object represents an account
provider. It can be used to retrieve some basic properties of the
provider (such as the name) and to get access to the contents of the XML
file which defines it.

Definition at line 48 of file provider.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Provider <s | (            | const        | *other*      | )            |              |
| dk_accounts_ |              | `Provider <s |              |              |              |
| provider>`_  |              | dk_accounts_ |              |              |              |
|              |              | provider>`_  |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying a :ref:`Provider <sdk_accounts_provider>` object is very cheap,
because the data is shared among copies.

Definition at line 65 of file provider.cpp.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| description    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the description of the provider, untranslated.

Returns
    The description of the provider.

Definition at line 124 of file provider.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| displayName    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the display name of the provider, untranslated.

Returns
    The display name of the provider.

Definition at line 115 of file provider.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| domainsRegExp  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    A regular expression pattern which matches all the internet domains
    in which this type of account can be used.

Definition at line 161 of file provider.cpp.

+----------------+----------------+----------------+----------------+----------------+
| const          | (              |                | )              | const          |
| QDomDocument   |                |                |                |                |
| domDocument    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    The DOM of the whole XML provider file.

Definition at line 177 of file provider.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| iconName       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    The provider icon name.

Definition at line 152 of file provider.cpp.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| isSingleAccoun |                |                |                |                |
| t              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    Whether the provider supports creating one account at most.

Definition at line 169 of file provider.cpp.

+----------------+----------------+----------------+----------------+----------------+
| bool isValid   | (              |                | )              | const          |
+----------------+----------------+----------------+----------------+----------------+

Check whether this object represents a
:ref:`Provider <sdk_accounts_provider>`.

Returns
    true if the :ref:`Provider <sdk_accounts_provider>` is a valid one.

Definition at line 95 of file provider.cpp.

Referenced by Provider::name().

+----------------+----------------+----------------+----------------+----------------+
| QString name   | (              |                | )              | const          |
+----------------+----------------+----------------+----------------+----------------+

Get the name of the provider.

This can be used as a unique identifier for this provider.

Returns
    The unique name of the provider.

Definition at line 105 of file provider.cpp.

References Provider::isValid().

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| pluginName     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the name of the account plugin associated with the provider.

Some platforms might find it useful to store plugin names in the
provider XML files, especially when the same plugin can work for
different providers.

Returns
    The plugin name.

Definition at line 135 of file provider.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| trCatalog      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    The name of the translation catalog, which can be used to translate
    the
    :ref:`displayName() <sdk_accounts_provider#a9def71dea12661002bb3a63b3b91d08d>`.

Definition at line 144 of file provider.cpp.

