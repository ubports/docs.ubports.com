.. _sdk_cannedquery:
CannedQuery
===========

Parameters of a search query.
`More... </sdk/scopes/cpp/unity.scopes.CannedQuery/#details>`_ 

``#include <unity/scopes/CannedQuery.h>``

        Public Member Functions
-------------------------------

         

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/#a590181347391bcd1115579187fb70995>`_ 
(std::string const
&\ `scope\_id </sdk/scopes/cpp/unity.scopes.CannedQuery/#a406aa5a8fb73a602664e254d8efe25c9>`_ )

 

| Creates a query for given scope with empty query string.

 

         

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/#aeffdaa76040590f874c86d4bfd884afc>`_ 
(std::string const
&\ `scope\_id </sdk/scopes/cpp/unity.scopes.CannedQuery/#a406aa5a8fb73a602664e254d8efe25c9>`_ ,
std::string const &query\_str, std::string const
&\ `department\_id </sdk/scopes/cpp/unity.scopes.CannedQuery/#a61351960149bb4c0840f020c4e645f66>`_ )

 

| Creates a query for given scope with specific query string and in
  given department.

 

        void 

`set\_department\_id </sdk/scopes/cpp/unity.scopes.CannedQuery/#a41981f398edaa4d7dc7623b323c952c3>`_ 
(std::string const &dep\_id)

 

| Sets or updates the department.

 

        void 

`set\_query\_string </sdk/scopes/cpp/unity.scopes.CannedQuery/#acc65fc4671dae0bccaba0aa811d05bc2>`_ 
(std::string const &query\_str)

 

| Sets or updates the query string.

 

        void 

`set\_filter\_state </sdk/scopes/cpp/unity.scopes.CannedQuery/#aca9bbdc1ff14b20f3e7b04f2584b6a41>`_ 
(`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&\ `filter\_state </sdk/scopes/cpp/unity.scopes.CannedQuery/#a94eab58b1e02501f49fba55418b043bf>`_ )

 

| Sets filter state.

 

std::string 

`scope\_id </sdk/scopes/cpp/unity.scopes.CannedQuery/#a406aa5a8fb73a602664e254d8efe25c9>`_ 
() const

 

| Returns the scope identifier of this CannedQuery.

 

std::string 

`department\_id </sdk/scopes/cpp/unity.scopes.CannedQuery/#a61351960149bb4c0840f020c4e645f66>`_ 
() const

 

| Returns the department id of this CannedQuery.

 

std::string 

`query\_string </sdk/scopes/cpp/unity.scopes.CannedQuery/#a29d05795a3255655a5de3754e3dfa73f>`_ 
() const

 

| Returns the query string of this CannedQuery.

 

std::string 

`to\_uri </sdk/scopes/cpp/unity.scopes.CannedQuery/#a993c2d80b4d3c15b22f58fe6951e8c3d>`_ 
() const

 

| Returns a string representation of this CannedQuery object as a URI
  using scope:// schema.

 

`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  

`filter\_state </sdk/scopes/cpp/unity.scopes.CannedQuery/#a94eab58b1e02501f49fba55418b043bf>`_ 
() const

 

| Get state of the filters for this CannedQuery.

 

void 

`set\_user\_data </sdk/scopes/cpp/unity.scopes.CannedQuery/#a6799b92d42f8f19116604b0cdd81135f>`_ 
(`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const &value)

 

| Attach arbitrary data.

 

bool 

`has\_user\_data </sdk/scopes/cpp/unity.scopes.CannedQuery/#ac495aa13c8fa07b623baa7b7795fa214>`_ 
() const

 

| Checks if user data has been attached to this query.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  

`user\_data </sdk/scopes/cpp/unity.scopes.CannedQuery/#aec4f31c9decc1ef1cb58e3ca924fa2f1>`_ 
() const

 

| Get user data attached to this query.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**CannedQuery**
(`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  const
&other)

 

         

**CannedQuery**
(`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  &&)

 

        `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  & 

**operator=**
(`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  const
&other)

 

        `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  & 

**operator=**
(`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  &&)

 

        Static Public Member Functions
