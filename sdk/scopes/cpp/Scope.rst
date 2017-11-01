Allows queries, preview requests, and activation requests to be sent to
a scope. `More... </sdk/scopes/cpp/unity.scopes.Scope#details>`__

``#include <unity/scopes/Scope.h>``

Inheritance diagram for unity::scopes::Scope:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual
`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

`search </sdk/scopes/cpp/unity.scopes.Scope#a09976690ca801ecada50687df6046a29>`__
(std::string const &query\_string,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ const
&metadata, SearchListenerBase::SPtr const &reply)=0

 

| Initiates a search query.

 

virtual
`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

`search </sdk/scopes/cpp/unity.scopes.Scope#ab1a19b76666ac9d900122261ea209c62>`__
(std::string const &query\_string,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ const
&metadata, SearchListenerBase::SPtr const &reply)=0

 

| Initiates a search query (overloaded method).

 

virtual
`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

`search </sdk/scopes/cpp/unity.scopes.Scope#a4aa5feb40055fd7edaa45e7d059438c7>`__
(std::string const &query\_string, std::string const &department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ const
&metadata, SearchListenerBase::SPtr const &reply)=0

 

| Initiates a search query (overloaded method).

 

virtual
`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

`activate </sdk/scopes/cpp/unity.scopes.Scope#a0af40d8e0032ea8b0344e380360dae18>`__
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ const &result,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ const
&metadata, ActivationListenerBase::SPtr const &reply)=0

 

| Initiates activation of a search result.

 

virtual
`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

`perform\_action </sdk/scopes/cpp/unity.scopes.Scope#a61f749e46b8fbf1a687d1c055d349f4f>`__
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ const &result,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ const
&metadata, std::string const &widget\_id, std::string const &action\_id,
ActivationListenerBase::SPtr const &reply)=0

 

| Initiates activation of a preview action.

 

virtual
`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

`preview </sdk/scopes/cpp/unity.scopes.Scope#a82b24083994e676524b10c407f281aa4>`__
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ const &result,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ const
&metadata, PreviewListenerBase::SPtr const &reply)=0

 

| Initiates preview request.

 

virtual 

`~Scope </sdk/scopes/cpp/unity.scopes.Scope#a8d717a89a470cfa65080f132ea2ff4ab>`__
()

 

| Destroys a Scope.

 

virtual
`ChildScopeList </sdk/scopes/cpp/unity.scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>`__ 

`child\_scopes </sdk/scopes/cpp/unity.scopes.Scope#a1b9676ae625ffff0ee992da1f4bd8a5c>`__
()=0

 

| Returns a list of child scopes aggregated by this scope.

 

virtual bool 

`set\_child\_scopes </sdk/scopes/cpp/unity.scopes.Scope#a7dcef44d071e0b0bcff34bf588408297>`__
(`ChildScopeList </sdk/scopes/cpp/unity.scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>`__
const
&\ `child\_scopes </sdk/scopes/cpp/unity.scopes.Scope#a1b9676ae625ffff0ee992da1f4bd8a5c>`__)=0

 

| Sets the list of child scopes aggregated by this scope.

 

