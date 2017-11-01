Abstract base interface for a client to receive the results of a query.
`More... </sdk/scopes/cpp/unity.scopes.SearchListenerBase#details>`__

``#include <unity/scopes/SearchListenerBase.h>``

Inheritance diagram for unity::scopes::SearchListenerBase:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase#a93ba33c6e1a0064ac9756134ccb11705>`__
(Department::SCPtr const &parent)

 

| Called at most once by the scopes runtime for a tree of departments
  returned by a query.

 

        virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase#a3ebd3e8be67824c7a34068da6075bd99>`__
(`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__
result)=0

 

| Called once by the scopes runtime for each result that is returned by
  a query().

 

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase#ab96864e4b3d6718e4b87b81aa14657e3>`__
(experimental::Annotation annotation)

 

| Called once by the scopes runtime for each annotation that is returned
  by a query().

 

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase#af246bd38c8ba9cec36dfae3d0607dbfc>`__
(Category::SCPtr const &category)

 

| Called once by the scopes runtime for each category that is returned
  by a query().

 

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase#ac7904ac1f83fe60cddc8f08c6e7d971b>`__
(`Filters </sdk/scopes/cpp/unity.scopes#adab58c13cf604e0e64bd6b1a745364d3>`__
const &filters,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state)

 

| Called once by the scopes to send all the filters and their state.

 

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase#aaf1af46d5d7b1219558f15c22ef85b10>`__
(`Filters </sdk/scopes/cpp/unity.scopes#adab58c13cf604e0e64bd6b1a745364d3>`__
const &filters)

 

| Called once by the scope to send all filters and their states.

 

|-| Public Member Functions inherited from
`unity::scopes::ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase/>`__

virtual void 

`finished </sdk/scopes/cpp/unity.scopes.ListenerBase#afb44937749b61c9e3ebfa20ec6e4634b>`__
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`__
const &details)=0

 

| Called once by the scopes runtime after the final result for a request
  was sent.

 

virtual void 

`info </sdk/scopes/cpp/unity.scopes.ListenerBase#a3b38fa642754142f40968f3ff8d1bdc8>`__
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__ const
&op\_info)

 

| Called by the scopes runtime each time a scope reports additional
  information about the reply to a query.

 

Detailed Description
--------------------

Abstract base interface for a client to receive the results of a query.

An instance of this interface must be passed to
`Scope::search() </sdk/scopes/cpp/unity.scopes.Scope#a09976690ca801ecada50687df6046a29>`__.
Results for the query are delivered to the client by the scopes run time
by invoking the appropriate push method.

If the implementation of a push method throws an exception, the scopes
runtime calls
`ListenerBase::finished() </sdk/scopes/cpp/unity.scopes.ListenerBase#afb44937749b61c9e3ebfa20ec6e4634b>`__
with an 'Error' status.

See also
    `ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase/>`__

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
|       | `Filters </sdk/sco | *filter |                                      |
| s*,         |                        |                                      |
| | unity::scopes::Sea |               |                                      |
|       | pes/cpp/unity.scop |         |                                      |
|             |                        |                                      |
| | rchListenerBase::p |               |                                      |
|       | es#adab58c13cf604e |         |                                      |
|             |                        |                                      |
| | ush                |               |                                      |
|       | 0e64bd6b1a745364d3 |         |                                      |
|             |                        |                                      |
| |                    |               |                                      |
|       | >`__               |         |                                      |
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
|       | />`__              |         |                                      |
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

**`Deprecated: </sdk/scopes/cpp/deprecated#_deprecated000001>`__**
    Please override the push(Filters& const) method instead. This method
    will be removed from future releases.

The default implementation does nothing.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | virtual                              |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | virtual void | (            | `Fil |                                      |
| ters </s | *filters*    | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | dk/s |                                      |
| copes/cp |              |            |                                      |
|    |              |                  |                                      |
| | s::SearchLis |              | p/un |                                      |
| ity.scop |              |            |                                      |
|    |              |                  |                                      |
| | tenerBase::p |              | es#a |                                      |
| dab58c13 |              |            |                                      |
|    |              |                  |                                      |
| | ush          |              | cf60 |                                      |
| 4e0e64bd |              |            |                                      |
|    |              |                  |                                      |
| |              |              | 6b1a |                                      |
| 745364d3 |              |            |                                      |
|    |              |                  |                                      |
| |              |              | >`__ |                                      |
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

