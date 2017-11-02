.. _sdk_reply:
Reply
=====

Allows query termination to be sent to the source of a query.
`More... </sdk/scopes/cpp/unity.scopes.Reply/#details>`_ 

``#include <unity/scopes/Reply.h>``

Inheritance diagram for unity::scopes::Reply:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`finished </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
()=0

 

| Informs the source of a query that the query results are complete.

 

virtual void 

`error </sdk/scopes/cpp/unity.scopes.Reply/#a526c9cbb11f896210835fb3420324ba8>`_ 
(std::exception\_ptr ex)=0

 

| Informs the source of a query that the query was terminated due to an
  error.

 

virtual void 

`info </sdk/scopes/cpp/unity.scopes.Reply/#af35cbaba152e4919306f32b06bd81029>`_ 
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`_  const
&op\_info)=0

 

| Informs the source of a query that additional information regarding
  the reply is available.

 

virtual 

`~Reply </sdk/scopes/cpp/unity.scopes.Reply/#a9f0cfeeee75a27e111ebd955523e1bb0>`_ 
()

 

| Destroys a Reply.

 

|-| Public Member Functions inherited from
`unity::scopes::Object </sdk/scopes/cpp/unity.scopes.Object/>`_ 

virtual std::string 

`endpoint </sdk/scopes/cpp/unity.scopes.Object/#ad7618cc9d878c40b389361d4acd473ae>`_ 
()=0

 

| Returns the endpoint this proxy connects to.

 

virtual std::string 

`identity </sdk/scopes/cpp/unity.scopes.Object/#a1b55aea886f0a68cb8a578f7ee0b1cfd>`_ 
()=0

 

| Returns the identity of the target object of this proxy.

 

virtual std::string 

`target\_category </sdk/scopes/cpp/unity.scopes.Object/#a40a997516629df3dacca9742dbddd6cb>`_ 
()=0

 

| Returns the category of the target object of this proxy.

 

virtual int64\_t 

`timeout </sdk/scopes/cpp/unity.scopes.Object/#a41d9839f1e3cbcd6d8baee0736feccab>`_ 
()=0

 

| Returns the timeout in milliseconds if this proxy is a twoway proxy.

 

virtual std::string 

`to\_string </sdk/scopes/cpp/unity.scopes.Object/#a9ae27e1f30dc755abcd796a1e8a25150>`_ 
()=0

 

| Converts a proxy into its string representation.

 

Detailed Description
--------------------

Allows query termination to be sent to the source of a query.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | virtual                              |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual        | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :Reply::~Reply |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Destroys a `Reply </sdk/scopes/cpp/unity.scopes.Reply/>`_ .

If a `Reply </sdk/scopes/cpp/unity.scopes.Reply/>`_  goes out of scope
without a prior call to
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ ,
the destructor implicitly calls
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ ,
provided QueryBase::run() has returned.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | std: |                                      |
| :excepti | *ex*         | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | on\_ |                                      |
| ptr      |              |            |                                      |
|    |              |                  |                                      |
| | s::Reply::er |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ror          |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Informs the source of a query that the query was terminated due to an
error.

Multiple calls to
`error() </sdk/scopes/cpp/unity.scopes.Reply/#a526c9cbb11f896210835fb3420324ba8>`_ 
and calls to
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
after
`error() </sdk/scopes/cpp/unity.scopes.Reply/#a526c9cbb11f896210835fb3420324ba8>`_ 
was called are ignored.

Parameters
    +------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | ex   | An exception\_ptr indicating the cause of the error. If ex is a ``std::exception``, the return value of ``what()`` is made available to the query source. Otherwise, the query source receives ``"unknown exception"``.   |
    +------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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
| | :Reply::finish |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ed             |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Informs the source of a query that the query results are complete.

Calling
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
informs the source of a query that the final result for the query was
sent, that is, that the query is complete. Multiple calls to
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
and calls to
`error() </sdk/scopes/cpp/unity.scopes.Reply/#a526c9cbb11f896210835fb3420324ba8>`_ 
after
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
was called are ignored. The destructor implicitly calls
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
if a `Reply </sdk/scopes/cpp/unity.scopes.Reply/>`_  goes out of scope
without a prior call to
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ .
Similarly, QueryBase::run() implicitly calls
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
when it returns, provided there are no more reply proxies in scope. In
other words, calling
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
is optional. The scopes runtime ensures that the call happens
automatically, either when the last reply proxy goes out of scope, or
when QueryBase::run() returns (whichever happens last).

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | `Ope |                                      |
| rationIn | *op\_info*   | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | fo < |                                      |
| /sdk/sco |              |            |                                      |
|    |              |                  |                                      |
| | s::Reply::in |              | pes/ |                                      |
| cpp/unit |              |            |                                      |
|    |              |                  |                                      |
| | fo           |              | y.sc |                                      |
| opes.Ope |              |            |                                      |
|    |              |                  |                                      |
| |              |              | rati |                                      |
| onInfo/> |              |            |                                      |
|    |              |                  |                                      |
| |              |              | `_   |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Informs the source of a query that additional information regarding the
reply is available.

Calling
`info() </sdk/scopes/cpp/unity.scopes.Reply/#af35cbaba152e4919306f32b06bd81029>`_ 
does not terminate the query, it simply informs the source that
something interesting occured during execution of the query (usually
affecting the results returned in some way).

Multiple calls to
`info() </sdk/scopes/cpp/unity.scopes.Reply/#af35cbaba152e4919306f32b06bd81029>`_ 
for each condition are legal.

Parameters
    +------------+-----------------------------------------------------------+
    | op\_info   | Contains all details of the information being reported.   |
    +------------+-----------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.Reply/classunity_1_1scopes_1_1_reply__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.Reply/closed.png

