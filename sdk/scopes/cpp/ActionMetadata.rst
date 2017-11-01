Metadata passed to scopes for preview and activation.
`More... </sdk/scopes/cpp/unity.scopes.ActionMetadata#details>`__

``#include <unity/scopes/ActionMetadata.h>``

Inheritance diagram for unity::scopes::ActionMetadata:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata#a23b266a9ee4a78a26754a6affd6447d6>`__
(std::string const
&\ `locale </sdk/scopes/cpp/unity.scopes.QueryMetadata#a3ca25150669d96171aec6ab56ef6bb0e>`__,
std::string const
&\ `form\_factor </sdk/scopes/cpp/unity.scopes.QueryMetadata#a494f592f3055fba4da6554a6d8fb7c42>`__)

 

| Create ActionMetadata with the given locale and form factor.

 

void 

`set\_scope\_data </sdk/scopes/cpp/unity.scopes.ActionMetadata#a562159a400cba00176ecb0be479775b5>`__
(`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const &data)

 

| Attach arbitrary data to this ActionMetadata.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ 

`scope\_data </sdk/scopes/cpp/unity.scopes.ActionMetadata#a34777e687ce700a7b6313f3dad6d3340>`__
() const

 

| Get data attached to this ActionMetadata.

 

void 

`set\_hint </sdk/scopes/cpp/unity.scopes.ActionMetadata#a12b6cf0c4aa1fd80da3b75c23e5f12d5>`__
(std::string const &key,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const &value)

 

| Sets a hint.

 

`VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__ 

`hints </sdk/scopes/cpp/unity.scopes.ActionMetadata#a46d85a19a5eb20d4ee63e201e68cc6c4>`__
() const

 

| Get all hints.

 

bool 

`contains\_hint </sdk/scopes/cpp/unity.scopes.ActionMetadata#a845e60ef8aca1fd25c950edddb031f69>`__
(std::string const &key) const

 

| Check if this SearchMetadata has a hint.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ & 

`operator[] </sdk/scopes/cpp/unity.scopes.ActionMetadata#a41854841528dc1934ba73aec6e34b38e>`__
(std::string const &key)

 

| Returns a reference to a hint.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const & 

`operator[] </sdk/scopes/cpp/unity.scopes.ActionMetadata#a0662d6922a822b36b5eb20df3796a03e>`__
(std::string const &key) const

 

| Returns a const reference to a hint.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**ActionMetadata**
(`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ const
&other)

 

         

**ActionMetadata**
(`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ &&)

 

`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ & 

**operator=**
(`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ const
&other)

 

`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ & 

**operator=**
(`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ &&)

 

|-| Public Member Functions inherited from
`unity::scopes::QueryMetadata </sdk/scopes/cpp/unity.scopes.QueryMetadata/>`__

std::string 

`locale </sdk/scopes/cpp/unity.scopes.QueryMetadata#a3ca25150669d96171aec6ab56ef6bb0e>`__
() const

 

| Get the locale string.

 

std::string 

`form\_factor </sdk/scopes/cpp/unity.scopes.QueryMetadata#a494f592f3055fba4da6554a6d8fb7c42>`__
() const

 

| Get the form factor string.

 

void 

`set\_internet\_connectivity </sdk/scopes/cpp/unity.scopes.QueryMetadata#a5b2395aff97cbe1009759de03f270bf3>`__
(`ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata#a20eb916661728a7d9c00485e28f88701>`__
connectivity\_status)

 

| Set internet connectivity status.

 

`ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata#a20eb916661728a7d9c00485e28f88701>`__ 

`internet\_connectivity </sdk/scopes/cpp/unity.scopes.QueryMetadata#a3da06f370e53b5e381ec8cf33d8ee191>`__
() const

 

| Get internet connectivity status.

 

        Additional Inherited Members
------------------------------------

|-| Public Types inherited from
`unity::scopes::QueryMetadata </sdk/scopes/cpp/unity.scopes.QueryMetadata/>`__

enum  

`ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata#a20eb916661728a7d9c00485e28f88701>`__
{ **Unknown**, **Connected**, **Disconnected** }

 

| Indicates the internet connectivity status.
  `More... </sdk/scopes/cpp/unity.scopes.QueryMetadata#a20eb916661728a7d9c00485e28f88701>`__

 

Detailed Description
--------------------

Metadata passed to scopes for preview and activation.

