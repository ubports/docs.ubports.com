.. _sdk_unity_scopes:
unity.scopes
============

Top-level namespace for public functionality of the Unity scopes API.
More...

        Classes
---------------

class  

AbstractScopeBase

 

| Abstract base class for a scope implementation.

 

class  

`ActionMetadata </sdk/scopes/cpp/unity.scopes.ActionMetadata/>`_ 

 

| Metadata passed to scopes for preview and activation.
  `More... </sdk/scopes/cpp/unity.scopes.ActionMetadata/#details>`_ 

 

class  

`ActivationListenerBase </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/>`_ 

 

| Base class to receive a response to a result activation request.
  `More... </sdk/scopes/cpp/unity.scopes.ActivationListenerBase/#details>`_ 

 

class  

`ActivationQueryBase </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/>`_ 

 

| Base class for an activation request that is executed inside a scope.
  `More... </sdk/scopes/cpp/unity.scopes.ActivationQueryBase/#details>`_ 

 

class  

`ActivationResponse </sdk/scopes/cpp/unity.scopes.ActivationResponse/>`_ 

 

| Response to a result activation.
  `More... </sdk/scopes/cpp/unity.scopes.ActivationResponse/#details>`_ 

 

class  

`CannedQuery </sdk/scopes/cpp/unity.scopes.CannedQuery/>`_ 

 

| Parameters of a search query.
  `More... </sdk/scopes/cpp/unity.scopes.CannedQuery/#details>`_ 

 

class  

`CategorisedResult </sdk/scopes/cpp/unity.scopes.CategorisedResult/>`_ 

 

| A result, including the category it belongs to.
  `More... </sdk/scopes/cpp/unity.scopes.CategorisedResult/#details>`_ 

 

class  

`Category </sdk/scopes/cpp/unity.scopes.Category/>`_ 

 

| A set of related results returned by a scope and displayed within a
  single pane in the Unity dash.
  `More... </sdk/scopes/cpp/unity.scopes.Category/#details>`_ 

 

class  

`CategoryRenderer </sdk/scopes/cpp/unity.scopes.CategoryRenderer/>`_ 

 

| A category renderer template in JSON format.
  `More... </sdk/scopes/cpp/unity.scopes.CategoryRenderer/#details>`_ 

 

struct  

`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`_ 

 

| A container for details about an aggregator's child scope.
  `More... </sdk/scopes/cpp/unity.scopes.ChildScope/#details>`_ 

 

class  

`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_ 

 

| Defines a layout for preview widgets with given column setup.
  `More... </sdk/scopes/cpp/unity.scopes.ColumnLayout/#details>`_ 

 

class  

`CompletionDetails </sdk/scopes/cpp/unity.scopes.CompletionDetails/>`_ 

 

| A container for details about the completion status of a query as well
  as any additional information regarding the operation of the request.
  `More... </sdk/scopes/cpp/unity.scopes.CompletionDetails/#details>`_ 

 

class  

`ConfigException </sdk/scopes/cpp/unity.scopes.ConfigException/>`_ 

 

| Exception to indicate that something went wrong with the contents of
  configuration files.
  `More... </sdk/scopes/cpp/unity.scopes.ConfigException/#details>`_ 

 

class  

`Department </sdk/scopes/cpp/unity.scopes.Department/>`_ 

 

| A department with optional sub-departments.
  `More... </sdk/scopes/cpp/unity.scopes.Department/#details>`_ 

 

class  

`FilterBase </sdk/scopes/cpp/unity.scopes.FilterBase/>`_ 

 

| Base class for all implementations of filters.
  `More... </sdk/scopes/cpp/unity.scopes.FilterBase/#details>`_ 

 

class  

`FilterGroup </sdk/scopes/cpp/unity.scopes.FilterGroup/>`_ 

 

| Groups several filters into an expandable widget in the UI.
  `More... </sdk/scopes/cpp/unity.scopes.FilterGroup/#details>`_ 

 

class  

`FilterOption </sdk/scopes/cpp/unity.scopes.FilterOption/>`_ 

 