--------------------------------------

static `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  

`from\_uri </sdk/scopes/cpp/unity.scopes.CannedQuery/#a30fbeb531d683f6d6c032c703b15a634>`_ 
(std::string const &uri)

 

| Recreates a CannedQuery object from a scope:// URI.

 

Detailed Description
--------------------

Parameters of a search query.

Holds all parameters of a search query: the target scope id, query
string, department id, and state of the filters.
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  can also
carry arbitrary data (set by calling
`CannedQuery::set\_user\_data(Variant
const&) </sdk/scopes/cpp/unity.scopes.CannedQuery/#a6799b92d42f8f19116604b0cdd81135f>`_ )
which can then be retrieved back with
`CannedQuery::user\_data() </sdk/scopes/cpp/unity.scopes.CannedQuery/#aec4f31c9decc1ef1cb58e3ca924fa2f1>`_ 
when `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  object
is received in
`ScopeBase::search </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ .
This arbitrary data can be used to store any state-related information
that may be useful for the scope when new search request is performed.

Can be converted to/from scope:// uri schema string.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :CannedQuery:: |                |                |                |                |
| department\_id |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the department id of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ .

Returns
    The department id.

+----------------+----------------+----------------+----------------+----------------+
| `FilterState < | (              |                | )              | const          |
| /sdk/scopes/cp |                |                |                |                |
| p/unity.scopes |                |                |                |                |
| .FilterState/> |                |                |                |                |
| `_             |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :CannedQuery:: |                |                |                |                |
| filter\_state  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get state of the filters for this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ .

Pass this state to methods of specific filter instances (such as
`unity::scopes::OptionSelectorFilter::active\_options() </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#a3015abeb0439ccd29bd61afa9b7059df>`_ )to
examine filter state.

Returns
    The state of the filters.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | static                               |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | `CannedQuery | (            | std: |                                      |
| :string  | *uri*        | )          |                                      |
|    |              |                  |                                      |
| |  </sdk/scope |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | s/cpp/unity. |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | scopes.Canne |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | dQuery/>`_   |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | unity::scope |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | s::CannedQue |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ry::from\_ur |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | i            |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Recreates a `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 
object from a scope:// URI.

Returns
    a `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 
    instance

Exceptions
    +----------------------------+--------------------------------+
    | InvalidArgumentException   | if the URI cannot be parsed.   |
    +----------------------------+--------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :CannedQuery:: |                |                |                |                |
| has\_user\_dat |                |                |                |                |
| a              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Checks if user data has been attached to this query.

Returns
    true if data is available.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :CannedQuery:: |                |                |                |                |
| query\_string  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the query string of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ .

Returns
    The query string.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :CannedQuery:: |                |                |                |                |
| scope\_id      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the scope identifier of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ .

Returns
    The scope identifier.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | `Variant </s | *value*      | )            |              |
| unity::scope |              | dk/scopes/cp |              |              |              |
| s::CannedQue |              | p/unity.scop |              |              |              |
| ry::set\_use |              | es.Variant/> |              |              |              |
| r\_data      |              | `_           |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Attach arbitrary data.

Parameters
    +---------+---------------------------------------+
    | value   | Data to attach to this canned query   |
    +---------+---------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :CannedQuery:: |                |                |                |                |
| to\_uri        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns a string representation of this
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  object as a
URI using scope:// schema.

Returns
    The URI for the query.

+----------------+----------------+----------------+----------------+----------------+
| `Variant </sdk | (              |                | )              | const          |
| /scopes/cpp/un |                |                |                |                |
| ity.scopes.Var |                |                |                |                |
| iant/>`_       |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :CannedQuery:: |                |                |                |                |
| user\_data     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get user data attached to this query.

Returns
    Data variant

Exceptions
    +-------------------------+----------------------------------+
    | unity::LogicException   | if user data is not available.   |
    +-------------------------+----------------------------------+