See also
    `unity::scopes::ScopeBase::preview </sdk/scopes/cpp/unity.scopes.ScopeBase#a154b9b4cfc0f40572cfec60dd819396f>`__,
    `unity::scopes::ScopeBase::activate </sdk/scopes/cpp/unity.scopes.ScopeBase#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`__,
    `unity::scopes::ScopeBase::perform\_action </sdk/scopes/cpp/unity.scopes.ScopeBase#a2f4d476fa790349c9a7de52be3232d11>`__

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Act | (                  | std::string const  | *locale*,          |
| ionMetadata::Actio |                    | &                  |                    |
| nMetadata          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *form\_factor*     |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create `ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__
with the given locale and form factor.

Parameters
    +----------------+-------------------------------------------------------------+
    | locale         | locale string, eg. en\_EN                                   |
    +----------------+-------------------------------------------------------------+
    | form\_factor   | form factor name, e.g. phone, desktop, phone-version etc.   |
    +----------------+-------------------------------------------------------------+

Member Function Documentation
-----------------------------

+------------------------------------------------------+-----+------------------------+---------+-----+---------+
| bool unity::scopes::ActionMetadata::contains\_hint   | (   | std::string const &    | *key*   | )   | const   |
+------------------------------------------------------+-----+------------------------+---------+-----+---------+

Check if this
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ has a
hint.

Parameters
    +-------+------------------+
    | key   | The hint name.   |
    +-------+------------------+

Returns
    True if the hint is set.

+----------------+----------------+----------------+----------------+----------------+
| `VariantMap </ | (              |                | )              | const          |
| sdk/scopes/cpp |                |                |                |                |
| /unity.scopes# |                |                |                |                |
| ad5d8ccfa11a32 |                |                |                |                |
| 7fca6f3e4cee11 |                |                |                |                |
| f4c10>`__      |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ActionMetadat |                |                |                |                |
| a::hints       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get all hints.

Returns
    Hints dictionary.

Exceptions
    +----------------------------+------------------------------+
    | unity::NotFoundException   | if no hints are available.   |
    +----------------------------+------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Variant </s | (            | std::string  | *key*        | )            |              |
| dk/scopes/cp |              | const &      |              |              |              |
| p/unity.scop |              |              |              |              |              |
| es.Variant/> |              |              |              |              |              |
| `__          |              |              |              |              |              |
| &            |              |              |              |              |              |
| unity::scope |              |              |              |              |              |
| s::ActionMet |              |              |              |              |              |
| adata::opera |              |              |              |              |              |
| tor[]        |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an
existing hint overwrites its previous value. Referencing a non-existing
hint automatically creates it with a default value of
Variant::Type::Null.

Parameters
    +-------+-------------------------+
    | key   | The name of the hint.   |
    +-------+-------------------------+

Returns
    A reference to the hint.

+---------------------------------------------------------------------------------------------------------+-----+------------------------+---------+-----+---------+
| `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const & unity::scopes::ActionMetadata::operator[]   | (   | std::string const &    | *key*   | )   | const   |
+---------------------------------------------------------------------------------------------------------+-----+------------------------+---------+-----+---------+

Returns a const reference to a hint.

This method can be used for read-only access to hints. Referencing a
non-existing hint throws unity::InvalidArgumentException.

Parameters
    +-------+-------------------------+
    | key   | The name of the hint.   |
    +-------+-------------------------+

Returns
    A const reference to the hint.

Exceptions
    +----------------------------+------------------------------------------+
    | unity::NotFoundException   | if no hint with the given name exists.   |
    +----------------------------+------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `Variant </sdk | (              |                | )              | const          |
| /scopes/cpp/un |                |                |                |                |
| ity.scopes.Var |                |                |                |                |
| iant/>`__      |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ActionMetadat |                |                |                |                |
| a::scope\_data |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get data attached to this
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__.

Returns
    The attached data, or
    `Variant::null </sdk/scopes/cpp/unity.scopes.Variant#a2bd2d5425fdec9af9340c22e3b47ac1c>`__.

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | std::string const  | *key*,             |
| unity::scopes::Act |                    | &                  |                    |
| ionMetadata::set\_ |                    |                    |                    |
| hint               |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `Variant </sdk/sco | *value*            |
|                    |                    | pes/cpp/unity.scop |                    |
|                    |                    | es.Variant/>`__    |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Sets a hint.

Parameters
    +---------+-------------------------+
    | key     | The name of the hint.   |
    +---------+-------------------------+
    | value   | Hint value              |
    +---------+-------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | `Variant </s | *data*       | )            |              |
| unity::scope |              | dk/scopes/cp |              |              |              |
| s::ActionMet |              | p/unity.scop |              |              |              |
| adata::set\_ |              | es.Variant/> |              |              |              |
| scope\_data  |              | `__          |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Attach arbitrary data to this
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__.

Parameters
    +--------+-----------------------------+
    | data   | The data value to attach.   |
    +--------+-----------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.ActionMetadata/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.ActionMetadata/closed.png

