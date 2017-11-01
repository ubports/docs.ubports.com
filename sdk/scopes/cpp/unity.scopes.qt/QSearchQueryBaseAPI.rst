Abstract base class to represent a particular query.
`More... </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI#details>`__

``#include <unity/scopes/qt/QSearchQueryBaseAPI.h>``

Inheritance diagram for unity::scopes::qt::QSearchQueryBaseAPI:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`run </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI#ade9ee7a415d8fcfc4f2391dae8bb37fb>`__
(`SearchReplyProxy </sdk/scopes/cpp/unity.scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`__
const &reply) final

 

| Called by scopes run time to start the query.

 

virtual void 

`cancelled </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI#a81a9ed98e8b092e4cd48aed63bb49f1a>`__
() final

 

| Called by the scopes run time when the query originator cancels a
  query.

 

|-| Public Member Functions inherited from
`unity::scopes::SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/>`__

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__ 

`query </sdk/scopes/cpp/unity.scopes.SearchQueryBase#a40d6b29a54d2fbd68870ffe38cab740f>`__
() const

 

| Get a canned query for this search request.

 

`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ 

`search\_metadata </sdk/scopes/cpp/unity.scopes.SearchQueryBase#a5ede5797f5ea09eaf1cf6a14d03bfe1f>`__
() const

 

| Get metadata for this search request.

 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch**
(`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__
const &scope, std::string const &query\_string, SearchListenerBase::SPtr
const &reply)

 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch** (`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`__
const &scope, std::string const &query\_string, SearchListenerBase::SPtr
const &reply)

 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch**
(`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__
const &scope, std::string const &query\_string,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state, SearchListenerBase::SPtr const &reply)

 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch**
(`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state, SearchListenerBase::SPtr const &reply)

 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch** (`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`__
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state, SearchListenerBase::SPtr const &reply)

 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch**
(`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ const
&hints, SearchListenerBase::SPtr const &reply)

 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch** (`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`__
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ const
&hints, SearchListenerBase::SPtr const &reply)

 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch** (`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`__
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state, `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__
const &user\_data,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ const
&hints, SearchListenerBase::SPtr const &reply)

 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch**
(`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state, `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__
const &user\_data,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ const
&hints, SearchListenerBase::SPtr const &reply)

 

|-| Public Member Functions inherited from
`unity::scopes::QueryBase </sdk/scopes/cpp/unity.scopes.QueryBase/>`__

bool 

`valid </sdk/scopes/cpp/unity.scopes.QueryBase#a095e61eabe2042eeea5c4df1a444d7d4>`__
() const

 

| Check whether this query is still valid.

 

`unity::scopes::VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__ 

`settings </sdk/scopes/cpp/unity.scopes.QueryBase#ab6a25ba587387a7f490b8b5a081e9ed6>`__
() const

 

| Returns a dictionary with the scope's current settings.

 

Detailed Description
--------------------

Abstract base class to represent a particular query.

A scope must return an instance of this class from its implementation of
`ScopeBase::search() </sdk/scopes/cpp/unity.scopes.ScopeBase#a0e4969ff26dc1d396d74c56d896fd564>`__.

This is the class that links scope API calls with the main QThread. The
instance of this class is moved to the main QThread and pushes events to
the Qt event loop.

Note
    The constructor of the instance must complete in a timely manner. Do
    not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | finalvirtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual void   | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :qt::QSearchQu |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | eryBaseAPI::ca |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ncelled        |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Called by the scopes run time when the query originator cancels a query.

Your implementation of this method should ensure that the scope stops
processing the current query as soon as possible. Any calls to a
``push()`` method once a query is cancelled are ignored, so continuing
to push after cancellation only wastes CPU cycles. (``push()`` returns
``false`` once a query is cancelled or exceeds its cardinality limit.)

Implements
`unity::scopes::QueryBase </sdk/scopes/cpp/unity.scopes.QueryBase#a596b19dbfd6efe96b834be75a9b64c68>`__.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | finalvirtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | `Sea |                                      |
| rchReply | *reply*      | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | Prox |                                      |
| y </sdk/ |              |            |                                      |
|    |              |                  |                                      |
| | s::qt::QSear |              | scop |                                      |
| es/cpp/u |              |            |                                      |
|    |              |                  |                                      |
| | chQueryBaseA |              | nity |                                      |
| .scopes# |              |            |                                      |
|    |              |                  |                                      |
| | PI::run      |              | a9cd |                                      |
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

Called by scopes run time to start the query.

Your implementation of
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI#ade9ee7a415d8fcfc4f2391dae8bb37fb>`__
can use the reply proxy to push results for the query. You can push
results from within
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI#ade9ee7a415d8fcfc4f2391dae8bb37fb>`__,
in which case the query implicitly completes when
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI#ade9ee7a415d8fcfc4f2391dae8bb37fb>`__
returns. Alternatively,
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI#ade9ee7a415d8fcfc4f2391dae8bb37fb>`__
can store the reply proxy and return immediately. In this case, you can
use the stored proxy to push results from another thread. It is safe to
call ``push()`` from multiple threads without synchronization.

The query completes either when
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI#ade9ee7a415d8fcfc4f2391dae8bb37fb>`__
returns, or when the last stored reply proxy goes out of scope
(whichever happens last).

Parameters
    +---------+-----------------------------------------------------+
    | reply   | The proxy on which to push results for the query.   |
    +---------+-----------------------------------------------------+

Implements
`unity::scopes::SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase#afc4f15b2266838d7da75b05ea37d504b>`__.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBaseAPI/closed.png

