.. _sdk_unity_scopes_qt_qcategory:
unity.scopes.qt QCategory
=========================

A set of related results returned by a scope and displayed within a
single pane in the Unity dash.
:ref:`More... <sdk_unity_scopes_qt_qcategory#details>`

``#include <unity/scopes/qt/QCategory.h>``

        Public Member Functions
-------------------------------

QString 

:ref:`id <sdk_unity_scopes_qt_qcategory#a63a38bcb7635a7669c378b772892ef44>`
() const

 

| Get identifier of this Category.

 

QString 

:ref:`title <sdk_unity_scopes_qt_qcategory#a91ec8bb3764dc291bd7452fc74fde297>`
() const

 

| Get title of this Category.

 

QString 

:ref:`icon <sdk_unity_scopes_qt_qcategory#a534ad8fe06ec11c70a5438b47b93c27a>`
() const

 

| Get icon of this Category.

 

CannedQuery::SCPtr 

:ref:`query <sdk_unity_scopes_qt_qcategory#a58567db06e8b5c981fed2911c86591f8>`
() const

 

| Query to perform when this category is expanded.

 

`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
const & 

:ref:`renderer\_template <sdk_unity_scopes_qt_qcategory#a6af889b4f3e3c5e70f48df0e09511ac8>`
() const

 

| Get renderer template of this Category.

 

Detailed Description
--------------------

A set of related results returned by a scope and displayed within a
single pane in the Unity dash.

To create a :ref:`QCategory <sdk_unity_scopes_qt_qcategory>`, use
QReplyProxy::register\_category.

Member Function Documentation
-----------------------------

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QCategory |                |                |                |                |
| ::icon         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get icon of this `Category </sdk/scopes/cpp/unity.scopes.Category/>`_ .

Returns
    The category icon.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QCategory |                |                |                |                |
| ::id           |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get identifier of this
`Category </sdk/scopes/cpp/unity.scopes.Category/>`_ .

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
| Renderer/>`_   |                |                |                |                |
| const&         |                |                |                |                |
| unity::scopes: |                |                |                |                |
| :qt::QCategory |                |                |                |                |
| ::renderer\_te |                |                |                |                |
| mplate         |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get renderer template of this
`Category </sdk/scopes/cpp/unity.scopes.Category/>`_ .

Returns
    The category renderer template.

+----------------+----------------+----------------+----------------+----------------+
| QString        | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :qt::QCategory |                |                |                |                |
| ::title        |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Get title of this `Category </sdk/scopes/cpp/unity.scopes.Category/>`_ .

Returns
    The category title.

