.. _sdk_searchlistenerbase:
SearchListenerBase
==================

Abstract base interface for a client to receive the results of a query.
`More... </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#details>`_ 

``#include <unity/scopes/SearchListenerBase.h>``

Inheritance diagram for unity::scopes::SearchListenerBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#a93ba33c6e1a0064ac9756134ccb11705>`_ 
(Department::SCPtr const &parent)

 

| Called at most once by the scopes runtime for a tree of departments
  returned by a query.

 

        virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#a3ebd3e8be67824c7a34068da6075bd99>`_ 
(`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`_ 
result)=0

 

| Called once by the scopes runtime for each result that is returned by
  a query().

 

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#ab96864e4b3d6718e4b87b81aa14657e3>`_ 
(experimental::Annotation annotation)

 

| Called once by the scopes runtime for each annotation that is returned
  by a query().

 

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#af246bd38c8ba9cec36dfae3d0607dbfc>`_ 
(Category::SCPtr const &category)

 

| Called once by the scopes runtime for each category that is returned
  by a query().

 

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#ac7904ac1f83fe60cddc8f08c6e7d971b>`_ 
(:ref:`Filters <sdk_unity_scopes#adab58c13cf604e0e64bd6b1a745364d3>` const
&filters, `FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_ 
const &filter\_state)

 

| Called once by the scopes to send all the filters and their state.

 

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#aaf1af46d5d7b1219558f15c22ef85b10>`_ 
(:ref:`Filters <sdk_unity_scopes#adab58c13cf604e0e64bd6b1a745364d3>` const
&filters)

 

| Called once by the scope to send all filters and their states.

 

|-| Public Member Functions inherited from
`unity::scopes::ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase/>`_ 

virtual void 

`finished </sdk/scopes/cpp/unity.scopes.ListenerBase/#afb44937749b61c9e3ebfa20ec6e4634b>`_ 
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 
const &details)=0

 

| Called once by the scopes runtime after the final result for a request
  was sent.

 

virtual void 

`info </sdk/scopes/cpp/unity.scopes.ListenerBase/#a3b38fa642754142f40968f3ff8d1bdc8>`_ 
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`_  const
&op\_info)

 

| Called by the scopes runtime each time a scope reports additional
  information about the reply to a query.

 

Detailed Description
--------------------

Abstract base interface for a client to receive the results of a query.

An instance of this interface must be passed to
`Scope::search() </sdk/scopes/cpp/unity.scopes.Scope/#a09976690ca801ecada50687df6046a29>`_ .
Results for the query are delivered to the client by the scopes run time
by invoking the appropriate push method.

If the implementation of a push method throws an exception, the scopes
runtime calls
`ListenerBase::finished() </sdk/scopes/cpp/unity.scopes.ListenerBase/#afb44937749b61c9e3ebfa20ec6e4634b>`_ 
with an 'Error' status.

See also
    `ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase/>`_ 

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | Depa |                                      |
| rtment:: | *parent*     | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | SCPt |                                      |
| r        |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchLis |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | tenerBase::p |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ush          |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called at most once by the scopes runtime for a tree of departments
returned by a query.

The default implementation does nothing.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | expe |                                      |
| rimental | *annotation* | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | ::An |                                      |
| notation |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchLis |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | tenerBase::p |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ush          |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called once by the scopes runtime for each annotation that is returned
by a query().

The default implementation does nothing.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | Cate |                                      |
| gory::SC | *category*   | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | Ptr  |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchLis |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| | tenerBase::p |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| | ush          |              |      |                                      |
|          |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called once by the scopes runtime for each category that is returned by
a query().

Receipt of categories may be interleaved with the receipt of results,
that is, there is no guarantee that the complete set of categories will
be provided before the first query result.

The default implementation does nothing.

+--------------------------------------+--------------------------------------+
| +--------------------+-------------- | virtual                              |
| ------+--------------------+-------- |                                      |
| ------------+                        |                                      |
| | virtual void       | (             |                                      |
|       | :ref:`Filters <sdk_unit | *filter |                                      |
| s*,         |                        |                                      |
| | unity::scopes::Sea |               |                                      |
|       | y_scopes#adab58c13 |         |                                      |
|             |                        |                                      |
| | rchListenerBase::p |               |                                      |
|       | cf604e0e64bd6b1a74 |         |                                      |
|             |                        |                                      |
| | ush                |               |                                      |
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

Called once by the scopes to send all the filters and their state.

**`Deprecated: </sdk/scopes/cpp/deprecated/#_deprecated000001>`_ **
    Please override the push(Filters& const) method instead. This method
    will be removed from future releases.

The default implementation does nothing.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | `Fil |                                      |
| ters <sd | *filters*    | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | k_un |                                      |
| ity_scop |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchLis |              | es#a |                                      |
| dab58c13 |              |            |                                      |
|    |              |                  |                                      |
| | tenerBase::p |              | cf60 |                                      |
| 4e0e64bd |              |            |                                      |
|    |              |                  |                                      |
| | ush          |              | 6b1a |                                      |
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

Called once by the scope to send all filters and their states.

The default implementation does nothing.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.SearchListenerBase/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.SearchListenerBase/closed.png