| Holds definition of filter option for
  `OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`_ .
  `More... </sdk/scopes/cpp/unity.scopes.FilterOption/#details>`_ 

 

class  

`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`_ 

 

| Stores the state of multiple filters.
  `More... </sdk/scopes/cpp/unity.scopes.FilterState/#details>`_ 

 

class  

`Link </sdk/scopes/cpp/unity.scopes.Link/>`_ 

 

| A hyperlink (label and canned query).
  `More... </sdk/scopes/cpp/unity.scopes.Link/#details>`_ 

 

class  

`ListenerBase </sdk/scopes/cpp/unity.scopes.ListenerBase/>`_ 

 

| Abstract base class to be notified of request completion (such as a
  query or activation request).
  `More... </sdk/scopes/cpp/unity.scopes.ListenerBase/#details>`_ 

 

class  

`Location </sdk/scopes/cpp/unity.scopes.Location/>`_ 

 

| Holds location attributes such as latitude, longitude, etc.
  `More... </sdk/scopes/cpp/unity.scopes.Location/#details>`_ 

 

class  

`MiddlewareException </sdk/scopes/cpp/unity.scopes.MiddlewareException/>`_ 

 

| Exception to indicate that something went wrong with the middleware
  layer.
  `More... </sdk/scopes/cpp/unity.scopes.MiddlewareException/#details>`_ 

 

class  

`NotFoundException </sdk/scopes/cpp/unity.scopes.NotFoundException/>`_ 

 

| Exception to indicate that an object wasn't found by a lookup
  function.
  `More... </sdk/scopes/cpp/unity.scopes.NotFoundException/#details>`_ 

 

class  

`Object </sdk/scopes/cpp/unity.scopes.Object/>`_ 

 

| The root base class for all proxies.
  `More... </sdk/scopes/cpp/unity.scopes.Object/#details>`_ 

 

class  

`ObjectNotExistException </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/>`_ 

 

| Exception to indicate that a (twoway) request was sent to an object
  with an unknown identity.
  `More... </sdk/scopes/cpp/unity.scopes.ObjectNotExistException/#details>`_ 

 

class  

`OnlineAccountClient </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/>`_ 

 

| A simple interface for integrating online accounts access and
  monitoring into scopes.
  `More... </sdk/scopes/cpp/unity.scopes.OnlineAccountClient/#details>`_ 

 

class  

`OperationInfo </sdk/scopes/cpp/unity.scopes.OperationInfo/>`_ 

 

| A container for details about something of interest that occurs during
  the operation of a request.
  `More... </sdk/scopes/cpp/unity.scopes.OperationInfo/#details>`_ 

 

class  

`OptionSelectorFilter </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/>`_ 

 

| A selection filter that displays a list of choices and allows one or
  more of them to be selected.
  `More... </sdk/scopes/cpp/unity.scopes.OptionSelectorFilter/#details>`_ 

 

class  

`PreviewListenerBase </sdk/scopes/cpp/unity.scopes.PreviewListenerBase/>`_ 

 

| Abstract base class for a scope to respond to preview requests.
  `More... </sdk/scopes/cpp/unity.scopes.PreviewListenerBase/#details>`_ 

 

class  

`PreviewQueryBase </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/>`_ 

 

| Abstract base class to represent a particular preview.
  `More... </sdk/scopes/cpp/unity.scopes.PreviewQueryBase/#details>`_ 

 

class  

`PreviewReply </sdk/scopes/cpp/unity.scopes.PreviewReply/>`_ 

 

| Allows the results of a preview to be sent to the preview requester.
  `More... </sdk/scopes/cpp/unity.scopes.PreviewReply/#details>`_ 

 

class  

`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_ 

 

| A widget for a preview.
  `More... </sdk/scopes/cpp/unity.scopes.PreviewWidget/#details>`_ 

 

class  

`QueryBase </sdk/scopes/cpp/unity.scopes.QueryBase/>`_ 

 

