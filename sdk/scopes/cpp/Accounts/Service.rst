Representation of an account service.
`More... </sdk/scopes/cpp/Accounts/Service#details>`__

``#include <Accounts/Service>``

        Public Member Functions
-------------------------------

         

`Service </sdk/scopes/cpp/Accounts/Service#a37865e4e61715c6d6f81181f7323ae62>`__
()

 

| Construct an invalid service.

 

 

`Service </sdk/scopes/cpp/Accounts/Service#a491f7a1e2b9dfedb805d55c06ca006df>`__
(const `Service </sdk/scopes/cpp/Accounts/Service/>`__ &other)

 

| Copy constructor.

 

        `Service </sdk/scopes/cpp/Accounts/Service/>`__ & 

**operator=** (const `Service </sdk/scopes/cpp/Accounts/Service/>`__
&other)

 

bool 

`isValid </sdk/scopes/cpp/Accounts/Service#aac1b70a2ed67ead038c4d3f5ac4d8a81>`__
() const

 

| Check whether this object represents a Service.

 

QString 

`name </sdk/scopes/cpp/Accounts/Service#a2b0a198f837184bf6fff555cee3ce770>`__
() const

 

| Get the name of the service.

 

QString 

`displayName </sdk/scopes/cpp/Accounts/Service#a9def71dea12661002bb3a63b3b91d08d>`__
() const

 

| Get the display name of the service, untranslated.

 

QString 

`trCatalog </sdk/scopes/cpp/Accounts/Service#a6c73afd4753195ea4eee794c95a770dd>`__
() const

 

QString 

`serviceType </sdk/scopes/cpp/Accounts/Service#aa090de65c448278a23851f45f38fa9ce>`__
() const

 

| Get the service type ID of the service.

 

QString 

`provider </sdk/scopes/cpp/Accounts/Service#a4da62eb704e693e71b73d101f5304a7e>`__
() const

 

| Get the provider ID of the service.

 

QString 

`iconName </sdk/scopes/cpp/Accounts/Service#a038b22680aca535f9972908fe2f1f6a1>`__
() const

 

| Get the icon name for this service.

 

bool 

`hasTag </sdk/scopes/cpp/Accounts/Service#ab9544628f8c8af163b13eb6b47a3aead>`__
(const QString &tag) const

 

| Check if this service has a tag.

 

QSet< QString > 

`tags </sdk/scopes/cpp/Accounts/Service#a4bfac5a5814d94c97ae61695f09e95ee>`__
() const

 

| Return all tags of the service as a set.

 

const QDomDocument 

`domDocument </sdk/scopes/cpp/Accounts/Service#a305fe3a04c76c8069c3465621a7967cc>`__
() const

 

| Get the contents of the service XML file.

 

        Friends
---------------

        bool 

**operator==** (const
`Accounts::Service </sdk/scopes/cpp/Accounts/Service/>`__ &s1, const
`Accounts::Service </sdk/scopes/cpp/Accounts/Service/>`__ &s2)

 

Detailed Description
--------------------

Representation of an account service.

The `Service </sdk/scopes/cpp/Accounts/Service/>`__ object represents an
account service. It can be used to retrieve some basic properties of the
service (such as name, type and provider) and to get access to the
contents of the XML file which defines it.

Definition at line 48 of file service.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Service </s | (            | const        | *other*      | )            |              |
| dk/scopes/cp |              | `Service </s |              |              |              |
| p/Accounts/S |              | dk/scopes/cp |              |              |              |
| ervice/>`__  |              | p/Accounts/S |              |              |              |
|              |              | ervice/>`__  |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying a `Service </sdk/scopes/cpp/Accounts/Service/>`__ object is very
cheap, because the data is shared among copies.

Definition at line 69 of file service.cpp.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| displayName    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the display name of the service, untranslated.

Returns
    The display name of the service.

Definition at line 124 of file service.cpp.

+----------------+----------------+----------------+----------------+----------------+
| const          | (              |                | )              | const          |
| QDomDocument   |                |                |                |                |
| domDocument    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the contents of the service XML file.

Returns
    The DOM of the whole XML service file

Definition at line 201 of file service.cpp.

+---------------+-----+--------------------+---------+-----+---------+
| bool hasTag   | (   | const QString &    | *tag*   | )   | const   |
+---------------+-----+--------------------+---------+-----+---------+

Check if this service has a tag.

Parameters
    +-------+-------------------+
    | tag   | Tag to look for   |
    +-------+-------------------+

Returns
    `Service </sdk/scopes/cpp/Accounts/Service/>`__ has the tag?

Definition at line 171 of file service.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| iconName       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the icon name for this service.

Returns
    The icon name.

Definition at line 159 of file service.cpp.

+----------------+----------------+----------------+----------------+----------------+
| bool isValid   | (              |                | )              | const          |
+----------------+----------------+----------------+----------------+----------------+

Check whether this object represents a
`Service </sdk/scopes/cpp/Accounts/Service/>`__.

Returns
    true if the `Service </sdk/scopes/cpp/Accounts/Service/>`__ is a
    valid one.

Definition at line 104 of file service.cpp.

Referenced by Service::name().

+----------------+----------------+----------------+----------------+----------------+
| QString name   | (              |                | )              | const          |
+----------------+----------------+----------------+----------------+----------------+

Get the name of the service.

This can be used as a unique identifier for this service.

Returns
    The unique name of the service.

Definition at line 114 of file service.cpp.

References Service::isValid().

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| provider       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the provider ID of the service.

Returns
    The provider of the service.

Definition at line 150 of file service.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| serviceType    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the service type ID of the service.

Returns
    The service type of the service.

Definition at line 133 of file service.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QSet< QString  | (              |                | )              | const          |
| > tags         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return all tags of the service as a set.

Returns
    Set of tags

Definition at line 181 of file service.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| trCatalog      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    The translation catalog of the service.

Definition at line 141 of file service.cpp.

