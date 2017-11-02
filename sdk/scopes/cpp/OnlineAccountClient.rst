.. _sdk_onlineaccountclient:
OnlineAccountClient
===================

A simple interface for integrating online accounts access and monitoring
into scopes.
`More... </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#details>`_ 

``#include <unity/scopes/OnlineAccountClient.h>``

        Classes
---------------

struct  

:ref:`ServiceStatus <sdk_unity_scopes_onlineaccountclient_servicestatus>`

 

| A container for details about a service's status and authorization
  parameters.
  :ref:`More... <sdk_unity_scopes_onlineaccountclient_servicestatus#details>`

 

        Public Types
--------------------

enum  

`MainLoopSelect </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20>`_ 
{
`RunInExternalMainLoop </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20a541835f51d0a5ec79aaddada2e91ebf1>`_ ,
`CreateInternalMainLoop </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470>`_ 
}

 

| Indicates whether an external main loop already exists, or one should
  be created internally.
  `More... </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20>`_ 

 

enum  

| `PostLoginAction </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22>`_ 
  {
|   `Unknown </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22ab365a1534cce6d36e42e0be03169ffb6>`_ ,
  `DoNothing </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22a20868ed64ce21f859aae50ec76aa738d>`_ ,
  `InvalidateResults </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22a4096156be602a8dd697c5a2f1d834cec>`_ ,
  `ContinueActivation </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22ac4055329b8e4dbec09736d1f7025d66b>`_ ,
|   `LastActionCode\_ </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22a2b115d76d434e3db48f278562e585b0c>`_ 
  = ContinueActivation
| }

 

| Indicates what action to take when the login process completes.
  `More... </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22>`_ 

 

typedef std::function<
void(\ :ref:`ServiceStatus <sdk_unity_scopes_onlineaccountclient_servicestatus>`
const &)> 

`ServiceUpdateCallback </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a0c327d92e4684b5849928fa18ebfc204>`_ 

 

| Function signature for the service update callback.

 

        Public Member Functions
-------------------------------

 

`OnlineAccountClient </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af1139a1b81d9d95c0c84ea52d51dc07c>`_ 
(std::string const &service\_name, std::string const &service\_type,
std::string const &provider\_name,
`MainLoopSelect </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20>`_ 
main\_loop\_select=\ `CreateInternalMainLoop </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470>`_ )

 

| Create OnlineAccountClient for the specified account service.

 

 

`OnlineAccountClient </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a84abcdff4d36c0d9544add0052df4fe2>`_ 
(std::string const &service\_name, std::string const &service\_type,
std::string const &provider\_name,
:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`
const &auth\_params,
`MainLoopSelect </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20>`_ 
main\_loop\_select=\ `CreateInternalMainLoop </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470>`_ )

 

| Create OnlineAccountClient for the specified account service.

 

void 

`set\_service\_update\_callback </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a9ca9980de9adedb524a3143936400be0>`_ 
(`ServiceUpdateCallback </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a0c327d92e4684b5849928fa18ebfc204>`_ 
callback)

 

| Set the callback function to be invoked when a service status changes.

 

void 

`refresh\_service\_statuses </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#adaa0dacf9d31bc23fc35e082d3b7a7ee>`_ 
()

 

| Refresh all service statuses.

 

std::vector<
:ref:`ServiceStatus <sdk_unity_scopes_onlineaccountclient_servicestatus>`
> 

`get\_service\_statuses </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#abe613053f2292f595247aa67c8f78351>`_ 
()

 

| Get statuses for all services matching the name, type and provider
  specified on construction.

 

void 

`register\_account\_login\_item </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a78b3e267ff30c23cc3a3644f29724e9b>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  &result,
`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  const
&query,
`PostLoginAction </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22>`_ 
login\_passed\_action,
`PostLoginAction </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22>`_ 
login\_failed\_action)

 

| Register a result item that requires the user to be logged in.

 

void 

