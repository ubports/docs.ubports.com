.. _sdk_previewreply:
PreviewReply
============

Allows the results of a preview to be sent to the preview requester.
`More... </sdk/scopes/cpp/unity.scopes.PreviewReply/#details>`_ 

``#include <unity/scopes/PreviewReply.h>``

Inheritance diagram for unity::scopes::PreviewReply:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual bool 

`register\_layout </sdk/scopes/cpp/unity.scopes.PreviewReply/#a16a757d821bd3792d1a69112b1f13964>`_ 
(:ref:`ColumnLayoutList <sdk_unity_scopes#a5b970e3c73bf25548398b32e79b2224d>`
const &layouts)=0

 

| Registers a list of column layouts for the current preview.

 

virtual bool 

`push </sdk/scopes/cpp/unity.scopes.PreviewReply/#a9fc593618b83ec444fb6c9b2b298764a>`_ 
(:ref:`PreviewWidgetList <sdk_unity_scopes#aed3b7b1daf2e49d0a820ef931caa792d>`
const &widget\_list)=0

 

| Sends widget definitions to the sender of the preview query.

 

virtual bool 

`push </sdk/scopes/cpp/unity.scopes.PreviewReply/#a8697306bc56dc29bb005d988841f0c8e>`_ 
(std::string const &key,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const &value)=0

 

| Sends data for a preview widget attribute.

 

|-| Public Member Functions inherited from
`unity::scopes::Reply </sdk/scopes/cpp/unity.scopes.Reply/>`_ 

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

Allows the results of a preview to be sent to the preview requester.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual bool | (            | `Pre |                                      |
| viewWidg | *widget\_lis | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | etLi |                                      |
| st <sdk_ | t*           |            |                                      |
|    |              |                  |                                      |
| | s::PreviewRe |              | unit |                                      |
| y_scopes |              |            |                                      |
|    |              |                  |                                      |
| | ply::push    |              | #aed |                                      |
| 3b7b1daf |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 2e49 |                                      |
| d0a820ef |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 931c |                                      |
| aa792d>` |              |            |                                      |
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

Sends widget definitions to the sender of the preview query.

This method can be called mutiple times to send widgets in stages.

Returns
    True if the query is still alive, false if the query failed or was
    cancelled.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual bool       | (             |                                      |
|       | std::string const  | *key*,  |                                      |
|             |                        |                                      |
| | unity::scopes::Pre |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | viewReply::push    |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `Variant </sdk/sco | *value* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | pes/cpp/unity.scop |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | es.Variant/>`_     |         |                                      |
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

Sends data for a preview widget attribute.

Returns
    True if the query is still alive, false if the query failed or was
    cancelled.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual bool | (            | `Col |                                      |
| umnLayou | *layouts*    | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | tLis |                                      |
| t <sdk_u |              |            |                                      |
|    |              |                  |                                      |
| | s::PreviewRe |              | nity |                                      |
| _scopes# |              |            |                                      |
|    |              |                  |                                      |
| | ply::registe |              | a5b9 |                                      |
| 70e3c73b |              |            |                                      |
|    |              |                  |                                      |
| | r\_layout    |              | f255 |                                      |
| 48398b32 |              |            |                                      |
|    |              |                  |                                      |
| |              |              | e79b |                                      |
| 2224d>`_ |              |            |                                      |
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

Registers a list of column layouts for the current preview.

Layouts must be registered before pushing a
:ref:`unity::scopes::PreviewWidgetList <sdk_unity_scopes#aed3b7b1daf2e49d0a820ef931caa792d>`,
and must be registered only once.

Returns
    True if the query is still alive, false if the query failed or was
    cancelled.

Exceptions
    +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | `register\_layout() </sdk/scopes/cpp/unity.scopes.PreviewReply/#a16a757d821bd3792d1a69112b1f13964>`_  is called more than once.   |
    +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.PreviewReply/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.PreviewReply/closed.png

