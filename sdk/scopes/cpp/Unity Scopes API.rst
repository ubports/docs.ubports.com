.. _sdk_unity_scopes_api:
Unity Scopes API
================


.. rubric::         What are scopes
   :name: what-are-scopes

.. rubric::         Introduction
   :name: introduction

One of Unity’s core features on the desktop is the Dash. The Dash allows
users to search for and discover virtually anything, from local files
and applications to web content and other online data. The Dash achieves
this by interfacing with one or more search plug-ins called “scopes”,
such as “Apps”, “Music”, “Videos”, “Amazon”, “Wikipedia”, and “Youtube”.

On the phone and tablet, scopes make up the central user interface, as
they provide everything a user needs from an operating system. Scopes
enable users to locate and launch applications, access local files, play
music and videos, search the web, manage their favourite social network,
keep up with the latest news, and much more.

Each scope is a dedicated search engine for the category of data it
represents. The data source could be a local database, a web service, or
even an aggregation of other scopes. (For example, the “Music” scope
aggregates “Local Music” and “Online Music” scopes). A scope is
responsible for performing the actual search and returning the best
possible results for each query it receives.

This document describes how to implement, test, and package your own
scope using the Unity Scopes C++ API (unity-scopes-api).

.. rubric::         Developing scopes
   :name: developing-scopes

.. rubric::         Getting started
   :name: getting-started

A simple C++ scope template with a cmake build system is currently
available as part of the Ubuntu SDK IDE. To use it, install the packages
required for scope development:

.. code:: fragment

    sudo apt-get install libunity-scopes-dev

Now you are ready to explore and modify the sample code in the src/
directory.

.. rubric::         Click packaging
   :name: click-packaging

To register your scope, you must use the "scope" click hook, and point
it to a directory containing your .ini file and .so file. In the
template, a manifest such as the following is used:

{

"description": "Net scope description",

"framework": "ubuntu-sdk-14.10-dev1",

"hooks": {

"myscope": {

"scope": "myscope", <-- Point to directory in build tree with .ini and
.so

"apparmor": "scope-security.json" <-- Point to AppArmor manifest in
build tree

}

}

"maintainer": "Some Guy <some.guy@ubuntu.com>",

"name": "com.ubuntu.developer.username.net-scope",

"title": "Some scope",

"version": "0.1"

}

.. rubric::         Multi-arch click packages
   :name: multi-arch-click-packages

The search path for the shared library inside a click package is as
follows:

-  ${SCOPE\_DIRECTORY}/${DEB\_HOST\_MULTIARCH}/lib${SCOPE\_NAME}.so
-  ${SCOPE\_DIRECTORY}/${DEB\_HOST\_MULTIARCH}/${SCOPE\_NAME}.so
-  ${SCOPE\_DIRECTORY}/${DEB\_HOST\_MULTIARCH}/scope.so
-  ${SCOPE\_DIRECTORY}/lib${SCOPE\_NAME}.so
-  ${SCOPE\_DIRECTORY}/${SCOPE\_NAME}.so
-  ${SCOPE\_DIRECTORY}/scope.so

Therefore click packges can be made multi-arch aware by compiling your
targets for multiple architectures, and creating, e.g. the following
directory structure:

├── testscopeA.ini

├── testscopeA-settings.ini

├── x86\_64-linux-gnu

\| └── libtestscopeA.so

└── arm-linux-gnueabihf

└── libtestscopeA.so

You must also update the manifest file 'architecture' property to
enumerate the included architectures, as follows:

"architecture": ["armhf", "amd64"]

.. rubric::         Multi-arch scope runner
   :name: multi-arch-scope-runner

Similarly to the shared libraries, when a relative path is provided the
search path for custom scope runners is as follows:

-  ${SCOPE\_DIRECTORY}/${DEB\_HOST\_MULTIARCH}/${CUSTOM\_SCOPERUNNER}
-  ${SCOPE\_DIRECTORY}/${CUSTOM\_SCOPERUNNER}

.. rubric::         Apparmor manifest
   :name: apparmor-manifest

Scopes that are packaged using click are inherently untrusted and must
be confined. At present, there is only a single type of scope that can
be defined:

-  Network scope - can access the network / internet, but is not allowed
   to use APIs that provide access to the user's data.

The security manifest for this type of scope should be as follows:

{

"template": "ubuntu-scope-network",

"policy\_groups": [],

"policy\_version": 1.2

}

.. rubric::         Implementing a scope
   :name: implementing-a-scope

This short tutorial covers the basic steps and building blocks needed to
implement a scope in C++ with unity-scopes-api. For complete examples of
various scopes, see the ``demo/scopes`` subdirectory of the
unity-scopes-api source project.

A typical scope implementation needs to implement interfaces of the
following classes from the Scopes API:

-  `unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ 
   - the main scope class and entry point for all incoming requests
-  `unity::scopes::SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/>`_ 
   - the handler for search requests
-  `unity::scopes::PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`_ 
   - the handler for preview requests (only if handling previews)
-  `unity::scopes::ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 
   - the handler for activation and preview action requests (only if
   handling previews and activation)
-  `unity::scopes::SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`_ 
   - the handler for search replies (only in aggreagator scopes, to pull
   results from other scopes)

The following sections show explaing these in more detail.

.. rubric::         Case 1: A simple (non-aggregating) scope
   :name: case-1-a-simple-non-aggregating-scope

This is the typical case: a scope that connects to a remote or local
backend, such as a database, and provides results in response to search
queries coming from a client (that is, the Unity Dash or another scope).

.. rubric::         Implementing ScopeBase
   :name: implementing-scopebase

You must create a class that derives from
`ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_  and implement a
few methods. As a minimum, you must provide implementations of the
`search() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ 
and
`preview() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a154b9b4cfc0f40572cfec60dd819396f>`_ 
methods.

using :ref:`unity::scopes <sdk_unity_scopes>`;

class MyScope : public ScopeBase

{

public:

virtual void start(std::string const& scope\_id) override; // optional,
dflt impl does nothing

virtual void stop() override; // optional, dflt impl does nothing

virtual void run() override; // optional, dflt impl does nothing

virtual SearchQueryBase::UPtr search(CannedQuery const& query,

SearchMetadata const& metadata) override;

virtual PreviewQueryBase::UPtr preview(Result const& result,

ActionMetadata const& metadata) override;

}

The scopes runtime calls
`start() </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ 
once prior to sending any queries. You can use it to perform one-time
initialization for your scope. Note that you should not perform any
lengthy operations in ``start()``. Your implementation must return as
quickly as possible (in a fraction of the second), so do not, for
example, make synchronous network requests as part of ``start()``.

The scope ID passed to ``start()`` is taken from the name your scope's
``.ini`` configuration file.

The scopes runtime calls
`stop() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a80c5fec9e985dbb315d780ef2a56bfbf>`_ 
to inform your scope that it should shut down. You can use this method
to perform any one-time clean-up.

Prior to sending any queries, the scopes runtime calls
`run() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a386e99b98318a70f25db84bbe11c0292>`_ 
if your ``start()`` method completed successfully (did not throw an
exception). The ``run()`` method is called by a separate thread that you
can use for your own purposes, for example, to run an event loop. The
scopes runtime has no further interest in this thread, but you must
ensure that, if you do not return from ``run()``, you must return from
``run()`` in response to a call to ``stop()``.

For typical and simple cases, you can ignore ``run()``.

.. rubric::         Handling search
   :name: handling-search

The
`unity::scopes::ScopeBase::search() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ 
method is called once for each query. Its purpose is to instantiate and
return a new C++ instance that encapsulates the query, that is,
``search()`` is a factory method. (Do not start execution of the query
as part of ``search()``; the query object has a separate method for
this.)

``search()`` must return an instance of an object that implements the
`unity::scopes::SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/>`_ 
interface, for example:

class MyQuery : public SearchQueryBase { ... };

SearchQueryBase::UPtr MyScope::search(CannedQuery const& query,
SearchMetadata const& metadata)

{

SearchQueryBase::UPtr q(new MyQuery(query, metadata));

return q;

}

The search() method receives two arguments: a
`unity::scopes::CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 
query object that (among other information) carries the actual query
string, and additional parameters for the search request, passed as
`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ .
The metadata includes information such as the current locale string, the
form factor, and the query cardinality.

Cardinality is the maximum number of results expected from a query (a
value of 0 indicates no limit). For optimal performance, do not return
more results than indicated by the cardinality. If you more than the
requested number of results, you are wasting resources. (The scopes
runtime ignores the additional results.)

.. rubric::         Handling aggregation
   :name: handling-aggregation

As previously stated, SearchMetadata contains additional information
about the search requests you receive, including the methods:

-  `is\_aggregated() </sdk/scopes/cpp/unity.scopes.SearchMetadata/#ab999e0fd62e31b4c5e3095264ed81672>`_ 
   - true if the request was initiated by an aggregator,
