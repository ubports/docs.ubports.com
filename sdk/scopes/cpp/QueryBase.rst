.. _sdk_querybase:
QueryBase
=========

Abstract server-side base interface for a query that is executed inside
a scope. `More... </sdk/scopes/cpp/unity.scopes.QueryBase/#details>`_ 

``#include <unity/scopes/QueryBase.h>``

Inheritance diagram for unity::scopes::QueryBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

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

Abstract server-side base interface for a query that is executed inside
a scope.

See also
    `SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/>`_ ,
    `PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`_ ,
    `ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | pure virtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual void   | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :QueryBase::ca |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ncelled        |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Called by the scopes runtime when the query originator cancels a query.

Your implementation of this method should ensure that the scope stops
processing the current query as soon as possible. Any calls to a
``push()`` method once a query is cancelled are ignored, so continuing
to push after cancellation only wastes CPU cycles. (``push()`` returns
``false`` once a query is cancelled or exceeds its cardinality limit.)

Implemented in
:ref:`unity::scopes::qt::QPreviewQueryBaseAPI <sdk_unity_scopes_qt_qpreviewquerybaseapi#ac68c5e63e55f818a31a358c8f87ccdeb>`,
:ref:`unity::scopes::qt::QSearchQueryBaseAPI <sdk_unity_scopes_qt_qsearchquerybaseapi#a81a9ed98e8b092e4cd48aed63bb49f1a>`,
and
`unity::scopes::ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#af9b8e83ac6716db51aba942aca9cc6be>`_ .

+----------------+----------------+----------------+----------------+----------------+
| `VariantMap <s | (              |                | )              | const          |
| dk_unity_scope |                |                |                |                |
| s#ad5d8ccfa11a |                |                |                |                |
| 327fca6f3e4cee |                |                |                |                |
| 11f4c10>`_     |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :QueryBase::se |                |                |                |                |
| ttings         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns a dictionary with the scope's current settings.

Instead of storing the return value, it is preferable to call
`settings() </sdk/scopes/cpp/unity.scopes.QueryBase/#ab6a25ba587387a7f490b8b5a081e9ed6>`_ 
each time your implementation requires a settings value. This ensures
that, if a user changes settings while the scope is running, the new
settings take effect with the next query, preview, and so on.

Note
    The settings are available only after this
    `QueryBase </sdk/scopes/cpp/unity.scopes.QueryBase/>`_  is
    instantiated; do not call this method from the constructor!

Returns
    The scope's current settings.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :QueryBase::va |                |                |                |                |
| lid            |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check whether this query is still valid.

`valid() </sdk/scopes/cpp/unity.scopes.QueryBase/#a095e61eabe2042eeea5c4df1a444d7d4>`_ 
returns false if this query is finished or was cancelled earlier. Note
that it is possible that the runtime may call
`SearchQueryBase::run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ ,
`ActivationQueryBase::activate() </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a61ed49d8bc56e677ff2eb1f30e6a6b6b>`_ ,
or
`PreviewQueryBase::run() </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#a81b89daf29cd1ada55286f2a3a871347>`_ 
*after*
`cancelled() </sdk/scopes/cpp/unity.scopes.QueryBase/#a596b19dbfd6efe96b834be75a9b64c68>`_ 
was called. Your implementation of these methods should check whether
the query is still valid and, if not, do nothing.

This method is provided mainly for convenience: it can be used in your s
``run()`` or ``activate()`` implementation to avoid doing a lot of work
setting up a query that was cancelled earlier. Note that, because
cancellation can happen at any time during query execution, your
implementation should always test the return value of ``push()``. If
``push()`` returns ``false``, the query was either cancelled or exceeded
its cardinality limit. Either way, there is no point in continuing to
push more results because, once ``push()`` returns ``false``, the scopes
runtime discards all subsequent results for the query.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.QueryBase/classunity_1_1scopes_1_1_query_base__inherit__graph.png

