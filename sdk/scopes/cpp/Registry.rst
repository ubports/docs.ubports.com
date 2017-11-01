White pages service for available scopes.
`More... </sdk/scopes/cpp/unity.scopes.Registry#details>`__

``#include <unity/scopes/Registry.h>``

Inheritance diagram for unity::scopes::Registry:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual `ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`__ 

`get\_metadata </sdk/scopes/cpp/unity.scopes.Registry#a63778ac090804a1fb85dc48fccbc2822>`__
(std::string const &scope\_id)=0

 

| Returns the metadata for the scope with the given ID.

 

virtual
`MetadataMap </sdk/scopes/cpp/unity.scopes#a9f6e8e62689e49cdabadacf39b697816>`__ 

`list </sdk/scopes/cpp/unity.scopes.Registry#a23e078986524fe11bd363c29401fbb31>`__
()=0

 

| Returns a map containing the metadata for all scopes.

 

virtual
`MetadataMap </sdk/scopes/cpp/unity.scopes#a9f6e8e62689e49cdabadacf39b697816>`__ 

`list\_if </sdk/scopes/cpp/unity.scopes.Registry#aa15baf0154c4b58decf27f2e5815d680>`__
(std::function<
bool(\ `ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`__
const &item)> predicate)=0

 

| Returns a map containing only those scopes for which ``predicate``
  returns true.

 

virtual bool 

`is\_scope\_running </sdk/scopes/cpp/unity.scopes.Registry#a06ef35ed8677a0b20774528343bff9f1>`__
(std::string const &scope\_id)=0

 

| Returns whether a scope is currently running or not.

 

virtual core::ScopedConnection 

`set\_scope\_state\_callback </sdk/scopes/cpp/unity.scopes.Registry#a86ac67a881dec9eddabd069153fc62b1>`__
(std::string const &scope\_id, std::function< void(bool is\_running)>
callback)=0

 

| Assigns a callback method to be executed when a scope's running state
  (started / stopped) changes.

 

virtual core::ScopedConnection 

`set\_list\_update\_callback </sdk/scopes/cpp/unity.scopes.Registry#a1f540dc612ce4a5e50a21ec66fec75fd>`__
(std::function< void()> callback)=0

 

| Assigns a callback method to be executed when the registry's scope
  list changes.

 

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

White pages service for available scopes.

You can obtain a proxy to the registry by calling
`Runtime::registry() </sdk/scopes/cpp/unity.scopes.Runtime#afc312448a4537b110bf1701bfb964501>`__.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual      | (            | std: |                                      |
| :string  | *scope\_id*  | )          |                                      |
|    |              |                  |                                      |
| | `ScopeMetada |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | ta </sdk/sco |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | pes/cpp/unit |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | y.scopes.Sco |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | peMetadata/> |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | `__          |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | unity::scope |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | s::Registry: |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | :get\_metada |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ta           |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Returns the metadata for the scope with the given ID.

Parameters
    +-------------+----------------------------------------------------------------+
    | scope\_id   | The ID of the scope from which we wish to retrieve metadata.   |
    +-------------+----------------------------------------------------------------+

Returns
    The metadata for the scope.

Exceptions
    +---------------------------------------------------------------------------+-----------------------------------------+
    | `NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if no scope with the given ID exists.   |
    +---------------------------------------------------------------------------+-----------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual bool | (            | std: |                                      |
| :string  | *scope\_id*  | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | s::Registry: |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | :is\_scope\_ |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | running      |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Returns whether a scope is currently running or not.

Parameters
    +-------------+-------------------------------------------------------------+
    | scope\_id   | The ID of the scope from which we wish to retrieve state.   |
    +-------------+-------------------------------------------------------------+

Returns
    True if the scope is running, and False if it is not running.

Exceptions
    +---------------------------------------------------------------------------+-----------------------------------------+
    | `NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__   | if no scope with the given ID exists.   |
    +---------------------------------------------------------------------------+-----------------------------------------+

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | pure virtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual        | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | `MetadataMap < |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | /sdk/scopes/cp |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | p/unity.scopes |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | #a9f6e8e62689e |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 49cdabadacf39b |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 697816>`__     |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :Registry::lis |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | t              |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Returns a map containing the metadata for all scopes.

