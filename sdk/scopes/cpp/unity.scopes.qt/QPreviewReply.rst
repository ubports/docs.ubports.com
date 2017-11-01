Allows the results of a preview to be sent to the preview requester.
`More... </sdk/scopes/cpp/unity.scopes.qt/QPreviewReply#details>`__

``#include <unity/scopes/qt/QPreviewReply.h>``

Inheritance diagram for unity::scopes::qt::QPreviewReply:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

bool 

`register\_layout </sdk/scopes/cpp/unity.scopes.qt/QPreviewReply#abe5967042a22327f6ec9d5a1f595968c>`__
(QColumnLayoutList const &layouts)

 

| Registers a list of column layouts for the current preview.

 

bool 

`push </sdk/scopes/cpp/unity.scopes.qt/QPreviewReply#a87571e9d961382e967ae6f12560bd755>`__
(QPreviewWidgetList const &widget\_list)

 

| Sends widget definitions to the sender of the preview query.

 

bool 

`push </sdk/scopes/cpp/unity.scopes.qt/QPreviewReply#a31c34e45f1eab196c74d3c314881e147>`__
(QString const &key, QVariant const &value)

 

| Sends data for a preview widget attribute.

 

Detailed Description
--------------------

Allows the results of a preview to be sent to the preview requester.

Member Function Documentation
-----------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| bool         | (            | QPreviewWidg | *widget\_lis | )            |              |
| unity::scope |              | etList       | t*           |              |              |
| s::qt::QPrev |              | const &      |              |              |              |
| iewReply::pu |              |              |              |              |              |
| sh           |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Sends widget definitions to the sender of the preview query.

This method can be called mutiple times to send widgets in stages.

Returns
    True if the query is still alive, false if the query failed or was
    cancelled.

+--------------------+--------------------+--------------------+--------------------+
| bool               | (                  | QString const &    | *key*,             |
| unity::scopes::qt: |                    |                    |                    |
| :QPreviewReply::pu |                    |                    |                    |
| sh                 |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | QVariant const &   | *value*            |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Sends data for a preview widget attribute.

Returns
    True if the query is still alive, false if the query failed or was
    cancelled.

+--------------+--------------+--------------+--------------+--------------+--------------+
| bool         | (            | QColumnLayou | *layouts*    | )            |              |
| unity::scope |              | tList        |              |              |              |
| s::qt::QPrev |              | const &      |              |              |              |
| iewReply::re |              |              |              |              |              |
| gister\_layo |              |              |              |              |              |
| ut           |              |              |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Registers a list of column layouts for the current preview.

Layouts must be registered before pushing a
`unity::scopes::PreviewWidgetList </sdk/scopes/cpp/unity.scopes#aed3b7b1daf2e49d0a820ef931caa792d>`__,
and must be registered only once.

Returns
    True if the query is still alive, false if the query failed or was
    cancelled.

Exceptions
    +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | `register\_layout() </sdk/scopes/cpp/unity.scopes.qt/QPreviewReply#abe5967042a22327f6ec9d5a1f595968c>`__ is called more than once.   |
    +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.qt/QPreviewReply/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png

