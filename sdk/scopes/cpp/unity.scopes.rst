Top-level namespace for public functionality of the Unity scopes API.
More...

        Classes
---------------

class  

AbstractScopeBase

 

| Abstract base class for a scope implementation.

 

class  

`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`__

 

| Metadata passed to scopes for preview and activation.
  `More... </sdk/scopes/cpp/unity.scopes.ActionMetadata#details>`__

 

class  

`ActivationListenerBase </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/>`__

 

| Base class to receive a response to a result activation request.
  `More... </sdk/scopes/cpp/unity.scopes.ActivationListenerBase#details>`__

 

class  

`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`__

 

| Base class for an activation request that is executed inside a scope.
  `More... </sdk/scopes/cpp/unity.scopes.ActivationQueryBase#details>`__

 

class  

`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`__

 

| Response to a result activation.
  `More... </sdk/scopes/cpp/unity.scopes.ActivationResponse#details>`__

 

class  

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`__

 

| Parameters of a search query.
  `More... </sdk/scopes/cpp/unity.scopes.CannedQuery#details>`__

 

class  

`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`__

 

| A result, including the category it belongs to.
  `More... </sdk/scopes/cpp/unity.scopes.CategorisedResult#details>`__

 

class  

`Category </sdk/scopes/cpp/unity.scopes.Category/>`__

 

| A set of related results returned by a scope and displayed within a
  single pane in the Unity dash.
  `More... </sdk/scopes/cpp/unity.scopes.Category#details>`__

 

class  

`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`__

 

| A category renderer template in JSON format.
  `More... </sdk/scopes/cpp/unity.scopes.CategoryRenderer#details>`__

 

struct  

`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`__

 

| A container for details about an aggregator's child scope.
  `More... </sdk/scopes/cpp/unity.scopes.ChildScope#details>`__

 

class  

`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`__

 

| Defines a layout for preview widgets with given column setup.
  `More... </sdk/scopes/cpp/unity.scopes.ColumnLayout#details>`__

 

class  

`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`__

 

| A container for details about the completion status of a query as well
  as any additional information regarding the operation of the request.
  `More... </sdk/scopes/cpp/unity.scopes.CompletionDetails#details>`__

 

class  

`ConfigException </sdk/scopes/cpp/unity.scopes.ConfigException/>`__

 

| Exception to indicate that something went wrong with the contents of
  configuration files.
  `More... </sdk/scopes/cpp/unity.scopes.ConfigException#details>`__

 

class  

`Department </sdk/scopes/cpp/unity.scopes.Department/>`__

 

| A department with optional sub-departments.
  `More... </sdk/scopes/cpp/unity.scopes.Department#details>`__

 

class  

`FilterBase </sdk/scopes/cpp/unity.scopes.FilterBase/>`__

 

| Base class for all implementations of filters.
  `More... </sdk/scopes/cpp/unity.scopes.FilterBase#details>`__

 

class  

`FilterGroup </sdk/scopes/cpp/unity.scopes.FilterGroup/>`__

 

| Groups several filters into an expandable widget in the UI.
  `More... </sdk/scopes/cpp/unity.scopes.FilterGroup#details>`__

 

class  

`FilterOption </sdk/scopes/cpp/unity.scopes.FilterOption/>`__

 

| Holds definition of filter option for
  `OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`__.
  `More... </sdk/scopes/cpp/unity.scopes.FilterOption#details>`__

 

class  

`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__

 

| Stores the state of multiple filters.
  `More... </sdk/scopes/cpp/unity.scopes.FilterState#details>`__

 

class  

`Link </sdk/scopes/cpp/unity.scopes.Link/>`__

 

| A hyperlink (label and canned query).
  `More... </sdk/scopes/cpp/unity.scopes.Link#details>`__

 

class  

`ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase/>`__

 

| Abstract base class to be notified of request completion (such as a
  query or activation request).
  `More... </sdk/scopes/cpp/unity.scopes.ListenerBase#details>`__

 

class  

`Location </sdk/scopes/cpp/unity.scopes.Location/>`__

 

| Holds location attributes such as latitude, longitude, etc.
  `More... </sdk/scopes/cpp/unity.scopes.Location#details>`__

 

