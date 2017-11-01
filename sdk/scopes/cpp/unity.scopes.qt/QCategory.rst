A set of related results returned by a scope and displayed within a
single pane in the Unity dash.
`More... </sdk/scopes/cpp/unity.scopes.qt/QCategory#details>`__

``#include <unity/scopes/qt/QCategory.h>``

        Public Member Functions
-------------------------------

QString 

`id </sdk/scopes/cpp/unity.scopes.qt/QCategory#a63a38bcb7635a7669c378b772892ef44>`__
() const

 

| Get identifier of this Category.

 

QString 

`title </sdk/scopes/cpp/unity.scopes.qt/QCategory#a91ec8bb3764dc291bd7452fc74fde297>`__
() const

 

| Get title of this Category.

 

QString 

`icon </sdk/scopes/cpp/unity.scopes.qt/QCategory#a534ad8fe06ec11c70a5438b47b93c27a>`__
() const

 

| Get icon of this Category.

 

CannedQuery::SCPtr 

`query </sdk/scopes/cpp/unity.scopes.qt/QCategory#a58567db06e8b5c981fed2911c86591f8>`__
() const

 

| Query to perform when this category is expanded.

 

`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`__
const & 

`renderer\_template </sdk/scopes/cpp/unity.scopes.qt/QCategory#a6af889b4f3e3c5e70f48df0e09511ac8>`__
() const

 

| Get renderer template of this Category.

 

Detailed Description
--------------------

A set of related results returned by a scope and displayed within a
single pane in the Unity dash.

To create a `QCategory </sdk/scopes/cpp/unity.scopes.qt/QCategory/>`__,
use QReplyProxy::register\_category.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QCategory |                |                |                |                |
| ::icon         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get icon of this `Category </sdk/scopes/cpp/unity.scopes.Category/>`__.

Returns
    The category icon.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QCategory |                |                |                |                |
| ::id           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get identifier of this
`Category </sdk/scopes/cpp/unity.scopes.Category/>`__.

Returns
    The category identifier.

+----------------+----------------+----------------+----------------+----------------+
| CannedQuery::S | (              |                | )              | const          |
| CPtr           |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QCategory |                |                |                |                |
| ::query        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Query to perform when this category is expanded.

Returns
    The expansion query or nullptr.

+----------------+----------------+----------------+----------------+----------------+
| `CategoryRende | (              |                | )              | const          |
| rer </sdk/scop |                |                |                |                |
| es/cpp/unity.s |                |                |                |                |
| copes.Category |                |                |                |                |
| Renderer/>`__  |                |                |                |                |
| const&         |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QCategory |                |                |                |                |
| ::renderer\_te |                |                |                |                |
| mplate         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get renderer template of this
`Category </sdk/scopes/cpp/unity.scopes.Category/>`__.

Returns
    The category renderer template.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QCategory |                |                |                |                |
| ::title        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get title of this `Category </sdk/scopes/cpp/unity.scopes.Category/>`__.

Returns
    The category title.