`register\_account\_login\_item </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a2fcd08f9c9b4fb625ba733e895e60f6c>`_ 
(`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_ 
&widget,
`PostLoginAction </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22>`_ 
login\_passed\_action,
`PostLoginAction </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22>`_ 
login\_failed\_action)

 

| Register a widget item that requires the user to be logged in.

 

Detailed Description
--------------------

A simple interface for integrating online accounts access and monitoring
into scopes.

Each instantiation of this class targets a particular account service as
specified on construction.

Member Typedef Documentation
----------------------------

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| typedef std::function<void(\ :ref:`ServiceStatus <sdk_unity_scopes_onlineaccountclient_servicestatus>` const&)> `unity::scopes::OnlineAccountClient::ServiceUpdateCallback </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a0c327d92e4684b5849928fa18ebfc204>`|
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Function signature for the service update callback.

See also
    `set\_service\_update\_callback </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a9ca9980de9adedb524a3143936400be0>`_ 

Member Enumeration Documentation
--------------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------+
| enum `unity::scopes::OnlineAccountClient::MainLoopSelect </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20>`_    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+

Indicates whether an external main loop already exists, or one should be
created internally.

A running main loop is essential in order to receive service updates
from the online accounts backend. When in doubt, set to
CreateInternalMainLoop.

Enumerator
       \ RunInExternalMainLoop 
An external main loop already exists and is running.

       \ CreateInternalMainLoop 
An external main loop does not exist.

+------------------------------------------------------------------------------------------------------------------------------------------------------+
| enum `unity::scopes::OnlineAccountClient::PostLoginAction </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22>`_    |
+------------------------------------------------------------------------------------------------------------------------------------------------------+

Indicates what action to take when the login process completes.

Enumerator
       \ Unknown 
An action unknown to the run-time was used.

       \ DoNothing 
Simply return to the scope with no further action.

       \ InvalidateResults 
Invalidate the scope results.

       \ ContinueActivation 
Continue with regular result / widget activation.

       \ LastActionCode\_ 
Dummy end marker.

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Onl | (                  | std::string const  | *service\_name*,   |
| ineAccountClient:: |                    | &                  |                    |
| OnlineAccountClien |                    |                    |                    |
| t                  |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *service\_type*,   |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *provider\_name*,  |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `MainLoopSelect </ | *main\_loop\_selec |
|                    |                    | sdk/scopes/cpp/uni | t*                 |
|                    |                    | ty.scopes.OnlineAc | =                  |
|                    |                    | countClient/#af940 | ``CreateInternalMa |
|                    |                    | 7bf4186d20e8445379 | inLoop``           |
|                    |                    | e000e57f20>`_      |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create
`OnlineAccountClient </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/>`_ 
for the specified account service.

Parameters
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | service\_name        | The name of the service (E.g. "com.ubuntu.scopes.youtube\_youtube").                                                                                                                         |
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | service\_type        | The type of service (E.g. "sharing").                                                                                                                                                        |
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | provider\_name       | The name of the service provider (E.g. "google").                                                                                                                                            |
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | main\_loop\_select   | Indicates whether or not an external main loop exists (see `OnlineAccountClient::MainLoopSelect </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20>`_ ).   |
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Onl | (                  | std::string const  | *service\_name*,   |
| ineAccountClient:: |                    | &                  |                    |
| OnlineAccountClien |                    |                    |                    |
| t                  |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *service\_type*,   |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *provider\_name*,  |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | :ref:`VariantMap <sdk_u | *auth\_params*,    |
|                    |                    | nity_scopes#ad5d8c |                    |
|                    |                    | cfa11a327fca6f3e4c |                    |
|                    |                    | ee11f4c10>`_       |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `MainLoopSelect </ | *main\_loop\_selec |
|                    |                    | sdk/scopes/cpp/uni | t*                 |
|                    |                    | ty.scopes.OnlineAc | =                  |
|                    |                    | countClient/#af940 | ``CreateInternalMa |
|                    |                    | 7bf4186d20e8445379 | inLoop``           |
|                    |                    | e000e57f20>`_      |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create
`OnlineAccountClient </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/>`_ 
for the specified account service.

Parameters
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | service\_name        | The name of the service (E.g. "com.ubuntu.scopes.youtube\_youtube").                                                                                                                         |
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | service\_type        | The type of service (E.g. "sharing").                                                                                                                                                        |
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | provider\_name       | The name of the service provider (E.g. "google").                                                                                                                                            |
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | auth\_params         | Authentication parameters; this can be used to pass the OAuth client keys, for example.                                                                                                      |
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | main\_loop\_select   | Indicates whether or not an external main loop exists (see `OnlineAccountClient::MainLoopSelect </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#af9407bf4186d20e8445379e000e57f20>`_ ).   |
    +----------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::vector<   | (              |                | )              |                |
| `OnlineAccount |                |                |                |                |
| Client::Servic |                |                |                |                |
| eStatus <sdk_u |                |                |                |                |
| nity_scopes_on |                |                |                |                |
| lineaccountcli |                |                |                |                |
| ent_servicesta |                |                |                |                |
| tus>`_         |                |                |                |                |
| >              |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :OnlineAccount |                |                |                |                |
| Client::get\_s |                |                |                |                |
| ervice\_status |                |                |                |                |
| es             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get statuses for all services matching the name, type and provider
specified on construction.

Returns
    A list of service statuses.

+----------------+----------------+----------------+----------------+----------------+
| void           | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :OnlineAccount |                |                |                |                |
| Client::refres |                |                |                |                |
| h\_service\_st |                |                |                |                |
| atuses         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Refresh all service statuses.

**WARNING**: If a service update callback is set, this method will
invoke that callback for each service monitored. Therefore, DO NOT call
this method from within your callback function!

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | `Result </sdk/scop | *result*,          |
| unity::scopes::Onl |                    | es/cpp/unity.scope |                    |
| ineAccountClient:: |                    | s.Result/>`_       |                    |
| register\_account\ |                    | &                  |                    |
| _login\_item       |                    |                    |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `CannedQuery </sdk | *query*,           |
|                    |                    | /scopes/cpp/unity. |                    |
|                    |                    | scopes.CannedQuery |                    |
|                    |                    | />`_               |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `PostLoginAction < | *login\_passed\_ac |
|                    |                    | /sdk/scopes/cpp/un | tion*,             |
|                    |                    | ity.scopes.OnlineA |                    |
|                    |                    | ccountClient/#a450 |                    |
|                    |                    | 5ad39c78dcc9fbb78a |                    |
|                    |                    | 594c33b9a22>`_     |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `PostLoginAction < | *login\_failed\_ac |
|                    |                    | /sdk/scopes/cpp/un | tion*              |
|                    |                    | ity.scopes.OnlineA |                    |
|                    |                    | ccountClient/#a450 |                    |
|                    |                    | 5ad39c78dcc9fbb78a |                    |
|                    |                    | 594c33b9a22>`_     |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Register a result item that requires the user to be logged in.

Parameters
    +-------------------------+-----------------------------------------------+
    | result                  | The result item that needs account access.    |
    +-------------------------+-----------------------------------------------+
    | query                   | The scope's current query.                    |
    +-------------------------+-----------------------------------------------+
    | login\_passed\_action   | The action to take upon successful login.     |
    +-------------------------+-----------------------------------------------+
    | login\_failed\_action   | The action to take upon unsuccessful login.   |
    +-------------------------+-----------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| void               | (                  | `PreviewWidget </s | *widget*,          |
| unity::scopes::Onl |                    | dk/scopes/cpp/unit |                    |
| ineAccountClient:: |                    | y.scopes.PreviewWi |                    |
| register\_account\ |                    | dget/>`_           |                    |
| _login\_item       |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `PostLoginAction < | *login\_passed\_ac |
|                    |                    | /sdk/scopes/cpp/un | tion*,             |
|                    |                    | ity.scopes.OnlineA |                    |
|                    |                    | ccountClient/#a450 |                    |
|                    |                    | 5ad39c78dcc9fbb78a |                    |
|                    |                    | 594c33b9a22>`_     |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | `PostLoginAction < | *login\_failed\_ac |
|                    |                    | /sdk/scopes/cpp/un | tion*              |
|                    |                    | ity.scopes.OnlineA |                    |
|                    |                    | ccountClient/#a450 |                    |
|                    |                    | 5ad39c78dcc9fbb78a |                    |
|                    |                    | 594c33b9a22>`_     |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Register a widget item that requires the user to be logged in.

Parameters
    +-------------------------+-----------------------------------------------+
    | widget                  | The widget item that needs account access.    |
    +-------------------------+-----------------------------------------------+
    | login\_passed\_action   | The action to take upon successful login.     |
    +-------------------------+-----------------------------------------------+
    | login\_failed\_action   | The action to take upon unsuccessful login.   |
    +-------------------------+-----------------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | `ServiceUpda | *callback*   | )            |              |
| unity::scope |              | teCallback < |              |              |              |
| s::OnlineAcc |              | /sdk/scopes/ |              |              |              |
| ountClient:: |              | cpp/unity.sc |              |              |              |
| set\_service |              | opes.OnlineA |              |              |              |
| \_update\_ca |              | ccountClient |              |              |              |
| llback       |              | /#a0c327d92e |              |              |              |
|              |              | 4684b5849928 |              |              |              |
|              |              | fa18ebfc204> |              |              |              |
|              |              | `_           |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set the callback function to be invoked when a service status changes.

Parameters
    +------------+-----------------------------------+
    | callback   | The external callback function.   |
    +------------+-----------------------------------+

