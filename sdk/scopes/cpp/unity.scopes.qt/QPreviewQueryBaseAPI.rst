.. _sdk_unity_scopes_qt_qpreviewquerybaseapi:
unity.scopes.qt QPreviewQueryBaseAPI
====================================

Abstract base class to represent a particular preview.
:ref:`More... <sdk_unity_scopes_qt_qpreviewquerybaseapi#details>`

``#include <unity/scopes/qt/QPreviewQueryBaseAPI.h>``

Inheritance diagram for unity::scopes::qt::QPreviewQueryBaseAPI:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

:ref:`run <sdk_unity_scopes_qt_qpreviewquerybaseapi#ab9aea9df41977a7d999967e525b3b3cf>`
(:ref:`unity::scopes::PreviewReplyProxy <sdk_unity_scopes#a7b46ef0e880da4c75314fe60bdd55754>`
const &reply) final

 

| Called by scopes run time to start the query.

 

virtual void 

:ref:`cancelled <sdk_unity_scopes_qt_qpreviewquerybaseapi#ac68c5e63e55f818a31a358c8f87ccdeb>`
() final

 

| Called by the scopes run time when the query originator cancels a
  query.

 

|-| Public Member Functions inherited from
`unity::scopes::PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`_ 

`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  

`result </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#af6887f9d12ffb69c94b2ddab8c1f99ba>`_ 
() const

 

| Get result for this preview request.

 

`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  

`action\_metadata </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#a40f82d521b7c31a3b29f4c1143242d62>`_ 
() const

 

| Get metadata for this preview request.

 

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

 

        Additional Inherited Members
------------------------------------

|-| Protected Member Functions inherited from
`unity::scopes::PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`_ 

 

`PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#acb87c2d6c81760696d75e9f0a378d6e7>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const
&\ `result </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#af6887f9d12ffb69c94b2ddab8c1f99ba>`_ ,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  const
&metadata)

 

| Instantiates a PreviewQueryBase.

 

Detailed Description
--------------------

Abstract base class to represent a particular preview.

A scope must return an instance of this class from its implementation of
`ScopeBase::preview() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a154b9b4cfc0f40572cfec60dd819396f>`_ .

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
| | :qt::QPreviewQ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ueryBaseAPI::c |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ancelled       |                |  |                                      |
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
| | virtual void | (            | `uni |                                      |
| ty::scop | *reply*      | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | es:: |                                      |
| PreviewR |              |            |                                      |
|    |              |                  |                                      |
| | s::qt::QPrev |              | eply |                                      |
| Proxy <s |              |            |                                      |
|    |              |                  |                                      |
| | iewQueryBase |              | dk_u |                                      |
| nity_sco |              |            |                                      |
|    |              |                  |                                      |
| | API::run     |              | pes# |                                      |
| a7b46ef0 |              |            |                                      |
|    |              |                  |                                      |
| |              |              | e880 |                                      |
| da4c7531 |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 4fe6 |                                      |
| 0bdd5575 |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 4>`_ |                                      |
| _        |              |            |                                      |
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
:ref:`run() <sdk_unity_scopes_qt_qpreviewquerybaseapi#ab9aea9df41977a7d999967e525b3b3cf>`
can use the reply proxy to push results for the query. You can push
results from within
:ref:`run() <sdk_unity_scopes_qt_qpreviewquerybaseapi#ab9aea9df41977a7d999967e525b3b3cf>`,
in which case the query implicitly completes when
:ref:`run() <sdk_unity_scopes_qt_qpreviewquerybaseapi#ab9aea9df41977a7d999967e525b3b3cf>`
returns. Alternatively,
:ref:`run() <sdk_unity_scopes_qt_qpreviewquerybaseapi#ab9aea9df41977a7d999967e525b3b3cf>`
can store the reply proxy and return immediately. In this case, you can
use the stored proxy to push results from another thread. It is safe to
call ``push()`` from multiple threads without synchronization.

The query completes either when
:ref:`run() <sdk_unity_scopes_qt_qpreviewquerybaseapi#ab9aea9df41977a7d999967e525b3b3cf>`
returns, or when the last stored reply proxy goes out of scope
(whichever happens last).

Parameters
    +---------+-----------------------------------------------------+
    | reply   | The proxy on which to push results for the query.   |
    +---------+-----------------------------------------------------+

Implements
`unity::scopes::PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#a81b89daf29cd1ada55286f2a3a871347>`_ .

.. |Inheritance graph| image:: /mediasdk_unity_scopes_qt_qpreviewquerybaseapiclassunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png
.. |-| image:: /mediasdk_unity_scopes_qt_qpreviewquerybaseapiclosed.png

