.. _sdk_accounts_service:
Accounts Service
================

Representation of an account service.
:ref:`More... <sdk_accounts_service#details>`

``#include <Accounts/Service>``

        Public Member Functions
-------------------------------

         

:ref:`Service <sdk_accounts_service#a37865e4e61715c6d6f81181f7323ae62>` ()

 

| Construct an invalid service.

 

 

:ref:`Service <sdk_accounts_service#a491f7a1e2b9dfedb805d55c06ca006df>`
(const :ref:`Service <sdk_accounts_service>` &other)

 

| Copy constructor.

 

:ref:` <>` `Service <sdk_accounts_service>` & 

**operator=** (const :ref:`Service <sdk_accounts_service>` &other)

 

bool 

:ref:`isValid <sdk_accounts_service#aac1b70a2ed67ead038c4d3f5ac4d8a81>` ()
const

 

| Check whether this object represents a Service.

 

QString 

:ref:`name <sdk_accounts_service#a2b0a198f837184bf6fff555cee3ce770>` ()
const

 

| Get the name of the service.

 

QString 

:ref:`displayName <sdk_accounts_service#a9def71dea12661002bb3a63b3b91d08d>`
() const

 

| Get the display name of the service, untranslated.

 

QString 

:ref:`trCatalog <sdk_accounts_service#a6c73afd4753195ea4eee794c95a770dd>`
() const

 

QString 

:ref:`serviceType <sdk_accounts_service#aa090de65c448278a23851f45f38fa9ce>`
() const

 

| Get the service type ID of the service.

 

QString 

:ref:`provider <sdk_accounts_service#a4da62eb704e693e71b73d101f5304a7e>` ()
const

 

| Get the provider ID of the service.

 

QString 

:ref:`iconName <sdk_accounts_service#a038b22680aca535f9972908fe2f1f6a1>` ()
const

 

| Get the icon name for this service.

 

bool 

:ref:`hasTag <sdk_accounts_service#ab9544628f8c8af163b13eb6b47a3aead>`
(const QString &tag) const

 

| Check if this service has a tag.

 

QSet< QString > 

:ref:`tags <sdk_accounts_service#a4bfac5a5814d94c97ae61695f09e95ee>` ()
const

 

| Return all tags of the service as a set.

 

const QDomDocument 

:ref:`domDocument <sdk_accounts_service#a305fe3a04c76c8069c3465621a7967cc>`
() const

 

| Get the contents of the service XML file.

 

        Friends
---------------

        bool 

**operator==** (const :ref:`Accounts::Service <sdk_accounts_service>` &s1,
const :ref:`Accounts::Service <sdk_accounts_service>` &s2)

 

Detailed Description
--------------------

Representation of an account service.

The :ref:`Service <sdk_accounts_service>` object represents an account
service. It can be used to retrieve some basic properties of the service
(such as name, type and provider) and to get access to the contents of
the XML file which defines it.

Definition at line 48 of file service.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Service <sd | (            | const        | *other*      | )            |              |
| k_accounts_s |              | `Service <sd |              |              |              |
| ervice>`_    |              | k_accounts_s |              |              |              |
|              |              | ervice>`_    |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying a :ref:`Service <sdk_accounts_service>` object is very cheap,
because the data is shared among copies.

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
    :ref:`Service <sdk_accounts_service>` has the tag?

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
:ref:`Service <sdk_accounts_service>`.

Returns
    true if the :ref:`Service <sdk_accounts_service>` is a valid one.

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

