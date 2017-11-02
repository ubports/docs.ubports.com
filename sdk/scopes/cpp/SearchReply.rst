.. _sdk_searchreply:
SearchReply
===========

Allows the results of a search query to be sent to the query source.
`More... </sdk/scopes/cpp/unity.scopes.SearchReply/#details>`_ 

``#include <unity/scopes/SearchReply.h>``

Inheritance diagram for unity::scopes::SearchReply:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`register\_departments </sdk/scopes/cpp/unity.scopes.SearchReply/#a17fdd52a4a8b19d6f8e13e5d7f576344>`_ 
(Department::SCPtr const &parent)=0

 

| Register departments for the current search reply and provide the
  current department.

 

virtual Category::SCPtr 

`register\_category </sdk/scopes/cpp/unity.scopes.SearchReply/#aaa061806a96f50ff66abc6184135ea66>`_ 
(std::string const &id, std::string const &title, std::string const
&icon,
`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
const
&renderer\_template=\ `CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ \ ())=0

 

| Register new category and send it to the source of the query.

 

virtual void 

`register\_category </sdk/scopes/cpp/unity.scopes.SearchReply/#a3bf901e2b5c8b6db3c8e758a9ccbef1c>`_ 
(Category::SCPtr category)=0

 

| Register an existing category instance and send it to the source of
  the query.

 

virtual Category::SCPtr 

`lookup\_category </sdk/scopes/cpp/unity.scopes.SearchReply/#a55335c829bf950d36dee6c394569688a>`_ 
(std::string const &id)=0

 

| Returns a previously registered category.

 

virtual bool 

`push </sdk/scopes/cpp/unity.scopes.SearchReply/#a63d6de93152b3a972901c2d406ef5760>`_ 
(`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`_ 
const &result)=0

 

| Sends a single result to the source of a query.

 

virtual bool 

`push </sdk/scopes/cpp/unity.scopes.SearchReply/#ad6c02e387248cfe382dd3d8c7cc9c589>`_ 
(experimental::Annotation const &annotation)=0

 

| Push an annotation.

 

virtual bool 

