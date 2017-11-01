Allows the results of a preview to be sent to the preview requester.
`More... </sdk/scopes/cpp/unity.scopes.PreviewReply#details>`__

``#include <unity/scopes/PreviewReply.h>``

Inheritance diagram for unity::scopes::PreviewReply:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual bool 

`register\_layout </sdk/scopes/cpp/unity.scopes.PreviewReply#a16a757d821bd3792d1a69112b1f13964>`__
(`ColumnLayoutList </sdk/scopes/cpp/unity.scopes#a5b970e3c73bf25548398b32e79b2224d>`__
const &layouts)=0

 

| Registers a list of column layouts for the current preview.

 

virtual bool 

`push </sdk/scopes/cpp/unity.scopes.PreviewReply#a9fc593618b83ec444fb6c9b2b298764a>`__
(`PreviewWidgetList </sdk/scopes/cpp/unity.scopes#aed3b7b1daf2e49d0a820ef931caa792d>`__
const &widget\_list)=0

 

| Sends widget definitions to the sender of the preview query.

 

virtual bool 

`push </sdk/scopes/cpp/unity.scopes.PreviewReply#a8697306bc56dc29bb005d988841f0c8e>`__
(std::string const &key,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ const &value)=0

 

| Sends data for a preview widget attribute.

 

|-| Public Member Functions inherited from
`unity::scopes::Reply </sdk/scopes/cpp/unity.scopes.Reply/>`__

virtual void 

`finished </sdk/scopes/cpp/unity.scopes.Reply#a9ca653d5d7f7c97a781bc362f2af7749>`__
()=0

 

| Informs the source of a query that the query results are complete.

 

virtual void 

`error </sdk/scopes/cpp/unity.scopes.Reply#a526c9cbb11f896210835fb3420324ba8>`__
(std::exception\_ptr ex)=0

 

| Informs the source of a query that the query was terminated due to an
  error.

 

virtual void 

`info </sdk/scopes/cpp/unity.scopes.Reply#af35cbaba152e4919306f32b06bd81029>`__
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__ const
&op\_info)=0

 

| Informs the source of a query that additional information regarding
  the reply is available.

 

virtual 

`~Reply </sdk/scopes/cpp/unity.scopes.Reply#a9f0cfeeee75a27e111ebd955523e1bb0>`__
()

 

| Destroys a Reply.

 

|-| Public Member Functions inherited from
`unity::scopes::Object </sdk/scopes/cpp/unity.scopes.Object/>`__

virtual std::string 

`endpoint </sdk/scopes/cpp/unity.scopes.Object#ad7618cc9d878c40b389361d4acd473ae>`__
()=0

 

| Returns the endpoint this proxy connects to.

 

virtual std::string 

`identity </sdk/scopes/cpp/unity.scopes.Object#a1b55aea886f0a68cb8a578f7ee0b1cfd>`__
()=0

 

| Returns the identity of the target object of this proxy.

 

virtual std::string 

`target\_category </sdk/scopes/cpp/unity.scopes.Object#a40a997516629df3dacca9742dbddd6cb>`__
()=0

 

| Returns the category of the target object of this proxy.

 

virtual int64\_t 

`timeout </sdk/scopes/cpp/unity.scopes.Object#a41d9839f1e3cbcd6d8baee0736feccab>`__
()=0

 

| Returns the timeout in milliseconds if this proxy is a twoway proxy.

 

virtual std::string 

`to\_string </sdk/scopes/cpp/unity.scopes.Object#a9ae27e1f30dc755abcd796a1e8a25150>`__
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
| st </sdk | t*           |            |                                      |
|    |              |                  |                                      |
| | s::PreviewRe |              | /sco |                                      |
| pes/cpp/ |              |            |                                      |
|    |              |                  |                                      |
| | ply::push    |              | unit |                                      |
| y.scopes |              |            |                                      |
|    |              |                  |                                      |
| |              |              | #aed |                                      |
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
|       | es.Variant/>`__    |         |                                      |
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
| t </sdk/ |              |            |                                      |
|    |              |                  |                                      |
| | s::PreviewRe |              | scop |                                      |
| es/cpp/u |              |            |                                      |
|    |              |                  |                                      |
| | ply::registe |              | nity |                                      |
| .scopes# |              |            |                                      |
|    |              |                  |                                      |
| | r\_layout    |              | a5b9 |                                      |
| 70e3c73b |              |            |                                      |
|    |              |                  |                                      |
| |              |              | f255 |                                      |
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
`unity::scopes::PreviewWidgetList </sdk/scopes/cpp/unity.scopes#aed3b7b1daf2e49d0a820ef931caa792d>`__,
and must be registered only once.

Returns
    True if the query is still alive, false if the query failed or was
    cancelled.

Exceptions
    +-------------------------+----------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | `register\_layout() </sdk/scopes/cpp/unity.scopes.PreviewReply#a16a757d821bd3792d1a69112b1f13964>`__ is called more than once.   |
    +-------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.PreviewReply/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.PreviewReply/closed.png

