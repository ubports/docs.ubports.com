.. _sdk_activationlistenerbase:
ActivationListenerBase
======================

Base class to receive a response to a result activation request.
`More... </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/#details>`_ 

``#include <unity/scopes/ActivationListenerBase.h>``

Inheritance diagram for unity::scopes::ActivationListenerBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`activated </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/#a52106ae2856a2dc7fd6035707bd0bee2>`_ 
(`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
const &response)

 

| Called once by the scopes runtime with the activation response.

 

virtual void 

`finished </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/#a89f1e3697d62b098c73704368d3bc4c8>`_ 
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
const &details) override

 

| Called once by the scopes runtime after the final result for a request
  was sent.

 

|-| Public Member Functions inherited from
`unity::scopes::ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase/>`_ 

virtual void 

`info </sdk/scopes/cpp/unity.scopes.ListenerBase/#a3b38fa642754142f40968f3ff8d1bdc8>`_ 
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`_  const
&op\_info)

 

| Called by the scopes runtime each time a scope reports additional
  information about the reply to a query.

 

Detailed Description
--------------------

Base class to receive a response to a result activation request.

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | void         | (            | `Act |                                      |
| ivationR | *response*   | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | espo |                                      |
| nse </sd |              |            |                                      |
|    |              |                  |                                      |
| | s::Activatio |              | k/sc |                                      |
| opes/cpp |              |            |                                      |
|    |              |                  |                                      |
| | nListenerBas |              | /uni |                                      |
| ty.scope |              |            |                                      |
|    |              |                  |                                      |
| | e::activated |              | s.Ac |                                      |
| tivation |              |            |                                      |
|    |              |                  |                                      |
| |              |              | Resp |                                      |
| onse/>`_ |              |            |                                      |
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

Called once by the scopes runtime with the activation response.

The default implementation does nothing.

Parameters
    +------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | response   | The response to the activation request, returned by a scope from `ActivationQueryBase::activate() </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a61ed49d8bc56e677ff2eb1f30e6a6b6b>`_ .   |
    +------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | overridevirtual                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | void         | (            | `Com |                                      |
| pletionD | *details*    | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | etai |                                      |
| ls </sdk |              |            |                                      |
|    |              |                  |                                      |
| | s::Activatio |              | /sco |                                      |
| pes/cpp/ |              |            |                                      |
|    |              |                  |                                      |
| | nListenerBas |              | unit |                                      |
| y.scopes |              |            |                                      |
|    |              |                  |                                      |
| | e::finished  |              | .Com |                                      |
| pletionD |              |            |                                      |
|    |              |                  |                                      |
| |              |              | etai |                                      |
| ls/>`_   |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called once by the scopes runtime after the final result for a request
was sent.

Calls to
`finished() </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/#a89f1e3697d62b098c73704368d3bc4c8>`_ 
are made by an arbitrary thread.

Exceptions thrown from
`finished() </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/#a89f1e3697d62b098c73704368d3bc4c8>`_ 
are ignored.

Parameters
    +-----------+-----------------------------------------------------------------------------------------------------------------------------------------+
    | details   | Contains details about the completion status of a query as well as any additional information regarding the operation of the request.   |
    +-----------+-----------------------------------------------------------------------------------------------------------------------------------------+

Implements
`unity::scopes::ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase/#afb44937749b61c9e3ebfa20ec6e4634b>`_ .

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.ActivationListenerBase/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.ActivationListenerBase/closed.png

