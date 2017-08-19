QtLocation.Map
==============

.. raw:: html

   <p>

The Map type displays a map. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Map -->

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

activeMapType : MapType

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

center : coordinate

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

gesture : MapGestureArea

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mapItems : list<MapItem>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumZoomLevel : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumZoomLevel : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

plugin : Plugin

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

supportedMapTypes : list<MapType>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

zoomLevel : real

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

addMapItem(MapItem item)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void cameraStopped()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void clearMapItems()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fitViewportToGeoShape(QGeoShape shape)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fitViewportToMapItems()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void pan(int dx, int dy)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void removeMapItem(MapItem item)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

toCoordinate(QPointF screenPosition)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

toScreenPosition(coordinate coordinate)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Map-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Map type is used to display a map or image of the Earth, with the
capability to also display interactive objects tied to the map's
surface.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are a variety of different ways to visualize the Earth's surface
in a 2-dimensional manner, but all of them involve some kind of
projection: a mathematical relationship between the 3D coordinates
(latitude, longitude and altitude) and 2D coordinates (X and Y in
pixels) on the screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

Different sources of map data can use different projections, and from
the point of view of the Map type, we treat these as one replaceable
unit: the Map plugin. A Map plugin consists of a data source, as well as
all other details needed to display its data on-screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

The current Map plugin in use is contained in the plugin property of the
Map item. In order to display any image in a Map item, you will need to
set this property. See the Plugin type for a description of how to
retrieve an appropriate plugin for use.

.. raw:: html

   </p>

.. raw:: html

   <p>

The geographic region displayed in the Map item is referred to as its
viewport, and this is defined by the properties zoomLevel controls the
scale of the map. See each of these properties for further details about
their values.

.. raw:: html

   </p>

.. raw:: html

   <p>

When the map is displayed, each possible geographic coordinate that is
visible will map to some pixel X and Y coordinate on the screen. To
perform conversions between these two, Map provides the toScreenPosition
functions, which are of general utility.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Map Objects

.. raw:: html

   </h3>

.. raw:: html

   <p>

Map related objects can be declared within the body of a Map object in
Qt Quick and will automatically appear on the Map. To add objects
programmatically, first be sure they are created with the Map as their
parent (for example in an argument to Component::createObject), and then
call the removeMapItem method also exists to do the opposite and remove
an object from the Map.

.. raw:: html

   </p>

.. raw:: html

   <p>

Moving Map objects around, resizing them or changing their shape
normally does not involve any special interaction with Map itself --
changing these details about a map object will automatically update the
display.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Interaction

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Map type includes support for pinch and flick gestures to control
zooming and panning. These are enabled by default, and available at any
time by using the gesture object. The actual GestureArea is constructed
specially at startup and cannot be replaced or destroyed. Its properties
can be altered, however, to control its behavior.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Performance

.. raw:: html

   </h3>

.. raw:: html

   <p>

Maps are rendered using OpenGL (ES) and the Qt Scene Graph stack, and as
a result perform quite well where GL accelerated hardware is available.

.. raw:: html

   </p>

.. raw:: html

   <p>

For "online" Map plugins, network bandwidth and latency can be major
contributors to the user's perception of performance. Extensive caching
is performed to mitigate this, but such mitigation is not always
perfect. For "offline" plugins, the time spent retrieving the stored
geographic data and rendering the basic map features can often play a
dominant role. Some offline plugins may use hardware acceleration
themselves to (partially) avert this.

.. raw:: html

   </p>

.. raw:: html

   <p>

