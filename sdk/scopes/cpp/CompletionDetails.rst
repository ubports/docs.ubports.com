.. _sdk_completiondetails:
CompletionDetails
=================

A container for details about the completion status of a query as well
as any additional information regarding the operation of the request.
`More... </sdk/scopes/cpp/unity.scopes.CompletionDetails/#details>`_ 

``#include <unity/scopes/CompletionDetails.h>``

        Public Types
--------------------

enum  

`CompletionStatus </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`_ 
{ **OK**, **Cancelled**, **Error** }

 

| Indicates the completion status for a query.
  `More... </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`_ 

 

        Public Member Functions
-------------------------------

 

`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a7d7e63b4ef6a1286bfd9746efd58e926>`_ 
(`CompletionStatus </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`_ 
`status </sdk/scopes/cpp/unity.scopes.CompletionDetails/#ad9fdc4fb9b50a64bf29b0427e48c8c07>`_ )

 

| Create CompletionDetails with the given completion status.

 

 

`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/#af85a27d3c36fc776f234712dcb4da55c>`_ 
(`CompletionStatus </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`_ 
`status </sdk/scopes/cpp/unity.scopes.CompletionDetails/#ad9fdc4fb9b50a64bf29b0427e48c8c07>`_ ,
std::string const
&\ `message </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a08cb1da4948495694ef4f131e3f53bce>`_ )

 

| Create CompletionDetails with the given completion status and message.

 

`CompletionStatus </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`_  

`status </sdk/scopes/cpp/unity.scopes.CompletionDetails/#ad9fdc4fb9b50a64bf29b0427e48c8c07>`_ 
() const noexcept

 

| Get the completion status.

 

std::string 

`message </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a08cb1da4948495694ef4f131e3f53bce>`_ 
() const

 

| Get the completion message string.

 

void 

`add\_info </sdk/scopes/cpp/unity.scopes.CompletionDetails/#af296751d26e25283e7287efaaf01878b>`_ 
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`_  const
&info)

 

| Add additional operation info to the info list.

 

std::vector<
`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`_  > 

`info\_list </sdk/scopes/cpp/unity.scopes.CompletionDetails/#ad1d378fbd9600558920faafbe08e5f74>`_ 
() const

 

| Get a list of all additional operation info.

 

Copy and assignment

Copy and assignment operators (move and non-move versions) have the
usual value semantics.

         

**CompletionDetails**
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
const &other)

 

         

**CompletionDetails**
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
&&)

 

`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
& 

**operator=**
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
const &other)

 

`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
& 

**operator=**
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
&&)

 

Detailed Description
--------------------

A container for details about the completion status of a query as well
as any additional information regarding the operation of the request.

Member Enumeration Documentation
--------------------------------

+---------------------------------------------------------------------------------------------------------------------------------------------------+
| enum `unity::scopes::CompletionDetails::CompletionStatus </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`_    |
+---------------------------------------------------------------------------------------------------------------------------------------------------+

Indicates the completion status for a query.

The ``Error`` enumerator indicates that a query terminated abnormally,
for example, a scope could not be reached over the network or explicitly
reported an error.

Constructor & Destructor Documentation
--------------------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| unity::scope | (            | `CompletionS | *status*     | )            |              |
| s::Completio |              | tatus </sdk/ |              |              |              |
| nDetails::Co |              | scopes/cpp/u |              |              |              |
| mpletionDeta |              | nity.scopes. |              |              |              |
| ils          |              | CompletionDe |              |              |              |
|              |              | tails/#a38cb |              |              |              |
|              |              | f8502d92a411 |              |              |              |
|              |              | d1c6ac5d1bd6 |              |              |              |
|              |              | ee1c>`_      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Create
`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
with the given completion status.

Parameters
    +----------+-------------------------------------------------+
    | status   | Indicates the completion status of the query.   |
    +----------+-------------------------------------------------+

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::Com | (                  | `CompletionStatus  | *status*,          |
| pletionDetails::Co |                    | </sdk/scopes/cpp/u |                    |
| mpletionDetails    |                    | nity.scopes.Comple |                    |
|                    |                    | tionDetails/#a38cb |                    |
|                    |                    | f8502d92a411d1c6ac |                    |
|                    |                    | 5d1bd6ee1c>`_      |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | std::string const  | *message*          |
|                    |                    | &                  |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create
`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
with the given completion status and message.

Parameters
    +-----------+---------------------------------------------------------+
    | status    | Indicates the completion status of the query.           |
    +-----------+---------------------------------------------------------+
    | message   | Contains further details about the completion status.   |
    +-----------+---------------------------------------------------------+

Member Function Documentation
-----------------------------

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | `OperationIn | *info*       | )            |              |
| unity::scope |              | fo </sdk/sco |              |              |              |
| s::Completio |              | pes/cpp/unit |              |              |              |
| nDetails::ad |              | y.scopes.Ope |              |              |              |
| d\_info      |              | rationInfo/> |              |              |              |
|              |              | `_           |              |              |              |
|              |              | const &      |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Add additional operation info to the info list.

Parameters
    +--------+---------------------------------------------------------------------------------------------+
    | info   | Contains details about something of interest that occurs during the operation of a query.   |
    +--------+---------------------------------------------------------------------------------------------+

+----------------+----------------+----------------+----------------+----------------+
| std::vector<   | (              |                | )              | const          |
| `OperationInfo |                |                |                |                |
|  </sdk/scopes/ |                |                |                |                |
| cpp/unity.scop |                |                |                |                |
| es.OperationIn |                |                |                |                |
| fo/>`_         |                |                |                |                |
| >              |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :CompletionDet |                |                |                |                |
| ails::info\_li |                |                |                |                |
| st             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get a list of all additional operation info.

Returns
    List containing additional information regarding the operation of
    the query.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :CompletionDet |                |                |                |                |
| ails::message  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the completion message string.

Returns
    The completion message string.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | noexcept                             |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | `CompletionDet | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | ails::Completi |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | onStatus </sdk |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | /scopes/cpp/un |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ity.scopes.Com |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | pletionDetails |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | /#a38cbf8502d9 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 2a411d1c6ac5d1 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | bd6ee1c>`_     |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :CompletionDet |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ails::status   |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the completion status.

Returns
    Enum indicating the completion status of the query.

