Abstract base class to represent a particular query.
`More... </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#details>`__

``#include <unity/scopes/qt/QSearchQueryBase.h>``

Inheritance diagram for unity::scopes::qt::QSearchQueryBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

`QCannedQuery </sdk/scopes/cpp/unity.scopes.qt/QCannedQuery/>`__ 

`query </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#a1ad69c195d42ecaea4a7851f1dfc6023>`__
() const

 

| Get a canned query for this search request.

 

`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ 

`search\_metadata </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#a222670a440c3712d1bf5cfe220d6f55a>`__
() const

 

| Get metadata for this search request.

 

        Subquery methods
------------------------

       \ The subsearch() methods are for use by aggregating scopes. When
an aggregator passes a query to its child scopes, it should use
subsearch() instead of the normal
`Scope::search() </sdk/scopes/cpp/unity.scopes.Scope#a09976690ca801ecada50687df6046a29>`__
that would be called by a client. subsearch() takes care of
automatically forwarding query cancellation to child scopes. This means
that there is no need for an aggregating scope to explicitly forward
cancellation to child scopes when its
`QueryBase::cancelled() </sdk/scopes/cpp/unity.scopes.QueryBase#a596b19dbfd6efe96b834be75a9b64c68>`__
method is called by the scopes run time.

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

**subsearch**
(`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__
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

**subsearch**
(`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ const
&hints, SearchListenerBase::SPtr const &reply)

 

virtual void 

`run </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#ae12e4040935c2240f2f02482acd49e89>`__
(QSearchReplyProxy const &reply)=0

 

| Called by scopes run time to start the query.

 

virtual void 

`cancelled </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#a811927afeb090c114fd8ad5b459ec4e7>`__
()=0

 

| Called by the scopes run time when the query originator cancels a
  query.

 

Detailed Description
--------------------

Abstract base class to represent a particular query.

A scope must return an instance of this class from its implementation of
`ScopeBase::search() </sdk/scopes/cpp/unity.scopes.ScopeBase#a0e4969ff26dc1d396d74c56d896fd564>`__.

Note
    The constructor of the instance must complete in a timely manner. Do
    not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | pure virtualslot                     |
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
| | eryBase::cance |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | lled           |                |  |                                      |
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

+----------------+----------------+----------------+----------------+----------------+
| `QCannedQuery  | (              |                | )              | const          |
| </sdk/scopes/c |                |                |                |                |
| pp/unity.scope |                |                |                |                |
| s.qt/QCannedQu |                |                |                |                |
| ery/>`__       |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QSearchQu |                |                |                |                |
| eryBase::query |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get a canned query for this search request.

Returns
    The canned query.

Exceptions
    +-------------------------+----------------------------------------------------------------------+
    | unity::LogicException   | if the canned query was not initialized (was default-constructed).   |
    +-------------------------+----------------------------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtualslot                     |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | QSea |                                      |
| rchReply | *reply*      | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | Prox |                                      |
| y        |              |            |                                      |
|    |              |                  |                                      |
| | s::qt::QSear |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | chQueryBase: |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | :run         |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called by scopes run time to start the query.

Your implementation of
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#ae12e4040935c2240f2f02482acd49e89>`__
can use the reply proxy to push results for the query. You can push
results from within
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#ae12e4040935c2240f2f02482acd49e89>`__,
in which case the query implicitly completes when
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#ae12e4040935c2240f2f02482acd49e89>`__
returns. Alternatively,
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#ae12e4040935c2240f2f02482acd49e89>`__
can store the reply proxy and return immediately. In this case, you can
use the stored proxy to push results from another thread. It is safe to
call ``push()`` from multiple threads without synchronization.

The query completes either when
`run() </sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase#ae12e4040935c2240f2f02482acd49e89>`__
returns, or when the last stored reply proxy goes out of scope
(whichever happens last).

Parameters
    +---------+-----------------------------------------------------+
    | reply   | The proxy on which to push results for the query.   |
    +---------+-----------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `unity::scopes | (              |                | )              | const          |
| ::SearchMetada |                |                |                |                |
| ta </sdk/scope |                |                |                |                |
| s/cpp/unity.sc |                |                |                |                |
| opes.SearchMet |                |                |                |                |
| adata/>`__     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QSearchQu |                |                |                |                |
| eryBase::searc |                |                |                |                |
| h\_metadata    |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get metadata for this search request.

Returns
    The search metadata.

Exceptions
    +-------------------------+---------------------------------------------------------------------+
    | unity::LogicException   | if search metadata was not initialized (was default-constructed).   |
    +-------------------------+---------------------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QSearchQueryBase/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png

