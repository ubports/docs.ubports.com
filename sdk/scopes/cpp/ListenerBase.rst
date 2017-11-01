Abstract base class to be notified of request completion (such as a
query or activation request).
`More... </sdk/scopes/cpp/unity.scopes.ListenerBase#details>`__

``#include <unity/scopes/ListenerBase.h>``

Inheritance diagram for unity::scopes::ListenerBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`finished </sdk/scopes/cpp/unity.scopes.ListenerBase#afb44937749b61c9e3ebfa20ec6e4634b>`__
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`__
const &details)=0

 

| Called once by the scopes runtime after the final result for a request
  was sent.

 

virtual void 

`info </sdk/scopes/cpp/unity.scopes.ListenerBase#a3b38fa642754142f40968f3ff8d1bdc8>`__
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__ const
&op\_info)

 

| Called by the scopes runtime each time a scope reports additional
  information about the reply to a query.

 

Detailed Description
--------------------

Abstract base class to be notified of request completion (such as a
query or activation request).

See also
    `ActivationListenerBase </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/>`__
    `PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`__
    `SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`__

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
| ls/>`__  |              |            |                                      |
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
`finished() </sdk/scopes/cpp/unity.scopes.ListenerBase#afb44937749b61c9e3ebfa20ec6e4634b>`__
are made by an arbitrary thread.

Exceptions thrown from
`finished() </sdk/scopes/cpp/unity.scopes.ListenerBase#afb44937749b61c9e3ebfa20ec6e4634b>`__
are ignored.

Parameters
    +-----------+-----------------------------------------------------------------------------------------------------------------------------------------+
    | details   | Contains details about the completion status of a query as well as any additional information regarding the operation of the request.   |
    +-----------+-----------------------------------------------------------------------------------------------------------------------------------------+

Implemented in
`unity::scopes::utility::BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a9bd57e76c08a01560a700d665cc40e96>`__,
and
`unity::scopes::ActivationListenerBase </sdk/scopes/cpp/unity.scopes.ActivationListenerBase#a89f1e3697d62b098c73704368d3bc4c8>`__.

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
| |              |              | `__  |                                      |
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
`info() </sdk/scopes/cpp/unity.scopes.ListenerBase#a3b38fa642754142f40968f3ff8d1bdc8>`__
call can arrive during processing of a single query.

Calls to
`info() </sdk/scopes/cpp/unity.scopes.ListenerBase#a3b38fa642754142f40968f3ff8d1bdc8>`__
are made by an arbitrary thread.

Exceptions thrown from
`info() </sdk/scopes/cpp/unity.scopes.ListenerBase#a3b38fa642754142f40968f3ff8d1bdc8>`__
are ignored.

Parameters
    +------------+-----------------------------------------------------------+
    | op\_info   | Contains all details of the information being reported.   |
    +------------+-----------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.ListenerBase/classunity_1_1scopes_1_1_listener_base__inherit__graph.png

