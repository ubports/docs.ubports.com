Abstract base class to represent a particular preview.
`More... </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#details>`__

``#include <unity/scopes/qt/QPreviewQueryBase.h>``

Inheritance diagram for unity::scopes::qt::QPreviewQueryBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`run </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#ad78a0506cb7e2522fc351bfb70ba45dc>`__
(unity::scopes::qt::QPreviewReplyProxy const &reply)=0

 

| Called by scopes run time to start the query.

 

virtual void 

`cancelled </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#a9940e957abbea418e3e5975da60afda7>`__
()=0

 

| Called by the scopes run time when the query originator cancels a
  query.

 

`QResult </sdk/scopes/cpp/unity.scopes.qt/QResult/>`__ 

`result </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#ac2085be111dbd8e624af95d0205efc75>`__
() const

 

| Get result for this preview request.

 

`QActionMetadata </sdk/scopes/cpp/unity.scopes.qt/QActionMetadata/>`__ 

`action\_metadata </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#a6fe3ece7ffc9258e9c9fc17ac3bb8f5e>`__
() const

 

| Get metadata for this preview request.

 

Detailed Description
--------------------

Abstract base class to represent a particular preview.

A scope must return an instance of this class from its implementation of
`ScopeBase::preview() </sdk/scopes/cpp/unity.scopes.ScopeBase#a154b9b4cfc0f40572cfec60dd819396f>`__.

Note
    The constructor of the instance must complete in a timely manner. Do
    not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| `QActionMetada | (              |                | )              | const          |
| ta </sdk/scope |                |                |                |                |
| s/cpp/unity.sc |                |                |                |                |
| opes.qt/QActio |                |                |                |                |
| nMetadata/>`__ |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QPreviewQ |                |                |                |                |
| ueryBase::acti |                |                |                |                |
| on\_metadata   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get metadata for this preview request.

Returns
    search metadata

Exceptions
    +-------------------------+------------------------------------------------------------------------+
    | unity::LogicException   | if preview metadata was not initialized (the default ctor was used).   |
    +-------------------------+------------------------------------------------------------------------+

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
| | :qt::QPreviewQ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ueryBase::canc |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | elled          |                |  |                                      |
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
| `QResult </sdk | (              |                | )              | const          |
| /scopes/cpp/un |                |                |                |                |
| ity.scopes.qt/ |                |                |                |                |
| QResult/>`__   |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QPreviewQ |                |                |                |                |
| ueryBase::resu |                |                |                |                |
| lt             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get result for this preview request.

Exceptions
    +-------------------------+--------------------------------------------------------------+
    | unity::LogicException   | if result was not initialized (the default ctor was used).   |
    +-------------------------+--------------------------------------------------------------+

Returns
    result

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | unit |                                      |
| y::scope | *reply*      | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | s::q |                                      |
| t::QPrev |              |            |                                      |
|    |              |                  |                                      |
| | s::qt::QPrev |              | iewR |                                      |
| eplyProx |              |            |                                      |
|    |              |                  |                                      |
| | iewQueryBase |              | y    |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ::run        |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called by scopes run time to start the query.

Your implementation of
`run() </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#ad78a0506cb7e2522fc351bfb70ba45dc>`__
can use the reply proxy to push results for the query. You can push
results from within
`run() </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#ad78a0506cb7e2522fc351bfb70ba45dc>`__,
in which case the query implicitly completes when
`run() </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#ad78a0506cb7e2522fc351bfb70ba45dc>`__
returns. Alternatively,
`run() </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#ad78a0506cb7e2522fc351bfb70ba45dc>`__
can store the reply proxy and return immediately. In this case, you can
use the stored proxy to push results from another thread. It is safe to
call ``push()`` from multiple threads without synchronization.

The query completes either when
`run() </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase#ad78a0506cb7e2522fc351bfb70ba45dc>`__
returns, or when the last stored reply proxy goes out of scope
(whichever happens last).

Parameters
    +---------+-----------------------------------------------------+
    | reply   | The proxy on which to push results for the query.   |
    +---------+-----------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBase/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png

