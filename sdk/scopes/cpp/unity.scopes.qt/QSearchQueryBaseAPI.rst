.. _sdk_unity_scopes_qt_qsearchquerybaseapi:
unity.scopes.qt QSearchQueryBaseAPI
===================================

Abstract base class to represent a particular query.
:ref:`More... <sdk_unity_scopes_qt_qsearchquerybaseapi#details>`

``#include <unity/scopes/qt/QSearchQueryBaseAPI.h>``

Inheritance diagram for unity::scopes::qt::QSearchQueryBaseAPI:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

:ref:`run <sdk_unity_scopes_qt_qsearchquerybaseapi#ade9ee7a415d8fcfc4f2391dae8bb37fb>`
(:ref:`SearchReplyProxy <sdk_unity_scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`
const &reply) final

 

| Called by scopes run time to start the query.

 

virtual void 

:ref:`cancelled <sdk_unity_scopes_qt_qsearchquerybaseapi#a81a9ed98e8b092e4cd48aed63bb49f1a>`
() final

 

| Called by the scopes run time when the query originator cancels a
  query.

 

|-| Public Member Functions inherited from
`unity::scopes::SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/>`_ 

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  

`query </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#a40d6b29a54d2fbd68870ffe38cab740f>`_ 
() const

 

| Get a canned query for this search request.

 

`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_  

`search\_metadata </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#a5ede5797f5ea09eaf1cf6a14d03bfe1f>`_ 
() const

 

| Get metadata for this search request.

 

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
`unity::scopes::QueryBase </sdk/scopes/cpp/unity.scopes.QueryBase/#a596b19dbfd6efe96b834be75a9b64c68>`_ .

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | finalvirtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | `Sea |                                      |
| rchReply | *reply*      | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | Prox |                                      |
| y <sdk_u |              |            |                                      |
|    |              |                  |                                      |
| | s::qt::QSear |              | nity |                                      |
| _scopes# |              |            |                                      |
|    |              |                  |                                      |
| | chQueryBaseA |              | a9cd |                                      |
| 604d9b84 |              |            |                                      |
|    |              |                  |                                      |
| | PI::run      |              | 2ac3 |                                      |
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
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybaseapi#ade9ee7a415d8fcfc4f2391dae8bb37fb>`
can use the reply proxy to push results for the query. You can push
results from within
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybaseapi#ade9ee7a415d8fcfc4f2391dae8bb37fb>`,
in which case the query implicitly completes when
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybaseapi#ade9ee7a415d8fcfc4f2391dae8bb37fb>`
returns. Alternatively,
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybaseapi#ade9ee7a415d8fcfc4f2391dae8bb37fb>`
can store the reply proxy and return immediately. In this case, you can
use the stored proxy to push results from another thread. It is safe to
call ``push()`` from multiple threads without synchronization.

The query completes either when
:ref:`run() <sdk_unity_scopes_qt_qsearchquerybaseapi#ade9ee7a415d8fcfc4f2391dae8bb37fb>`
returns, or when the last stored reply proxy goes out of scope
(whichever happens last).

Parameters
    +---------+-----------------------------------------------------+
    | reply   | The proxy on which to push results for the query.   |
    +---------+-----------------------------------------------------+

Implements
`unity::scopes::SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ .

.. |Inheritance graph| image:: /mediasdk_unity_scopes_qt_qsearchquerybaseapiclassunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png
.. |-| image:: /mediasdk_unity_scopes_qt_qsearchquerybaseapiclosed.png