In general, large and complex Map items such as polygons and polylines
with large numbers of vertices can have an adverse effect on UI
performance. Further, more detailed notes on this are in the
documentation for each map item type.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following snippet shows a simple Map and the necessary Plugin type
to use it. The map is centered near Brisbane, Australia, zoomed out to
the minimum zoom level, with gesture interaction enabled.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Plugin {
   id: somePlugin
   <span class="comment">// code here to choose the plugin as necessary</span>
   }
   Map {
   id: map
   plugin: somePlugin
   center {
   latitude: <span class="operator">-</span><span class="number">27</span>
   longitude: <span class="number">153</span>
   }
   zoomLevel: map<span class="operator">.</span>minimumZoomLevel
   gesture<span class="operator">.</span>enabled: <span class="keyword">true</span>
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Map -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$activeMapType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="activeMapType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

activeMapType : MapType

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

Access to the currently active map type.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property can be set to change the active supportedMapTypes property
for possible values.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also MapType.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@activeMapType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="center-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

center : coordinate

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

This property holds the coordinate which occupies the center of the
mapping viewport. Invalid center coordinates are ignored.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is an arbitrary valid coordinate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@center -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="gesture-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

gesture : MapGestureArea

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

Contains the MapGestureArea created with the Map. This covers pan, flick
and pinch gestures. Use gesture.enabled: true to enable basic gestures,
or see MapGestureArea for further details.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gesture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mapItems-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mapItems : list<MapItem>

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

Returns the list of all map items in no particular order. These items
include items that were declared statically as part of the type
declaration, as well as dynamical items (addMapItem, MapItemView).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clearMapItems.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mapItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumZoomLevel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumZoomLevel : real

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

This property holds the maximum valid zoom level for the map.

.. raw:: html

   </p>

.. raw:: html

   <p>

The maximum zoom level is defined by the plugin used. If a plugin
supporting mapping is not set, -1.0 is returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumZoomLevel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumZoomLevel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumZoomLevel : real

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

This property holds the minimum valid zoom level for the map.

.. raw:: html

   </p>

.. raw:: html

   <p>

The minimum zoom level is defined by the plugin used. If a plugin
supporting mapping is not set, -1.0 is returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumZoomLevel -->

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

This property holds the plugin which provides the mapping functionality.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a write-once property. Once the map has a plugin associated with
it, any attempted modifications of the plugin will be ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@plugin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supportedMapTypes-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

supportedMapTypes : list<MapType>

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

This read-only property holds the set of map types supported by this
map.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also activeMapType.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@supportedMapTypes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="zoomLevel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

zoomLevel : real

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

This property holds the zoom level for the map.

.. raw:: html

   </p>

.. raw:: html

   <p>

Larger values for the zoom level provide more detail. Zoom levels are
always non-negative. The default value is 8.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@zoomLevel -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addMapItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addMapItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

addMapItem(MapItem item)

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

Adds the given item to the Map (for example MapQuickItem, MapCircle). If
the object already is on the Map, it will not be added again.

.. raw:: html

   </p>

.. raw:: html

   <p>

As an example, consider the case where you have a MapCircle representing
your current position:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtLocation 5.3
   <span class="type">PositionSource</span> {
   <span class="name">id</span>: <span class="name">positionSource</span>
   }
   <span class="type"><a href="#">Map</a></span> {
   <span class="name">id</span>: <span class="name">map</span>
   property <span class="type"><a href="QtLocation.MapCircle.md">MapCircle</a></span> <span class="name">circle</span>
   <span class="name">Component</span>.onCompleted: {
   <span class="name">circle</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; MapCircle {}'</span>, <span class="name">page</span>)
   <span class="name">circle</span>.<span class="name">center</span> <span class="operator">=</span> <span class="name">positionSource</span>.<span class="name">position</span>.<span class="name">coordinate</span>
   <span class="name">circle</span>.<span class="name">radius</span> <span class="operator">=</span> <span class="number">5000.0</span>
   <span class="name">circle</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">'green'</span>
   <span class="name">circle</span>.<span class="name">border</span>.<span class="name">width</span> <span class="operator">=</span> <span class="number">3</span>
   <span class="name">map</span>.<span class="name">addMapItem</span>(<span class="name">circle</span>)
   }
   }</pre>

.. raw:: html

   <p>

Note: MapItemViews cannot be added with this method.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clearMapItems.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addMapItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cameraStopped-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void cameraStopped()

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

Optional hint that allows the map to prefetch during this idle period

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cameraStopped -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clearMapItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void clearMapItems()

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

Removes all items from the map.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also removeMapItem.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clearMapItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fitViewportToGeoShape-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

fitViewportToGeoShape(QGeoShape shape)

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

Fits the current viewport to the boundary of the shape. The camera is
positioned in the center of the shape, and at the largest integral zoom
level possible which allows the whole shape to be visible on screen

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fitViewportToGeoShape -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fitViewportToMapItems-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

fitViewportToMapItems()

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

Fits the current viewport to the boundary of all map items. The camera
is positioned in the center of the map items, and at the largest
integral zoom level possible which allows all map items to be visible on
screen

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fitViewportToMapItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pan-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void pan(int dx, int dy)

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

Starts panning the map by dx pixels along the x-axis and by dy pixels
along the y-axis.

.. raw:: html

   </p>

.. raw:: html

   <p>

Positive values for dx move the map right, negative values left.
Positive values for dy move the map down, negative values up.

.. raw:: html

   </p>

.. raw:: html

   <p>

During panning the zoomLevel may change.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pan -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeMapItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void removeMapItem(MapItem item)

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

Removes the given item from the Map (for example MapQuickItem,
MapCircle). If the MapItem does not exist or was not previously added to
the map, the method does nothing.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clearMapItems.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeMapItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toCoordinate-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

toCoordinate(QPointF screenPosition)

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

Returns the coordinate which corresponds to the screen position
screenPosition.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns an invalid coordinate if screenPosition is not within the
current viewport.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@toCoordinate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toScreenPosition-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

toScreenPosition(coordinate coordinate)

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

Returns the screen position which corresponds to the coordinate
coordinate.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns an invalid QPointF if coordinate is not within the current
viewport.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@toScreenPosition -->


