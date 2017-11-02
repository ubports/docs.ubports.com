.. _sdk_searchmetadata:
SearchMetadata
==============

Metadata passed with search requests.
`More... </sdk/scopes/cpp/unity.scopes.SearchMetadata/#details>`_ 

``#include <unity/scopes/SearchMetadata.h>``

Inheritance diagram for unity::scopes::SearchMetadata:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/#afbef43ec4b8977f3a4bd334795ba53db>`_ 
(std::string const
&\ `locale </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a3ca25150669d96171aec6ab56ef6bb0e>`_ ,
std::string const
&\ `form\_factor </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a494f592f3055fba4da6554a6d8fb7c42>`_ )

 

| Create SearchMetadata with the given locale and form factor.

 

 

`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/#aed4a61dc45656bc36f07ca2802a8c6e0>`_ 
(int
`cardinality </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a439fca5f1acb2476784e43ca4d01cd3f>`_ ,
std::string const
&\ `locale </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a3ca25150669d96171aec6ab56ef6bb0e>`_ ,
std::string const
&\ `form\_factor </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a494f592f3055fba4da6554a6d8fb7c42>`_ )

 

| Create SearchMetadata with the given cardinality, locale, and form
  factor.

 

void 

`set\_cardinality </sdk/scopes/cpp/unity.scopes.SearchMetadata/#af6ee25cabcefae0204753bd78d5c67f2>`_ 
(int
`cardinality </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a439fca5f1acb2476784e43ca4d01cd3f>`_ )

 

| Set cardinality.

 

int 

`cardinality </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a439fca5f1acb2476784e43ca4d01cd3f>`_ 
() const

 

| Get cardinality.

 

void 

`set\_location </sdk/scopes/cpp/unity.scopes.SearchMetadata/#aa7f858cb1d9716381836b0e8e9a01d06>`_ 
(`Location </sdk/scopes/cpp/unity.scopes.Location/>`_  const
&\ `location </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a150922b97294bcda195030648a1f6f1b>`_ )

 

| Set location.

 

`Location </sdk/scopes/cpp/unity.scopes.Location/>`_  

`location </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a150922b97294bcda195030648a1f6f1b>`_ 
() const

 

| Get location.

 

bool 

`has\_location </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a3d71111819dbfc9e409ab2ae1d9dce7f>`_ 
() const

 

| Does the SearchMetadata have a location.

 

void 

`remove\_location </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a06b9b4acc427e5124f400763bb4f14d0>`_ 
()

 

| Remove location data entirely.

 

void 

`set\_aggregated\_keywords </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a20dd440f94658a78eff73a8d66ea98c0>`_ 
(std::set< std::string > const
&\ `aggregated\_keywords </sdk/scopes/cpp/unity.scopes.SearchMetadata/#ab00673c4b1264388e0673d525e6d883e>`_ )

 

| Set the list of scope keywords used to initiate this search request.

 

std::set< std::string > 

`aggregated\_keywords </sdk/scopes/cpp/unity.scopes.SearchMetadata/#ab00673c4b1264388e0673d525e6d883e>`_ 
() const

 

| Get the list of scope keywords used to initiate this search request.

 

bool 

`is\_aggregated </sdk/scopes/cpp/unity.scopes.SearchMetadata/#ab999e0fd62e31b4c5e3095264ed81672>`_ 
() const

 

| Check if this search request originated from an aggregator scope.

 

void 

`set\_hint </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a7b8bf8376371fd3e90b4b84484822ba2>`_ 
(std::string const &key,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const &value)

 

| Sets a hint.

 

:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>` 

`hints </sdk/scopes/cpp/unity.scopes.SearchMetadata/#ab112cd1adfb1fdd24a1960c7db444531>`_ 
() const

 

| Get all hints.

 

bool 

`contains\_hint </sdk/scopes/cpp/unity.scopes.SearchMetadata/#ac2815cd1941d463eeffd82fde76c79c7>`_ 
(std::string const &key) const

 

| Check if this SearchMetadata has a hint.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  & 

