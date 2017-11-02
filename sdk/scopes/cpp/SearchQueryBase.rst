.. _sdk_searchquerybase:
SearchQueryBase
===============

Abstract base class to represent a particular query.
`More... </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#details>`_ 

``#include <unity/scopes/SearchQueryBase.h>``

Inheritance diagram for unity::scopes::SearchQueryBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`run </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ 
(:ref:`SearchReplyProxy <sdk_unity_scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`
const &reply)=0

 

| Called by scopes runtime to start the query.

 

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  

`query </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#a40d6b29a54d2fbd68870ffe38cab740f>`_ 
() const

 

| Get a canned query for this search request.

 

`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  

`search\_metadata </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#a5ede5797f5ea09eaf1cf6a14d03bfe1f>`_ 
() const

 

| Get metadata for this search request.

 

Subquery methods

The subsearch() methods are for use by aggregating scopes. When an
aggregator passes a query to its child scopes, it should use subsearch()
instead of the normal
`Scope::search() </sdk/scopes/cpp/unity.scopes.Scope/#a09976690ca801ecada50687df6046a29>`_ 
that would be called by a client. subsearch() takes care of
automatically forwarding query cancellation to child scopes. This means
that there is no need for an aggregating scope to explicitly forward
cancellation to child scopes when its
`QueryBase::cancelled() </sdk/scopes/cpp/unity.scopes.QueryBase/#a596b19dbfd6efe96b834be75a9b64c68>`_ 
method is called by the scopes runtime.

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch**
(:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>`
const &scope, std::string const &query\_string, SearchListenerBase::SPtr
const &reply)

 

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch** (`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`_ 
const &scope, std::string const &query\_string, SearchListenerBase::SPtr
const &reply)

 

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch**
(:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>`
const &scope, std::string const &query\_string,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state, SearchListenerBase::SPtr const &reply)

 

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch**
(:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>`
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state, SearchListenerBase::SPtr const &reply)

 

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch** (`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`_ 
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state, SearchListenerBase::SPtr const &reply)

 

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch**
(:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>`
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  const
&hints, SearchListenerBase::SPtr const &reply)

 

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch** (`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`_ 
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  const
&hints, SearchListenerBase::SPtr const &reply)

 

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch** (`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`_ 
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state, `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ 
const &user\_data,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  const
&hints, SearchListenerBase::SPtr const &reply)

 

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch**
(:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>`
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state, `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ 
const &user\_data,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  const
&hints, SearchListenerBase::SPtr const &reply)

 

|-| Public Member Functions inherited from
`unity::scopes::QueryBase </sdk/scopes/cpp/unity.scopes.QueryBase/>`_ 

virtual void 

`cancelled </sdk/scopes/cpp/unity.scopes.QueryBase/#a596b19dbfd6efe96b834be75a9b64c68>`_ 
()=0

 

| Called by the scopes runtime when the query originator cancels a
  query.

 

bool 

`valid </sdk/scopes/cpp/unity.scopes.QueryBase/#a095e61eabe2042eeea5c4df1a444d7d4>`_ 
() const

 

| Check whether this query is still valid.

 

:ref:`unity::scopes::VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>` 

`settings </sdk/scopes/cpp/unity.scopes.QueryBase/#ab6a25ba587387a7f490b8b5a081e9ed6>`_ 
() const

 

| Returns a dictionary with the scope's current settings.

 

Detailed Description
--------------------

Abstract base class to represent a particular query.

A scope must return an instance of this class from its implementation of
`ScopeBase::search() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ .

Note
    The constructor of the instance must complete in a timely manner. Do
    not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| `CannedQuery < | (              |                | )              | const          |
| /sdk/scopes/cp |                |                |                |                |
| p/unity.scopes |                |                |                |                |
| .CannedQuery/> |                |                |                |                |
| `_             |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :SearchQueryBa |                |                |                |                |
| se::query      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get a canned query for this search request.

Returns
    The canned query.

Exceptions
    +-------------------------+----------------------------------------------------------------------+
    | unity::LogicException   | if the canned query was not initialized (was default-constructed).   |
    +-------------------------+----------------------------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | `Sea |                                      |
| rchReply | *reply*      | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | Prox |                                      |
| y <sdk_u |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchQue |              | nity |                                      |
| _scopes# |              |            |                                      |
|    |              |                  |                                      |
| | ryBase::run  |              | a9cd |                                      |
| 604d9b84 |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 2ac3 |                                      |
| b2b8636c |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 2165 |                                      |
| dec1f>`_ |              |            |                                      |
|    |              |                  |                                      |
| |              |              | _    |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called by scopes runtime to start the query.

Your implementation of
`run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ 
can use the reply proxy to push results for the query. You can push
results from within
`run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ ,
in which case the query implicitly completes when
`run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ 
returns. Alternatively,
`run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ 
can store the reply proxy and return immediately. In this case, you can
use the stored proxy to push results from another thread. It is safe to
call ``push()`` from multiple threads without synchronization.

The query completes either when
`run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ 
returns, or when the last stored reply proxy goes out of scope
(whichever happens last).

Parameters
    +---------+-----------------------------------------------------+
    | reply   | The proxy on which to push results for the query.   |
    +---------+-----------------------------------------------------+

Implemented in
:ref:`unity::scopes::qt::QSearchQueryBaseAPI <sdk_unity_scopes_qt_qsearchquerybaseapi#ade9ee7a415d8fcfc4f2391dae8bb37fb>`.

+----------------+----------------+----------------+----------------+----------------+
| `SearchMetadat | (              |                | )              | const          |
| a </sdk/scopes |                |                |                |                |
| /cpp/unity.sco |                |                |                |                |
| pes.SearchMeta |                |                |                |                |
| data/>`_       |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :SearchQueryBa |                |                |                |                |
| se::search\_me |                |                |                |                |
| tadata         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get metadata for this search request.

Returns
    The search metadata.

Exceptions
    +-------------------------+---------------------------------------------------------------------+
    | unity::LogicException   | if search metadata was not initialized (was default-constructed).   |
    +-------------------------+---------------------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.SearchQueryBase/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.SearchQueryBase/closed.png

