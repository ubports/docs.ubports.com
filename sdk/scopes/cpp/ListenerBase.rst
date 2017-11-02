.. _sdk_listenerbase:
ListenerBase
============

Abstract base class to be notified of request completion (such as a
query or activation request).
`More... </sdk/scopes/cpp/unity.scopes.ListenerBase/#details>`_ 

``#include <unity/scopes/ListenerBase.h>``

Inheritance diagram for unity::scopes::ListenerBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`finished </sdk/scopes/cpp/unity.scopes.ListenerBase/#afb44937749b61c9e3ebfa20ec6e4634b>`_ 
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
const &details)=0

 

| Called once by the scopes runtime after the final result for a request
  was sent.

 

virtual void 

`info </sdk/scopes/cpp/unity.scopes.ListenerBase/#a3b38fa642754142f40968f3ff8d1bdc8>`_ 
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`_  const
&op\_info)

 

| Called by the scopes runtime each time a scope reports additional
  information about the reply to a query.

 

Detailed Description
--------------------

Abstract base class to be notified of request completion (such as a
query or activation request).

See also
    `ActivationListenerBase </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/>`_ 
    `PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`_ 
    `SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`_ 

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | `Com |                                      |
| pletionD | *details*    | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | etai |                                      |
| ls </sdk |              |            |                                      |
|    |              |                  |                                      |
| | s::ListenerB |              | /sco |                                      |
| pes/cpp/ |              |            |                                      |
|    |              |                  |                                      |
| | ase::finishe |              | unit |                                      |
| y.scopes |              |            |                                      |
|    |              |                  |                                      |
| | d            |              | .Com |                                      |
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
`finished() </sdk/scopes/cpp/unity.scopes.ListenerBase/#afb44937749b61c9e3ebfa20ec6e4634b>`_ 
are made by an arbitrary thread.

Exceptions thrown from
`finished() </sdk/scopes/cpp/unity.scopes.ListenerBase/#afb44937749b61c9e3ebfa20ec6e4634b>`_ 
are ignored.

Parameters
    +-----------+-----------------------------------------------------------------------------------------------------------------------------------------+
    | details   | Contains details about the completion status of a query as well as any additional information regarding the operation of the request.   |
    +-----------+-----------------------------------------------------------------------------------------------------------------------------------------+

Implemented in
:ref:`unity::scopes::utility::BufferedResultForwarder <sdk_unity_scopes_utility_bufferedresultforwarder#a9bd57e76c08a01560a700d665cc40e96>`,
and
`unity::scopes::ActivationListenerBase </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/#a89f1e3697d62b098c73704368d3bc4c8>`_ .

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | `Ope |                                      |
| rationIn | *op\_info*   | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | fo < |                                      |
| /sdk/sco |              |            |                                      |
|    |              |                  |                                      |
| | s::ListenerB |              | pes/ |                                      |
| cpp/unit |              |            |                                      |
|    |              |                  |                                      |
| | ase::info    |              | y.sc |                                      |
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

Called by the scopes runtime each time a scope reports additional
information about the reply to a query.

More than one
`info() </sdk/scopes/cpp/unity.scopes.ListenerBase/#a3b38fa642754142f40968f3ff8d1bdc8>`_ 
call can arrive during processing of a single query.

Calls to
`info() </sdk/scopes/cpp/unity.scopes.ListenerBase/#a3b38fa642754142f40968f3ff8d1bdc8>`_ 
are made by an arbitrary thread.

Exceptions thrown from
`info() </sdk/scopes/cpp/unity.scopes.ListenerBase/#a3b38fa642754142f40968f3ff8d1bdc8>`_ 
are ignored.

Parameters
    +------------+-----------------------------------------------------------+
    | op\_info   | Contains all details of the information being reported.   |
    +------------+-----------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.ListenerBase/classunity_1_1scopes_1_1_listener_base__inherit__graph.png

