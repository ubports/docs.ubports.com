Base class for a client to receive and buffer the results of a query
until another
`BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder/>`__
becomes ready.
`More... </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#details>`__

Inheritance diagram for unity::scopes::utility::BufferedResultForwarder:

|Inheritance graph|

[legend]

        Public Member Functions
-------------------------------

 

`BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#acd998587334a306b04e3e3a5e548ff93>`__
(`unity::scopes::SearchReplyProxy </sdk/scopes/cpp/unity.scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`__
const
&\ `upstream </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a55fd083a188f5dd2a940b1f280409347>`__,
BufferedResultForwarder::SPtr const
&next\_forwarder=BufferedResultForwarder::SPtr())

 

| Create a forwarder that sends (at least one) result to its upstream
  reply proxy before indicating that it is ready to its follower.

 

void 

`push </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#af712d8a72e6cd0818ab9d2c3274b25e6>`__
(`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__
result) override

 

| Forwards a single result before calling ``set_ready()``.

 

bool 

`is\_ready </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a57ee331710c5bbaa806082b2dd8abc23>`__
() const

 

| Check if this forwarder is ready.

 

|-| Public Member Functions inherited from
`unity::scopes::SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`__

virtual void 

`push </sdk/scopes/cpp/unity.scopes.SearchListenerBase#a93ba33c6e1a0064ac9756134ccb11705>`__
(Department::SCPtr const &parent)

 

| Called at most once by the scopes runtime for a tree of departments
  returned by a query.

 

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

`info </sdk/scopes/cpp/unity.scopes.ListenerBase#a3b38fa642754142f40968f3ff8d1bdc8>`__
(`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__ const
&op\_info)

 

| Called by the scopes runtime each time a scope reports additional
  information about the reply to a query.

 

        Protected Member Functions
----------------------------------

void 

`set\_ready </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a20816aac742adffdc16b8e8405c61c87>`__
()

 

| Mark this forwarder as ready.

 

`unity::scopes::SearchReplyProxy </sdk/scopes/cpp/unity.scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`__ 

`upstream </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a55fd083a188f5dd2a940b1f280409347>`__
() const

 

| Get the upstream proxy.

 

void 

`finished </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a9bd57e76c08a01560a700d665cc40e96>`__
(`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`__
const &details) override

 

| Called once by the scopes runtime after the final result for a request
  was sent.

 

Detailed Description
--------------------

Base class for a client to receive and buffer the results of a query
until another
`BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder/>`__
becomes ready.

This class implements result buffering, useful for aggregator scopes
that receive results from multiple child scopes and need to display
categories in a specific order. The aggregator scope must create an
instance of
`BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder/>`__
for every child scope it queries and chain the instances together in the
desired order.

The default implementation of
`BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder/>`__
forwards the results it receives upstream and declares itself "ready"
after receiving the first result. The results are then buffered until
all prior forwarders have declared themselves ready. Buffering is very
efficient—results are buffered only until proper order is guaranteed,
and buffering is disabled for forwarders that do not need to wait for a
predecessor to become ready. This means that results are pushed to the
client (displayed) as early as possible.

The default implementation only pushes results and their categories, but
ignores departments, filters, and annotations. If you wish to handle and
forward these, you must to derive your own forwarder from
`BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder/>`__
and override the appropropriate methods of the
`SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`__
class.

The default implementation buffers a single result before indicating to
its follower that it is ready. This means that the first category from
each child determines overall order. For example, if each child produces
results for a single category, the chaining insures the correct order
(results from child A followed by results from child B, or vice versa).
However, if child A produces results for categories A1 and A2, and child
B produces results for categories B1 and B2, the overall order could,
for example, be A1, B1, A2, B2, or it could be A1, A2, B1, B2, or it
could be A1, B2, B1, A2 (among others).

If you want to ensure that all categories from child A arrive in a
particular order, followed by all categories from child B in a
particular order, you must override
`push() </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#af712d8a72e6cd0818ab9d2c3274b25e6>`__
to, for example, collapse categories received from a child into a single
category, or otherwise buffer results yourself until you have
established the order you need.

Note that buffering fundamentally conflicts with the need to render
results as soon as possible. You should avoid buffering more data than
absolutely necessary in order for the display to start updating as soon
as possible after a query was sent.

If you create a custom implementation of a forwarder, you *must* push
results via the proxy returned by
`BufferedResultForwarder::upstream() </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a55fd083a188f5dd2a940b1f280409347>`__.
(This is a different proxy than the one that is passed to the
constructor.) Your forwarder then must declare itself ready by calling
`BufferedResultForwarder::set\_ready() </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a20816aac742adffdc16b8e8405c61c87>`__
as soon as it knows it will not push results for any new categories. In
the case where your aggregator aggregates all results from given child
scope into a single category, you can call ``set_ready()`` as soon as
you have pushed the first result.

Here is a code example that shows how to write a result forwarder that
creates a separate category for results from each of three children and
controls the order in which these categories are rendered.

class SearchReceiver : public
`BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#acd998587334a306b04e3e3a5e548ff93>`__

{

public:

SearchReceiver(unity::scopes::Category::SCPtr target\_cat,
`unity::scopes::SearchReplyProxy </sdk/scopes/cpp/unity.scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`__
const&
`upstream </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a55fd083a188f5dd2a940b1f280409347>`__,
BufferedResultForwarder::SPtr const&

next\_forwarder = BufferedResultForwarder::SPtr())

:
`BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#acd998587334a306b04e3e3a5e548ff93>`__\ (upstream,
next\_forwarder),

category\_(target\_cat)

{

}

void
`push </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#af712d8a72e6cd0818ab9d2c3274b25e6>`__\ (CategorisedResult
result) override

 {

result.set\_category(category\_); // put all incoming results in single
category

`upstream </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a55fd083a188f5dd2a940b1f280409347>`__\ ()->push(result);
// push modified result to the client

// we push into a single target category, so we're ready as soon as we
received and pushed first result

`set\_ready </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a20816aac742adffdc16b8e8405c61c87>`__\ ();

}

private:

unity::scopes::Category::SCPtr category\_;

};

void
AggregatorSearchQueryBase::run(\ `SearchReplyProxy </sdk/scopes/cpp/unity.scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`__
const& upstream\_reply)

{

auto cat1 = upstream\_reply->register\_category("cat1", "Results from
scope 1", "", CategoryRenderer());

auto cat2 = upstream\_reply->register\_category("cat2", "Results from
scope 2", "", CategoryRenderer());

auto cat3 = upstream\_reply->register\_category("cat3", "Results from
scope 3", "", CategoryRenderer());

// note: the order of construction is reversed

auto scope3fwd = std::make\_shared<SearchReceiver>(cat3,
upstream\_reply);

auto scope2fwd = std::make\_shared<SearchReceiver>(cat2,
upstream\_reply, scope3fwd);

auto scope1fwd = std::make\_shared<SearchReceiver>(cat1,
upstream\_reply, scope2fwd);

// invoke search for child scopes; make sure you do this only after all
forwarders are created

subsearch(scope1proxy, "", scope1fwd);

subsearch(scope2proxy, "", scope2fwd);

subsearch(scope3proxy, "", scope3fwd);

}

See also
    `SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`__.

Constructor & Destructor Documentation
--------------------------------------

+--------------------+--------------------+--------------------+--------------------+
| unity::scopes::uti | (                  | `unity::scopes::Se | *upstream*,        |
| lity::BufferedResu |                    | archReplyProxy </s |                    |
| ltForwarder::Buffe |                    | dk/scopes/cpp/unit |                    |
| redResultForwarder |                    | y.scopes#a9cd604d9 |                    |
|                    |                    | b842ac3b2b8636c216 |                    |
|                    |                    | 5dec1f>`__         |                    |
|                    |                    | const &            |                    |
+--------------------+--------------------+--------------------+--------------------+
|                    |                    | BufferedResultForw | *next\_forwarder*  |
|                    |                    | arder::SPtr        | =                  |
|                    |                    | const &            | ``BufferedResultFo |
|                    |                    |                    | rwarder::SPtr()``  |
+--------------------+--------------------+--------------------+--------------------+
|                    | )                  |                    |                    |
+--------------------+--------------------+--------------------+--------------------+

Create a forwarder that sends (at least one) result to its upstream
reply proxy before indicating that it is ready to its follower.

Parameters
    +-------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | upstream          | The reply proxy for the upstream receiver.                                                                                                                                      |
    +-------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | next\_forwarder   | The forwarder that becomes ready once this forwarder calls `set\_ready() </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a20816aac742adffdc16b8e8405c61c87>`__.   |
    +-------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Exceptions
    +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | unity::LogicException   | when passed next\_forwarder that has already been linked to another `BufferedResultForwarder </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder/>`__.   |
    +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Member Function Documentation
-----------------------------

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | overrideprotectedvirtual             |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | void         | (            | `Com |                                      |
| pletionD | *details*    | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | etai |                                      |
| ls </sdk |              |            |                                      |
|    |              |                  |                                      |
| | s::utility:: |              | /sco |                                      |
| pes/cpp/ |              |            |                                      |
|    |              |                  |                                      |
| | BufferedResu |              | unit |                                      |
| y.scopes |              |            |                                      |
|    |              |                  |                                      |
| | ltForwarder: |              | .Com |                                      |
| pletionD |              |            |                                      |
|    |              |                  |                                      |
| | :finished    |              | etai |                                      |
| ls/>`__  |              |            |                                      |
|    |              |                  |                                      |
| |              |              | cons |                                      |
| t &      |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Called once by the scopes runtime after the final result for a request
was sent.

Calls to
`finished() </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a9bd57e76c08a01560a700d665cc40e96>`__
are made by an arbitrary thread.

Exceptions thrown from
`finished() </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a9bd57e76c08a01560a700d665cc40e96>`__
are ignored.

Parameters
    +-----------+-----------------------------------------------------------------------------------------------------------------------------------------+
    | details   | Contains details about the completion status of a query as well as any additional information regarding the operation of the request.   |
    +-----------+-----------------------------------------------------------------------------------------------------------------------------------------+

Implements
`unity::scopes::ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase#afb44937749b61c9e3ebfa20ec6e4634b>`__.

+----------------+----------------+----------------+----------------+----------------+
| bool           | (              |                | )              | const          |
| unity::scopes: |                |                |                |                |
| :utility::Buff |                |                |                |                |
| eredResultForw |                |                |                |                |
| arder::is\_rea |                |                |                |                |
| dy             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Check if this forwarder is ready.

Once ready, the forwarder no longer buffers any results and passes them
to the upstream proxy immediately.

Returns
    ``true`` if this forwarder called
    `set\_ready() </sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder#a20816aac742adffdc16b8e8405c61c87>`__,
    ``false`` otherwise.

+--------------------------------------+--------------------------------------+
| +--------------+--------------+----- | overridevirtual                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
| | void         | (            | `Cat |                                      |
| egorised | *result*     | )          |                                      |
|    |              |                  |                                      |
| | unity::scope |              | Resu |                                      |
| lt </sdk |              |            |                                      |
|    |              |                  |                                      |
| | s::utility:: |              | /sco |                                      |
| pes/cpp/ |              |            |                                      |
|    |              |                  |                                      |
| | BufferedResu |              | unit |                                      |
| y.scopes |              |            |                                      |
|    |              |                  |                                      |
| | ltForwarder: |              | .Cat |                                      |
| egorised |              |            |                                      |
|    |              |                  |                                      |
| | :push        |              | Resu |                                      |
| lt/>`__  |              |            |                                      |
|    |              |                  |                                      |
| +--------------+--------------+----- |                                      |
| ---------+--------------+----------- |                                      |
| ---+--------------+                  |                                      |
+--------------------------------------+--------------------------------------+

Forwards a single result before calling ``set_ready()``.

This default implementation forwards incoming results unchanged to the
upstream reply proxy and marks the forwarder ready after forwarding the
first result.

This method is called once by the scopes run time for each result that
is returned by a query().

Parameters
    +----------+------------------------+
    | result   | The received result.   |
    +----------+------------------------+

Implements
`unity::scopes::SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase#a3ebd3e8be67824c7a34068da6075bd99>`__.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | protected                            |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | void           | (              |  |                                      |
|                | )              |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :utility::Buff |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | eredResultForw |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | arder::set\_re |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | ady            |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Mark this forwarder as ready.

If you create a custom forwarder, you should call this method as soon as
your forwarder will no longer push results for new categories.

+--------------------------------------+--------------------------------------+
| +----------------+----------------+- | protected                            |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
| | `unity::scopes | (              |  |                                      |
|                | )              | co |                                      |
| nst          |                       |                                      |
| | ::SearchReplyP |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | roxy </sdk/sco |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | pes/cpp/unity. |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | scopes#a9cd604 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | d9b842ac3b2b86 |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | 36c2165dec1f>` |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | __             |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | unity::scopes: |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | :utility::Buff |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | eredResultForw |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | arder::upstrea |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| | m              |                |  |                                      |
|                |                |    |                                      |
|              |                       |                                      |
| +----------------+----------------+- |                                      |
| ---------------+----------------+--- |                                      |
| -------------+                       |                                      |
+--------------------------------------+--------------------------------------+

Get the upstream proxy.

Returns an instance of buffered reply proxy for all push,
register\_departments, and register\_category operations. Note that this
proxy is *not* the same proxy as the one passed to the constructor.

Returns
    The buffered reply proxy.

.. |Inheritance graph| image:: /media/sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png
.. |-| image:: /media/sdk/scopes/cpp/unity.scopes.utility/BufferedResultForwarder/closed.png

