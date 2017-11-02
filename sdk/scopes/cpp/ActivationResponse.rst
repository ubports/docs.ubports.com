.. _sdk_activationresponse:
ActivationResponse
==================

Response to a result activation.
`More... </sdk/scopes/cpp/unity.scopes.ActivationResponse/#details>`_ 

``#include <unity/scopes/ActivationResponse.h>``

        Public Types
--------------------

enum  

| `Status </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02>`_ 
  {
|   `NotHandled </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02aa3c4b9a3c5fcb54e5cce7d473cecfde3>`_ ,
  `ShowDash </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02aa1a5253f6bf4d7a39ebb4e990c05508f>`_ ,
  `HideDash </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02af5f1369ea32773936a8339e0811be045>`_ ,
  `ShowPreview </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02a8fd3954d3410ba938ee9faf58bda7912>`_ ,
|   `PerformQuery </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02a91ca5a8fc7bc1e5895336fbca9bc0ac2>`_ ,
  `UpdateResult </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02a80e4269cf8263509c6a99914d40a1c00>`_ ,
  `UpdatePreview </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02ac0d0d3b809d0f7a051ca474b15a69660>`_ 
| }

 

| Status of a
  `unity::scopes::ScopeBase::activate </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ ,
  `unity::scopes::ScopeBase::perform\_action </sdk/scopes/cpp/unity.scopes.ScopeBase/#a2f4d476fa790349c9a7de52be3232d11>`_ ,
  or
  `unity::scopes::ScopeBase::activate\_result\_action </sdk/scopes/cpp/unity.scopes.ScopeBase/#a7ac39ca44f4790dd36900657692d0565>`_ 
  request.
  `More... </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02>`_ 

 

        Public Member Functions
-------------------------------

 

`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/#ac3b7700c436ec2413c1d6a3ca785cc92>`_ 
(`Status </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02>`_ 
`status </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a7caef418f9e400017d5c62c9cf25c9b8>`_ )

 

| Creates ActivationResponse with given status.

 

 

