QtLocation.qml-location5-maps
=============================

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Map type allows the display of a map and placing objects within the
map. Various points of interest can be defined and added to the map for
display. Also the Map has features to control how the map is displayed.
With the Map item you can center the map, zoom, pinch and make the item
flickable.

.. raw:: html

   </p>

.. raw:: html

   <p>

The places to be added to the map are MapItems. The item's position is
defined by a coordinate which includes latitude, longitude and altitude.
The item is then displayed automatically after it is added to the Map.
MapItems or Map.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Position on map

.. raw:: html

   </h3>

.. raw:: html

   <p>

All position APIs are part of the QtPositioning module. The basic piece
of position information is the coordinate. A coordinate encapsulates
data for the latitude, longitude and altitude of the location. Altitude
is in meters. It also has a method to determine distance to another
coordinate. The coordinate type may also be held within a Location
element, this will also have information on a bounding box size to
determine sufficient proximity to the location and a location address.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is an example of a client that uses a position source to center a
map on the current position:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   import <span class="type">QtPositioning</span> <span class="number">5.2</span>
   import <span class="type">QtLocation</span> <span class="number">5.3</span>
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   map : Map {
   <span class="comment">// initialize map</span>
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   }
   PositionSource {
   onPositionChanged: {
   <span class="comment">// center the map on the current position</span>
   map<span class="operator">.</span>center <span class="operator">=</span> position<span class="operator">.</span>coordinate
   }
   }
   }</pre>

.. raw:: html

   <h3>

Geocoding

.. raw:: html

   </h3>

.. raw:: html

   <p>

Geocoding is the derivation of geographical coordinates (latitude and
longitude) from other geographical references to the locations. For
example, this can be a street address. Reverse geocoding is also
possible with a street address being used to determine a geographical
coordinate. Geocoding is performed by using the GeoCodeModel type.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following code examples are a small part of the map component in the
Map Viewer (QML) example. The snippets demonstrate the declaration of
the GeocodeModel component.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the snippet we see that the geocodeModel property contains the plugin
and two signal handlers. One for changes in status (onStatusChanged )
and the other to update the centering of the Map object
(onLocationsChanged ).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    property <span class="type"><a href="QtLocation.GeocodeModel.md">GeocodeModel</a></span> <span class="name">geocodeModel</span>: <span class="name">GeocodeModel</span> {
   <span class="name">plugin</span>: <span class="name">map</span>.<span class="name">plugin</span>
   <span class="name">onStatusChanged</span>: {
   <span class="keyword">if</span> ((<span class="name">status</span> <span class="operator">==</span> <span class="name">GeocodeModel</span>.<span class="name">Ready</span>) <span class="operator">||</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">GeocodeModel</span>.<span class="name">Error</span>))
   <span class="name">map</span>.<span class="name">geocodeFinished</span>()
   }
   <span class="name">onLocationsChanged</span>:
   {
   <span class="keyword">if</span> (<span class="name">count</span> <span class="operator">==</span> <span class="number">1</span>) {
   <span class="name">map</span>.<span class="name">center</span>.<span class="name">latitude</span> <span class="operator">=</span> <span class="name">get</span>(<span class="number">0</span>).<span class="name">coordinate</span>.<span class="name">latitude</span>
   <span class="name">map</span>.<span class="name">center</span>.<span class="name">longitude</span> <span class="operator">=</span> <span class="name">get</span>(<span class="number">0</span>).<span class="name">coordinate</span>.<span class="name">longitude</span>
   }
   }
   }
   <span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
   <span class="name">model</span>: <span class="name">geocodeModel</span>
   <span class="name">delegate</span>: <span class="name">pointDelegate</span>
   }</pre>

.. raw:: html

   <p>

These geocoding features are called from a higher level piece of code.
In this snippet we see an onGoButtonClicked signal handler that extracts
the address from the user interface and then creates a query for the
GeocodeModel to process and determine the geographical coordinates.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type">Address</span> {
   <span class="name">id</span>: <span class="name">geocodeAddress</span>
   }
   <span class="name">onGoButtonClicked</span>: {
   <span class="comment">// manage the UI state transitions</span>
   <span class="name">page</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>
   <span class="name">messageDialog</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>
   <span class="comment">// fill out the Address element</span>
   <span class="name">geocodeAddress</span>.<span class="name">street</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">inputText</span>
   <span class="name">geocodeAddress</span>.<span class="name">city</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">1</span>).<span class="name">inputText</span>
   <span class="name">geocodeAddress</span>.<span class="name">state</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">2</span>).<span class="name">inputText</span>
   <span class="name">geocodeAddress</span>.<span class="name">country</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">3</span>).<span class="name">inputText</span>
   <span class="name">geocodeAddress</span>.<span class="name">postalCode</span> <span class="operator">=</span> <span class="name">dialogModel</span>.<span class="name">get</span>(<span class="number">4</span>).<span class="name">inputText</span>
   <span class="comment">// send the geocode request</span>
   <span class="name">map</span>.<span class="name">geocodeModel</span>.<span class="name">query</span> <span class="operator">=</span> <span class="name">geocodeAddress</span>
   <span class="name">map</span>.<span class="name">geocodeModel</span>.<span class="name">update</span>()
   }</pre>

