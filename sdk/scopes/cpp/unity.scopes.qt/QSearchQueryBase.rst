.. _sdk_unity_scopes_qt_qsearchquerybase:
unity.scopes.qt QSearchQueryBase
================================

Abstract base class to represent a particular query.
:ref:`More... <sdk_unity_scopes_qt_qsearchquerybase#details>`

``#include <unity/scopes/qt/QSearchQueryBase.h>``

Inheritance diagram for unity::scopes::qt::QSearchQueryBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

:ref:`QCannedQuery <sdk_unity_scopes_qt_qcannedquery>` 

:ref:`query <sdk_unity_scopes_qt_qsearchquerybase#a1ad69c195d42ecaea4a7851f1dfc6023>`
() const

 

| Get a canned query for this search request.

 

`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  

:ref:`search\_metadata <sdk_unity_scopes_qt_qsearchquerybase#a222670a440c3712d1bf5cfe220d6f55a>`
() const

 

| Get metadata for this search request.

 

        Subquery methods
------------------------

       \ The subsearch() methods are for use by aggregating scopes. When
an aggregator passes a query to its child scopes, it should use
subsearch() instead of the normal
`Scope::search() </sdk/scopes/cpp/unity.scopes.Scope/#a09976690ca801ecada50687df6046a29>`_ 
that would be called by a client. subsearch() takes care of
automatically forwarding query cancellation to child scopes. This means
that there is no need for an aggregating scope to explicitly forward
cancellation to child scopes when its
`QueryBase::cancelled() </sdk/scopes/cpp/unity.scopes.QueryBase/#a596b19dbfd6efe96b834be75a9b64c68>`_ 
method is called by the scopes run time.

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>` 

**subsearch**
(:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>`
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

**subsearch**
(:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>`
const &scope, std::string const &query\_string, std::string const
&department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_  const
&filter\_state,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  const
&hints, SearchListenerBase::SPtr const &reply)

 

virtual void 

:ref:`run <sdk_unity_scopes_qt_qsearchquerybase#ae12e4040935c2240f2f02482acd49e89>`
(QSearchReplyProxy const &reply)=0

 

| Called by scopes run time to start the query.

 

virtual void 

:ref:`cancelled <sdk_unity_scopes_qt_qsearchquerybase#a811927afeb090c114fd8ad5b459ec4e7>`
()=0

 

| Called by the scopes run time when the query originator cancels a
  query.

 

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
| <sdk_unity_sco |                |                |                |                |
| pes_qt_qcanned |                |                |                |                |
| query>`_       |                |                |                |                |
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
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybase#ae12e4040935c2240f2f02482acd49e89>`
can use the reply proxy to push results for the query. You can push
results from within
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybase#ae12e4040935c2240f2f02482acd49e89>`,
in which case the query implicitly completes when
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybase#ae12e4040935c2240f2f02482acd49e89>`
returns. Alternatively,
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybase#ae12e4040935c2240f2f02482acd49e89>`
can store the reply proxy and return immediately. In this case, you can
use the stored proxy to push results from another thread. It is safe to
call ``push()`` from multiple threads without synchronization.

The query completes either when
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybase#ae12e4040935c2240f2f02482acd49e89>`
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
| adata/>`_      |                |                |                |                |
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

.. |Inheritance graph| image:: /mediasdk_unity_scopes_qt_qsearchquerybaseclassunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png

