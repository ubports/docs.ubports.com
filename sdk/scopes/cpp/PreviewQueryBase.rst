Abstract base class to represent a particular preview.
`More... </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#details>`__

``#include <unity/scopes/PreviewQueryBase.h>``

Inheritance diagram for unity::scopes::PreviewQueryBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`run </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#a81b89daf29cd1ada55286f2a3a871347>`__
(`PreviewReplyProxy </sdk/scopes/cpp/unity.scopes#a7b46ef0e880da4c75314fe60bdd55754>`__
const &reply)=0

 

| Called by scopes runtime to start the preview.

 

`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ 

`result </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#af6887f9d12ffb69c94b2ddab8c1f99ba>`__
() const

 

| Get result for this preview request.

 

`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ 

`action\_metadata </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#a40f82d521b7c31a3b29f4c1143242d62>`__
() const

 

| Get metadata for this preview request.

 

|-| Public Member Functions inherited from
`unity::scopes::QueryBase </sdk/scopes/cpp/unity.scopes.QueryBase/>`__

virtual void 

`cancelled </sdk/scopes/cpp/unity.scopes.QueryBase#a596b19dbfd6efe96b834be75a9b64c68>`__
()=0

 

| Called by the scopes runtime when the query originator cancels a
  query.

 

bool 

`valid </sdk/scopes/cpp/unity.scopes.QueryBase#a095e61eabe2042eeea5c4df1a444d7d4>`__
() const

 

| Check whether this query is still valid.

 

`unity::scopes::VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__ 

`settings </sdk/scopes/cpp/unity.scopes.QueryBase#ab6a25ba587387a7f490b8b5a081e9ed6>`__
() const

 

| Returns a dictionary with the scope's current settings.

 

        Protected Member Functions
----------------------------------

 

`PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#acb87c2d6c81760696d75e9f0a378d6e7>`__
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ const
&\ `result </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#af6887f9d12ffb69c94b2ddab8c1f99ba>`__,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ const
&metadata)

 

| Instantiates a PreviewQueryBase.

 

Detailed Description
--------------------

Abstract base class to represent a particular preview.

A scope must return an instance of this class from its implementation of
`ScopeBase::preview() </sdk/scopes/cpp/unity.scopes.ScopeBase#a154b9b4cfc0f40572cfec60dd819396f>`__.

Note
    The constructor of the instance must complete in a timely manner. Do
    not perform anything in the constructor that might block.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | protected                            |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | unity::scopes::Pre | (             |                                      |
|       | `Result </sdk/scop | *result |                                      |
| *,          |                        |                                      |
| | viewQueryBase::Pre |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | viewQueryBase      |               |                                      |
|       | s.Result/>`__      |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionMetadata </ | *metada |                                      |
| ta*         |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.ActionMe |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | tadata/>`__        |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Instantiates a
`PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`__.

Parameters
    +------------+------------------------------------+
    | result     | The result to be previewed.        |
    +------------+------------------------------------+
    | metadata   | Additional data for the preview.   |
    +------------+------------------------------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| `ActionMetadat | (              |                | )              | const          |
| a </sdk/scopes |                |                |                |                |
| /cpp/unity.sco |                |                |                |                |
| pes.ActionMeta |                |                |                |                |
| data/>`__      |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :PreviewQueryB |                |                |                |                |
| ase::action\_m |                |                |                |                |
| etadata        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get metadata for this preview request.

Returns
    search metadata

Exceptions
    +-------------------------+------------------------------------------------------------------------+
    | unity::LogicException   | if preview metadata was not initialized (the default ctor was used).   |
    +-------------------------+------------------------------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `Result </sdk/ | (              |                | )              | const          |
| scopes/cpp/uni |                |                |                |                |
| ty.scopes.Resu |                |                |                |                |
| lt/>`__        |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :PreviewQueryB |                |                |                |                |
| ase::result    |                |                |                |                |
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
| | virtual void | (            | `Pre |                                      |
| viewRepl | *reply*      | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | yPro |                                      |
| xy </sdk |              |            |                                      |
|    |              |                  |                                      |
| | s::PreviewQu |              | /sco |                                      |
| pes/cpp/ |              |            |                                      |
|    |              |                  |                                      |
| | eryBase::run |              | unit |                                      |
| y.scopes |              |            |                                      |
|    |              |                  |                                      |
| |              |              | #a7b |                                      |
| 46ef0e88 |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 0da4 |                                      |
| c75314fe |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 60bd |                                      |
| d55754>` |              |            |                                      |
|    |              |                  |                                      |
| |              |              | __   |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called by scopes runtime to start the preview.

Your implementation of
`run() </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#a81b89daf29cd1ada55286f2a3a871347>`__
can use the reply proxy to push results for the preview. You can push
results from within
`run() </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#a81b89daf29cd1ada55286f2a3a871347>`__,
in which case the preview implicitly completes when
`run() </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#a81b89daf29cd1ada55286f2a3a871347>`__
returns. Alternatively,
`run() </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#a81b89daf29cd1ada55286f2a3a871347>`__
can store the reply proxy and return immediately. In this case, you can
use the stored proxy to push results from another thread. It is safe to
call ``push()`` from multiple threads without synchronization.

The preview completes either when
`run() </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#a81b89daf29cd1ada55286f2a3a871347>`__
returns, or when the last stored reply proxy goes out of scope
(whichever happens last).

Parameters
    +---------+-------------------------------------------------------+
    | reply   | The proxy on which to push results for the preview.   |
    +---------+-------------------------------------------------------+

Implemented in
`unity::scopes::qt::QPreviewQueryBaseAPI </sdk/scopes/cpp/unity.scopes.qt/QPreviewQueryBaseAPI#ab9aea9df41977a7d999967e525b3b3cf>`__.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.PreviewQueryBase/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.PreviewQueryBase/closed.png