.. raw:: html

   <h3>

Navigation

.. raw:: html

   </h3>

.. raw:: html

   <p>

A very important function of the Map type is navigation from one place
to a destination with possible waypoints along the route. The route will
be divided up into a series of segments. At the end of each segment is a
vertex called a maneuver. The segments contain information about the
time and distance to the end of the segment. The maneuvers contain
information about what to do next, how to get onto the next segment, if
there is one. So a maneuver contains navigational information, for
example "turn right now".

.. raw:: html

   </p>

.. raw:: html

   <p>

To find a suitable route we will need to use a RouteQuery to define the
selection criteria and adding any required waypoints. The RouteModel
should return a list of RouteSegments that defines the route to the
destination complete with navigation advice at the joins between
segments, called RouteManeuvers

.. raw:: html

   </p>

.. raw:: html

   <p>

There are many options that you can add to the query to narrow the
criteria. The RouteQuery properties can include

.. raw:: html

   </p>

.. raw:: html

   <table class="generic" width="60%">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

numberAlternativeRoutes

.. raw:: html

   </td>

.. raw:: html

   <td>

The number of alternative routes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

travelModes

.. raw:: html

   </td>

.. raw:: html

   <td>

Travel modes

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

routeOptimizations

.. raw:: html

   </td>

.. raw:: html

   <td>

Required route optimizations

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

segmentDetail

.. raw:: html

   </td>

.. raw:: html

   <td>

Level of detail in segments

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

maneuverDetail

.. raw:: html

   </td>

.. raw:: html

   <td>

Level of detail in maneuvers between segments

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

waypoints

.. raw:: html

   </td>

.. raw:: html

   <td>

A list of waypoints

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

excludedAreas

.. raw:: html

   </td>

.. raw:: html

   <td>

A list of excluded areas that the route must not cross

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

featureTypes

.. raw:: html

   </td>

.. raw:: html

   <td>

Relevant map features, for example highway, ferry

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

In the following example a default RouteQuery is declared, later to be
defined by some user input, and used in routeModel as the query. The
routeInfoModel is a ListModel that can be updated using an update()
function that we will look at later.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    property <span class="type"><a href="QtLocation.RouteQuery.md">RouteQuery</a></span> <span class="name">routeQuery</span>: <span class="name">RouteQuery</span> {}
   property <span class="type"><a href="QtLocation.RouteModel.md">RouteModel</a></span> <span class="name">routeModel</span>: <span class="name">RouteModel</span> {
   <span class="name">plugin</span> : <span class="name">map</span>.<span class="name">plugin</span>
   <span class="name">query</span>: <span class="name">routeQuery</span>
   <span class="name">onStatusChanged</span>: {
   <span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">RouteModel</span>.<span class="name">Ready</span>) {
   <span class="keyword">switch</span> (<span class="name">count</span>) {
   <span class="keyword">case</span> <span class="number">0</span>:
   <span class="name">clearAll</span>() <span class="comment">// technically not an error</span>
   <span class="name">map</span>.<span class="name">routeError</span>()
   <span class="keyword">break</span>
   <span class="keyword">case</span> <span class="number">1</span>:
   <span class="name">routeInfoModel</span>.<span class="name">update</span>()
   <span class="keyword">break</span>
   }
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">RouteModel</span>.<span class="name">Error</span>) {
   <span class="name">clearAll</span>()
   <span class="name">map</span>.<span class="name">routeError</span>()
   }
   }
   <span class="keyword">function</span> <span class="name">clearAll</span>() {
   <span class="name">routeInfoModel</span>.<span class="name">update</span>()
   }
   }</pre>

.. raw:: html

   <p>

The user enters, via a dialog, some information such as the starting
point of the route, some waypoints and the destination. All of these
locations are waypoints so the locations from start to finish will be
entered as a sequence of waypoints. Then other query properties can be
set that may be specific to this trip.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="keyword">function</span> <span class="name">calculateRoute</span>() {
   <span class="comment">// clear away any old data in the query</span>
   <span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">clearWaypoints</span>();
   <span class="comment">// add the start and end coords as waypoints on the route</span>
   <span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">addWaypoint</span>(<span class="name">startCoordinate</span>)
   <span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">addWaypoint</span>(<span class="name">endCoordinate</span>)
   <span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">travelModes</span> <span class="operator">=</span> <span class="name">routeDialog</span>.<span class="name">travelMode</span>
   <span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">routeOptimizations</span> <span class="operator">=</span> <span class="name">routeDialog</span>.<span class="name">routeOptimization</span>
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="number">9</span>; i++) {
   <span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">setFeatureWeight</span>(<span class="name">i</span>, <span class="number">0</span>)
   }
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="name">routeDialog</span>.<span class="name">features</span>.<span class="name">length</span>; i++) {
   <span class="name">map</span>.<span class="name">routeQuery</span>.<span class="name">setFeatureWeight</span>(<span class="name">routeDialog</span>.<span class="name">features</span>[<span class="name">i</span>], <span class="name">RouteQuery</span>.<span class="name">AvoidFeatureWeight</span>)
   }
   <span class="name">map</span>.<span class="name">routeModel</span>.<span class="name">update</span>();
   <span class="comment">// center the map on the start coord</span>
   <span class="name">map</span>.<span class="name">center</span> <span class="operator">=</span> <span class="name">startCoordinate</span>;
   }</pre>