`operator[] </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a0f8ec6f0f54b6ecc0fee1cfcf6d630a3>`_ 
(std::string const &key)

 

| Returns a reference to a hint.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const & 

`operator[] </sdk/scopes/cpp/unity.scopes.SearchMetadata/#a811a5da751cfe716e04a30bb8273ad8c>`_ 
(std::string const &key) const

 

| Returns a const reference to a hint.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**SearchMetadata**
(`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  const
&other)

 

         

**SearchMetadata**
(`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  &&)

 

`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  & 

**operator=**
(`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  const
&other)

 

`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  & 

**operator=**
(`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  &&)

 

|-| Public Member Functions inherited from
`unity::scopes::QueryMetadata </sdk/scopes/cpp/unity.scopes.QueryMetadata/>`_ 

std::string 

`locale </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a3ca25150669d96171aec6ab56ef6bb0e>`_ 
() const

 

| Get the locale string.

 

std::string 

`form\_factor </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a494f592f3055fba4da6554a6d8fb7c42>`_ 
() const

 

| Get the form factor string.

 

void 

`set\_internet\_connectivity </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a5b2395aff97cbe1009759de03f270bf3>`_ 
(`ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a20eb916661728a7d9c00485e28f88701>`_ 
connectivity\_status)

 

| Set internet connectivity status.

 

`ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a20eb916661728a7d9c00485e28f88701>`_  

`internet\_connectivity </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a3da06f370e53b5e381ec8cf33d8ee191>`_ 
() const

 

| Get internet connectivity status.

 

        Additional Inherited Members
------------------------------------

|-| Public Types inherited from
`unity::scopes::QueryMetadata </sdk/scopes/cpp/unity.scopes.QueryMetadata/>`_ 

enum  

`ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a20eb916661728a7d9c00485e28f88701>`_ 
{ **Unknown**, **Connected**, **Disconnected** }

 

| Indicates the internet connectivity status.
  `More... </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a20eb916661728a7d9c00485e28f88701>`_ 

 

Detailed Description
--------------------