class  

`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`__

 

| Exception to indicate that something went wrong with the middleware
  layer.
  `More... </sdk/scopes/cpp/unity.scopes.MiddlewareException#details>`__

 

class  

`NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`__

 

| Exception to indicate that an object wasn't found by a lookup
  function.
  `More... </sdk/scopes/cpp/unity.scopes.NotFoundException#details>`__

 

class  

`Object </sdk/scopes/cpp/unity.scopes.Object/>`__

 

| The root base class for all proxies.
  `More... </sdk/scopes/cpp/unity.scopes.Object#details>`__

 

class  

`ObjectNotExistException </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/>`__

 

| Exception to indicate that a (twoway) request was sent to an object
  with an unknown identity.
  `More... </sdk/scopes/cpp/unity.scopes.ObjectNotExistException#details>`__

 

class  

`OnlineAccountClient </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/>`__

 

| A simple interface for integrating online accounts access and
  monitoring into scopes.
  `More... </sdk/scopes/cpp/unity.scopes.OnlineAccountClient#details>`__

 

class  

`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`__

 

| A container for details about something of interest that occurs during
  the operation of a request.
  `More... </sdk/scopes/cpp/unity.scopes.OperationInfo#details>`__

 

class  

`OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`__

 

| A selection filter that displays a list of choices and allows one or
  more of them to be selected.
  `More... </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter#details>`__

 

class  

`PreviewListenerBase </sdk/scopes/cpp/unity.scopes.PreviewListenerBase/>`__

 

| Abstract base class for a scope to respond to preview requests.
  `More... </sdk/scopes/cpp/unity.scopes.PreviewListenerBase#details>`__

 

class  

`PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`__

 

| Abstract base class to represent a particular preview.
  `More... </sdk/scopes/cpp/unity.scopes.PreviewQueryBase#details>`__

 

class  

`PreviewReply </sdk/scopes/cpp/unity.scopes.PreviewReply/>`__

 

| Allows the results of a preview to be sent to the preview requester.
  `More... </sdk/scopes/cpp/unity.scopes.PreviewReply#details>`__

 

class  

`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`__

 

| A widget for a preview.
  `More... </sdk/scopes/cpp/unity.scopes.PreviewWidget#details>`__

 

class  

`QueryBase </sdk/scopes/cpp/unity.scopes.QueryBase/>`__

 

| Abstract server-side base interface for a query that is executed
  inside a scope.
  `More... </sdk/scopes/cpp/unity.scopes.QueryBase#details>`__

 

class  

`QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`__

 

| `QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`__ allows a query
  to be cancelled.
  `More... </sdk/scopes/cpp/unity.scopes.QueryCtrl#details>`__

 

class  

`QueryMetadata </sdk/scopes/cpp/unity.scopes.QueryMetadata/>`__

 

| Base class for extra metadata passed to scopes as a part of a request.
  `More... </sdk/scopes/cpp/unity.scopes.QueryMetadata#details>`__

 

class  

`RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`__

 

| A range filter allows a start and end value to be entered by the user.
  `More... </sdk/scopes/cpp/unity.scopes.RangeInputFilter#details>`__

 

class  

`Registry </sdk/scopes/cpp/unity.scopes.Registry/>`__

 

| White pages service for available scopes.
  `More... </sdk/scopes/cpp/unity.scopes.Registry#details>`__

 

class  

`Reply </sdk/scopes/cpp/unity.scopes.Reply/>`__

 

| Allows query termination to be sent to the source of a query.
  `More... </sdk/scopes/cpp/unity.scopes.Reply#details>`__

 

class  

`Result </sdk/scopes/cpp/unity.scopes.Result/>`__

 

| The attributes of a result returned by a
  `Scope </sdk/scopes/cpp/unity.scopes.Scope/>`__.
  `More... </sdk/scopes/cpp/unity.scopes.Result#details>`__

 

class  

`Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`__

 

| The main object for query originators to access the scopes runtime.
  `More... </sdk/scopes/cpp/unity.scopes.Runtime#details>`__

 

class  

`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`__

 

