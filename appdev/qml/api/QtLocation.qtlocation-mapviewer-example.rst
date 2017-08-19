QtLocation.qtlocation-mapviewer-example
=======================================

.. raw:: html

   <p>

This is a large example covering many basic uses of maps, positioning,
and navigation services in Qt Location. This page is divided into
sections covering each of these areas of functionality with snippets
from the code.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Map Viewer example can work with any of the available geo services
plugins. However, some plugins may require additional plugin parameters
in order to function correctly. Plugin parameters can be passed on the
command line using the --plugin argument, which takes the form:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">-</span><span class="operator">-</span>plugin<span class="operator">.</span><span class="operator">&lt;</span>parameter name<span class="operator">&gt;</span> <span class="operator">&lt;</span>parameter value<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

Refer to the documentation for each of the geo services plugins for
details on what plugin parameters they support. The Nokia services
plugin supplied with Qt requires an app\_id and token pair. See "Qt
Location Nokia Plugin" for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

QML types shown in this example:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Displaying a map

.. raw:: html

   <ul>

.. raw:: html

   <li>

Map

.. raw:: html

   </li>

.. raw:: html

   <li>

MapGestureArea

.. raw:: html

   </li>

.. raw:: html

   <li>

coordinate

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Finding an address

.. raw:: html

   <ul>

.. raw:: html

   <li>

GeocodeModel

.. raw:: html

   </li>

.. raw:: html

   <li>

MapItemView

.. raw:: html

   </li>

.. raw:: html

   <li>

MapCircle

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Directions and travel routes

.. raw:: html

   <ul>

.. raw:: html

   <li>

RouteModel

.. raw:: html

   </li>

.. raw:: html

   <li>

MapRoute

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h3>

Displaying a Map

.. raw:: html

   </h3>

.. raw:: html

   <p>

Drawing a map on-screen is accomplished using the Map type, as shown
below.

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
   <span class="type">center</span> {
   <span class="name">latitude</span>: -<span class="number">27.5796</span>
   <span class="name">longitude</span>: <span class="number">153.1003</span>
   }
   }</pre>

.. raw:: html

   <p>

In this example, we give the map an initial center coordinate with a set
latitude and longitude. We also set the initial zoom level to 50%
(halfway between the maximum and minimum).

.. raw:: html

   </p>

.. raw:: html

   <p>

The calls to "pinch" and "flick" are used to enable gestures on the map.
The flick gesture is also sometimes known as "kinetic panning", and
provides a more intuitive feel for panning the map both on touch screens
and with a mouse.

.. raw:: html

   </p>

.. raw:: html

   <p>

As we do not specify a plugin for supplying map data, the platform
default will be used. This is typically the "nokia" plugin, which
provides data from Nokia services. Additional licensing conditions do
apply to the use of this data, please see the documentation for further
details.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Finding an Address (Geocoding)

.. raw:: html

   </h3>

.. raw:: html

   <p>

To locate a certain address or place on the map uses a process called
geocoding. In order to perform a geocode operation, we first need to
adjust our Map object to be able to receive the result.

.. raw:: html

   </p>

.. raw:: html

   <p>

Receiving results of geocoding is done through a GeocodeModel, which is
typically instantiated as a property of the Map component:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    property <span class="type"><a href="QtLocation.GeocodeModel.md">GeocodeModel</a></span> <span class="name">geocodeModel</span>: <span class="name">GeocodeModel</span> {
   }</pre>

.. raw:: html

   <p>

Then, to display the contents of the GeocodeModel we use a MapItemView:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
   <span class="name">model</span>: <span class="name">geocodeModel</span>
   <span class="name">delegate</span>: <span class="name">pointDelegate</span>
   }</pre>

.. raw:: html

   <p>

MapItemView uses an object called a "delegate" to act as a template for
the items it creates. This can contain any map object desired, but in
this case we show a MapCircle:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">pointDelegate</span>
   <span class="type"><a href="QtLocation.MapCircle.md">MapCircle</a></span> {
   <span class="name">radius</span>: <span class="number">1000</span>
   <span class="name">color</span>: <span class="name">circleMouseArea</span>.<span class="name">containsMouse</span> ? <span class="string">&quot;lime&quot;</span> : <span class="string">&quot;red&quot;</span>
   <span class="name">opacity</span>: <span class="number">0.6</span>
   <span class="name">center</span>: <span class="name">locationData</span>.<span class="name">coordinate</span>
   }
   }</pre>

.. raw:: html

   <p>