`push </sdk/scopes/cpp/unity.scopes.SearchReply/#a121842b4206980360c208a1f5828ef12>`_ 
(:ref:`Filters <sdk_unity_scopes#adab58c13cf604e0e64bd6b1a745364d3>` const
&filters, `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_ 
const &filter\_state)=0

 

| Sends all filters and their states to the source of a query.

 

virtual 

`~SearchReply </sdk/scopes/cpp/unity.scopes.SearchReply/#aafc76a74146ebed8b8849797838ef5c5>`_ 
()

 

| Destroys a Reply.

 

virtual Category::SCPtr 

`register\_category </sdk/scopes/cpp/unity.scopes.SearchReply/#a73d044ea7719f3538e391477d8dd7afb>`_ 
(std::string const &id, std::string const &title, std::string const
&icon, `CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_  const
&query,
`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
const
&renderer\_template=\ `CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ \ ())=0

 

| Register new category and send it to the source of the query.

 

virtual void 

`push\_surfacing\_results\_from\_cache </sdk/scopes/cpp/unity.scopes.SearchReply/#a4ba805136164b11bb358917070cde24d>`_ 
()=0

 

| Push the results that were produced by the most recent surfacing
  query.

 

virtual bool 

`push </sdk/scopes/cpp/unity.scopes.SearchReply/#abdd099e2e777b739988ce545a8fb3eec>`_ 
(:ref:`Filters <sdk_unity_scopes#adab58c13cf604e0e64bd6b1a745364d3>` const
&filters)=0

 

| Sends all filter definitions to the source of a query.

 

|-| Public Member Functions inherited from
`unity::scopes::Reply </sdk/scopes/cpp/unity.scopes.Reply/>`_ 

virtual void 

`finished </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
()=0

 

| Informs the source of a query that the query results are complete.

 

virtual void 

`error </sdk/scopes/cpp/unity.scopes.Reply/#a526c9cbb11f896210835fb3420324ba8>`_ 
(std::exception\_ptr ex)=0

 

| Informs the source of a query that the query was terminated due to an
  error.

 

virtual void 

`info </sdk/scopes/cpp/unity.scopes.Reply/#af35cbaba152e4919306f32b06bd81029>`_ 
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`_  const
&op\_info)=0

 

| Informs the source of a query that additional information regarding
  the reply is available.

 

virtual 

`~Reply </sdk/scopes/cpp/unity.scopes.Reply/#a9f0cfeeee75a27e111ebd955523e1bb0>`_ 
()

 

| Destroys a Reply.

 

|-| Public Member Functions inherited from
`unity::scopes::Object </sdk/scopes/cpp/unity.scopes.Object/>`_ 

virtual std::string 

`endpoint </sdk/scopes/cpp/unity.scopes.Object/#ad7618cc9d878c40b389361d4acd473ae>`_ 
()=0

 

| Returns the endpoint this proxy connects to.

 

virtual std::string 

`identity </sdk/scopes/cpp/unity.scopes.Object/#a1b55aea886f0a68cb8a578f7ee0b1cfd>`_ 
()=0

 

| Returns the identity of the target object of this proxy.

 

virtual std::string 

`target\_category </sdk/scopes/cpp/unity.scopes.Object/#a40a997516629df3dacca9742dbddd6cb>`_ 
()=0

 

| Returns the category of the target object of this proxy.

 

virtual int64\_t 

`timeout </sdk/scopes/cpp/unity.scopes.Object/#a41d9839f1e3cbcd6d8baee0736feccab>`_ 
()=0

 

| Returns the timeout in milliseconds if this proxy is a twoway proxy.

 

virtual std::string 

`to\_string </sdk/scopes/cpp/unity.scopes.Object/#a9ae27e1f30dc755abcd796a1e8a25150>`_ 
()=0

 

| Converts a proxy into its string representation.

 

Detailed Description
--------------------

Allows the results of a search query to be sent to the query source.

Constructor & Destructor Documentation
--------------------------------------

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | virtual                              |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual        | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :SearchReply:: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ~SearchReply   |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Destroys a `Reply </sdk/scopes/cpp/unity.scopes.Reply/>`_ .

If a `Reply </sdk/scopes/cpp/unity.scopes.Reply/>`_  goes out of scope
without a prior call to
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ ,
the destructor implicitly calls
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ .

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual      | (            | std: |                                      |
| :string  | *id*         | )          |                                      |
|    |              |                  |                                      |
| | Category::SC |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | Ptr          |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | unity::scope |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchRep |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ly::lookup\_ |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | category     |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Returns a previously registered category.

Returns
    The category instance or ``nullptr`` if the category does not exist.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual bool | (            | `Cat |                                      |
| egorised | *result*     | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | Resu |                                      |
| lt </sdk |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchRep |              | /sco |                                      |
| pes/cpp/ |              |            |                                      |
|    |              |                  |                                      |
| | ly::push     |              | unit |                                      |
| y.scopes |              |            |                                      |
|    |              |                  |                                      |
| |              |              | .Cat |                                      |
| egorised |              |            |                                      |
|    |              |                  |                                      |
| |              |              | Resu |                                      |
| lt/>`_   |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Sends a single result to the source of a query.

Any calls to
`push() </sdk/scopes/cpp/unity.scopes.SearchReply/#a63d6de93152b3a972901c2d406ef5760>`_ 
after
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
was called are ignored.

Returns
    The return value is true if the result was accepted, false
    otherwise. A false return value can be due to
    `finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ 
    having been called earlier, or the client that sent the query having
    cancelled that query. The return value is false also if the query
    has a cardinality limit and is reached or exceeded. (The return
    value is false for the last valid push and subsequent pushes.)

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual bool | (            | expe |                                      |
| rimental | *annotation* | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | ::An |                                      |
| notation |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchRep |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | ly::push     |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Push an annotation.

The annotation will be rendered at a next available spot below the
category of last pushed result. To render an annotation in the top
annotation area, push it before pushing search results.

Note
    The Unity shell can ignore some or all annotations, depending on
    available screen real estate.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual bool       | (             |                                      |
|       | :ref:`Filters <sdk_unit | *filter |                                      |
| s*,         |                        |                                      |
| | unity::scopes::Sea |               |                                      |
|       | y_scopes#adab58c13 |         |                                      |
|             |                        |                                      |
| | rchReply::push     |               |                                      |
|       | cf604e0e64bd6b1a74 |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | 5364d3>`_          |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `FilterState </sdk | *filter |                                      |
| \_state*    |                        |                                      |
| |                    |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | scopes.FilterState |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | />`_               |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Sends all filters and their states to the source of a query.

**`Deprecated: </sdk/scopes/cpp/deprecated/#_deprecated000002>`_ **
    Sending filter state back to the UI is deprecated and will be
    removed from future releases. Please use the `push(Filters
    const&) </sdk/scopes/cpp/unity.scopes.SearchReply/#abdd099e2e777b739988ce545a8fb3eec>`_ 
    method instead.

    Returns
        True if the filters were accepted, false otherwise.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual bool | (            | `Fil |                                      |
| ters <sd | *filters*    | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | k_un |                                      |
| ity_scop |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchRep |              | es#a |                                      |
| dab58c13 |              |            |                                      |
|    |              |                  |                                      |
| | ly::push     |              | cf60 |                                      |
| 4e0e64bd |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 6b1a |                                      |
| 745364d3 |              |            |                                      |
|    |              |                  |                                      |
| |              |              | >`_  |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Sends all filter definitions to the source of a query.

Returns
    True if the filters were accepted, false otherwise.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | pure virtual                         |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | virtual void   | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :SearchReply:: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | push\_surfacin |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | g\_results\_fr |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | om\_cache      |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Push the results that were produced by the most recent surfacing query.

The runtime automatically saves the results of the most recent surfacing
query. If a scope cannot produce a result for a surfacing query
(presumably, due to connectivity problems), calling
`push\_surfacing\_results\_from\_cache() </sdk/scopes/cpp/unity.scopes.SearchReply/#a4ba805136164b11bb358917070cde24d>`_ 
pushes the results that were produced by the most recent successful
surfacing query from the cache. If a scope cannot produce surfacing
results, it can call this method to "replay" the previous results. In
turn, this avoids the user being presented with an empty screen if
he/she swipes to the scope while the device does not have connectivity.

This method has an effect only if called for a surfacing query (that is,
a query with an empty query string). If called for a non-empty query, it
does nothing.

You must call this method before calling
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ ,
otherwise no cached results will be pushed
(`push\_surfacing\_results\_from\_cache() </sdk/scopes/cpp/unity.scopes.SearchReply/#a4ba805136164b11bb358917070cde24d>`_ 
implicitly calls
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ ).

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | Category::SCPtr    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sea |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | rchReply::register |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | \_category         |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *title* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *icon*, |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `CategoryRenderer  | *render |                                      |
| er\_templat |                        |                                      |
| |                    |               |                                      |
|       | </sdk/scopes/cpp/u | e*      |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | nity.scopes.Catego | =       |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ryRenderer/>`_     | ``Categ |                                      |
| oryRenderer |                        |                                      |
| |                    |               |                                      |
|       | const &            | ()``    |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Register new category and send it to the source of the query.

Parameters
    +----------------------+-----------------------------------------------------------------+
    | id                   | The identifier of the category                                  |
    +----------------------+-----------------------------------------------------------------+
    | title                | The title of the category                                       |
    +----------------------+-----------------------------------------------------------------+
    | icon                 | The icon of the category                                        |
    +----------------------+-----------------------------------------------------------------+
    | renderer\_template   | The renderer template to be used for results in this category   |
    +----------------------+-----------------------------------------------------------------+

Returns
    The category instance

Exceptions
    +-------------------------------------------+---------------------------------------------------------+
    | unity::scopes::InvalidArgumentException   | if category with that id has already been registered.   |
    +-------------------------------------------+---------------------------------------------------------+

Note
    The UI uses category IDs for incremental rendering when refreshing
    search results. For this to work correctly, you need to make sure
    that you use the same category ID for different queries if the
    search results apply to the same category as for a previous search.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | Cate |                                      |
| gory::SC | *category*   | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | Ptr  |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchRep |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ly::register |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | \_category   |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Register an existing category instance and send it to the source of the
query.

The purpose of this call is to register a category obtained via
`SearchListenerBase::push(Category::SCPtr
const&) </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#af246bd38c8ba9cec36dfae3d0607dbfc>`_ 
when aggregating results and categories from other scope(s).

Exceptions
    +-----------------------------------+--------------------------------------+
    | unity::InvalidArgumentException   | if category is already registered.   |
    +-----------------------------------+--------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | pure virtual                         |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual            | (             |                                      |
|       | std::string const  | *id*,   |                                      |
|             |                        |                                      |
| | Category::SCPtr    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| | unity::scopes::Sea |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | rchReply::register |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| | \_category         |               |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *title* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | std::string const  | *icon*, |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | &                  |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `CannedQuery </sdk | *query* |                                      |
| ,           |                        |                                      |
| |                    |               |                                      |
|       | /scopes/cpp/unity. |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | scopes.CannedQuery |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | />`_               |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | const &            |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    |               |                                      |
|       | `CategoryRenderer  | *render |                                      |
| er\_templat |                        |                                      |
| |                    |               |                                      |
|       | </sdk/scopes/cpp/u | e*      |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | nity.scopes.Catego | =       |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | ryRenderer/>`_     | ``Categ |                                      |
| oryRenderer |                        |                                      |
| |                    |               |                                      |
|       | const &            | ()``    |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| |                    | )             |                                      |
|       |                    |         |                                      |
|             |                        |                                      |
| +--------------------+-------------- |                                      |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
+--------------------------------------+--------------------------------------+

Register new category and send it to the source of the query.

Parameters
    +----------------------+-----------------------------------------------------------------+
    | id                   | The identifier of the category                                  |
    +----------------------+-----------------------------------------------------------------+
    | title                | The title of the category                                       |
    +----------------------+-----------------------------------------------------------------+
    | icon                 | The icon of the category                                        |
    +----------------------+-----------------------------------------------------------------+
    | query                | Query to perform when expanding this category                   |
    +----------------------+-----------------------------------------------------------------+
    | renderer\_template   | The renderer template to be used for results in this category   |
    +----------------------+-----------------------------------------------------------------+

Returns
    The category instance

Exceptions
    +-------------------------------------------+---------------------------------------------------------+
    | unity::scopes::InvalidArgumentException   | if category with that id has already been registered.   |
    +-------------------------------------------+---------------------------------------------------------+

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | pure virtual                         |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | Depa |                                      |
| rtment:: | *parent*     | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | SCPt |                                      |
| r        |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchRep |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | ly::register |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | \_department |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | s            |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Register departments for the current search reply and provide the
current department.

Departments are optional. If scope supports departments, it is expected
to register departments on every search as follows:

-  create a `Department </sdk/scopes/cpp/unity.scopes.Department/>`_ 
   node for current department and attach to it a list of its
   subdepartments (unless current department is a leaf department) using
   `unity::scopes::Department::set\_subdepartments() </sdk/scopes/cpp/unity.scopes.Department/#ab17057cef9ce35f1302f5421a087c067>`_ 
   method. For every subdepartment on the list set "has\_subdepartments"
   flag if applicable.
-  provide an alternate label for current department with
   `unity::scopes::Department::set\_alternate\_label() </sdk/scopes/cpp/unity.scopes.Department/#a9ab1192cdfcbce44b9164df11290c217>`_ .
-  create a `Department </sdk/scopes/cpp/unity.scopes.Department/>`_ 
   node for parent of current department (if applicable - not when in
   root department), and attach current
   `Department </sdk/scopes/cpp/unity.scopes.Department/>`_  node to it
   with
   `unity::scopes::Department::set\_subdepartments() </sdk/scopes/cpp/unity.scopes.Department/#ab17057cef9ce35f1302f5421a087c067>`_ 
   method.
-  register the parent department with
   `unity::scopes::SearchReply::register\_departments() </sdk/scopes/cpp/unity.scopes.SearchReply/#a17fdd52a4a8b19d6f8e13e5d7f576344>`_ .

For example, assuming the user is visiting a "History" department in
"Books", and "History" has sub-departments such as "World War Two" and
"Ancient", the code that registers departments for current search in
"History" may look like this:

unity::scopes::Department::SPtr books =
move(\ `unity::scopes::Department::create </sdk/scopes/cpp/unity.scopes.Department/#a11a3b8e9a3317f963d4bc9f46f79922b>`_ \ ("books",
query, "Books")); // the parent of "History"

unity::scopes::Department::SPtr history =
move(\ `unity::scopes::Department::create </sdk/scopes/cpp/unity.scopes.Department/#a11a3b8e9a3317f963d4bc9f46f79922b>`_ \ ("history",
query, "History"));

:ref:`unity::scopes::DepartmentList <sdk_unity_scopes#ab8effc4ea05a59f2ddea896833f07231>`
history\_depts({

move(\ `unity::scopes::Department::create </sdk/scopes/cpp/unity.scopes.Department/#a11a3b8e9a3317f963d4bc9f46f79922b>`_ \ ("ww2",
query, "World War Two")),

move(\ `unity::scopes::Department::create </sdk/scopes/cpp/unity.scopes.Department/#a11a3b8e9a3317f963d4bc9f46f79922b>`_ \ ("ancient",
query, "Ancient"))});

history->set\_subdepartments(history\_depts);

books->set\_subdepartments({history});

reply->register\_departments(books);

Current department should be the department returned by
`unity::scopes::CannedQuery::department\_id() </sdk/scopes/cpp/unity.scopes.CannedQuery/#a61351960149bb4c0840f020c4e645f66>`_ .
Empty department id denotes the root deparment.

Parameters
    +----------+--------------------------------------------------------------------------------------------+
    | parent   | The parent department of current department, or current one if visiting root department.   |
    +----------+--------------------------------------------------------------------------------------------+

Exceptions
    +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | if departments are invalid (nullptr passed, current department not present in the parent's tree, duplicated department ids present in the tree).   |
    +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.SearchReply/classunity_1_1scopes_1_1_search_reply__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.SearchReply/closed.png