Returns
    The metadata for all scopes.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual      | (            | std: |                                      |
| :functio | *predicate*  | )          |                                      |
|    |              |                  |                                      |
| | `MetadataMap |              | n<   |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| |  </sdk/scope |              | bool |                                      |
| (\ `Scop |              |            |                                      |
|    |              |                  |                                      |
| | s/cpp/unity. |              | eMet |                                      |
| adata </ |              |            |                                      |
|    |              |                  |                                      |
| | scopes#a9f6e |              | sdk/ |                                      |
| scopes/c |              |            |                                      |
|    |              |                  |                                      |
| | 8e62689e49cd |              | pp/u |                                      |
| nity.sco |              |            |                                      |
|    |              |                  |                                      |
| | abadacf39b69 |              | pes. |                                      |
| ScopeMet |              |            |                                      |
|    |              |                  |                                      |
| | 7816>`__     |              | adat |                                      |
| a/>`__   |              |            |                                      |
|    |              |                  |                                      |
| | unity::scope |              | cons |                                      |
| t        |              |            |                                      |
|    |              |                  |                                      |
| | s::Registry: |              | &ite |                                      |
| m)>      |              |            |                                      |
|    |              |                  |                                      |
| | :list\_if    |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Returns a map containing only those scopes for which ``predicate``
returns true.

Parameters
    +-------------+---------------------------------------------------------------------------------------------+
    | predicate   | a function object that must return true for each metadata item to be included in the map.   |
    +-------------+---------------------------------------------------------------------------------------------+

Returns
    The metadata items for which the predicate returned true.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual      | (            | std: |                                      |
| :functio | *callback*   | )          |                                      |
|    |              |                  |                                      |
| | core::Scoped |              | n<   |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | Connection   |              | void |                                      |
| ()>      |              |            |                                      |
|    |              |                  |                                      |
| | unity::scope |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | s::Registry: |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | :set\_list\_ |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | update\_call |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | back         |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Assigns a callback method to be executed when the registry's scope list
changes.

Note: Upon receiving this callback, you should retrieve the updated
scopes list via the
`list() </sdk/scopes/cpp/unity.scopes.Registry#a23e078986524fe11bd363c29401fbb31>`__
method if you wish to retain synchronisation between client and server.

Parameters
    +------------+--------------------------------------------------------------+
    | callback   | The function object that is invoked when an update occurs.   |
    +------------+--------------------------------------------------------------+

Exceptions
    +-------------------------------------------------------------------------------+----------------------------------------------------+
    | `MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`__   | if the registry subscriber failed to initialize.   |
    +-------------------------------------------------------------------------------+----------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | std::string const  | *scope\ |                                      |
| _id*,       |                        |                                      |
| | core::ScopedConnec |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | tion               |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | unity::scopes::Reg |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | istry::set\_scope\ |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | _state\_callback   |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::function<     | *callba |                                      |
| ck*         |                        |                                      |
| |                    |               |                                      |
|       | void(bool          |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | is\_running)>      |         |                                      |
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

Assigns a callback method to be executed when a scope's running state
(started / stopped) changes.

Parameters
    +-------------+---------------------------------------------------------------------------+
    | scope\_id   | The ID of the scope from which we wish to retrieve state changes.         |
    +-------------+---------------------------------------------------------------------------+
    | callback    | The function object that is invoked when a scope changes running state.   |
    +-------------+---------------------------------------------------------------------------+

Exceptions
    +-------------------------------------------------------------------------------+----------------------------------------------------+
    | `MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`__   | if the registry subscriber failed to initialize.   |
    +-------------------------------------------------------------------------------+----------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.Registry/classunity_1_1scopes_1_1_registry__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.Registry/closed.png