| Allows queries, preview requests, and activation requests to be sent
  to a scope. `More... </sdk/scopes/cpp/unity.scopes.Scope#details>`__

 

class  

`ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`__

 

| Base class for a scope implementation.
  `More... </sdk/scopes/cpp/unity.scopes.ScopeBase#details>`__

 

class  

`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`__

 

| Holds scope attributes such as name, description, icon etc.
  `More... </sdk/scopes/cpp/unity.scopes.ScopeMetadata#details>`__

 

class  

`SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`__

 

| Abstract base interface for a client to receive the results of a
  query.
  `More... </sdk/scopes/cpp/unity.scopes.SearchListenerBase#details>`__

 

class  

`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`__

 

| Metadata passed with search requests.
  `More... </sdk/scopes/cpp/unity.scopes.SearchMetadata#details>`__

 

class  

`SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/>`__

 

| Abstract base class to represent a particular query.
  `More... </sdk/scopes/cpp/unity.scopes.SearchQueryBase#details>`__

 

class  

`SearchReply </sdk/scopes/cpp/unity.scopes.SearchReply/>`__

 

| Allows the results of a search query to be sent to the query source.
  `More... </sdk/scopes/cpp/unity.scopes.SearchReply#details>`__

 

class  

`TimeoutException </sdk/scopes/cpp/unity.scopes.TimeoutException/>`__

 

| Exception to indicate that a twoway request timed out.
  `More... </sdk/scopes/cpp/unity.scopes.TimeoutException#details>`__

 

class  

`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__

 

| A value slider filter that allows for selecting a value within a given
  range.
  `More... </sdk/scopes/cpp/unity.scopes.ValueSliderFilter#details>`__

 

class  

`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`__

 

| Labels used by a
  `ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`__.
  `More... </sdk/scopes/cpp/unity.scopes.ValueSliderLabels#details>`__

 

class  

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__

 

| Simple variant class that can hold an integer, boolean, string,
  double, dictionary, array or null value.
  `More... </sdk/scopes/cpp/unity.scopes.Variant#details>`__

 

class  

`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`__

 

| Helper class for creating and populating
  `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ containers.
  `More... </sdk/scopes/cpp/unity.scopes.VariantBuilder#details>`__

 

        Typedefs
----------------

        typedef std::vector<
`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`__ > 

`ChildScopeList </sdk/scopes/cpp/unity.scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>`__

 

| A list of child scopes.

 

        typedef std::list<
`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`__ > 

`ColumnLayoutList </sdk/scopes/cpp/unity.scopes#a5b970e3c73bf25548398b32e79b2224d>`__

 

| List of column layouts (see
  `unity::scopes::ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`__)

 

        typedef std::list< std::shared\_ptr<
`Department </sdk/scopes/cpp/unity.scopes.Department/>`__ const > > 

`DepartmentList </sdk/scopes/cpp/unity.scopes#ab8effc4ea05a59f2ddea896833f07231>`__

 

| List of departments (see
  `unity::scopes::Department </sdk/scopes/cpp/unity.scopes.Department/>`__)

 

        typedef std::list< FilterBase::SCPtr > 

`Filters </sdk/scopes/cpp/unity.scopes#adab58c13cf604e0e64bd6b1a745364d3>`__

 

| List of filters.

 

        typedef std::shared\_ptr<
`Object </sdk/scopes/cpp/unity.scopes.Object/>`__ > 

`ObjectProxy </sdk/scopes/cpp/unity.scopes#aa68ce1769f7a888d0b4b2951741ca75a>`__

 

| Convenience type definition for the proxy inheritance root.

 

        typedef std::shared\_ptr<
`PreviewReply </sdk/scopes/cpp/unity.scopes.PreviewReply/>`__ > 

`PreviewReplyProxy </sdk/scopes/cpp/unity.scopes#a7b46ef0e880da4c75314fe60bdd55754>`__

 

| Convenience type definition.

 

        typedef std::list<
`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`__ > 

`PreviewWidgetList </sdk/scopes/cpp/unity.scopes#aed3b7b1daf2e49d0a820ef931caa792d>`__

 

