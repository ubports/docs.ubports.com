`QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`__ allows a query
to be cancelled.
`More... </sdk/scopes/cpp/unity.scopes.QueryCtrl#details>`__

``#include <unity/scopes/QueryCtrl.h>``

Inheritance diagram for unity::scopes::QueryCtrl:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`cancel </sdk/scopes/cpp/unity.scopes.QueryCtrl#a83e309fba452407f79365ba2645f4e4d>`__
()=0

 

| Cancels an executing query.

 

virtual 

`~QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl#a041d668bdde675b264baf6b0c0df716b>`__
()

 

| Destroys a QueryCtrl.

 

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

`QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`__ allows a query
to be cancelled.

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
| | :QueryCtrl::~Q |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ueryCtrl       |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Destroys a `QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`__.

Letting a `QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`__ go out
of scope has no effect on the query, that is, the destructor does *not*
implicitly call
`cancel() </sdk/scopes/cpp/unity.scopes.QueryCtrl#a83e309fba452407f79365ba2645f4e4d>`__.

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
| | :QueryCtrl::ca |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ncel           |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Cancels an executing query.

Calling
`cancel() </sdk/scopes/cpp/unity.scopes.QueryCtrl#a83e309fba452407f79365ba2645f4e4d>`__
informs the scope to which a query was sent that the query should be
cancelled. Calling
`cancel() </sdk/scopes/cpp/unity.scopes.QueryCtrl#a83e309fba452407f79365ba2645f4e4d>`__
on a query that is complete has no effect.
`cancel() </sdk/scopes/cpp/unity.scopes.QueryCtrl#a83e309fba452407f79365ba2645f4e4d>`__
is guaranteed to not block the caller.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.QueryCtrl/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.QueryCtrl/closed.png

