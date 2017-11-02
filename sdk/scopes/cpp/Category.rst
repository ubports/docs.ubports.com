.. _sdk_category:
Category
========

A set of related results returned by a scope and displayed within a
single pane in the Unity dash.
`More... </sdk/scopes/cpp/unity.scopes.Category/#details>`_ 

``#include <unity/scopes/Category.h>``

Inheritance diagram for unity::scopes::Category:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

std::string 

`id </sdk/scopes/cpp/unity.scopes.Category/#aa14a4f95af60187f890ef475d0d8cabe>`_ 
() const

 

| Get identifier of this Category.

 

std::string 

`title </sdk/scopes/cpp/unity.scopes.Category/#a6f11a12253de78d61761b49b45951221>`_ 
() const

 

| Get title of this Category.

 

std::string 

`icon </sdk/scopes/cpp/unity.scopes.Category/#acb98bc96e054fcdf787684cc7d0422ca>`_ 
() const

 

| Get icon of this Category.

 

CannedQuery::SCPtr 

`query </sdk/scopes/cpp/unity.scopes.Category/#a88034923f3493c2cfb5500e7aeae35cc>`_ 
() const

 

| Query to perform when this category is expanded.

 

`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
const & 

`renderer\_template </sdk/scopes/cpp/unity.scopes.Category/#a2668bac76f600a009934faa8b7eeea6d>`_ 
() const

 

| Get renderer template of this Category.

 

Detailed Description
--------------------

A set of related results returned by a scope and displayed within a
single pane in the Unity dash.

To create a `Category </sdk/scopes/cpp/unity.scopes.Category/>`_ , use
SearchReplyProxy::register\_category.

See also
    ResultItem

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Category::ico |                |                |                |                |
| n              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get icon of this `Category </sdk/scopes/cpp/unity.scopes.Category/>`_ .

Returns
    The category icon.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Category::id  |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get identifier of this
`Category </sdk/scopes/cpp/unity.scopes.Category/>`_ .

Returns
    The category identifier.

+----------------+----------------+----------------+----------------+----------------+
| CannedQuery::S | (              |                | )              | const          |
| CPtr           |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Category::que |                |                |                |                |
| ry             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Query to perform when this category is expanded.

Returns
    The expansion query or nullptr.

+----------------+----------------+----------------+----------------+----------------+
| `CategoryRende | (              |                | )              | const          |
| rer </sdk/scop |                |                |                |                |
| es/cpp/unity.s |                |                |                |                |
| copes.Category |                |                |                |                |
| Renderer/>`_   |                |                |                |                |
| const&         |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :Category::ren |                |                |                |                |
| derer\_templat |                |                |                |                |
| e              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get renderer template of this
`Category </sdk/scopes/cpp/unity.scopes.Category/>`_ .

Returns
    The category renderer template.

+----------------+----------------+----------------+----------------+----------------+
| std::string    | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :Category::tit |                |                |                |                |
| le             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get title of this `Category </sdk/scopes/cpp/unity.scopes.Category/>`_ .

Returns
    The category title.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.Category/classunity_1_1scopes_1_1_category__inherit__graph.png