.. raw:: html

   <p>

The routeInfoModel ListModel is used to grab the results of the query
and construct a suitable list for display. The ListModel routeInfoModel
contains an update() function that loops through the segments extracting
the segment length, instruction text and distance to the next
instruction. The extracted data is formatted for display as it is
retrieved.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">ListModel</span> {
   <span class="name">id</span>: <span class="name">routeInfoModel</span>
   property <span class="type">string</span> <span class="name">travelTime</span>
   property <span class="type">string</span> <span class="name">distance</span>
   <span class="keyword">function</span> <span class="name">update</span>() {
   <span class="name">clear</span>()
   <span class="keyword">if</span> (<span class="name">routeModel</span>.<span class="name">count</span> <span class="operator">&gt;</span> <span class="number">0</span>) {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">segments</span>.<span class="name">length</span>; i++) {
   <span class="name">append</span>({
   &quot;instruction&quot;: <span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">segments</span>[<span class="name">i</span>].<span class="name">maneuver</span>.<span class="name">instructionText</span>,
   &quot;distance&quot;: <span class="name">formatDistance</span>(<span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">segments</span>[<span class="name">i</span>].<span class="name">maneuver</span>.<span class="name">distanceToNextInstruction</span>)
   });
   }
   }
   <span class="name">travelTime</span> <span class="operator">=</span> <span class="name">routeModel</span>.<span class="name">count</span> <span class="operator">==</span> <span class="number">0</span> ? <span class="string">&quot;&quot;</span> : <span class="name">formatTime</span>(<span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">travelTime</span>)
   <span class="name">distance</span> <span class="operator">=</span> <span class="name">routeModel</span>.<span class="name">count</span> <span class="operator">==</span> <span class="number">0</span> ? <span class="string">&quot;&quot;</span> : <span class="name">formatDistance</span>(<span class="name">routeModel</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">distance</span>)
   }
   }
   <span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
   <span class="name">model</span>: <span class="name">routeModel</span>
   <span class="name">delegate</span>: <span class="name">routeDelegate</span>
   <span class="name">autoFitViewport</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

For more information on the example see the Map Viewer (QML) example.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Zoom, Pinch and Flickable

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Map item also supports user interface interactions with the map
using tactile and mouse gestures. That is features such as swiping to
pan, pinching to zoom.

.. raw:: html

   </p>

.. raw:: html

   <p>

Enabling and configuring pinch and flickable is easy within the Map
type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.Map.md">Map</a></span> {
   <span class="name">id</span>: <span class="name">map</span>
   <span class="name">zoomLevel</span>: (<span class="name">maximumZoomLevel</span> <span class="operator">-</span> <span class="name">minimumZoomLevel</span>)<span class="operator">/</span><span class="number">2</span>
   <span class="type">center</span> {
   <span class="name">latitude</span>: -<span class="number">27.5796</span>
   <span class="name">longitude</span>: <span class="number">153.1003</span>
   }
   <span class="comment">// Enable pinch gestures to zoom in and out</span>
   <span class="name">gesture</span>.flickDeceleration: <span class="number">3000</span>
   <span class="name">gesture</span>.enabled: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

Zoom can also be controlled by other objects like sliders, as shown in
the example, by implementing the onValueChanged handler to update the
Map zoomLevel.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="types">

Types

.. raw:: html

   </h2>

.. raw:: html

   <h4>

Maps

.. raw:: html

   </h4>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Map

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type displays a map

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapCircle

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type displays a geographic circle on a Map

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapGestureArea

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides Map gesture interaction

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapItemView

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Used to populate Map from a model

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapPinchEvent

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides basic information about pinch event

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapPolygon

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type displays a polygon on a Map

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapPolyline

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type displays a polyline on a map

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapQuickItem

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type displays an arbitrary Qt Quick object on a Map

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapRectangle

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type displays a rectangle on a Map

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapRoute

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type displays a Route on a Map

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

MapType

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type holds information about a map type

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h4>

Geocoding

.. raw:: html

   </h4>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

GeocodeModel

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides support for searching operations related to geographic
information

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h4>

Routing

.. raw:: html

   </h4>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Route

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type represents one geographical route

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

RouteManeuver

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type represents the information relevant to the point at which two
RouteSegments meet

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

RouteModel

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type provides access to routes

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

RouteQuery

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type is used to provide query parameters to a RouteModel

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

RouteSegment

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Type represents a segment of a Route

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="example">

Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The above snippets are taken from the Map Viewer (QML) example.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qml-location5-maps.html -->