With these three objects, we have enough to receive Geocode responses
and display them on our Map. The final piece is to send the actual
Geocode request.

.. raw:: html

   </p>

.. raw:: html

   <p>

In this example, we have a utility component called Dialog which we use
to display the user interface requesting geocoding parameters. You can
create a similar component yourself using Dialog.qml in this example as
a reference, or drive the process using any other UI you wish.

.. raw:: html

   </p>

.. raw:: html

   <p>

To send a geocode request, first we create an Address object, and fill
it in with the desired parameters. Then we set "map.geocodeModel.query"
to the filled in Address, and call update() on the GeocodeModel.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">InputDialog</span> {
   <span class="name">id</span>: <span class="name">geocodeDialog</span>
   <span class="type">Address</span> {
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
   }
   }</pre>

.. raw:: html

   <h3>

Directions and Travel Routes

.. raw:: html

   </h3>

.. raw:: html

   <p>

Similar to the GeocodeModel, Qt Location also features the RouteModel
type, which allows information about routes (for example driving
directions) between two or more points, to be received and used with a
Map.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here again, we instantiate the RouteModel as a property of our Map:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    property <span class="type"><a href="QtLocation.RouteQuery.md">RouteQuery</a></span> <span class="name">routeQuery</span>: <span class="name">RouteQuery</span> {}
   property <span class="type"><a href="QtLocation.RouteModel.md">RouteModel</a></span> <span class="name">routeModel</span>: <span class="name">RouteModel</span> {
   <span class="name">plugin</span> : <span class="name">map</span>.<span class="name">plugin</span>
   <span class="name">query</span>: <span class="name">routeQuery</span>
   }</pre>

.. raw:: html

   <p>

To display the contents of a model to the user, we need a view. Once
again we will use a MapItemView, to display the Routes as objects on the
Map:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
   <span class="name">model</span>: <span class="name">routeModel</span>
   <span class="name">delegate</span>: <span class="name">routeDelegate</span>
   <span class="name">autoFitViewport</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

To act as a template for the objects we wish the view to create, we
create a delegate component:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">routeDelegate</span>
   <span class="type"><a href="QtLocation.MapRoute.md">MapRoute</a></span> {
   <span class="name">route</span>: <span class="name">routeData</span>
   <span class="name">line</span>.color: <span class="name">routeMouseArea</span>.<span class="name">containsMouse</span> ? <span class="string">&quot;lime&quot;</span> : <span class="string">&quot;red&quot;</span>
   <span class="name">line</span>.width: <span class="number">5</span>
   <span class="name">smooth</span>: <span class="number">true</span>
   <span class="name">opacity</span>: <span class="number">0.8</span>
   }</pre>

.. raw:: html

   <p>

With the model, view and delegate now complete, the only missing
component is some kind of control over the model to begin the Route
request process. In the simplest case, we can fill out a Route request
using two already available coordinates, which we store inside the
RouteDialog component:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">RouteDialog</span> {
   <span class="name">id</span>: <span class="name">routeDialog</span>
   property <span class="type">variant</span> <span class="name">startCoordinate</span>
   property <span class="type">variant</span> <span class="name">endCoordinate</span>
   }</pre>

.. raw:: html

   <p>

In the next snippet, we show how to set up the request object and
instruct the model to update. We also instruct the map to center on the
start coordinate for our routing request.

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
   <span class="name">map</span>.<span class="name">routeModel</span>.<span class="name">update</span>();
   <span class="comment">// center the map on the start coord</span>
   <span class="name">map</span>.<span class="name">center</span> <span class="operator">=</span> <span class="name">startCoordinate</span>;</pre>

.. raw:: html

   <p>

This is all that is required to display a Route on the Map. However, it
is also useful to be able to retrieve the written directions and
explanation of the travel route. In the example, these are displayed in
the pull-out on the left-hand side of the map. To create this pull-out's
contents, we use a standard ListModel and ListView pair. The data in the
ListModel is built from the routeModel's output:

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
   }</pre>

.. raw:: html

   <p>

Inside the RouteModel, we add an onStatusChanged handler, which calls
the update() function we defined on the model:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">onStatusChanged</span>: {
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
   }</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

mapviewer/mapviewer.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/qmlmapviewerwrapper.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/dialogs/Message.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/dialogs/RouteDialog.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/3dItem.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/CircleItem.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/ImageItem.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/MapComponent.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/Marker.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/MiniMap.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/PolygonItem.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/PolylineItem.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/RectangleItem.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/content/map/VideoItem.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/mapviewer.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

mapviewer/mapviewerwrapper.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@mapviewer -->
