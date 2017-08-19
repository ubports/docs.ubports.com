QtLocation.GeocodeModel
=======================

.. raw:: html

   <p>

The GeocodeModel type provides support for searching operations related
to geographic information. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@GeocodeModel -->

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

bounds : geoshape

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

limit : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

offset : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

plugin : Plugin

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

query : QVariant

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

Location get(int)

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

   <!-- $$$GeocodeModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The GeocodeModel (for example a MapItemView or ListView).

.. raw:: html

   </p>

.. raw:: html

   <p>

Like GeocodeModel can do any useful work.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once the plugin is set, the autoUpdate is disabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

The data stored and returned in the GeocodeModel consists of Location
objects, as a list with the role name "locationData". See the
documentation for Location for further details on its structure and
contents.

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
the geocodeModel's autoUpdate enabled. However, if we provided an
Address object we may inadvertently trigger multiple requests whilst
setting its properties.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Plugin {
   id: aPlugin
   }
   GeocodeModel {
   id: geocodeModel
   plugin: aPlugin
   autoUpdate: <span class="keyword">false</span>
   }</pre>

.. raw:: html

   <pre class="cpp">{
   geocodeModel<span class="operator">.</span>query <span class="operator">=</span> <span class="string">&quot;53 Brandl St, Eight Mile Plains, Australia&quot;</span>
   geocodeModel<span class="operator">.</span>update()
   }</pre>

.. raw:: html

   <!-- @@@GeocodeModel -->

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
response to changes in its attached query. The default value of this
property is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

If setting this value to 'true' and using an Address or coordinate as
the query, note that any change at all in the object's properties will
trigger a new request to be sent. If you are adjusting many properties
of the object whilst autoUpdate is enabled, this can generate large
numbers of useless (and later discarded) requests.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoUpdate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="bounds-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

bounds : geoshape

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

This property holds the bounding area used to limit the results to those
within the area. This is particularly useful if query is only partially
filled out, as the service will attempt to (reverse) geocode all matches
for the specified data.

.. raw:: html

   </p>

.. raw:: html

   <p>

Accepted types are georectangle and geocircle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bounds -->

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

This property holds how many locations the model currently has. Amongst
other uses, you can use this value when accessing locations via the
GeocodeModel::get -method.

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

This read-only property holds the latest error value of the geocoding
request.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

GeocodeModel.NoError - No error has occurred

.. raw:: html

   </li>

.. raw:: html

   <li>

GeocodeModel.EngineNotSetError - The plugin/service provider used does
not support (reverse) geocoding

.. raw:: html

   </li>

.. raw:: html

   <li>

GeocodeModel.CommunicationError - An error occurred while communicating
with the service provider

.. raw:: html

   </li>

.. raw:: html

   <li>

GeocodeModel.ParseError - The response from the service provider was in
an unrecognizable format

.. raw:: html

   </li>

.. raw:: html

   <li>

GeocodeModel.UnsupportedOptionError - The requested operation or one of
the options for the operation are not supported by the service provider.

.. raw:: html

   </li>

.. raw:: html

   <li>

GeocodeModel.CombinationError - An error occurred while results where
being combined from multiple sources

.. raw:: html

   </li>

.. raw:: html

   <li>

GeocodeModel.UnknownError - An error occurred which does not fit into
any of the other categories

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

This read-only property holds the textual presentation of latest
geocoding error. If no error has occurred or the model has been reset,
an empty string is returned.

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

   <tr valign="top" id="limit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

limit : int

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

This property holds the maximum number of results. The limit and offset
values are only applicable with free string geocoding (that is they are
not considered when using addresses or coordinates in the search query).

.. raw:: html

   </p>

.. raw:: html

   <p>

If limit is -1 the entire result set will be returned, otherwise at most
limit results will be returned. The limit and offset results can be used
together to implement paging.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@limit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="offset-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

offset : int

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

This property tells not to return the first 'offset' number of the
results. The limit and offset values are only applicable with free
string geocoding (that is they are not considered when using addresses
or coordinates in the search query).

.. raw:: html

   </p>

.. raw:: html

   <p>

The limit and offset results can be used together to implement paging.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@offset -->

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

This property holds the plugin that provides the actual geocoding
service. Note that all plugins do not necessarily provide geocoding
(could for example provide only routing or maps).

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

query : QVariant

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

This property holds the data of the geocoding request. The property
accepts three types of queries which determine both the data and the
type of action to be performed:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Address - Geocoding (address to coordinate)

.. raw:: html

   </li>

.. raw:: html

   <li>

coordinate - Reverse geocoding (coordinate to address)

.. raw:: html

   </li>

.. raw:: html

   <li>

string - Geocoding (address to coordinate)

.. raw:: html

   </li>

.. raw:: html

   </ul>

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

GeocodeModel.Ready - Geocode request(s) have finished successfully.

.. raw:: html

   </li>

.. raw:: html

   <li>

GeocodeModel.Loading - Geocode request has been issued but not yet
finished

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
set to either GeocodeModel.Ready.

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

Location get(int)

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

Returns the Location at given index. Use count property to check the
amount of locations available. The locations are indexed from zero, so
the accessible range is 0...(count - 1).

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

Resets the model. All location data is cleared, any outstanding requests
are aborted and possible errors are cleared. Model status will be set to
GeocodeModel.Null

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


