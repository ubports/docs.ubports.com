QtLocation.RouteModel
=====================

.. raw:: html

   <p>

The RouteModel type provides access to routes. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RouteModel -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtLocation 5.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt Location 5.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

autoUpdate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

errorString : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

measurementSystem : Locale::MeasurementSystem

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

plugin : Plugin

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

query : RouteQuery

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

cancel()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

get(int)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reset()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

update()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$RouteModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The RouteModel type is used as part of a model/view grouping to retrieve
geographic routes from a backend provider. Routes include data about
driving directions between two points, walking directions with multiple
waypoints, and various other similar concepts. It functions much like
other Model types in QML (see for example ListModel and XmlListModel),
and interacts with views such as MapItemView, and ListView.

.. raw:: html

   </p>

.. raw:: html

   <p>

Like RouteModel can do any useful work.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once the plugin is set, create a autoUpdate is disabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

The data stored and returned in the RouteModel consists of Route
objects, as a list with the role name "routeData". See the documentation
for Route for further details on its structure and contents.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following snippet is two-part, showing firstly the declaration of
objects, and secondly a short piece of procedural code using it. We set
the routeModel's update once the query is set up, to avoid useless extra
requests halfway through the set up of the query.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Plugin {
   id: aPlugin
   name: <span class="string">&quot;nokia&quot;</span>
   }
   RouteQuery {
   id: aQuery
   }
   RouteModel {
   id: routeModel
   plugin: aPlugin
   query: aQuery
   autoUpdate: <span class="keyword">false</span>
   }</pre>

.. raw:: html

   <pre class="cpp">{
   aQuery<span class="operator">.</span>addWaypoint(<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>)
   aQuery<span class="operator">.</span>addWaypoint(<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>)
   aQuery<span class="operator">.</span>travelModes <span class="operator">=</span> <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   routeModel<span class="operator">.</span>update()
   }</pre>

.. raw:: html

   <!-- @@@RouteModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$autoUpdate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoUpdate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoUpdate : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property controls whether the Model automatically updates in
response to changes in its attached RouteQuery. The default value of
this property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

If setting this value to 'true', note that any change at all in the
query property will trigger a new request to be sent. If you are
adjusting many properties of the RouteQuery with autoUpdate enabled,
this can generate large numbers of useless (and later discarded)
requests.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoUpdate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds how many routes the model currently has. Amongst
other uses, you can use this value when accessing routes via the
QtLocation::RouteModel::get -method.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

error : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This read-only property holds the latest error value of the routing
request.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

RouteModel.NoError - No error has occurred

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteModel.EngineNotSetError - The plugin/service provider used does not
support routing

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteModel.CommunicationError - An error occurred while communicating
with the service provider

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteModel.ParseError - The response from the service provider was in an
unrecognizable format

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteModel.UnsupportedOptionError - The requested operation or one of
the options for the operation are not supported by the service provider.

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteModel.UnknownError - An error occurred which does not fit into any
of the other categories

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

errorString : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This read-only property holds the textual presentation of latest routing
error. If no error has occurred or the model has been reset, an empty
string is returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

An empty string may also be returned if an error occurred which has no
associated textual representation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="measurementSystem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

measurementSystem : Locale::MeasurementSystem

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the measurement system which will be used when
calculating the route. This property is changed when the plugin changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

If setting this property it must be set after the plugin property is
set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@measurementSystem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="plugin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

plugin : Plugin

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the plugin that providers the actual routing
service. Note that all plugins do not necessarily provide routing (could
for example provide only geocoding or maps).

.. raw:: html

   </p>

.. raw:: html

   <p>

A valid plugin must be set before the RouteModel can perform any useful
operations.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Plugin.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@plugin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="query-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

query : RouteQuery

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the data of the route request. The primary data are
the waypoint coordinates and possible further preferences (means of
traveling, things to avoid on route etc).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@query -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This read-only property holds the current status of the model.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

reset has been called.

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteModel.Ready - Route request(s) have finished successfully.

.. raw:: html

   </li>

.. raw:: html

   <li>

RouteModel.Loading - Route request has been issued but not yet finished

.. raw:: html

   </li>

.. raw:: html

   <li>

errorString

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$cancel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cancel-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

cancel()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Cancels any outstanding requests and clears errors. Model status will be
set to either RouteModel.Ready.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cancel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="get-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

get(int)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the Route at given index. Use count property to check the amount
of routes available. The routes are indexed from zero, so the accessible
range is 0...(count - 1).

.. raw:: html

   </p>

.. raw:: html

   <p>

If you access out of bounds, a zero (null object) is returned and a
warning is issued.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reset-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

reset()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Resets the model. All route data is cleared, any outstanding requests
are aborted and possible errors are cleared. Model status will be set to
RouteModel.Null

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reset -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="update-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

update()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Instructs the autoUpdate is disabled, to force a refresh when the query
has been changed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@update -->


