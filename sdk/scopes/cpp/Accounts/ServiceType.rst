Representation of an account service type.
`More... </sdk/scopes/cpp/Accounts/ServiceType#details>`__

``#include <Accounts/ServiceType>``

        Public Member Functions
-------------------------------

         

`ServiceType </sdk/scopes/cpp/Accounts/ServiceType#a27a10810bcc047da5031725f77b398eb>`__
()

 

| Construct an invalid serviceType.

 

 

`ServiceType </sdk/scopes/cpp/Accounts/ServiceType#aae690d056ba06a78378f8adc8f95cddd>`__
(const `ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__ &other)

 

| Copy constructor.

 

        `ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__ & 

**operator=** (const
`ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__ &other)

 

bool 

`isValid </sdk/scopes/cpp/Accounts/ServiceType#aac1b70a2ed67ead038c4d3f5ac4d8a81>`__
() const

 

| Check whether this object represents a ServiceType.

 

        QString 

`name </sdk/scopes/cpp/Accounts/ServiceType#a2b0a198f837184bf6fff555cee3ce770>`__
() const

 

| Returns the name (ID) of the service type.

 

QString 

`displayName </sdk/scopes/cpp/Accounts/ServiceType#a9def71dea12661002bb3a63b3b91d08d>`__
() const

 

QString 

`trCatalog </sdk/scopes/cpp/Accounts/ServiceType#a6c73afd4753195ea4eee794c95a770dd>`__
() const

 

QString 

`iconName </sdk/scopes/cpp/Accounts/ServiceType#a038b22680aca535f9972908fe2f1f6a1>`__
() const

 

bool 

`hasTag </sdk/scopes/cpp/Accounts/ServiceType#ab9544628f8c8af163b13eb6b47a3aead>`__
(const QString &tag) const

 

| Check if this service type has a tag.

 

QSet< QString > 

`tags </sdk/scopes/cpp/Accounts/ServiceType#a4bfac5a5814d94c97ae61695f09e95ee>`__
() const

 

| Return all tags of the service type as a set.

 

const QDomDocument 

`domDocument </sdk/scopes/cpp/Accounts/ServiceType#a305fe3a04c76c8069c3465621a7967cc>`__
() const

 

        Friends
---------------

        bool 

**operator==** (const
`Accounts::ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__ &s1,
const `Accounts::ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__
&s2)

 

Detailed Description
--------------------

Representation of an account service type.

The `ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__ object
represents an account service type. It can be used to retrieve some
basic properties of the service type (such as name and icon) and to get
access to the contents of the XML file which defines it.

Definition at line 49 of file service-type.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `ServiceType | (            | const        | *other*      | )            |              |
|  </sdk/scope |              | `ServiceType |              |              |              |
| s/cpp/Accoun |              |  </sdk/scope |              |              |              |
| ts/ServiceTy |              | s/cpp/Accoun |              |              |              |
| pe/>`__      |              | ts/ServiceTy |              |              |              |
|              |              | pe/>`__      |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying a `ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__ object
is very cheap, because the data is shared among copies.

Definition at line 69 of file service-type.cpp.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| displayName    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    The display name of the service type; this is a string that could be
    shown in the UI to describe the service type to the user.

The library attempts to translate this string by passing it to the
qtTrId() function; in order for this to work you must make sure that the
translation catalogue has been loaded before, if needed.

Definition at line 126 of file service-type.cpp.

+----------------+----------------+----------------+----------------+----------------+
| const          | (              |                | )              | const          |
| QDomDocument   |                |                |                |                |
| domDocument    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    The DOM of the whole XML service file

Definition at line 192 of file service-type.cpp.

+---------------+-----+--------------------+---------+-----+---------+
| bool hasTag   | (   | const QString &    | *tag*   | )   | const   |
+---------------+-----+--------------------+---------+-----+---------+

Check if this service type has a tag.

Parameters
    +-------+-------------------+
    | tag   | Tag to look for   |
    +-------+-------------------+

Returns
    `Service </sdk/scopes/cpp/Accounts/Service/>`__ type has the tag?

Definition at line 163 of file service-type.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| iconName       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    The icon name

Definition at line 151 of file service-type.cpp.

+----------------+----------------+----------------+----------------+----------------+
| bool isValid   | (              |                | )              | const          |
+----------------+----------------+----------------+----------------+----------------+

Check whether this object represents a
`ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__.

Returns
    true if the `ServiceType </sdk/scopes/cpp/Accounts/ServiceType/>`__
    is a valid one.

Definition at line 104 of file service-type.cpp.

Referenced by ServiceType::name().

+----------------+----------------+----------------+----------------+----------------+
| QSet< QString  | (              |                | )              | const          |
| > tags         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Return all tags of the service type as a set.

Returns
    Set of tags

Definition at line 173 of file service-type.cpp.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| trCatalog      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns
    The name of the translation catalog, which can be used to translate
    the
    `displayName() </sdk/scopes/cpp/Accounts/ServiceType#a9def71dea12661002bb3a63b3b91d08d>`__

Definition at line 143 of file service-type.cpp.