`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/#ac2c2769688b650df4e6333c052076b71>`_ 
(`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  const
&\ `query </sdk/scopes/cpp/unity.scopes.ActivationResponse/#af945b59acaaa90931743ec6ea5b0eac6>`_ )

 

| Creates an ActivationResponse with status Status::PerformQuery and a
  search query to be executed.

 

 

`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a2221da7ee9e35bbf1cf0a62812120e6b>`_ 
(`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  const
&\ `updated\_result </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a342e63bf810daa6ccd7a69520e63fb90>`_ )

 

| Creates an ActivationResponse with status Status::UpdateResult and an
  updated result that replaces the original result of the action.

 

 

`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/#aedfc9aceac4127af885311788201a09f>`_ 
(:ref:`PreviewWidgetList <sdk_unity_scopes#aed3b7b1daf2e49d0a820ef931caa792d>`
const
&\ `updated\_widgets </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a640e02cda7bff66aed9af88ff872b2ed>`_ )

 

| Creates ActivationResponse with status Status::UpdatePreview and an
  updated list of preview widgets that replace the original widgets in
  the preview. Widgets not included in this list stay intact and are
  still displayed in the preview. Responding with this type of
  ActivationResponse outside of a preview context will not have any
  effect.

 

`ActivationResponse::Status </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02>`_  

`status </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a7caef418f9e400017d5c62c9cf25c9b8>`_ 
() const

 

| Get activation status.

 

void 

`set\_scope\_data </sdk/scopes/cpp/unity.scopes.ActivationResponse/#abedc7eb1923e89385ee5244a9824524c>`_ 
(`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  const &data)

 

| Attach arbitrary data to this response.

 

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  

`scope\_data </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a25b12fabb64c492a777dfd4dffc277f3>`_ 
() const

 

| Get data attached to this response object.

 

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  

`query </sdk/scopes/cpp/unity.scopes.ActivationResponse/#af945b59acaaa90931743ec6ea5b0eac6>`_ 
() const

 

| A query to be executed if status is Status::PerformQuery.

 

`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  

`updated\_result </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a342e63bf810daa6ccd7a69520e63fb90>`_ 
() const

 

| The updated result if status is Status::UpdateResult.

 

:ref:`PreviewWidgetList <sdk_unity_scopes#aed3b7b1daf2e49d0a820ef931caa792d>` 

`updated\_widgets </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a640e02cda7bff66aed9af88ff872b2ed>`_ 
() const

 

| The updated widgets if status is Status::UpdatePreview.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**ActivationResponse**
(`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
const &other)

 

         

**ActivationResponse**
(`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
&&other)

 

`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
& 

**operator=**
(`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
const &other)

 

`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
& 

**operator=**
(`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
&&other)

 

Detailed Description
--------------------

Response to a result activation.

Member Enumeration Documentation
--------------------------------

+-------------------------------------------------------------------------------------------------------------------------------------------+
| enum `unity::scopes::ActivationResponse::Status </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a726cf6ec58d4e035e2cdc14cda152d02>`_    |
+-------------------------------------------------------------------------------------------------------------------------------------------+

Status of a
`unity::scopes::ScopeBase::activate </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ ,
`unity::scopes::ScopeBase::perform\_action </sdk/scopes/cpp/unity.scopes.ScopeBase/#a2f4d476fa790349c9a7de52be3232d11>`_ ,
or
`unity::scopes::ScopeBase::activate\_result\_action </sdk/scopes/cpp/unity.scopes.ScopeBase/#a7ac39ca44f4790dd36900657692d0565>`_ 
request.

Enumerator
       \ NotHandled 
Activation of this result wasn't handled by the scope

       \ ShowDash 
Activation of this result was handled, show the Dash

       \ HideDash 
Activation of this result was handled, hide the Dash

       \ ShowPreview 
Preview should be requested for this result

       \ PerformQuery 
Perform new search. This state is implied if creating
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
with `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  object
and is invalid otherwise

       \ UpdateResult 
Update the result. This state is implied if creating
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
with `Result </sdk/scopes/cpp/unity.scopes.Result/>`_  object and is
invalid otherwise

       \ UpdatePreview 
Update the preview. This state is implied if creating
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
with PreviewWidgetList and is invalid otherwise

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| unity::scope | (            | `Status </sd | *status*     | )            |              |
| s::Activatio |              | k/scopes/cpp |              |              |              |
| nResponse::A |              | /unity.scope |              |              |              |
| ctivationRes |              | s.Activation |              |              |              |
| ponse        |              | Response/#a7 |              |              |              |
|              |              | 26cf6ec58d4e |              |              |              |
|              |              | 035e2cdc14cd |              |              |              |
|              |              | a152d02>`_   |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Creates
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
with given status.

Parameters
    +----------+--------------------------+
    | status   | The activation status.   |
    +----------+--------------------------+

Exceptions
    +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::InvalidArgumentException   | if status is Status::PerformQuery or Status::Update. To create an `ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_  for one of these types, use the `ActivationResponse(CannedQuery const&) </sdk/scopes/cpp/unity.scopes.ActivationResponse/#ac2c2769688b650df4e6333c052076b71>`_  or `ActivationResponse(Result const&) </sdk/scopes/cpp/unity.scopes.ActivationResponse/#a2221da7ee9e35bbf1cf0a62812120e6b>`_  constructors.   |
    +-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| unity::scope | (            | `CannedQuery | *query*      | )            |              |
| s::Activatio |              |  </sdk/scope |              |              |              |
| nResponse::A |              | s/cpp/unity. |              |              |              |
| ctivationRes |              | scopes.Canne |              |              |              |
| ponse        |              | dQuery/>`_   |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Creates an
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
with status Status::PerformQuery and a search query to be executed.

Parameters
    +---------+--------------------------------------------------+
    | query   | The search query to be executed by the client.   |
    +---------+--------------------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| unity::scope | (            | `Result </sd | *updated\_re | )            |              |
| s::Activatio |              | k/scopes/cpp | sult*        |              |              |
| nResponse::A |              | /unity.scope |              |              |              |
| ctivationRes |              | s.Result/>`_ |              |              |              |
| ponse        |              | _            |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Creates an
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
with status Status::UpdateResult and an updated result that replaces the
original result of the action.

Parameters
    +-------------------+--------------------------------------------------------------------+
    | updated\_result   | The updated result to replace the original result of the action.   |
    +-------------------+--------------------------------------------------------------------+

+--------------+--------------+--------------+--------------+--------------+--------------+
| unity::scope | (            | `PreviewWidg | *updated\_wi | )            |              |
| s::Activatio |              | etList <sdk_ | dgets*       |              |              |
| nResponse::A |              | unity_scopes |              |              |              |
| ctivationRes |              | #aed3b7b1daf |              |              |              |
| ponse        |              | 2e49d0a820ef |              |              |              |
|              |              | 931caa792d>` |              |              |              |
|              |              | __           |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Creates
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
with status Status::UpdatePreview and an updated list of preview widgets
that replace the original widgets in the preview. Widgets not included
in this list stay intact and are still displayed in the preview.
Responding with this type of
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 
outside of a preview context will not have any effect.

Parameters
    +--------------------+-----------------------------------------------------------------------+
    | updated\_widgets   | The updated widgets to replace the original widgets in the preview.   |
    +--------------------+-----------------------------------------------------------------------+

Exceptions
    +-----------------------------------+--------------------------------------+
    | unity::InvalidArgumentException   | if updated\_widgets list is empty.   |
    +-----------------------------------+--------------------------------------+

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| `CannedQuery < | (              |                | )              | const          |
| /sdk/scopes/cp |                |                |                |                |
| p/unity.scopes |                |                |                |                |
| .CannedQuery/> |                |                |                |                |
| `_             |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ActivationRes |                |                |                |                |
| ponse::query   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

A query to be executed if status is Status::PerformQuery.

Exceptions
    +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if the status of this `ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_  is anything other than Status::PerformQuery.   |
    +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

Returns
    The query to be executed by the client.

+----------------+----------------+----------------+----------------+----------------+
| `Variant </sdk | (              |                | )              | const          |
| /scopes/cpp/un |                |                |                |                |
| ity.scopes.Var |                |                |                |                |
| iant/>`_       |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ActivationRes |                |                |                |                |
| ponse::scope\_ |                |                |                |                |
| data           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get data attached to this response object.

Returns
    The data attached to the response.

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | `Variant </s | *data*       | )            |              |
| unity::scope |              | dk/scopes/cp |              |              |              |
| s::Activatio |              | p/unity.scop |              |              |              |
| nResponse::s |              | es.Variant/> |              |              |              |
| et\_scope\_d |              | `_           |              |              |              |
| ata          |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Attach arbitrary data to this response.

The attached data is sent back to the scope if the status of this
response is Status::ShowPreview.

Parameters
    +--------+------------------------------------------------+
    | data   | An arbitrary value attached to the response.   |
    +--------+------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| `ActivationRes | (              |                | )              | const          |
| ponse::Status  |                |                |                |                |
| </sdk/scopes/c |                |                |                |                |
| pp/unity.scope |                |                |                |                |
| s.ActivationRe |                |                |                |                |
| sponse/#a726cf |                |                |                |                |
| 6ec58d4e035e2c |                |                |                |                |
| dc14cda152d02> |                |                |                |                |
| `_             |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ActivationRes |                |                |                |                |
| ponse::status  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get activation status.

Returns
    The activation status.

+----------------+----------------+----------------+----------------+----------------+
| `Result </sdk/ | (              |                | )              | const          |
| scopes/cpp/uni |                |                |                |                |
| ty.scopes.Resu |                |                |                |                |
| lt/>`_         |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ActivationRes |                |                |                |                |
| ponse::updated |                |                |                |                |
| \_result       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

The updated result if status is Status::UpdateResult.

Exceptions
    +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if the status of this `ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_  is anything other than Status::UpdateResult.   |
    +-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

Returns
    The result to be displayed instead of the original result.

+----------------+----------------+----------------+----------------+----------------+
| `PreviewWidget | (              |                | )              | const          |
| List <sdk_unit |                |                |                |                |
| y_scopes#aed3b |                |                |                |                |
| 7b1daf2e49d0a8 |                |                |                |                |
| 20ef931caa792d |                |                |                |                |
| >`_            |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :ActivationRes |                |                |                |                |
| ponse::updated |                |                |                |                |
| \_widgets      |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

The updated widgets if status is Status::UpdatePreview.

Exceptions
    +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if the status of this `ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_  is anything other than Status::UpdatePreview.   |
    +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

Returns
    The widgets to be displayed instead of the original widgets with
    same IDs.