Metadata passed with search requests.

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Sea | (                  | std::string const  | *locale*,          |
| rchMetadata::Searc |                    | &                  |                    |
| hMetadata          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *form\_factor*     |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create `SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 
with the given locale and form factor.

Parameters
    +----------------+-------------------------------------------------------------+
    | locale         | locale string, eg. en\_EN                                   |
    +----------------+-------------------------------------------------------------+
    | form\_factor   | form factor name, e.g. phone, desktop, phone-version etc.   |
    +----------------+-------------------------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Sea | (                  | int                | *cardinality*,     |
| rchMetadata::Searc |                    |                    |                    |
| hMetadata          |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *locale*,          |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *form\_factor*     |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create `SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 
with the given cardinality, locale, and form factor.

Parameters
    +----------------+-------------------------------------------------------------+
    | cardinality    | maximum number of search results                            |
    +----------------+-------------------------------------------------------------+
    | locale         | locale string, eg. en\_EN                                   |
    +----------------+-------------------------------------------------------------+
    | form\_factor   | form factor name, e.g. phone, desktop, phone-version etc.   |
    +----------------+-------------------------------------------------------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::set<      | (              |                | )              | const          |
| std::string >  |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :SearchMetadat |                |                |                |                |
| a::aggregated\ |                |                |                |                |
| _keywords      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the list of scope keywords used to initiate this search request.

Returns
    The list of scope keywords used to initiate this search request.

+----------------+----------------+----------------+----------------+----------------+
| int            | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :SearchMetadat |                |                |                |                |
| a::cardinality |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get cardinality.

Returns
    The maxmium number of search results, or 0 for no limit.

+------------------------------------------------------+-----+------------------------+---------+-----+---------+
| bool unity::scopes::SearchMetadata::contains\_hint   | (   | std::string const &    | *key*   | )   | const   |
+------------------------------------------------------+-----+------------------------+---------+-----+---------+

Check if this
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  has a
hint.

Parameters
    +-------+------------------+
    | key   | The hint name.   |
    +-------+------------------+

Returns
    True if the hint is set.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :SearchMetadat |                |                |                |                |
| a::has\_locati |                |                |                |                |
| on             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Does the
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  have a
location.

Returns
    True if there is a location property.

+----------------+----------------+----------------+----------------+----------------+
| `VariantMap <s | (              |                | )              | const          |
| dk_unity_scope |                |                |                |                |
| s#ad5d8ccfa11a |                |                |                |                |
| 327fca6f3e4cee |                |                |                |                |
| 11f4c10>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :SearchMetadat |                |                |                |                |
| a::hints       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get all hints.

Returns
    Hints dictionary.

Exceptions
    +----------------------------+------------------------------+
    | unity::NotFoundException   | if no hints are available.   |
    +----------------------------+------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :SearchMetadat |                |                |                |                |
| a::is\_aggrega |                |                |                |                |
| ted            |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this search request originated from an aggregator scope.

Returns
    True if this search request originated from an aggregator scope.

+----------------+----------------+----------------+----------------+----------------+
| `Location </sd | (              |                | )              | const          |
| k/scopes/cpp/u |                |                |                |                |
| nity.scopes.Lo |                |                |                |                |
| cation/>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :SearchMetadat |                |                |                |                |
| a::location    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get location.

Returns
    `Location </sdk/scopes/cpp/unity.scopes.Location/>`_  data
    representing the current location, including attributes such as city
    and country.

Exceptions
    +----------------------------+-------------------------------------+
    | unity::NotFoundException   | if no location data is available.   |
    +----------------------------+-------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| `Variant </s | (            | std::string  | *key*        | )            |              |
| dk/scopes/cp |              | const &      |              |              |              |
| p/unity.scop |              |              |              |              |              |
| es.Variant/> |              |              |              |              |              |
| `_           |              |              |              |              |              |
| &            |              |              |              |              |              |
| unity::scope |              |              |              |              |              |
| s::SearchMet |              |              |              |              |              |
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
| `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const & unity::scopes::SearchMetadata::operator[]   | (   | std::string const &    | *key*   | )   | const   |
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
| void           | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :SearchMetadat |                |                |                |                |
| a::remove\_loc |                |                |                |                |
| ation          |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Remove location data entirely.

This method does nothing if no location data is present.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | std::set<    | *aggregated\ | )            |              |
| unity::scope |              | std::string  | _keywords*   |              |              |
| s::SearchMet |              | > const &    |              |              |              |
| adata::set\_ |              |              |              |              |              |
| aggregated\_ |              |              |              |              |              |
| keywords     |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the list of scope keywords used to initiate this search request.

Parameters
    +------------------------+--------------------------------------------------------------------+
    | aggregated\_keywords   | The list of scope keywords used to initiate this search request.   |
    +------------------------+--------------------------------------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | int          | *cardinality | )            |              |
| unity::scope |              |              | *            |              |              |
| s::SearchMet |              |              |              |              |              |
| adata::set\_ |              |              |              |              |              |
| cardinality  |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set cardinality.

Parameters
    +---------------+-----------------------------------------+
    | cardinality   | The maximum number of search results.   |
    +---------------+-----------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | std::string const  | *key*,             |
| unity::scopes::Sea |                    | &                  |                    |
| rchMetadata::set\_ |                    |                    |                    |
| hint               |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `Variant </sdk/sco | *value*            |
|                    |                    | pes/cpp/unity.scop |                    |
|                    |                    | es.Variant/>`_     |                    |
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
| void         | (            | `Location </ | *location*   | )            |              |
| unity::scope |              | sdk/scopes/c |              |              |              |
| s::SearchMet |              | pp/unity.sco |              |              |              |
| adata::set\_ |              | pes.Location |              |              |              |
| location     |              | />`_         |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set location.

Parameters
    +------------+---------------------------------------------------------------+
    | location   | `Location </sdk/scopes/cpp/unity.scopes.Location/>`_  data.   |
    +------------+---------------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.SearchMetadata/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.SearchMetadata/closed.png