| List of preview widgets (see
  `unity::scopes::PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`__)

 

        typedef std::shared\_ptr<
`QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`__ > 

`QueryCtrlProxy </sdk/scopes/cpp/unity.scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`__

 

| Convenience type definition.

 

        typedef std::map< std::string,
`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`__ > 

`MetadataMap </sdk/scopes/cpp/unity.scopes#a9f6e8e62689e49cdabadacf39b697816>`__

 

| Map for scope ID and metadata pairs.

 

        typedef std::shared\_ptr<
`Registry </sdk/scopes/cpp/unity.scopes.Registry/>`__ > 

`RegistryProxy </sdk/scopes/cpp/unity.scopes#a45babc254d3548863d79ee54f266e84d>`__

 

| Convenience type definition.

 

        typedef std::shared\_ptr<
`Reply </sdk/scopes/cpp/unity.scopes.Reply/>`__ > 

`ReplyProxy </sdk/scopes/cpp/unity.scopes#a8c91fad901d437ede2195a1cab136baf>`__

 

| Convenience type definition.

 

        typedef std::shared\_ptr<
`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`__ > 

`ScopeProxy </sdk/scopes/cpp/unity.scopes#a94db15da410f8419e4da711db842aaae>`__

 

| Convenience type definition.

 

        typedef std::shared\_ptr<
`SearchReply </sdk/scopes/cpp/unity.scopes.SearchReply/>`__ > 

`SearchReplyProxy </sdk/scopes/cpp/unity.scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`__

 

| Convenience type definition.

 

        typedef std::pair< double, std::string > 

`ValueLabelPair </sdk/scopes/cpp/unity.scopes#aa8a0ba9172b4431df7628f2335409e0e>`__

 

| A value and its corresponding label.

 

        typedef std::vector<
`ValueLabelPair </sdk/scopes/cpp/unity.scopes#aa8a0ba9172b4431df7628f2335409e0e>`__
> 

`ValueLabelPairList </sdk/scopes/cpp/unity.scopes#aa2ccb5d7acadeb38f44e9405f1b55c6b>`__

 

| A sequence of value-label pairs.

 

        typedef std::map< std::string,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ > 

`VariantMap </sdk/scopes/cpp/unity.scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`__

 