-  and
   `aggregated\_keywords() </sdk/scopes/cpp/unity.scopes.SearchMetadata/#ab00673c4b1264388e0673d525e6d883e>`_ 
   - the list of keywords used by the aggregator to find your scope.

Note
    Please refer to the `Scope
    Keywords <https://developer.ubuntu.com/en/scopes/tutorials/scope-keywords/>`_ 
    tutorial document for more detail on using keywords in your scope.

You can use the is\_aggregated() method from within
`SearchQueryBase::run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ 
in order to ensure that an appropriate set of results are returned when
queried by an aggregator:

void MyQuery::run(SearchReplyProxy const& reply)

{

if (metadata\_.is\_aggregated())

{

auto category = reply->register\_category("agg\_cat",

"MyScope Featured",

agg\_icon);

do\_aggregated\_search(reply, category);

}

else

{

do\_normal\_search(reply);

}

}

You may notice in the code snippet above that for each aggregated search
we receive, we register a specific results category. Although
aggregators may be willing to accept more than one category from its
child scopes, they are only required to accept the first.

Thereafter, an aggregator may choose to ignore any additional categories
the child scope registers. It is therefore recommended that scope
authors follow the above method of handling aggregated searches. It is
also recommended that your scope provide a decent category title (e.g.
"MyScope Featured"). An aggregator is likely to display this category
title as is within its result set, so try to keep it clean and
descriptive.

.. rubric::         Surfacing mode
   :name: surfacing-mode

The query string may be the empty string. If so, the UI is asking your
scope to produce default results that are shown in what is known as
*surfacing mode*. These are the results the UI displays if the user
navigates to your scope, but has not entered a query yet. What results
to show here depends on how your scope works. For example, for a music
scope, the default results could be something like "Most Popular" and
"Recently Played"; similarly, for a weather scope, the default results
could be for the weather report for the current location. As the scope
author, you need to decide what is most appropriate to show in surfacing
mode. In the interests of a good user experience, it is important to
show *something* here (if at all possible), so the user gets to see at
least some results (instead of being confronted with a blank screen).

The runtime automatically saves the results of the most recent surfacing
query. If a scope cannot produce a result for a surfacing query
(presumably, due to connectivity problems), calling
`push\_surfacing\_results\_from\_cache() </sdk/scopes/cpp/unity.scopes.SearchReply/#a4ba805136164b11bb358917070cde24d>`_ 
pushes the results that were produced by the most recent successful
surfacing query from the cache. If your scope cannot produce surfacing
results, you can call this method to "replay" the results of the
previous surfacing query. In turn, this avoids the user being presented
with an empty screen if he/she swipes to the scope while the device does
not have connectivity.

``push_surfacing_results_from_cache()`` has an effect only if called for
a surfacing query (that is, a query with an empty query string). If
called for a non-empty query, it does nothing.

