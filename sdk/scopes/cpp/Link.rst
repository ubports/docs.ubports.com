.. _sdk_link:
Link
====

A hyperlink (label and canned query).
`More... </sdk/scopes/cpp/unity.scopes.Link/#details>`_ 

``#include <unity/scopes/Link.h>``

        Public Member Functions
-------------------------------

std::string 

`label </sdk/scopes/cpp/unity.scopes.Link/#aa102f709befd57d92c8ce3767d82f36a>`_ 
() const

 

| Returns the label of this Link instance.

 

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  

`query </sdk/scopes/cpp/unity.scopes.Link/#a59a1b30d1b68fbfb025d8d729257920a>`_ 
() const

 

| Returns a CannedQuery instance.

 

Detailed Description
--------------------

A hyperlink (label and canned query).

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Link::label   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the label of this `Link </sdk/scopes/cpp/unity.scopes.Link/>`_ 
instance.

Returns
    The label of this link instance.

+----------------+----------------+----------------+----------------+----------------+
| `CannedQuery < | (              |                | )              | const          |
| /sdk/scopes/cp |                |                |                |                |
| p/unity.scopes |                |                |                |                |
| .CannedQuery/> |                |                |                |                |
| `_             |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Link::query   |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns a `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 
instance.

Returns
    The canned query.