virtual
`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

`search </sdk/scopes/cpp/unity.scopes.Scope#a27d05e99cc572508bcfe620d20158c91>`__
(std::string const &query\_string, std::string const &department\_id,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state, `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__
const &user\_data,
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__ const
&metadata, SearchListenerBase::SPtr const &reply)=0

 

| Initiates a search query (overloaded method).

 

virtual
`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__ 

`activate\_result\_action </sdk/scopes/cpp/unity.scopes.Scope#aa53e54f6d9b505913dafda9ffca24d58>`__
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`__ const &result,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__ const
&metadata, std::string const &action\_id, ActivationListenerBase::SPtr
const &reply)=0

 

| Initiates activation of a result (in-card) action.

 

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

Allows queries, preview requests, and activation requests to be sent to
a scope.

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
| | :Scope::~Scope |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Destroys a `Scope </sdk/scopes/cpp/unity.scopes.Scope/>`__.

Destroying a `Scope </sdk/scopes/cpp/unity.scopes.Scope/>`__ has no
effect on any query that might still be in progress.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | `Result </sdk/scop | *result |                                      |
| *,          |                        |                                      |
| | `QueryCtrlProxy </ |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | sdk/scopes/cpp/uni |               |                                      |
|       | s.Result/>`__      |         |                                      |
|             |                        |                                      |
| | ty.scopes#a35e73cb |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| | a26e0db0b36ffa0283 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a7d55dd>`__        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | pe::activate       |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
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
| |                    |               |                                      |
|       | ActivationListener | *reply* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | Base::SPtr         |         |                                      |
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

Initiates activation of a search result.

Parameters
    +------------+------------------------------------------+
    | result     | The result that was activated.           |
    +------------+------------------------------------------+
    | metadata   | Additional data to pass to the scope.    |
    +------------+------------------------------------------+
    | reply      | The callback object to receive replies   |
    +------------+------------------------------------------+

Returns
    A proxy that permits cancellation of this request.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | `Result </sdk/scop | *result |                                      |
| *,          |                        |                                      |
| | `QueryCtrlProxy </ |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | sdk/scopes/cpp/uni |               |                                      |
|       | s.Result/>`__      |         |                                      |
|             |                        |                                      |
| | ty.scopes#a35e73cb |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| | a26e0db0b36ffa0283 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a7d55dd>`__        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | pe::activate\_resu |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | lt\_action         |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
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
| |                    |               |                                      |
|       | std::string const  | *action |                                      |
| \_id*,      |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | ActivationListener | *reply* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | Base::SPtr         |         |                                      |
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

Initiates activation of a result (in-card) action.

Parameters
    +--------------+------------------------------------------+
    | result       | The result that was was activated.       |
    +--------------+------------------------------------------+
    | metadata     | Additional data to pass to the scope.    |
    +--------------+------------------------------------------+
    | action\_id   | The identifier of the action.            |
    +--------------+------------------------------------------+
    | reply        | The callback object to receive replies   |
    +--------------+------------------------------------------+

Returns
    A proxy that permits cancellation of this request.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | pure virtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual        | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | `ChildScopeLis |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | t </sdk/scopes |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | /cpp/unity.sco |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | pes#a4daaa9ad0 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 7daf596af4dacd |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 6e0b7be9a>`__  |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :Scope::child\ |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | _scopes        |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a list of child scopes aggregated by this scope.

Returns
    The list of child scopes aggregated by this scope.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | `Result </sdk/scop | *result |                                      |
| *,          |                        |                                      |
| | `QueryCtrlProxy </ |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | sdk/scopes/cpp/uni |               |                                      |
|       | s.Result/>`__      |         |                                      |
|             |                        |                                      |
| | ty.scopes#a35e73cb |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| | a26e0db0b36ffa0283 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a7d55dd>`__        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | pe::perform\_actio |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | n                  |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
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
| |                    |               |                                      |
|       | std::string const  | *widget |                                      |
| \_id*,      |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *action |                                      |
| \_id*,      |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | ActivationListener | *reply* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | Base::SPtr         |         |                                      |
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

Initiates activation of a preview action.

Parameters
    +--------------+-------------------------------------------------------------------+
    | result       | The result that was previewed.                                    |
    +--------------+-------------------------------------------------------------------+
    | metadata     | Additional data to pass to the scope.                             |
    +--------------+-------------------------------------------------------------------+
    | widget\_id   | The identifier of the 'actions' widget of the activated action.   |
    +--------------+-------------------------------------------------------------------+
    | action\_id   | The identifier of an action to activate.                          |
    +--------------+-------------------------------------------------------------------+
    | reply        | The callback object to receive replies                            |
    +--------------+-------------------------------------------------------------------+

Returns
    A proxy that permits cancellation of this request.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | `Result </sdk/scop | *result |                                      |
| *,          |                        |                                      |
| | `QueryCtrlProxy </ |               |                                      |
|       | es/cpp/unity.scope |         |                                      |
|             |                        |                                      |
| | sdk/scopes/cpp/uni |               |                                      |
|       | s.Result/>`__      |         |                                      |
|             |                        |                                      |
| | ty.scopes#a35e73cb |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| | a26e0db0b36ffa0283 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a7d55dd>`__        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | pe::preview        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `ActionMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
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
| |                    |               |                                      |
|       | PreviewListenerBas | *reply* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | e::SPtr            |         |                                      |
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

Initiates preview request.

Parameters
    +------------+-------------------------------------------+
    | result     | The result to be previewed.               |
    +------------+-------------------------------------------+
    | metadata   | Additional data to pass to the scope.     |
    +------------+-------------------------------------------+
    | reply      | The callback object to receive replies.   |
    +------------+-------------------------------------------+

Returns
    A proxy that permits cancellation of this request.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | std::string const  | *query\ |                                      |
| _string*,   |                        |                                      |
| | `QueryCtrlProxy </ |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | sdk/scopes/cpp/uni |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ty.scopes#a35e73cb |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a26e0db0b36ffa0283 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a7d55dd>`__        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | pe::search         |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `SearchMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.SearchMe |         |                                      |
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
| |                    |               |                                      |
|       | SearchListenerBase | *reply* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ::SPtr             |         |                                      |
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

Initiates a search query.

The
`search() </sdk/scopes/cpp/unity.scopes.Scope#a09976690ca801ecada50687df6046a29>`__
method expects a
`SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`__,
which it uses to return the results for the query.
`search() </sdk/scopes/cpp/unity.scopes.Scope#a09976690ca801ecada50687df6046a29>`__
may block for some time, for example, if the target scope is not running
and needs to be started first. Results for the query may begin to arrive
only after
`search() </sdk/scopes/cpp/unity.scopes.Scope#a09976690ca801ecada50687df6046a29>`__
completes (but may also arrive while
`search() </sdk/scopes/cpp/unity.scopes.Scope#a09976690ca801ecada50687df6046a29>`__
is still running).

Parameters
    +-----------------+-------------------------------------------+
    | query\_string   | The search string.                        |
    +-----------------+-------------------------------------------+
    | metadata        | Additional data to pass to the scope.     |
    +-----------------+-------------------------------------------+
    | reply           | The callback object to receive replies.   |
    +-----------------+-------------------------------------------+

Returns
    A proxy that permits cancellation of this request.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | std::string const  | *query\ |                                      |
| _string*,   |                        |                                      |
| | `QueryCtrlProxy </ |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | sdk/scopes/cpp/uni |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ty.scopes#a35e73cb |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a26e0db0b36ffa0283 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a7d55dd>`__        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | pe::search         |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `FilterState </sdk | *filter |                                      |
| \_state*,   |                        |                                      |
| |                    |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | scopes.FilterState |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | />`__              |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `SearchMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.SearchMe |         |                                      |
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
| |                    |               |                                      |
|       | SearchListenerBase | *reply* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ::SPtr             |         |                                      |
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

Initiates a search query (overloaded method).

This method has same synopsis as previous method, but it takes
additional
`unity::scopes::FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__
argument.

Parameters
    +-----------------+-------------------------------------------+
    | query\_string   | The search string.                        |
    +-----------------+-------------------------------------------+
    | filter\_state   | The state of filters.                     |
    +-----------------+-------------------------------------------+
    | metadata        | Additional data to pass to the scope.     |
    +-----------------+-------------------------------------------+
    | reply           | The callback object to receive replies.   |
    +-----------------+-------------------------------------------+

Returns
    A proxy that permits cancellation of this request.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | std::string const  | *query\ |                                      |
| _string*,   |                        |                                      |
| | `QueryCtrlProxy </ |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | sdk/scopes/cpp/uni |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ty.scopes#a35e73cb |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a26e0db0b36ffa0283 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a7d55dd>`__        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | pe::search         |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *depart |                                      |
| ment\_id*,  |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `FilterState </sdk | *filter |                                      |
| \_state*,   |                        |                                      |
| |                    |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | scopes.FilterState |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | />`__              |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `SearchMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.SearchMe |         |                                      |
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
| |                    |               |                                      |
|       | SearchListenerBase | *reply* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ::SPtr             |         |                                      |
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

Initiates a search query (overloaded method).

This method has same synopsis as previous method, but it takes
additional department identifier argument.

Parameters
    +------------------+---------------------------------------------+
    | query\_string    | The search string.                          |
    +------------------+---------------------------------------------+
    | department\_id   | The identifier of a department to search.   |
    +------------------+---------------------------------------------+
    | filter\_state    | The state of filters.                       |
    +------------------+---------------------------------------------+
    | metadata         | Additional data to pass to the scope.       |
    +------------------+---------------------------------------------+
    | reply            | The callback object to receive replies.     |
    +------------------+---------------------------------------------+

Returns
    A proxy that permits cancellation of this request.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | std::string const  | *query\ |                                      |
| _string*,   |                        |                                      |
| | `QueryCtrlProxy </ |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | sdk/scopes/cpp/uni |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | ty.scopes#a35e73cb |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a26e0db0b36ffa0283 |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | a7d55dd>`__        |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sco |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | pe::search         |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *depart |                                      |
| ment\_id*,  |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `FilterState </sdk | *filter |                                      |
| \_state*,   |                        |                                      |
| |                    |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | scopes.FilterState |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | />`__              |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `Variant </sdk/sco | *user\_ |                                      |
| data*,      |                        |                                      |
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
| |                    |               |                                      |
|       | `SearchMetadata </ | *metada |                                      |
| ta*,        |                        |                                      |
| |                    |               |                                      |
|       | sdk/scopes/cpp/uni |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ty.scopes.SearchMe |         |                                      |
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
| |                    |               |                                      |
|       | SearchListenerBase | *reply* |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ::SPtr             |         |                                      |
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

Initiates a search query (overloaded method).

This method has same synopsis as previous search method, but it takes
additional user\_data argument.

Parameters
    +------------------+---------------------------------------------+
    | query\_string    | The search string.                          |
    +------------------+---------------------------------------------+
    | department\_id   | The identifier of a department to search.   |
    +------------------+---------------------------------------------+
    | filter\_state    | The state of filters.                       |
    +------------------+---------------------------------------------+
    | user\_data       | Arbitrary data.                             |
    +------------------+---------------------------------------------+
    | metadata         | Additional data to pass to the scope.       |
    +------------------+---------------------------------------------+
    | reply            | The callback object to receive replies      |
    +------------------+---------------------------------------------+

Returns
    A proxy that permits cancellation of this request.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual bool | (            | `Chi |                                      |
| ldScopeL | *child\_scop | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | ist  |                                      |
| </sdk/sc | es*          |            |                                      |
|    |              |                  |                                      |
| | s::Scope::se |              | opes |                                      |
| /cpp/uni |              |            |                                      |
|    |              |                  |                                      |
| | t\_child\_sc |              | ty.s |                                      |
| copes#a4 |              |            |                                      |
|    |              |                  |                                      |
| | opes         |              | daaa |                                      |
| 9ad07daf |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 596a |                                      |
| f4dacd6e |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 0b7b |                                      |
| e9a>`__  |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Sets the list of child scopes aggregated by this scope.

Note
    The only time this call will return false is if the scope cannot
    write to its config directory. This should not happen in real-world
    usage, but if it does, check the log for more detail.

Parameters
    +-----------------+------------------------------------------------------+
    | child\_scopes   | The list of child scopes aggregated by this scope.   |
    +-----------------+------------------------------------------------------+

Returns
    True if the list was successfully set.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.Scope/classunity_1_1scopes_1_1_scope__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.Scope/closed.png