| Abstract server-side base interface for a query that is executed
  inside a scope.
  `More... </sdk/scopes/cpp/unity.scopes.QueryBase/#details>`_ 

 

class  

`QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`_ 

 

| `QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`_  allows a query
  to be cancelled.
  `More... </sdk/scopes/cpp/unity.scopes.QueryCtrl/#details>`_ 

 

class  

`QueryMetadata </sdk/scopes/cpp/unity.scopes.QueryMetadata/>`_ 

 

| Base class for extra metadata passed to scopes as a part of a request.
  `More... </sdk/scopes/cpp/unity.scopes.QueryMetadata/#details>`_ 

 

class  

`RangeInputFilter </sdk/scopes/cpp/unity.scopes.RangeInputFilter/>`_ 

 

| A range filter allows a start and end value to be entered by the user.
  `More... </sdk/scopes/cpp/unity.scopes.RangeInputFilter/#details>`_ 

 

class  

`Registry </sdk/scopes/cpp/unity.scopes.Registry/>`_ 

 

| White pages service for available scopes.
  `More... </sdk/scopes/cpp/unity.scopes.Registry/#details>`_ 

 

class  

`Reply </sdk/scopes/cpp/unity.scopes.Reply/>`_ 

 

| Allows query termination to be sent to the source of a query.
  `More... </sdk/scopes/cpp/unity.scopes.Reply/#details>`_ 

 

class  

`Result </sdk/scopes/cpp/unity.scopes.Result/>`_ 

 

| The attributes of a result returned by a
  `Scope </sdk/scopes/cpp/unity.scopes.Scope/>`_ .
  `More... </sdk/scopes/cpp/unity.scopes.Result/#details>`_ 

 

class  

`Runtime </sdk/scopes/cpp/unity.scopes.Runtime/>`_ 

 

| The main object for query originators to access the scopes runtime.
  `More... </sdk/scopes/cpp/unity.scopes.Runtime/#details>`_ 

 

class  

`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`_ 

 

| Allows queries, preview requests, and activation requests to be sent
  to a scope. `More... </sdk/scopes/cpp/unity.scopes.Scope/#details>`_ 

 

class  

`ScopeBase </sdk/scopes/cpp/unity.scopes.ScopeBase/>`_ 

 

| Base class for a scope implementation.
  `More... </sdk/scopes/cpp/unity.scopes.ScopeBase/#details>`_ 

 

class  

`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_ 

 

| Holds scope attributes such as name, description, icon etc.
  `More... </sdk/scopes/cpp/unity.scopes.ScopeMetadata/#details>`_ 

 

class  

`SearchListenerBase </sdk/scopes/cpp/unity.scopes.SearchListenerBase/>`_ 

 

| Abstract base interface for a client to receive the results of a
  query.
  `More... </sdk/scopes/cpp/unity.scopes.SearchListenerBase/#details>`_ 

 

class  

`SearchMetadata </sdk/scopes/cpp/unity.scopes.SearchMetadata/>`_ 

 

| Metadata passed with search requests.
  `More... </sdk/scopes/cpp/unity.scopes.SearchMetadata/#details>`_ 

 

class  

`SearchQueryBase </sdk/scopes/cpp/unity.scopes.SearchQueryBase/>`_ 

 

| Abstract base class to represent a particular query.
  `More... </sdk/scopes/cpp/unity.scopes.SearchQueryBase/#details>`_ 

 

class  

`SearchReply </sdk/scopes/cpp/unity.scopes.SearchReply/>`_ 

 

| Allows the results of a search query to be sent to the query source.
  `More... </sdk/scopes/cpp/unity.scopes.SearchReply/#details>`_ 

 

class  

`TimeoutException </sdk/scopes/cpp/unity.scopes.TimeoutException/>`_ 

 

| Exception to indicate that a twoway request timed out.
  `More... </sdk/scopes/cpp/unity.scopes.TimeoutException/#details>`_ 

 

class  

`ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`_ 

 

| A value slider filter that allows for selecting a value within a given
  range.
  `More... </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/#details>`_ 

 

