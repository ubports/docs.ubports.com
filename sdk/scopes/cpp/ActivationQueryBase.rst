.. _sdk_activationquerybase:
ActivationQueryBase
===================

Base class for an activation request that is executed inside a scope.
`More... </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#details>`_ 

``#include <unity/scopes/ActivationQueryBase.h>``

Inheritance diagram for unity::scopes::ActivationQueryBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#ae853aab10c2fd7411208a1764b59c439>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const
&\ `result </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#ac23d5b45f73f8ed38139996ef8c27195>`_ ,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  const
&metadata)

 

| Create ActivationQueryBase.

 

 

`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a2f4b19b45dac666ab59454abdea73ea1>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const
&\ `result </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#ac23d5b45f73f8ed38139996ef8c27195>`_ ,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  const
&metadata, std::string const
&\ `widget\_id </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a95aa7e96b4b0f7b1bc10e2342de02db8>`_ ,
std::string const
&\ `action\_id </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a0cb38f795f4096a6bc2f40d5c192df6e>`_ )

 

| Create ActivationQueryBase.

 

 

`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#ad4833abec80f83682b20b8aa4b37ae06>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const
&update\_result,
`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  const
&metadata, std::string const
&\ `action\_id </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a0cb38f795f4096a6bc2f40d5c192df6e>`_ )

 

| Create ActivationQueryBase.

 

        virtual void 

`cancelled </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#af9b8e83ac6716db51aba942aca9cc6be>`_ 
() override

 

| Called when the originator of the activation request cancelled it.

 

virtual
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_  

`activate </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a61ed49d8bc56e677ff2eb1f30e6a6b6b>`_ 
()

 

| Return response to the activation request.

 

`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  

`result </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#ac23d5b45f73f8ed38139996ef8c27195>`_ 
() const

 

| Get the result for this activation request handler.

 

`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_  

`action\_metadata </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#ae215e7780c87d835893eb0df70f09d3b>`_ 
() const

 

| Get the metadata for this activation request handler.

 

std::string 

`widget\_id </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a95aa7e96b4b0f7b1bc10e2342de02db8>`_ 
() const

 

| Get the widget identifier for this activation request handler.

 

std::string 

`action\_id </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a0cb38f795f4096a6bc2f40d5c192df6e>`_ 
() const

 

| Get the action identifier for this activation request handler.

 

|-| Public Member Functions inherited from
`unity::scopes::QueryBase </sdk/scopes/cpp/unity.scopes.QueryBase/>`_ 

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

Base class for an activation request that is executed inside a scope.

The default implementation responds with
ActivationResponse(ActivationResponse::Status::NotHandled). Reimplement
this class and return an instance from
`ScopeBase::activate </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ 
method for custom activation handling.

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Act | (                  | `Result </sdk/scop | *result*,          |
| ivationQueryBase:: |                    | es/cpp/unity.scope |                    |
| ActivationQueryBas |                    | s.Result/>`_       |                    |
| e                  |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `ActionMetadata </ | *metadata*         |
|                    |                    | sdk/scopes/cpp/uni |                    |
|                    |                    | ty.scopes.ActionMe |                    |
|                    |                    | tadata/>`_         |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ .

Parameters
    +------------+-----------------------------------------------------------------------------------------------------------------------------------+
    | result     | The result received by `ScopeBase::activate() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ .     |
    +------------+-----------------------------------------------------------------------------------------------------------------------------------+
    | metadata   | The metadata received by `ScopeBase::activate() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ .   |
    +------------+-----------------------------------------------------------------------------------------------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Act | (                  | `Result </sdk/scop | *result*,          |
| ivationQueryBase:: |                    | es/cpp/unity.scope |                    |
| ActivationQueryBas |                    | s.Result/>`_       |                    |
| e                  |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `ActionMetadata </ | *metadata*,        |
|                    |                    | sdk/scopes/cpp/uni |                    |
|                    |                    | ty.scopes.ActionMe |                    |
|                    |                    | tadata/>`_         |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *widget\_id*,      |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *action\_id*       |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ .

Parameters
    +--------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
    | result       | The result received by `ScopeBase::perform\_action() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a2f4d476fa790349c9a7de52be3232d11>`_ .              |
    +--------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
    | metadata     | The metadata received by `ScopeBase::perform\_action() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a2f4d476fa790349c9a7de52be3232d11>`_ .            |
    +--------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
    | widget\_id   | The widget identifier receiver of `ScopeBase::perform\_action() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a2f4d476fa790349c9a7de52be3232d11>`_ .   |
    +--------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
    | action\_id   | The action identifier receiver of `ScopeBase::perform\_action() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a2f4d476fa790349c9a7de52be3232d11>`_ .   |
    +--------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Act | (                  | `Result </sdk/scop | *update\_result*,  |
| ivationQueryBase:: |                    | es/cpp/unity.scope |                    |
| ActivationQueryBas |                    | s.Result/>`_       |                    |
| e                  |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `ActionMetadata </ | *metadata*,        |
|                    |                    | sdk/scopes/cpp/uni |                    |
|                    |                    | ty.scopes.ActionMe |                    |
|                    |                    | tadata/>`_         |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *action\_id*       |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ .

Parameters
    +------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | update\_result   | The result received by `ScopeBase::activate\_result\_action() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a7ac39ca44f4790dd36900657692d0565>`_ .              |
    +------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | metadata         | The metadata received by `ScopeBase::activate\_result\_action() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a7ac39ca44f4790dd36900657692d0565>`_ .            |
    +------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | action\_id       | The action identifier received by `ScopeBase::activate\_result\_action() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a7ac39ca44f4790dd36900657692d0565>`_ .   |
    +------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ActivationQue |                |                |                |                |
| ryBase::action |                |                |                |                |
| \_id           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the action identifier for this activation request handler.

Action identifier is empty when using the
`unity::scopes::ActivationQueryBase(Result const& result, ActionMetadata
const& metadata) </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 
constructor.

Returns
    The action identifier passed to the constructor of this object.

+----------------+----------------+----------------+----------------+----------------+
| `ActionMetadat | (              |                | )              | const          |
| a </sdk/scopes |                |                |                |                |
| /cpp/unity.sco |                |                |                |                |
| pes.ActionMeta |                |                |                |                |
| data/>`_       |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ActivationQue |                |                |                |                |
| ryBase::action |                |                |                |                |
| \_metadata     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the metadata for this activation request handler.

Returns
    The metadata passed to the constructor of this object.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | virtual                              |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | `ActivationRes | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | ponse </sdk/sc |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | opes/cpp/unity |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | .scopes.Activa |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | tionResponse/> |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | `_             |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :ActivationQue |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ryBase::activa |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | te             |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Return response to the activation request.

The response is received by the originator of the request. Default
implementation returns
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ \ (ActivationResponse::Status::NotHandled.

Returns
    The response to the activation request.

+----------------+----------------+----------------+----------------+----------------+
| `Result </sdk/ | (              |                | )              | const          |
| scopes/cpp/uni |                |                |                |                |
| ty.scopes.Resu |                |                |                |                |
| lt/>`_         |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ActivationQue |                |                |                |                |
| ryBase::result |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the result for this activation request handler.

Returns
    The result passed to the constructor of this object.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :ActivationQue |                |                |                |                |
| ryBase::widget |                |                |                |                |
| \_id           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the widget identifier for this activation request handler.

Widget identifier is empty when using the
`unity::scopes::ActivationQueryBase(Result const& result, ActionMetadata
const& metadata) </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 
constructor.

Returns
    The widget identifier passed to the constructor of this object.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.ActivationQueryBase/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.ActivationQueryBase/closed.png