| A dictionary of (string,
  `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__) pairs.

 

        typedef std::vector<
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ > 

`VariantArray </sdk/scopes/cpp/unity.scopes#aa3bf32d584efd902bca79698a07dd934>`__

 

| An array of variants.

 

        Functions
-----------------

char const \* 

`to\_string </sdk/scopes/cpp/unity.scopes#ae62357e6e19eda314bb79ddf65a678ac>`__
(`CompletionDetails::CompletionStatus </sdk/scopes/cpp/unity.scopes.CompletionDetails#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`__
status)

 

| Convenience function to convert a CompletionDetails::CompletionStatus
  enumerator to a string.

 

        void 

`swap </sdk/scopes/cpp/unity.scopes#a0e2da826f3ff512e632dff7604f1f63f>`__
(`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ &,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`__ &) noexcept

 

| Swaps the contents of two Variants.

 

Version information

Version information is represented as
*<``major``>*.\ *<``minor``>*.\ *<``micro``>*.

Releases that differ in the major version number or minor are binary
incompatible.

Releases of the library that differ in the micro version number are
binary compatible with older releases, so client code does not need to
be recompiled to use the newer library version.

Changes in the micro version number indicate bug fixes or feature
additions that are binary compatible.

int 

`major\_version </sdk/scopes/cpp/unity.scopes#ada491223b797c1f0f5a25ab3c5d8f715>`__
()

 

| Returns the major version number of the Unity scopes library.

 

int 

`minor\_version </sdk/scopes/cpp/unity.scopes#af13f99bac555f4a3c2a1647e972b1953>`__
()

 

| Returns the minor version number of the Unity scopes library.

 

int 

`micro\_version </sdk/scopes/cpp/unity.scopes#af8cce57971924bc625032a9ff3f6b2b5>`__
()

 

| Returns the micro version number of the Unity scopes library.

 

const char \* 

`version\_string </sdk/scopes/cpp/unity.scopes#a80865ea53b482becc5c56f486762545e>`__
()

 

| Returns the Unity scopes version as a string in the format
  *<``major``>*.\ *<``minor``>*.\ *<``micro``>*.

 

        Variables
-----------------

constexpr const char \* 

`DEFAULT\_RENDERER </sdk/scopes/cpp/unity.scopes#a697a8f21545922bcfc8345d83f5cc156>`__

 

| A default template for generic use.

 

constexpr const char \* 

`MUSIC\_GRID\_RENDERER </sdk/scopes/cpp/unity.scopes#abf16a855b33daf77e1a3a515cf4ab1e5>`__

 

| A template suitable for displaying music results.

 

        decltype(&UNITY\_SCOPE\_CREATE\_FUNCTION) typedef 

CreateFunction

 

| Convenience typedef for the create function pointer.

 

        decltype(&UNITY\_SCOPE\_DESTROY\_FUNCTION) typedef 

DestroyFunction

 

| Convenience typedef for the destroy function pointer.

 

Detailed Description
--------------------

Top-level namespace for public functionality of the Unity scopes API.

Function Documentation
----------------------

+----------------+----------------+----------------+----------------+----------------+
| int            | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :major\_versio |                |                |                |                |
| n              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the major version number of the Unity scopes library.

The major version number is also available as the macro
``UNITY_SCOPES_VERSION_MAJOR``.

+----------------+----------------+----------------+----------------+----------------+
| int            | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :micro\_versio |                |                |                |                |
| n              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the micro version number of the Unity scopes library.

The micro version number is also available as the macro
``UNITY_SCOPES_VERSION_MICRO``.

+----------------+----------------+----------------+----------------+----------------+
| int            | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :minor\_versio |                |                |                |                |
| n              |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the minor version number of the Unity scopes library.

The minor version number is also available as the macro
``UNITY_SCOPES_VERSION_MINOR``.

+--------------+--------------+--------------+--------------+--------------+--------------+
| char const   | (            | `CompletionD | *status*     | )            |              |
| \*           |              | etails::Comp |              |              |              |
| unity::scope |              | letionStatus |              |              |              |
| s::to\_strin |              |  </sdk/scope |              |              |              |
| g            |              | s/cpp/unity. |              |              |              |
|              |              | scopes.Compl |              |              |              |
|              |              | etionDetails |              |              |              |
|              |              | #a38cbf8502d |              |              |              |
|              |              | 92a411d1c6ac |              |              |              |
|              |              | 5d1bd6ee1c>` |              |              |              |
|              |              | __           |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Convenience function to convert a
`CompletionDetails::CompletionStatus </sdk/scopes/cpp/unity.scopes.CompletionDetails#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`__
enumerator to a string.

Returns
    Possible return values are "ok", "cancelled", and "error".

+----------------+----------------+----------------+----------------+----------------+
| char const \*  | (              |                | )              |                |
| unity::scopes: |                |                |                |                |
| :version\_stri |                |                |                |                |
| ng             |                |                |                |                |
+----------------+----------------+----------------+----------------+----------------+

Returns the Unity scopes version as a string in the format
*<``major``>*.\ *<``minor``>*.\ *<``micro``>*.

The version string is also available as the macro
``UNITY_SCOPES_VERSION_STRING``.

Variable Documentation
----------------------

+-----------------------------------------------------------+
| constexpr const char\* unity::scopes::DEFAULT\_RENDERER   |
+-----------------------------------------------------------+

**Initial value:**

{

R"(

 {

 "schema-version":1,

 "template":

 {

 "category-layout":"grid"

 },

 "components":

 {

 "title":"title",

 "art":"art"

 }

 }

 )"

}

A default template for generic use.

+---------------------------------------------------------------+
| constexpr const char\* unity::scopes::MUSIC\_GRID\_RENDERER   |
+---------------------------------------------------------------+

**Initial value:**

{

R"(

 {

 "schema-version":1,

 "template":

 {

 "category-layout":"grid"

 },

 "components":

 {

 "title":"title",

 "subtitle":"subtitle",

 "art":"art"

 }

 }

 )"

}

A template suitable for displaying music results.