class  

`ValueSliderLabels </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/>`_ 

 

| Labels used by a
  `ValueSliderFilter </sdk/scopes/cpp/unity.scopes.ValueSliderFilter/>`_ .
  `More... </sdk/scopes/cpp/unity.scopes.ValueSliderLabels/#details>`_ 

 

class  

`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ 

 

| Simple variant class that can hold an integer, boolean, string,
  double, dictionary, array or null value.
  `More... </sdk/scopes/cpp/unity.scopes.Variant/#details>`_ 

 

class  

`VariantBuilder </sdk/scopes/cpp/unity.scopes.VariantBuilder/>`_ 

 

| Helper class for creating and populating
  `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  containers.
  `More... </sdk/scopes/cpp/unity.scopes.VariantBuilder/#details>`_ 

 

        Typedefs
----------------

        typedef std::vector<
`ChildScope </sdk/scopes/cpp/unity.scopes.ChildScope/>`_  > 

:ref:`ChildScopeList <sdk_unity_scopes#a4daaa9ad07daf596af4dacd6e0b7be9a>`

 

| A list of child scopes.

 

        typedef std::list<
`ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_  > 

:ref:`ColumnLayoutList <sdk_unity_scopes#a5b970e3c73bf25548398b32e79b2224d>`

 

| List of column layouts (see
  `unity::scopes::ColumnLayout </sdk/scopes/cpp/unity.scopes.ColumnLayout/>`_ )

 

        typedef std::list< std::shared\_ptr<
`Department </sdk/scopes/cpp/unity.scopes.Department/>`_  const > > 

:ref:`DepartmentList <sdk_unity_scopes#ab8effc4ea05a59f2ddea896833f07231>`

 

| List of departments (see
  `unity::scopes::Department </sdk/scopes/cpp/unity.scopes.Department/>`_ )

 

        typedef std::list< FilterBase::SCPtr > 

:ref:`Filters <sdk_unity_scopes#adab58c13cf604e0e64bd6b1a745364d3>`

 

| List of filters.

 

        typedef std::shared\_ptr<
`Object </sdk/scopes/cpp/unity.scopes.Object/>`_  > 

:ref:`ObjectProxy <sdk_unity_scopes#aa68ce1769f7a888d0b4b2951741ca75a>`

 

| Convenience type definition for the proxy inheritance root.

 

        typedef std::shared\_ptr<
`PreviewReply </sdk/scopes/cpp/unity.scopes.PreviewReply/>`_  > 

:ref:`PreviewReplyProxy <sdk_unity_scopes#a7b46ef0e880da4c75314fe60bdd55754>`

 

| Convenience type definition.

 

        typedef std::list<
`PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_  > 

:ref:`PreviewWidgetList <sdk_unity_scopes#aed3b7b1daf2e49d0a820ef931caa792d>`

 

| List of preview widgets (see
  `unity::scopes::PreviewWidget </sdk/scopes/cpp/unity.scopes.PreviewWidget/>`_ )

 

        typedef std::shared\_ptr<
`QueryCtrl </sdk/scopes/cpp/unity.scopes.QueryCtrl/>`_  > 

:ref:`QueryCtrlProxy <sdk_unity_scopes#a35e73cba26e0db0b36ffa0283a7d55dd>`

 

| Convenience type definition.

 

        typedef std::map< std::string,
`ScopeMetadata </sdk/scopes/cpp/unity.scopes.ScopeMetadata/>`_  > 

:ref:`MetadataMap <sdk_unity_scopes#a9f6e8e62689e49cdabadacf39b697816>`

 

| Map for scope ID and metadata pairs.

 

        typedef std::shared\_ptr<
`Registry </sdk/scopes/cpp/unity.scopes.Registry/>`_  > 

:ref:`RegistryProxy <sdk_unity_scopes#a45babc254d3548863d79ee54f266e84d>`

 

| Convenience type definition.

 

        typedef std::shared\_ptr<
`Reply </sdk/scopes/cpp/unity.scopes.Reply/>`_  > 

