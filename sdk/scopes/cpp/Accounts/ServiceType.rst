.. _sdk_accounts_servicetype:
Accounts ServiceType
====================

Representation of an account service type.
:ref:`More... <sdk_accounts_servicetype#details>`

``#include <Accounts/ServiceType>``

        Public Member Functions
-------------------------------

         

:ref:`ServiceType <sdk_accounts_servicetype#a27a10810bcc047da5031725f77b398eb>`
()

 

| Construct an invalid serviceType.

 

 

:ref:`ServiceType <sdk_accounts_servicetype#aae690d056ba06a78378f8adc8f95cddd>`
(const :ref:`ServiceType <sdk_accounts_servicetype>` &other)

 

| Copy constructor.

 

:ref:` <>` `ServiceType <sdk_accounts_servicetype>` & 

**operator=** (const :ref:`ServiceType <sdk_accounts_servicetype>` &other)

 

bool 

:ref:`isValid <sdk_accounts_servicetype#aac1b70a2ed67ead038c4d3f5ac4d8a81>`
() const

 

| Check whether this object represents a ServiceType.

 

        QString 

:ref:`name <sdk_accounts_servicetype#a2b0a198f837184bf6fff555cee3ce770>` ()
const

 

| Returns the name (ID) of the service type.

 

QString 

:ref:`displayName <sdk_accounts_servicetype#a9def71dea12661002bb3a63b3b91d08d>`
() const

 

QString 

:ref:`trCatalog <sdk_accounts_servicetype#a6c73afd4753195ea4eee794c95a770dd>`
() const

 

QString 

:ref:`iconName <sdk_accounts_servicetype#a038b22680aca535f9972908fe2f1f6a1>`
() const

 

bool 

:ref:`hasTag <sdk_accounts_servicetype#ab9544628f8c8af163b13eb6b47a3aead>`
(const QString &tag) const

 

| Check if this service type has a tag.

 

QSet< QString > 

:ref:`tags <sdk_accounts_servicetype#a4bfac5a5814d94c97ae61695f09e95ee>` ()
const

 

| Return all tags of the service type as a set.

 

const QDomDocument 

:ref:`domDocument <sdk_accounts_servicetype#a305fe3a04c76c8069c3465621a7967cc>`
() const

 

        Friends
---------------

        bool 

**operator==** (const
:ref:`Accounts::ServiceType <sdk_accounts_servicetype>` &s1, const
:ref:`Accounts::ServiceType <sdk_accounts_servicetype>` &s2)

 

Detailed Description
--------------------

Representation of an account service type.

The :ref:`ServiceType <sdk_accounts_servicetype>` object represents an
account service type. It can be used to retrieve some basic properties
of the service type (such as name and icon) and to get access to the
contents of the XML file which defines it.

Definition at line 49 of file service-type.h.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| `ServiceType | (            | const        | *other*      | )            |              |
|  <sdk_accoun |              | :ref:`ServiceType |              |              |              |
| ts_servicety |              |  <sdk_accoun |              |              |              |
| pe>`_        |              | ts_servicety |              |              |              |
|              |              | pe>`_        |              |              |              |
|              |              | &            |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Copy constructor.

Copying a :ref:`ServiceType <sdk_accounts_servicetype>` object is very
cheap, because the data is shared among copies.

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
    :ref:`Service <sdk_accounts_service>` type has the tag?

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
:ref:`ServiceType <sdk_accounts_servicetype>`.

Returns
    true if the :ref:`ServiceType <sdk_accounts_servicetype>` is a valid
    one.

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
    :ref:`displayName() <sdk_accounts_servicetype#a9def71dea12661002bb3a63b3b91d08d>`

Definition at line 143 of file service-type.cpp.

