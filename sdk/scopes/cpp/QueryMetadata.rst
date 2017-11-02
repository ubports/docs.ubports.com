.. _sdk_querymetadata:
QueryMetadata
=============

Base class for extra metadata passed to scopes as a part of a request.
`More... </sdk/scopes/cpp/unity.scopes.QueryMetadata/#details>`_ 

``#include <unity/scopes/QueryMetadata.h>``

Inheritance diagram for unity::scopes::QueryMetadata:

|Inheritance graph|

[legend]

        Public Types
--------------------

enum  

`ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a20eb916661728a7d9c00485e28f88701>`_ 
{ **Unknown**, **Connected**, **Disconnected** }

 

| Indicates the internet connectivity status.
  `More... </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a20eb916661728a7d9c00485e28f88701>`_ 

 

        Public Member Functions
-------------------------------

std::string 

`locale </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a3ca25150669d96171aec6ab56ef6bb0e>`_ 
() const

 

| Get the locale string.

 

std::string 

`form\_factor </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a494f592f3055fba4da6554a6d8fb7c42>`_ 
() const

 

| Get the form factor string.

 

void 

`set\_internet\_connectivity </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a5b2395aff97cbe1009759de03f270bf3>`_ 
(`ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a20eb916661728a7d9c00485e28f88701>`_ 
connectivity\_status)

 

| Set internet connectivity status.

 

`ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a20eb916661728a7d9c00485e28f88701>`_  

`internet\_connectivity </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a3da06f370e53b5e381ec8cf33d8ee191>`_ 
() const

 

| Get internet connectivity status.

 

Detailed Description
--------------------

Base class for extra metadata passed to scopes as a part of a request.

Member Enumeration Documentation
--------------------------------

+---------------------------------------------------------------------------------------------------------------------------------------------+
| enum `unity::scopes::QueryMetadata::ConnectivityStatus </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a20eb916661728a7d9c00485e28f88701>`_    |
+---------------------------------------------------------------------------------------------------------------------------------------------+

Indicates the internet connectivity status.

The ``Unknown`` enumerator indicates that
`set\_internet\_connectivity() </sdk/scopes/cpp/unity.scopes.QueryMetadata/#a5b2395aff97cbe1009759de03f270bf3>`_ 
has not yet been called, hence the connectivity status is currently
unknown.

The ``Connected`` enumerator simply indicates that we are currently
connected to the internet. This does not necessarily mean that a
particular host on the internet will be reachable.

The ``Disconnected`` enumerator indicates that we are currently not
connected to the internet. In this state, a scope need not waste any
time attempting remote calls, as they will almost certainly fail.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :QueryMetadata |                |                |                |                |
| ::form\_factor |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the form factor string.

Returns
    The form factor string

+----------------+----------------+----------------+----------------+----------------+
| `QueryMetadata | (              |                | )              | const          |
| ::Connectivity |                |                |                |                |
| Status </sdk/s |                |                |                |                |
| copes/cpp/unit |                |                |                |                |
| y.scopes.Query |                |                |                |                |
| Metadata/#a20e |                |                |                |                |
| b916661728a7d9 |                |                |                |                |
| c00485e28f8870 |                |                |                |                |
| 1>`_           |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :QueryMetadata |                |                |                |                |
| ::internet\_co |                |                |                |                |
| nnectivity     |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get internet connectivity status.

Returns
    Enum indicating the internet connectivity status.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :QueryMetadata |                |                |                |                |
| ::locale       |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get the locale string.

Returns
    The locale string

+--------------+--------------+--------------+--------------+--------------+--------------+
| void         | (            | `Connectivit | *connectivit | )            |              |
| unity::scope |              | yStatus </sd | y\_status*   |              |              |
| s::QueryMeta |              | k/scopes/cpp |              |              |              |
| data::set\_i |              | /unity.scope |              |              |              |
| nternet\_con |              | s.QueryMetad |              |              |              |
| nectivity    |              | ata/#a20eb91 |              |              |              |
|              |              | 6661728a7d9c |              |              |              |
|              |              | 00485e28f887 |              |              |              |
|              |              | 01>`_        |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Set internet connectivity status.

Parameters
    +------------------------+-----------------------------------------------------+
    | connectivity\_status   | Enum indicating the internet connectivity status.   |
    +------------------------+-----------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.QueryMetadata/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png