:ref:`ReplyProxy <sdk_unity_scopes#a8c91fad901d437ede2195a1cab136baf>`

 

| Convenience type definition.

 

        typedef std::shared\_ptr<
`Scope </sdk/scopes/cpp/unity.scopes.Scope/>`_  > 

:ref:`ScopeProxy <sdk_unity_scopes#a94db15da410f8419e4da711db842aaae>`

 

| Convenience type definition.

 

        typedef std::shared\_ptr<
`SearchReply </sdk/scopes/cpp/unity.scopes.SearchReply/>`_  > 

:ref:`SearchReplyProxy <sdk_unity_scopes#a9cd604d9b842ac3b2b8636c2165dec1f>`

 

| Convenience type definition.

 

        typedef std::pair< double, std::string > 

:ref:`ValueLabelPair <sdk_unity_scopes#aa8a0ba9172b4431df7628f2335409e0e>`

 

| A value and its corresponding label.

 

        typedef std::vector<
:ref:`ValueLabelPair <sdk_unity_scopes#aa8a0ba9172b4431df7628f2335409e0e>`
> 

:ref:`ValueLabelPairList <sdk_unity_scopes#aa2ccb5d7acadeb38f44e9405f1b55c6b>`

 

| A sequence of value-label pairs.

 

        typedef std::map< std::string,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  > 

:ref:`VariantMap <sdk_unity_scopes#ad5d8ccfa11a327fca6f3e4cee11f4c10>`

 

| A dictionary of (string,
  `Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_ ) pairs.

 

        typedef std::vector<
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  > 

:ref:`VariantArray <sdk_unity_scopes#aa3bf32d584efd902bca79698a07dd934>`

 

| An array of variants.

 

        Functions
-----------------

char const \* 

:ref:`to\_string <sdk_unity_scopes#ae62357e6e19eda314bb79ddf65a678ac>`
(`CompletionDetails::CompletionStatus </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`_ 
status)

 

| Convenience function to convert a CompletionDetails::CompletionStatus
  enumerator to a string.

 

        void 

:ref:`swap <sdk_unity_scopes#a0e2da826f3ff512e632dff7604f1f63f>`
(`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  &,
`Variant </sdk/scopes/cpp/unity.scopes.Variant/>`_  &) noexcept

 

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

:ref:`major\_version <sdk_unity_scopes#ada491223b797c1f0f5a25ab3c5d8f715>`
()

 

| Returns the major version number of the Unity scopes library.

 

int 

:ref:`minor\_version <sdk_unity_scopes#af13f99bac555f4a3c2a1647e972b1953>`
()

 

| Returns the minor version number of the Unity scopes library.

 

int 

:ref:`micro\_version <sdk_unity_scopes#af8cce57971924bc625032a9ff3f6b2b5>`
()

 

| Returns the micro version number of the Unity scopes library.

 

const char \* 

:ref:`version\_string <sdk_unity_scopes#a80865ea53b482becc5c56f486762545e>`
()

 

| Returns the Unity scopes version as a string in the format
  *<``major``>*.\ *<``minor``>*.\ *<``micro``>*.

 

        Variables
-----------------

constexpr const char \* 

:ref:`DEFAULT\_RENDERER <sdk_unity_scopes#a697a8f21545922bcfc8345d83f5cc156>`

 

| A default template for generic use.

 

constexpr const char \* 

:ref:`MUSIC\_GRID\_RENDERER <sdk_unity_scopes#abf16a855b33daf77e1a3a515cf4ab1e5>`

 

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
|              |              | /#a38cbf8502 |              |              |              |
|              |              | d92a411d1c6a |              |              |              |
|              |              | c5d1bd6ee1c> |              |              |              |
|              |              | `_           |              |              |              |
+--------------+--------------+--------------+--------------+--------------+--------------+

Convenience function to convert a
`CompletionDetails::CompletionStatus </sdk/scopes/cpp/unity.scopes.CompletionDetails/#a38cbf8502d92a411d1c6ac5d1bd6ee1c>`_ 
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