You must call this method before calling
`finished() </sdk/scopes/cpp/unity.scopes.Reply/#a9ca653d5d7f7c97a781bc362f2af7749>`_ ,
otherwise no cached results will be pushed.
(``push_surfacing_results_from_cache() implicitly calls``\ finished()\`);

.. rubric::         Implementing QueryBase
   :name: implementing-querybase

You must implement a class that derives from
`SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/>`_  and
return an instance of this class from ``search()``. Your class must
implement a
`run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ 
method. The scopes runtime calls ``run()`` to execute the query.

The
:ref:`SearchReplyProxy <sdk_unity_scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`
that is passed to ``run()`` is an invocation handle that allows you to
push results for the query back towards the client.
(``SearchReplyProxy`` is a ``shared_ptr`` to a
`SearchReply </sdk/scopes/cpp/unity.scopes.SearchReply/>`_  object.)

Two important methods of ``SerchReply`` are
`register\_category() </sdk/scopes/cpp/unity.scopes.SearchReply/#aaa061806a96f50ff66abc6184135ea66>`_ 
and
`push() </sdk/scopes/cpp/unity.scopes.SearchReply/#a63d6de93152b3a972901c2d406ef5760>`_ .

``register_category()`` is a factory method that registers new
categories for the results of this query (see
`unity::scopes::Category </sdk/scopes/cpp/unity.scopes.Category/>`_ ).
You can create new categories at any point during query processing.
Categories serve to visually group query results in some way; when you
push results for a query, you indicate which category each particular
result belongs to, and the UI renders that result in the corresponding
visual group. Categories are rendered in the order in which they are
encountered by the UI as you push your results. If you want to control
the order in which categories are rendered (for examples, such that a
"Breaking News" category always appears first), you may need to buffer
the results you receive from your back-end data source until you get a
result for that category, and then push that result, plus any other
buffered results.

Pre-registering categories is the preferred approach because it allows
the UI to reserve space and perform layout chores before any query
results arrive. (In turn, this permits the UI to optimize its
operation.) However, for some data sources, it may not be possible to
determine all of the possible categories in advance, in which case you
have no choice but to create new categories as they arrive in the data
from your scope's data source.

Do *not* wait for all results for a query to arrive in an attempt to
buffer them and order them by category. If you do, this prevents
incremental rendering, and the user sees nothing until your scope has
processed *all* results. To create a positive user experience, your
scope should push results as soon as possible.

The UI uses categories to incrementally render the display after a
refresh of search results. This relies on categories staying the same
from query to query. If your scope has, say, a "News" category, you need
to make sure that the category ID and name stay the same from query to
query. In particular, do *not* create category IDs that are artificially
unique per query (such as by appending a sequence number).

When you create a category, you can provide a
`unity::scopes::CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
instance. The category renderer determines the visual appearance of the
results in that category (such as display in a grid or in a carousel
layout).

You must wrap each actual search result inside a
`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`_ 
object and pass the result instance to
`push </sdk/scopes/cpp/unity.scopes.SearchReply/#a63d6de93152b3a972901c2d406ef5760>`_ .

A typical implementation of ``run()`` might look like this:

void MyQuery::run(SearchReplyProxy const& reply)

{

if (!valid())

{

return; // Query was cancelled

}

auto category = reply->register\_category("recommended", "Recommended",
icon);

//... query a local or remote backend

for (auto res : backend.get\_results(query().query\_string())) // for
every result returned by a backend

{

...

CategorisedResult result(category); // create a result item in
"recommended" category

result.set\_uri(...);

result.set\_title(...);

result.set\_art(...);

result.set\_dnd\_uri(...);

result["my-custom-attribute"] = Variant(...); // add arbitrary data as
needed

if (!reply->push(result)) // send result to the client

{

break; // false from push() means that the search was cancelled

}

}

}

As far as the UI is concerned, the query is complete when ``run()``
returns. (While the query can potentially return more results, the UI
shows a spinner or similar, to indicate that the query is not complete
yet.)

It is possible for you to return from ``run()`` *without* having the
query complete automatically. The life time of the query is controlled
not only by ``run()``, but also by the life time of the
``SearchReplyProxy`` that is passed to ``run()``. The scopes runtime
monitors the reply proxy and informs the UI that the query is complete
when *either* ``run()`` returns *or* the last reply proxy for the query
goes out of scope. This allows you to, for example, pass the reply proxy
to a different thread that pushes results (as you might want to do if
you need to run a separate event loop). That thread can then also react
to query cancellation. The important point is that, if you keep copies
of the reply proxy, the query will remain alive until you destroy all
copies of the reply proxy for that query (or explicitly call
``finished()`` on the reply proxy yourself, which explicitly ends the
query).

.. rubric::         Query cancellation
   :name: query-cancellation

It is possible for the UI to cancel a query before the query has
completed and is still running in your scope, potentially producing
additional results. Typically, this happens because the user has typed a
few characters as the search term (which creates a query for the string
up to that point); shortly after this, the user might type another
character or two, extending the search string. After a short idle
period, the UI cancels the original query and creates a new query for
the extended search string. However, the second query will not start
until *after* the previous query has completed.

Note
    *Query cancellation happens frequently, and it is important for your
    scope to react quickly to cancellation!*

The scopes runtime provides several ways for your implementation to
react to cancellation:

-  A ``false`` return value from ``SearchReply::push``. If ``push``
   returns ``false``, there is no point in continuing to provide more
   results.
-  You can poll for cancellation by calling
   `QueryBase::valid() </sdk/scopes/cpp/unity.scopes.QueryBase/#a095e61eabe2042eeea5c4df1a444d7d4>`_ .
   ``valid()`` returns ``false`` once a query is cancelled or has
   exceeded its cardinality limit.
-  Your query implementation class must override the
   `QueryBase::cancelled() </sdk/scopes/cpp/unity.scopes.QueryBase/#a596b19dbfd6efe96b834be75a9b64c68>`_ 
   method. The scopes runtime calls ``cancelled()`` if the UI has
   cancelled the query. (Note that calls to ``cancelled()`` are made by
   a separate thread.)

Testing the return value from ``push()`` is reasonable only if you know
that results for your scope will arrive quickly (no more than 0.1
seconds apart). Otherwise, you should push results asynchronously from a
separate thread and arrange for the query to complete (return from
``run()``) in response to the scopes runtime calling ``cancelled()``.

Note that it is possible for a call to ``cancelled()`` to arrive before
the scopes runtime has called ``run()`` (because ``cancelled()`` and
``run()`` are called by different threads and, therefore, can be
dispatched out of order).

.. rubric::         Filters
   :name: filters

Scopes API offers support for filter widgets, which provide means for
filtering search results based on user input other than search query
string alone. Filter widgets need to be defined by creating appropriate
filters inside the overriden SearchQueryBase::run() method, and then
pushed to the UI. It is recommended to push filters early before search
results are pushed for best user experience.

Here is an example of how filters can be created:

void run(SearchReplyProxy const& reply)

{

OptionSelectorFilter::UPtr filter1 =
OptionSelectorFilter::create("brand", "Brand");

filter1->add\_option("audi", "Audi");

filter1->add\_option("bmw", "BMW");

RangeInputFilter::SPtr filter2 = RangeInputFilter::create("price",
Variant(0.0f), Variant::null(), "Min", "", "", "Max", "");

ValueSliderFilter::SPtr filter3 =
ValueSliderFilter::create("horsepower", 1, 135, 50,
ValueSliderLabels("Min", "Max"));

:ref:`Filters <sdk_unity_scopes#adab58c13cf604e0e64bd6b1a745364d3>`
filters;

filters.push\_back(filter1);

filters.push\_back(filter2);

filters.push\_back(filter3);

reply->push(filters, query().filter\_state());

// push search results here

Scopes are free to change filters at any time - with every execution of
search the scope can omit any of the previously visible filters or add
new ones, if that makes sense for particular use cases.

Filters act only as UI widgets - it is the responsibility of the scope
to check their state and actually apply them to search results. The
current value of a filter becomes just another parameter of the search
query that needs to be taken into account in the implementation of
search handling inside run().

To examine current state of the filters, pass the instance of
`unity::scopes::FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_ 
received with search query to respective methods of the filters. For
example:

void run(SearchReplyProxy const& reply)

{

// filter creation code omitted here

auto state = query().filter\_state();

int search\_start = 0;

int search\_end = 1000;

if (rangefilter->has\_start\_value(state)) {

search\_start = rangefilter->start\_value(state);

}

if (rangefilter->has\_end\_value(state)) {

search\_end = rangefilter->end\_value(state);

}

// apply search\_start and search\_end to search logic

The scope may nominate a single filter to act as "primary navigation".
This is only possible if departments are not used at the same time (in
which case departments become a primary navigation tool). An attempt to
nominate a filter to be a "primary navigation" while departments are
present is ignored by the UI and the filter acts as a regular filter.
Also, only a single-selection OptionSelectorFilter can currently be
promoted to be primary navigation. To do this, set the display hints to
FilterBase::DisplayHints::Primary:

OptionSelectorFilter::UPtr filter1 =
OptionSelectorFilter::create("brand", "Brand");

filter1->set\_display\_hints(FilterBase::DisplayHints::Primary);

filter1->add\_option("audi", "Audi");

When a filter becomes a primary navigation filter, it gets displayed in
the search box drop-down, below recent searches, so it's readily
available for quick access. Also, currently selected option is displayed
as a "brick" in the search box, hinting the user about the context of
current search. All the other filters can be revealed via the filters
panel icon.

.. rubric::         Handling previews
   :name: handling-previews

Your scope is responsible for handling preview requests for results it
has returned; you implement this by overriding the
`unity::scopes::ScopeBase::preview() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a154b9b4cfc0f40572cfec60dd819396f>`_ 
method:

class MyScope : public
`unity::scopes::ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ 

{

public:

...

virtual PreviewQueryBase::UPtr
`preview </sdk/scopes/cpp/unity.scopes.ScopeBase/#a154b9b4cfc0f40572cfec60dd819396f>`_ \ (Result
const& result, ActionMetadata const& metadata) override;

...

}

This method must return an instance derived from
`unity::scopes::PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`_ .
Like ``search()``, ``preview()`` is a factory method; the scopes runtime
initiates the actual preview by calling
`run() </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#a81b89daf29cd1ada55286f2a3a871347>`_ 
on the instance you return. Your ``run()`` method is responsible for
gathering preview data (from local or remote sources) and passing it to
the UI along with the definition of the visual appearance of the preview
by calling
`push() </sdk/scopes/cpp/unity.scopes.PreviewReply/#a9fc593618b83ec444fb6c9b2b298764a>`_ 
on the reply proxy that is passed to ``run()``. (This is analogous to
returning results from ``search()``.)

A preview consists of one or more preview widgets. Preview widgets are
the basic building blocks for previews, such as a header with a title
and subtitle, an image, a gallery with multiple images, a list of audio
tracks, and so on.(See
`unity::scopes::PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_ 
for a list of supported widget types.) Your implementation of
`run() </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#a81b89daf29cd1ada55286f2a3a871347>`_ 
must create and populate one or more preview widgets and push them to
the UI.

Each preview widget has a unique identifier, a type name, and a set of
attributes determined by the widget's type. For example, a widget of
"image" type expects two attributes: "source" (a URI that should point
at an image), and a "zoomable" flag that determines if the image should
be zoomable. You can specify the values of these attributes explicitly,
or you can arrange for the values to be taken from a result that the
corresponding query returned earlier, by referencing the corresponding
`Result </sdk/scopes/cpp/unity.scopes.Result/>`_  instance. You can also
push the value for a referenced attribute separately as part of your
implementation of ``run()``.

You provide attributes explicitly by calling
`PreviewWidget::add\_attribute\_value() </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a42dd64704890d72bcc6ecbd7bccbfcd9>`_ :

PreviewWidget image\_widget("myimage", "image");

image\_widget.add\_attribute\_value("source",
Variant("file:///tmp/image.jpg"));

image\_widget.add\_attribute\_value("zoomable", Variant(false));

To reference values from results or arbitrary values that you push
separately, use
`PreviewWidget::add\_attribute\_mapping() </sdk/scopes/cpp/unity.scopes.PreviewWidget/#a8bb890267a69dd6bb5ca70b663c75e74>`_ :

PreviewWidget image\_widget("myimage", "image");

image\_widget.add\_attribute\_mapping("source", "art"); // use 'art'
attribute from the result

image\_widget.add\_attribute\_mapping("zoomable", "myzoomable"); //
'myzoomable' not specified, but pushed below

reply->push("myzoomable", Variant(true));

To push preview widgets to the client, use
`PreviewReply::push() </sdk/scopes/cpp/unity.scopes.PreviewReply/#a9fc593618b83ec444fb6c9b2b298764a>`_ :

PreviewWidget image\_widget("myimage", "image");

PreviewWidget header\_widget("myheader", "header");

// fill in widget attributes

...

PreviewWidgetList widgets { image\_widget, header\_widget };

reply->push(widgets);

.. rubric::         Preview actions
   :name: preview-actions

Previews can have actions, such as buttons that the user can press.
Actions are supported by a preview widget of type "actions". An actions
widget holds one or more action button definitions, where each
definition has a unique identifier, a label, and an optional icon. For
example, a widget with two buttons, "Open" and "Download", can be
defined as follows (using the
`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`_  helper
class):

PreviewWidget buttons("mybuttons", "actions");

VariantBuilder builder;

builder.add\_tuple({

{"id", Variant("open")},

{"label", Variant("Open")}

});

builder.add\_tuple({

{"id", Variant("download")},

{"label", Variant("Download")}

});

buttons.add\_attribute\_value("actions", builder.end());

To respond to activation of preview actions, your scope must implement
`ScopeBase::perform\_action </sdk/scopes/cpp/unity.scopes.ScopeBase/#a2f4d476fa790349c9a7de52be3232d11>`_ :

class MyScope : public ScopeBase

{

...

virtual ActivationQueryBase::UPtr perform\_action(Result const& result,

ActionMetadata const& metadata,

std::string const& widget\_id,

std::string const& action\_id) override

...

}

Like ``search()`` and ``preview()``, ``perform_action()`` is a factory
method. It must return an instance that derives from
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ .
Your derived class must implement the
`activate() </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a61ed49d8bc56e677ff2eb1f30e6a6b6b>`_ 
method, whose job it is to respond to the activation (that is, the user
pressing a button). ``activate`` must return an
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ ,
which tells the UI how it should behave in response to the activation.
For example, your ``activate()`` could direct the UI to run a new search
as follows:

class MyActivation : public ActivationQueryBase

{

MyActivation(Result const& result,
`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ 
const& metadata) :

ActivationQueryBase(result, metadata)

{

}

virtual ActivationResponse activate() override

 {

...

if (action\_id() == "search-grooveshark")

{

CannedQuery query("com.canonical.scopes.grooveshark");

query.set\_query\_string("metal");

return ActivationResponse(query);

}

...

}

};

.. rubric::         Handling result activation
   :name: handling-result-activation

In many cases, the user can activate search results directly, by tapping
on them, provided the result's schema (such as "http://") has a handler
in the system. If this is the case, you need not do anything for
activation. However, if your scope uses schemas without a handler, the
shell will ignore the activation. (Nothing happens in response to a tap
by the user.)

If you want to intercept such activations (either for schemas without a
handler, or to generally intercept result activation), you must
implement the
`ScopeBase::activate() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a49a0b9ada0eeb4c71e6a2181c3d8c9e7>`_ 
method:

class MyScope : public ScopeBase

{

virtual ActivationQueryBase::UPtr activate(Result const& result,

ActionMetadata const& metadata) override;

...

}

In addition, you must call
`Result::set\_intercept\_activation() </sdk/scopes/cpp/unity.scopes.Result/#a5a132eb82702829e2fd026e088e4aa08>`_ 
for all results that should trigger a call to your ``activate()``
method. Your implementation of ``activate()`` should follow the same
guidelines as for ``perform_action()`` (except that widget and action
identifiers do not apply to result activation).

.. rubric::         Handling result action activation
   :name: handling-result-action-activation

Search results can embed simple action buttons (icons) in their cards.
When the user taps an action icon, the scope gets notified and can
update the affected result card to reflect the new state. A typical use
case for this is to offer "social" actions, such as thumbs up/down
buttons.

The following snippet demonstrates how two actions can be added to a
`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`_ :

CategorisedResult res(cat);

res.set\_uri("myuri");

res.set\_title("My Title");

// Add result actions

VariantBuilder builder;

builder.add\_tuple({

{"id", Variant("thumbsup")},

{"icon", Variant("thOff")},

{"temporaryIcon", Variant("thOn")},

{"label", Variant("I like it")},

});

builder.add\_tuple({

{"id", Variant("flag")},

{"icon", Variant("flag")},

{"temporaryIcon", Variant("flagOn")},

{"label", Variant("Flag this result")},

});

res["social-actions"] = builder.end();

The attributes of result actions are as follows:

-  id - unique action identifier that will be reported to the scope.
-  icon - the icon for the action button.
-  temporaryIcon (optional) - defines an icon that will be shown
   immediately when the user taps the button, before the scope reacts to
   the action.
-  label - the text shown next to the icon.

To respond to activation of result actions, your scope must implement
`ScopeBase::activate\_result\_action </sdk/scopes/cpp/unity.scopes.ScopeBase/#a7ac39ca44f4790dd36900657692d0565>`_ :

class MyScope : public ScopeBase

{

...

ActivationQueryBase::UPtr activate\_result\_action(Result const& result,

ActionMetadata const& metadata,

std::string const& action\_id) override;

...

}

Like ``search()`` and ``preview()``, ``activate_result_action()`` is a
factory method. It must return an instance that derives from
`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ .
Your derived class must implement the
`activate() </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a61ed49d8bc56e677ff2eb1f30e6a6b6b>`_ 
method, whose job it is to respond to the activation (that is, the user
pressing action button). ``activate`` must return an
`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ ,
which tells the UI how it should behave in response to the result action
activation. For result actions the typical and recommended behavior is
to update the card for the result whose action was activated.

For example, here is how to update the actions of an affected card in
response to a "thumbsup" action, so that tapping the "thumbsup" action
button replaces that button with "thumbsdown":

class MyActivation : public ActivationQueryBase

{

MyActivation(Result const& result,
`unity::scopes::ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ 
const& metadata, std::string const& action\_id) :

ActivationQueryBase(result, metadata, action\_id)

{

}

virtual ActivationResponse activate() override

 {

if (action\_id() == "thumbsup")

{

// ... update backend data for 'thumbs up' action ...

// get the affect result and update it

Result updatedRes(result());

VariantBuilder builder;

builder.add\_tuple({

{"id", Variant("thumbsdown")},

{"icon", Variant("thOn")},

{"temporaryIcon", Variant("thOff")},

{"label", Variant("I don't like it")},

});

builder.add\_tuple({ ... })

updatedRes["social-actions"] = builder.end();

return ActivationResponse(updatedRes);

}

if (action\_id() == "thumbsdown")

...

}

};

.. rubric::         Exporting a scope
   :name: exporting-a-scope

Your scope must be compiled into a ``.so`` shared library and, to be
successfully loaded at runtime, it must provide two C functions to
create and destroy it. A typical code snippet to do this looks as
follows:

extern "C"

{

unity::scopes::ScopeBase\* UNITY\_SCOPE\_CREATE\_FUNCTION()

{

return new MyScope();

}

void UNITY\_SCOPE\_DESTROY\_FUNCTION(unity::scopes::ScopeBase\*
scope\_base)

{

delete scope\_base;

}

}

.. rubric::         Inline music playback
   :name: inline-music-playback

Results which represent music (songs, albums etc.) can contain an extra
data about audio content and can then be played directly from the Dash.
Such results have a "play" button overlaid on them. To create results
that support this functionality two conditions must be met:

-  Category renderer definition must contain the "quick-preview-type"
   key with the value of "audio" in the "template" section;
-  Results in the respective category must contain a
   "quick-preview-data" attribute, each of them is a dictionary with the
   extra playback data described below.

The data assigned to "quick-preview-data" attribute of a Result needs to
contain the following keys:

-  uri - a playable uri of a media file (path of a local file, or http
   uri).
-  duration - the duration of the media file, in seconds.
-  playlist - an array of uris of additional songs, e.g. songs from same
   album; they will be played in sequence when the main song denoted by
   'uri' finishes.

Here is an example of a category renderer for inline playback, which
uses component mapping to map quick-preview-data to audio-data attribute
of a result:

static const char CATEGORY\_RENDERER[] = R"(

{

 "schema-version": 1,

 "template": {

 "category-layout": "grid",

 "card-size": "large",

 "card-layout" : "horizontal",

 "quick-preview-type" : "audio"

 },

 "components": {

 "title": "title",

 "art": {

 "field": "art"

 },

 "subtitle": "artist",

 "quick-preview-data": {

 "field": "audio-data"

 }

 }

}

)";

A sample code that creates a result card representing a song and all
songs from same album in a background playlist may look this way:

CategorisedResult res(category);

res.set\_uri(uri);

res.set\_title(media.getTitle());

...

VariantMap inline\_playback\_data;

inline\_playback\_data["uri"] = uri;

inline\_playback\_data["duration"] = song\_duration\_in\_seconds;

:ref:`VariantArray <sdk_unity_scopes#aa3bf32d584efd902bca79698a07dd934>`
playlist;

for (const std::string& song: album\_songs)

{

playlist.push\_back(Variant(song.getUri()));

}

inline\_playback\_data["playlist"] = playlist;

res["audio-data"] = inline\_playback\_data;

.. rubric::         Case 2: An aggregating scope
   :name: case-2-an-aggregating-scope

Aggregating scopes are scopes that collect results from other scopes and
possibly consolidate, modify, or re-categorise the results in some way.
In other words, for an aggregating scope, the data source(s) are other
scopes rather than, say, a remote web service.

To receive results from its child scopes, your scope must implement a
class that derives from
`SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`_ .
You provide an instance of this class to each sub-query; the scopes
runtime invokes callback methods on this class to let you know when a
new result or status update arrives, and when a query completes.

.. rubric::         Finding child scopes
   :name: finding-child-scopes

To send queries to its child scopes, your scope must obtain a proxy for
each child scope. The scopes runtime runs a registry process. The job of
the registry (among other things) is to provide information about
available scopes (whether they are local scopes or remote scopes in the
Smartscopes server).

You can obtain the proxy for a child scope by calling
`get\_metadata() </sdk/scopes/cpp/unity.scopes.Registry/#a63778ac090804a1fb85dc48fccbc2822>`_ 
on the registry, supplying the ID of the child scope. The return value
is an instance of type
`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_  that
describes the scope and also provides access to the proxy for the scope.

You can also aggregate scopes indirectly via keyword(s). Keywords
describe the type of content a scope provides (e.g. a scope with the
keyword "music" will return music results, the "video" keyword indicates
video content, and so on). You can obtain child scopes via keywords by
calling
`list\_if() </sdk/scopes/cpp/unity.scopes.Registry/#aa15baf0154c4b58decf27f2e5815d680>`_ 
on the registry, supplying a predicate function. The return value is a
map containing only those scopes for which the predicate returns true.
Therefore, your predicate function should return true for all scopes
matching the keyword(s) you wish to aggregate.

Note
    Please refer to the `Scope
    Keywords <https://developer.ubuntu.com/en/scopes/tutorials/scope-keywords/>`_ 
    tutorial document for a list of recommended keywords to use.

As an aggregator scope author you must provide an implementation of the
virtual
`ScopeBase::find\_child\_scopes() </sdk/scopes/cpp/unity.scopes.ScopeBase/#abc864e2fa714b9424a89293fea6972bc>`_ 
method. All logic for finding your aggregator's child scopes should be
implemented within this method. The return value is of type
:ref:`ChildScopeList <sdk_unity_scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>`
and must contain an instance of
`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`_  for each scope
your aggregator may collect results from.

Here is how you could implement find\_child\_scopes() to return all
scopes in the registry that contain the keywords "sports" and "news":

:ref:`ChildScopeList <sdk_unity_scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>`
MyScope::find\_child\_scopes() const override

{

auto sportsnews\_scopes = registry()->list\_if([](ScopeMetadata const&
item)

{

auto keywords = item.keywords();

return (keywords.find("sports") != keywords.end()) &&

(keywords.find("news") != keywords.end());

});

:ref:`ChildScopeList <sdk_unity_scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>`
list;

for (auto const& sportsnews\_scope : sportsnews\_scopes)

{

list.emplace\_back(ChildScope{sportsnews\_scope.first, // Child scope ID

sportsnews\_scope.second, // Child scope metadata

true, // Default enabled state (when first discovered)

{"sports", "news"}}); // Keywords used to aggregate this scope

}

return list;

}

.. rubric::         Sub-queries
   :name: sub-queries

To send a query to another scope, use one of the ``subsearch()``
overloads of
`unity::scopes::SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/>`_ 
inside your implementation of
`SearchQueryBase::run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ .
This method requires a handle to the child scope to query (either via
proxy or ChildScope handle), the query details
(`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ ), plus an
instance of your ``SearchListenerBase`` implementation that will receive
the query results.

Note
    ``subsearch()`` is identical to
    `search() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ 
    but, for ``subsearch()``, the scopes runtime transparently forwards
    query cancellation to child scopes, so your implementation of
    `QueryBase::cancelled() </sdk/scopes/cpp/unity.scopes.QueryBase/#a596b19dbfd6efe96b834be75a9b64c68>`_ 
    does not need to forward cancellation to its children. (However,
    your query class still needs to react to cancellation and should
    terminate the current query is quickly as possible in response to a
    cancelled message.)

You should always call
`ScopeBase::child\_scopes() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a4016075ab95bbf1b5dfa1444e9d750e0>`_ 
from within your aggregator's
`search() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ 
method in order to retrieve the latest child scopes list containing the
most recent "enabled" states. You can then pass this list into your
instantiation of SearchQueryBase for later use.

Note
    An aggregator must respect the "enabled" states of its child scopes,
    querying only the child scopes that are enabled.

Here is how you could implement an aggregating scope that passes a query
to a single child scope "scope-A":

:ref:`ChildScopeList <sdk_unity_scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>`
MyScope::find\_child\_scopes() const override

{

auto reg = registry(); // Up-call into base class

if (!reg)

{

throw ConfigException(scope\_id + ": No registry available, cannot
locate child scopes");

}

:ref:`ChildScopeList <sdk_unity_scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>`
list;

try

{

auto meta = reg->get\_metadata("scope-A");

list.emplace\_back(ChildScope{"scope-A", meta});

}

catch (NotFoundException const& e)

{

...

}

return list;

}

QueryBase::UPtr MyScope::search(CannedQuery const& query,

SearchMetadata const& metadata)

{

SearchQueryBase::UPtr q(new MyQuery(query, metadata, child\_scopes()));

return q;

}

...

void MyQuery::run(SearchReplyProxy const& upstream\_reply)

{

// Continue only if our child scope is installed AND enabled

if (!child\_scopes\_.empty() && child\_scopes\_.front().enabled)

{

auto category = reply->register\_category("recommended", "Recommended",
icon, "");

SearchListenerBase::SPtr reply(new MyReceiver(upstream\_reply,
category));

subsearch(child\_scopes\_.front(), query\_, reply);

}

}

Note that the ``subsearch()`` call is asynchronous and returns
immediately. Despite this, your ``MyQuery`` instance is kept alive
because the scopes runtime does not delete it until the child query has
completed. (The runtime tracks the ``reply`` proxy for the query and
holds the query alive until it receives a finished message from the
child scope.)

.. rubric::         Receiving sub-query results
   :name: receiving-sub-query-results

Here is a simple implementation of a receiver that passes all child
categories and results through to its parent without change. Of course,
a more realistic aggregating scope will typically aggregate from more
than one child and probably de-duplicate, collate, or otherwise modify
child results before passing them upstream.

class MyReceiver: public SearchListenerBase

{

public:

virtual void push(Category::SCPtr const& category) override

 {

upstream\_reply\_->register\_category(category);

}

virtual void push(CategorisedResult result) override

 {

upstream\_reply\_->push(std::move(result));

}

MyReceiver(SearchReplyProxy const& upstream\_reply) :

upstream\_reply\_(upstream\_reply)

{

}

private:

:ref:`SearchReplyProxy <sdk_unity_scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`
upstream\_reply\_;

};

.. rubric::         Controlling category order
   :name: controlling-category-order

Categories are displayed in the order their results are pushed. This can
pose a challenge for aggregator scopes because results from child scopes
often arrive in random order. To control the order in which categories
are rendered, the aggregator must buffer and potentially re-order
results by category before pushing them.

:ref:`BufferedResultForwarder <sdk_unity_scopes_utility_bufferedresultforwarder>`
makes it easier to do this. To use the class, you create one instance
for each child scope and chain the instances together in the desired
order of categories. Each forwarder buffers results until its
predecessor in the chain indicates that it has completed its category
ordering, at which point it itself pushes any results it has buffered so
far and indicates to its follower that it is ready.

By default, a forwarder indicates that it it is ready (has completed
ordering) as soon as it has received a single result. This is useful if
an aggregator has child scopes that produce results for a single
category each. In this case, the order of the forwarders determines
which category (the one used by child A or by child B) appears first
when the results are rendered.

If an aggregator collates results from children that each produce
results for more than one category, you can override the default
implementation of
:ref:`push() <sdk_unity_scopes_utility_bufferedresultforwarder#af712d8a72e6cd0818ab9d2c3274b25e6>`
to change categories for results from its child, and/or indicate that it
is ready only once the child has provided results for all expected
categories. (See
:ref:`BufferedResultForwarder <sdk_unity_scopes_utility_bufferedresultforwarder>`
for more details.)

.. rubric::         Activation and preview
   :name: activation-and-preview

If an aggregator scope simply forwards the results it receives from
other scopes (possibly changing their category), the aggregator need not
do anything special for previews, preview actions, or result activation.
In this case, previews, preview actions, and result activation are sent
to the scope that produced the corresponding result.

If, however, an aggregator scope changes attributes of results (or
creates completely new results that "replace" received results), you
must take extra care:

-  If the original original scope should still handle preview (and
   activation) requests for a modified result, you must store a copy of
   the original result in the modified (or new) result by calling
   `Result::store() </sdk/scopes/cpp/unity.scopes.Result/#a744776333a9748ba41dace7c6943ca4d>`_ .
   Preview requests for such a result will automatically trigger the
   scope that created the innermost stored result.

   Note
       Making changes to a receive result but failing to store the
       original result with the change can cause in unexpected behavior:
       a scope could receive a modified result and, depending the exact
       changes, may not be able to correctly deal with the result.

-  If an aggregator creates a completely new result that replaces the
   original result but does not also store a copy of the original
   result, the aggregator *must* handle preview and activation requests
   (if the intercept flag is set). The actions to take are the same as
   for a non-aggregating scope (see `Handling
   previews </sdk/scopes/cpp/index/#handlingpreview>`_  and `Handling
   result activation </sdk/scopes/cpp/index/#handlingactivation>`_ ).

Here is an example ``push()`` implementation that modifies a result and
stores a copy, so the original scope can handle preview and activation:

void MyReceiver::push(CategorisedResult original\_result)

{

// agg\_category is a category that aggregates all results from other
scopes

CategorisedResult result(agg\_category);

result.set\_uri(original\_result.uri());

result.set\_title(original\_result.title() + " (aggregated)");

result.set\_art(original\_result.art());

result.store(original\_result);

upstream\_->push(std::move(result));

}

.. rubric::         Threading model
   :name: threading-model

It is important to understand how the runtime uses threads to call
methods on scopes and clients. The runtime maintains a number of threads
that each call one or more methods. Methods in the same group are always
called by the same thread. This means that methods in the same group do
not run concurrently, but methods in different groups *do* run
concurrently. If you share state between methods in different groups,
you *must* synchronize access to that state, otherwise your code will
suffer from race conditions.

The following lists shows how methods are grouped. Each group has a
single dedicated dispatch thread.

-  UNITY\_SCOPE\_CREATE\_FUNCTION(), ScopeBase::start(),
   ScopeBase::stop(), and UNITY\_SCOPE\_DESTROY\_FUNCTION().
-  `ScopeBase::search() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a0e4969ff26dc1d396d74c56d896fd564>`_ ,
   `ScopeBase::preview() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a154b9b4cfc0f40572cfec60dd819396f>`_ ,
   and
   `ScopeBase::perform\_action() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a2f4d476fa790349c9a7de52be3232d11>`_ .
-  `SearchQueryBase::run() </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#afc4f15b2266838d7da75b05ea37d504b>`_ ,
   `PreviewQueryBase::run() </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#a81b89daf29cd1ada55286f2a3a871347>`_ ,
   and
   `ActivationQueryBase::activate() </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#a61ed49d8bc56e677ff2eb1f30e6a6b6b>`_ .
-  `QueryBase::cancelled() </sdk/scopes/cpp/unity.scopes.QueryBase/#a596b19dbfd6efe96b834be75a9b64c68>`_ .
-  `SearchListenerBase::push() </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#a93ba33c6e1a0064ac9756134ccb11705>`_ ,
   `PreviewListenerBase::push() </sdk/scopes/cpp/unity.scopes.PreviewListenerBase/#a5e9fe1fa664cbb65a0389e5a39caf78b>`_ ,
   `ActivationListenerBase::activated() </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/#a52106ae2856a2dc7fd6035707bd0bee2>`_ ,
   `ListenerBase::finished() </sdk/scopes/cpp/unity.scopes.ListenerBase/#afb44937749b61c9e3ebfa20ec6e4634b>`_ ,
   `ListenerBase::info() </sdk/scopes/cpp/unity.scopes.ListenerBase/#a3b38fa642754142f40968f3ff8d1bdc8>`_ .

For your scope implementation, keep in mind that ``cancelled()`` is
*not* called by the same thread that called, for example, ``search()``
or ``run()``. This means that any state you established in ``search()``
or ``run()`` must be synchronized if you use that state in
``cancelled()``.

Similar considerations apply for aggregating scopes, which act as both
client and server: you must synchronize any state that is shared between
the client side and the server side. For example, you must synchronize
state established in ``search()`` and accessed from ``push()`` or
``finished()``.

.. rubric::         Settings
   :name: settings

A scope can provide for simple customizations, such as allowing the user
to configure an email address or select a distance unit as metric or
imperial.

.. rubric::         Defining settings
   :name: defining-settings

You can define such settings in a configuration file. The file must be
placed into the same directory as the scope's normal configuration file,
with the name ``<scope-name>-settings.ini``. For example, for a scope
with ID ``com.acme.myscope``, the normal configuration file is
``com.acme.myscope.ini``, and the settings definition file is
``com.acme.myscope-settings.ini``. Both files must be installed in the
same directory (together with the scope's ``.so`` file).

The shell constructs a user interface from the settings definitions. The
user can change settings via that UI. The scope can retrieve the actual
setting values at run time (see `Accessing
settings </sdk/scopes/cpp/index/#read_settings>`_ ).

The following types are supported for settings:

-  ``string`` - a string value
-  ``number`` - a numeric value (integer or floating point)
-  ``boolean`` - ``true`` or ``false``
-  ``list`` - a list of alternatives to choose from (single-choice)

It is possible to optionally define a default value for each setting.

Here are the contents of an example definition file:

[location]

type = string

defaultValue = London

displayName = Location

[distanceUnit]

type = list

defaultValue = 1

displayName = Distance Unit

displayName[de] = Entfernungseinheit

displayValues = Kilometers;Miles

displayValues[de] = Kilometer;Meilen

[age]

type = number

defaultValue = 23

displayName = Age

[enabled]

type = boolean

defaultValue = true

displayName = Enabled

# Setting without a default value

[color]

type = string

displayName = Color

The file must contain a group for each setting. The order of the groups
determines the display order for the user interface that is constructed
by the shell. The group name is the ID of the corresponding setting.

Each setting definition must contain at least the following mandatory
definitions:

-  ``type`` - Defines the type of the setting (``string``, ``number``,
   ``boolean``, or ``list``).
-  ``displayName`` - Defines a display name that is shown for this
   setting by the shell.

The defaultValue field is optional. If present, it defines a default
value that is provided to the scope if the user has not changed anything
(or has never used the settings UI before using the scope). It is
possible to test for settings that do not have a default value and were
never set by the user (see `Accessing
settings </sdk/scopes/cpp/index/#read_settings>`_ ).

For settings of type ``list``, the ``displayValues`` field is mandatory.
It must contain an array that lists the available choices. If you
provide a default value, it must be in the range ``0..max-1`` (where
``max`` is the number of choices).

The ``displayName`` and ``displayValues`` fields can be localized by
appending a locale identifier in square brackets. If no entry can be
found that matches the current locale, the non-localized value is used.

.. rubric::         Accessing settings
   :name: accessing-settings

The settings that are currently in effect are available to a scope via
the
`unity::scopes::ScopeBase::settings() </sdk/scopes/cpp/unity.scopes.ScopeBase/#acddeebb3357c6941b3b77617133cda23>`_ 
and
`unity::scopes::QueryBase::settings() </sdk/scopes/cpp/unity.scopes.QueryBase/#ab6a25ba587387a7f490b8b5a081e9ed6>`_ 
methods. These methods return a
:ref:`unity::scopes::VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`
with one entry per setting. The map contains an entry for each setting
(using the group name as the key). The lookup value is a
`unity::scopes::Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  that
holds the current value of the setting.

If a setting has a value, the corresponding entry in the map contains a
string (for settings of type ``string``, a boolean (for settings of type
``boolean``), or an integer (for settings of type ``number`` and
``list``). (If the user did not provide a particular value, but the
settings definition provided a default value, the ``Variant`` contains
the default value.

If a setting does not have a default value, and the user did not
establish a value for the setting, the corresponding entry is absent
from the map.

When you use settings in your scope implementation, do not cache the
values and re-use them for a different query. If you do, any setting
changes made by the user will not take effect until your scope is
re-started by the runtime. (Because the user cannot know when that
happens, this can be highly confusing.) Instead, call ``settings()``
each time you need to use the value of a setting. That way, your scope
will react to any change made by the user as soon as it receives another
query.

Here is an example of how to read the current settings values for the
definition in `Defining
settings </sdk/scopes/cpp/index/#settings_definitions>`_  :

// In your \`ScopeBase\` or \`QueryBase\` implementation:

:ref:`unity::scopes::VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`
s = settings(); // The settings method is provided by the base class

cout << s["location"].get\_string(); // Prints "London" unless the user
changed the value

auto it = s.find("color");

if (it != s.end()) // Setting does not have a default value, need to
test

{

cout << it->second.get\_string(); // Prints the user-established value

}

.. rubric::         File system access
   :name: file-system-access

Scopes that are installed from click packages are subject to confinement
and are not allowed to access most parts of the file system. However, a
few locations are available to a scope. You can access these paths by
calling methods on
`ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ .

Note
    Do not call these methods from the constructor of your ``ScopeBase``
    implementation. If you do, these methods throw ``LogicException``.
    Instead, call them from
    `start() </sdk/scopes/cpp/unity.scopes.ScopeBase/#ac25f3f326e2cf25de2f2eca18de5926c>`_ 
    or any time thereafter.

`scope\_directory() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a32744a21076d9dacc98362412c6a63d5>`_ 
returns the path of the installation directory of the scope. This
directory contains the scope's ``.so`` and ``.ini`` files, plus whatever
other files you decide to package with your scope. The scope has
read-only permission for this directory.

`cache\_directory() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a36cfdda42db58da399390e7c5df2385e>`_ 
returns the path of a directory that is (exclusively) writable for the
scope. You can use this directory to store persistent information, such
as a cache of results.

`app\_directory() </sdk/scopes/cpp/unity.scopes.ScopeBase/#a4f54564b752a3451e05bd11171abb27e>`_ 
returns the path of a read-only directory. If the scope is packaged
together with an app, the app has permission to write files in this
location, that is, this directory can be used make information provided
by the app available to the scope (but not vice versa).

`tmp\_directory() </sdk/scopes/cpp/unity.scopes.ScopeBase/#ade8de1dca94e10aa9788624710ab49eb>`_ 
returns the path of a read-only directory that is (exclusively) writable
for the scope. This directory is periodically cleaned of unused files.
The exact amount of time may vary, but is on the order of a few hours.
The directory is also cleaned during reboot.

.. rubric::         Online Accounts
   :name: online-accounts

A scope may require access to an online account in order to evaluate
particular results, perform certain actions, or perhaps even operate at
all. The following section describes how to use online account services
from your scope.

.. rubric::         Step 1: Update Apparmor manifest.
   :name: step-1-update-apparmor-manifest.

Firstly, in order for your scope to be granted access to the online
accounts backend, the "accounts" policy group needs to be added to your
Apparmor manifest file, as follows:

.. rubric::         Example Apparmor manifest file:
   :name: example-apparmor-manifest-file

{

"template": "ubuntu-scope-network",

"policy\_groups": [

"accounts"

],

"policy\_version": 1.2

}

.. rubric::         Step 2: Account service configuration.
   :name: step-2-account-service-configuration.

Scopes access accounts at a service level (E.g. YouTube service under a
Google account, Ubuntu Store service under an Ubuntu One account, etc.),
therefore each scope must provide some config to specify its account
service requirements.

There are 2 additional files that a scope must supply:

1. A .service file to specify a method of accessing its particular
   account provider.
2. A .application file to link one or more services to your scope.

.. rubric::         Example .service file:
   :name: example-.service-file

<?xml version="1.0" encoding="UTF-8"?>

<service id="com.ubuntu.scopes.youtube\_youtube">

<type>sharing</type>

<icon>youtube</icon>

<name>YouTube</name>

<provider>google</provider>

<translations>:ref:`unity <sdk_unity>`-scope-youtube</translations>

<template>

<group name="auth">

<setting name="method">oauth2</setting>

<setting name="mechanism">web\_server</setting>

<group name="oauth2">

<group name="web\_server">

<setting name="Host">accounts.google.com</setting>

<setting name="AuthPath">o/oauth2/auth?access\_type=offline</setting>

<setting name="TokenPath">o/oauth2/token</setting>

<setting name="RedirectUri">https://wiki.ubuntu.com/</setting>

<setting name="ResponseType">code</setting>

<setting type="as"
name="Scope">['https://www.googleapis.com/auth/youtube.readonly']</setting>

<setting name="ClientId">xxxx</setting>

<setting name="ClientSecret">xxxx</setting>

<setting type="as" name="AllowedSchemes">['https','http']</setting>

</group>

</group>

</group>

</template>

</service>

.. rubric::         Example .application file:
   :name: example-.application-file

<?xml version="1.0" encoding="UTF-8"?>

<application id="com.ubuntu.scopes.youtube\_youtube">

<description>YouTube</description>

<desktop-entry>com.ubuntu.scopes.youtube\_youtube.desktop</desktop-entry>

<services>

<service id="com.ubuntu.scopes.youtube\_youtube">

<description>Watch your favorite YouTube videos</description>

</service>

</services>

</application>

.. rubric::         Step 3: Update Click manifest.
   :name: step-3-update-click-manifest.

Now that we have added the new files from the previous step to our
project, we need to update our click manifest file to include them:

.. rubric::         Example Click manifest file:
   :name: example-click-manifest-file

{

"description": "YouTube scope",

"framework": "ubuntu-sdk-14.10-dev2",

"architecture": "armhf",

"hooks": {

"youtube": {

"scope": "youtube",

"apparmor": "apparmor.json",

"account-application": "youtube.application",

"account-service": "youtube.service"

}

},

"icon": "youtube/icon.png",

"maintainer": "Ubuntu Developers
<ubuntu-devel-discuss@lists.ubuntu.com>",

"name": "com.ubuntu.scopes.youtube",

"title": "YouTube scope",

"version": "1.0.12"

}

.. rubric::         Step 4: Utilize the OnlineAccountClient class.
   :name: step-4-utilize-the-onlineaccountclient-class.

Finally, we can access online account services from within our scope
implementation.

The first thing we need to do is instantiate a
`unity::scopes::OnlineAccountClient </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/>`_ 
object. On construction we must specify our account service name,
service type, and provider name (These correspond to the values of the
"service\_id", "type", and "provider" entries in your .service file).

The constructor accepts a fourth optional parameter which can be used to
specify a dictionary of authentication data, whose contents will
complement (or override) those authentication parameters specified in
the ``<template>`` element of the ```.service``
file </sdk/scopes/cpp/index/#oa_service>`_ . It can be used in those
rare cases where the authentication parameters are known only at
runtime.

Via this object we can get the statuses of all account services, set a
callback for status updates, and register results and widgets that
require authorization (See:
`unity::scopes::OnlineAccountClient </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/>`_ 
class documentation for more detail).

Here's a simple example of how one could return a "Log-in" result to the
dash (Selecting this result from the dash will trigger an authorization
request to the user before executing one of the 2 post-login actions):

.. rubric::         Example OnlineAccountClient usage:
   :name: example-onlineaccountclient-usage

void
Query::run(\ :ref:`unity::scopes::SearchReplyProxy <sdk_unity_scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`
const& reply)

{

// Instantiate a unity::scopes::OnlineAccountClient object

`unity::scopes::OnlineAccountClient </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/>`_ 
oa\_client("com.ubuntu.scopes.youtube\_youtube", "sharing", "google");

// Check if our service is authenticated under at least one account

bool service\_authenticated = false;

for (auto const& status : oa\_client.get\_service\_statuses())

{

if (status.service\_authenticated)

{

service\_authenticated = true;

break;

}

}

// If our service is not authenticated, return a "Log-in" result

if (!service\_authenticated)

{

auto cat = reply->register\_category("youtube\_login", "", "");

`unity::scopes::CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`_ 
res(cat);

res.set\_title("Log-in to YouTube");

oa\_client.register\_account\_login\_item(res,

query(),

`unity::scopes::OnlineAccountClient::InvalidateResults </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22a4096156be602a8dd697c5a2f1d834cec>`_ ,

`unity::scopes::OnlineAccountClient::DoNothing </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#a4505ad39c78dcc9fbb78a594c33b9a22a20868ed64ce21f859aae50ec76aa738d>`_ );

reply->push(res);

}

}

.. rubric::         Testing
   :name: testing

The Unity Scopes API provides testing helpers based on the well-known
and established testing frameworks,
`googletest <https://code.google.com/p/googletest/>`_  and
`googlemock <https://code.google.com/p/googlemock/>`_ . Please see the
respective documentation of these framework for general information on
how to use them.

The testing helper classes are in the unity::scopes::testing namespace.
The most important ones are:

-  unity::scopes::testing::TypedScopeFixture - A template class that
   takes your scope class name as a template argument and creates a test
   fixture that can be used in tests.
-  unity::scopes::testing::MockSearchReply - A mock of
   unity::scopes::SearchReply that makes it possible to intercept
   responses to search request sent from the scope to a client, so you
   can test if your scope returns the expected data.
-  unity::scopes::testing::MockPreviewReply - A mock of
   unity::scopes::PreviewReply that makes it possible to intercept and
   test responses to preview request sent from the scope to a client.
-  :ref:`unity::scopes::testing::Result <sdk_unity_scopes_testing_result>`
   - A simple Result class derived from
   `unity::scopes::Result </sdk/scopes/cpp/unity.scopes.Result/>`_  that
   provides a default constructor, so you can create dummy results
   (without attributes) for testing purposes.
-  unity::scopes::testing::category - A simple class derived from
   `unity::scopes::Category </sdk/scopes/cpp/unity.scopes.Category/>`_ 
   that makes it possible to create dummy categories (which otherwise
   would require an instance of
   `SearchReply </sdk/scopes/cpp/unity.scopes.SearchReply/>`_  and a
   call to
   `register\_category() </sdk/scopes/cpp/unity.scopes.SearchReply/#aaa061806a96f50ff66abc6184135ea66>`_ ).

Here is a test that checks if ``MyScope`` calls appropriate methods of
`unity::scopes::SearchReply </sdk/scopes/cpp/unity.scopes.SearchReply/>`_ .
Note that the test only checks that the correct methods are called and
uses ``_`` matchers that match any value. For a proper test, you will
need to substitute values appropriate for your scope.

typedef unity::scopes::testing::TypedScopeFixture<MyScope>
TestScopeFixture;

using namespace ::testing;

TEST\_F(TestScopeFixture, search\_results)

{

const
`unity::scopes::CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 
renderer;

NiceMock<unity::scopes::testing::MockSearchReply> reply;

EXPECT\_CALL(reply, register\_departments(\_, \_)).Times(1);

EXPECT\_CALL(reply, register\_category(\_, \_, \_, \_))

.Times(1)

.WillOnce(

Return(

unity::scopes::Category::SCPtr(new
:ref:`unity::scopes::testing::Category <sdk_unity_scopes_testing_category>`\ ("id",
"title", "icon", renderer))

)

);

EXPECT\_CALL(reply, push(Matcher<unity::scopes::Annotation const&>(\_)))

.Times(1)

.WillOnce(Return(true));

EXPECT\_CALL(reply, push(Matcher<unity::scopes::CategorisedResult
const&>(\_)))

.Times(1)

.WillOnce(Return(true));

// note: this is a std::shared\_ptr with empty deleter

:ref:`unity::scopes::SearchReplyProxy <sdk_unity_scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`
reply\_proxy(&reply, [](unity::scopes::SearchReplyBase\*) {});

`unity::scopes::CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 
query(scope\_id, "", "");

`unity::scopes::SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 
meta\_data("en\_EN", "phone");

auto search\_query = scope->search(query, meta\_data);

ASSERT\_NE(nullptr, search\_query);

search\_query->run(reply\_proxy);

}

.. rubric::         Deployment
   :name: deployment

Installing a scope is as simple as running ``make install`` when using
the scope template. You might need to restart the global scope registry
when a new scope is installed by running:

.. code:: fragment

    restart scope-registry

Scopes are installed under one of the "scopes directories" scanned by
the scope registry. Currently these default to:

-  /usr/lib/${arch}/unity-scopes
-  /custom/lib/${arch}/unity-scopes
-  $HOME/.local/share/unity-scopes

The ``/usr/lib`` directory is for scopes that are pre-installed by
Canonical. The ``/custom/lib`` directory is for scopes that
pre-installed by OEMs. The ``$HOME/.local`` directory is for scopes that
are installed from click packages.

Individual scopes are installed into subdirectories of these
installation directories. The name of the subdirectory containing a
scope's ``.ini`` and ``.so`` files can be anything but, to avoid name
clashes, we strongly suggest something that is unique, such as
``com.canonical.scopes.scopename``. At a minimum, the directory
structure must contain the following:

.. code:: fragment

    -+- ${scopesdir}
     `-+- subdirectory
       |--- scopename.ini
       `--- <library>.so

That is, each subdirectory must contain a scope ``.ini`` file and a
shared library containing the scope code. You are free to ship
additional data in this directory, such as a settings definition file
(if your scope uses settings) or icon files and screenshots.

The name of the scope's ``.ini`` file *must* be a unique ID for the
scope. We *strongly* suggest to use a unique identifier, such as
``com.canonical.scopes.scopename``, to avoid clashes with scopes created
by other developers.

The name of of the scope's ``.so`` file can be ``libscopename.so``,
``scopename.so``, or simply ``scope.so``. For example, for a scope named
``Fred``, the names ``libFred.so``, ``Fred.so``, and ``scope.so`` are
acceptable. (No other library names are valid.)

The scope ``.ini`` file uses the standard ``.ini`` file format, with the
following keys:

.. code:: fragment

    [ScopeConfig]
    DisplayName = human readable name of scope
    Description = description of scope
    Author = Author
    Version = 1
    Icon = path to icon representing the scope
    Art = path to screenshot of the scope
    SearchHint = hint text displayed to user when viewing scope
    HotKey =
    ResultsTtlType = None, Small, Medium, or Large
    Keywords =
    IsAggregator = true or false
    IdleTimeout = idle timeout in seconds
    LocationDataNeeded = true or false
    ScopeRunner = path_to_scope_runner args... %R %S
    [Appearance]
    ForegroundColor = default text color (defaults to theme-provided foreground color)
    BackgroundColor = color of scope background (default is transparent)
    ShapeImages = whether to use Ubuntu-shape for all cards and artwork (defaults to true)
    PreviewButtonColor = color of preview buttons (defaults to theme-provided color)
    LogoOverlayColor = color for the overlay in scopes overview (defaults to semi-transparent black)
    PageHeader.Logo = image containing scope's logo
    PageHeader.ForegroundColor = default header text color (defaults to the overall foreground color)
    PageHeader.Background = background scheme of the header
    PageHeader.DividerColor = color of the header divider
    PageHeader.NavigationBackground = background scheme of the navigation bar

The ``ScopeConfig`` group is mandatory. The information in this group
makes the scope known to the registry. In addition, this information
controls how the scope appears in the "Scopes" scope.

The ``ScopeConfig`` group must contain settings for at least
``DisplayName``, ``Description``, and ``Author``. ``DisplayName`` and
``Description`` can (and should) be localized. For example:

``Description[de_DE] = Fußballergebnisse``

The ``Version`` key is optional, but we strongly recommend that you set
it. If the behavior of your scope changes in any way that is visible to
the query source (such having added or removed a result attribute), you
should increment the version number. This allows an aggregating scope to
adjust its behavior according to which version of your scope is
installed. If not set, the default value is 0. You can set the value to
any integer >= 1.

The ``SearchHint`` key provides text that may be shown by the UI, such
as "Enter a city name".

The ``Keywords`` key is optional, but we recommend that you use it.
Keywords are used by aggregators to collect results from scopes of
similar type (E.g. The Music scope will aggregate scopes with the
keyword "music", and so on). The value of ``Keywords`` should specify a
list of keywords your scope falls under. This value must be a semicolon
separated list (E.g. ``Keywords = music;video``).

The ``IsAggregator`` key must be set to ``true`` for aggregating scopes.
The default value is ``false``.

The ``IdleTimeout`` key controls how long a scope can remain idle before
it is told to stop by the registry (or killed if it does not stop within
4 seconds). The default idle timeout is 40 seconds, meaning that a scope
will be told to stop if no query was sent to it for that amount of time.

``ResultTtl`` determines how long results should be cached by the UI
before they are considered "stale" and should be refreshed. ``None``
indicates that results remain valid indefinitely; ``Small`` indicates
results are valid for around a minute; ``Medium`` indicates that results
are valid for a few minutes; ``Large`` indicates that results remain
valid for around an hour.

``LocationDataNeeded`` should be set to ``true`` if the scope requires
location data. In that case, the
`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 
provides access to `Location </sdk/scopes/cpp/unity.scopes.Location/>`_ 
information (assuming the user has granted location permission to the
scope). If not set, the default value is ``false``.

The ``Scoperunner`` key defines a command line to be executed when the
scope is started by the registry. Typically, scopes do not need to
change this setting. It is provided mainly to allow scopes implemented
in languages other than C++ to be started, as well as for debugging. For
example, the following setting causes a scope to be run under ``gdb``:

``ScopeRunner = /usr/bin/gdb --ex run --args /usr/lib/x86_64-linux-gnu/unity-scopes/scoperunner R S``

The ``R`` expands to the path to the ``Runtime.ini`` config file, and
``S`` expands to the scope's ``.ini`` file.

The ``Appearance`` group and all keys within it are optional and can be
used to customize the look of the scope. Some of the ``Appearance`` keys
(such as ``PageHeader.Background``) require background scheme URIs.
Valid URIs for these keys include:

-  color:///#aarrggbb
-  color:///black
-  gradient:///#aarrggbb/#aarrggbb
-  /absolute/path/to/image
-  http://remote-server.com/path/to/image

Note
    Please refer to the `Scope
    Keywords <https://developer.ubuntu.com/en/scopes/tutorials/scope-keywords/>`_ 
    tutorial document for more detail on using keywords in your scope.

.. rubric::         The scope tool
   :name: the-scope-tool

The Unity Scope Tool is a stand-alone rendering tool that allows you to
see how the dash will render your scope.

You can install the tool from the Ubuntu archive using:

.. code:: fragment

    sudo apt-get install unity-scope-tool

After installation, you can run the scope-tool with a parameter
specifying the path to your scope configuration file (for example
``unity-scope-tool ~/dev/myscope/build/myscope.ini``). If a binary for
your scope can be found in the same directory, the scope-tool displays
surfacing and search results provided by your scope, and it allows you
to perform searches, invoke previews, and perform actions within
previews.

Note that the scope-tool uses the same rendering mechanism as Unity
itself and, therefore, what you see in the scope-tool is what you get in
Unity. The tool can also be used to fine-tune category definitions, as
it allows you to manipulate the definitions on the fly. Once you are
satisfied with the result, you can just copy the JSON definition back
into your scope (see
`unity::scopes::CategoryRenderer::CategoryRenderer() </sdk/scopes/cpp/unity.scopes.CategoryRenderer/#a046414ae2092968686ee4ee00629054a>`_ ).

The scope-tool supports a few command line arguments:

-  By default (without any arguments) it will communicate with all
   scopes installed on the system and available on the smart scopes
   server.
-  When a path to a scope configuration file is provided, only that
   scope is initialized, but you can either pass multiple configuration
   files or the ``--include-system-scopes`` /
   ``--include-server-scopes`` option to allow development of
   aggregating scopes.

