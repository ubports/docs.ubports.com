Representation of an account provider.
`More... </sdk/scopes/cpp/Accounts/Provider#details>`__

``#include <Accounts/Provider>``

        Public Member Functions
-------------------------------

         

`Provider </sdk/scopes/cpp/Accounts/Provider#a0a281cda2c25f17e851f76142d4527a0>`__
()

 

| Construct an invalid provider.

 

 

`Provider </sdk/scopes/cpp/Accounts/Provider#abff16d2acc53f89d7f633e85a4b90634>`__
(const `Provider </sdk/scopes/cpp/Accounts/Provider/>`__ &other)

 

| Copy constructor.

 

        `Provider </sdk/scopes/cpp/Accounts/Provider/>`__ & 

**operator=** (const `Provider </sdk/scopes/cpp/Accounts/Provider/>`__
&other)

 

bool 

`isValid </sdk/scopes/cpp/Accounts/Provider#aac1b70a2ed67ead038c4d3f5ac4d8a81>`__
() const

 

| Check whether this object represents a Provider.

 

QString 

`name </sdk/scopes/cpp/Accounts/Provider#a2b0a198f837184bf6fff555cee3ce770>`__
() const

 

| Get the name of the provider.

 

QString 

`displayName </sdk/scopes/cpp/Accounts/Provider#a9def71dea12661002bb3a63b3b91d08d>`__
() const

 

| Get the display name of the provider, untranslated.

 

QString 

`description </sdk/scopes/cpp/Accounts/Provider#aeaebc63d2181b1a4506603f4e03f1275>`__
() const

 

| Get the description of the provider, untranslated.

 

QString 

`pluginName </sdk/scopes/cpp/Accounts/Provider#ac7fe5a9dd669a037edfa2930803311a5>`__
() const

 

| Get the name of the account plugin associated with the provider.

 

QString 

`trCatalog </sdk/scopes/cpp/Accounts/Provider#a6c73afd4753195ea4eee794c95a770dd>`__
() const

 

QString 

`iconName </sdk/scopes/cpp/Accounts/Provider#a038b22680aca535f9972908fe2f1f6a1>`__
() const

 

QString 

`domainsRegExp </sdk/scopes/cpp/Accounts/Provider#ab0c2fc656cae3b09e456ec0747315ecc>`__
() const

 

bool 

`isSingleAccount </sdk/scopes/cpp/Accounts/Provider#aa785668bfd84285ad40299410c02367d>`__
() const

 

const QDomDocument 

`domDocument </sdk/scopes/cpp/Accounts/Provider#a305fe3a04c76c8069c3465621a7967cc>`__
() const

 

        Friends
---------------

        bool 

**operator==** (const
`Accounts::Provider </sdk/scopes/cpp/Accounts/Provider/>`__ &p1, const
`Accounts::Provider </sdk/scopes/cpp/Accounts/Provider/>`__ &p2)

 

Detailed Description
--------------------

Representation of an account provider.

The `Provider </sdk/scopes/cpp/Accounts/Provider/>`__ object represents
an account provider. It can be used to retrieve some basic properties of
the provider (such as the name) and to get access to the contents of the
XML file which defines it.

Definition at line 48 of file provider.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Provider </ | (            | const        | *other*      | )            |              |
| sdk/scopes/c |              | `Provider </ |              |              |              |
| pp/Accounts/ |              | sdk/scopes/c |              |              |              |
| Provider/>`_ |              | pp/Accounts/ |              |              |              |
| _            |              | Provider/>`_ |              |              |              |
|              |              | _            |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying a `Provider </sdk/scopes/cpp/Accounts/Provider/>`__ object is
very cheap, because the data is shared among copies.

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
`Provider </sdk/scopes/cpp/Accounts/Provider/>`__.

Returns
    true if the `Provider </sdk/scopes/cpp/Accounts/Provider/>`__ is a
    valid one.

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
    `displayName() </sdk/scopes/cpp/Accounts/Provider#a9def71dea12661002bb3a63b3b91d08d>`__.

Definition at line 144 of file provider.cpp.

