.. _sdk_qtlocation_maps_and_navigation_(qml):

QtLocation Maps and Navigation (QML)
====================================


**Maps and Navigation** provides QtQuick user interface types for displaying geographic information on a map, as well as allowing user interaction with map overlay objects and the display itself. It also contains utilities for geocoding (finding a geographic coordinate from a street address) and navigation (including driving and walking directions).

It builds upon the API concepts and types in the QML Positioning API. A more hands-on introduction of the Maps and Navigation types can be found in the `Maps and Navigation tutorial </sdk/apps/qml/QtLocation/qml-location5-maps/>`_ .

Displaying a map is done using the :ref:`Map <sdk_qtlocation_map>` QML types. The Map type supports user interaction through the :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>` QML type. The Map object draws the map on-screen using OpenGL (ES), allowing for hardware-accelerated rendering where available.

**Key Types**

+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| :ref:`Plugin <sdk_qtlocation_plugin>`                   | A location-based services plugin provides data including map data which is then displayed in a Map object.   |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| :ref:`Map <sdk_qtlocation_map>`                         | QtQuick item to display a map on-screen.                                                                     |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`   | Interaction helper for panning, flicking and pinch-to-zoom gesture on a Map.                                 |
+------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+

Note that the client must create a :ref:`Plugin <sdk_qtlocation_plugin>` object prior to using a :ref:`Map <sdk_qtlocation_map>` type in order to have access to map data to display.

Maps can also contain map overlay objects, which are used to display information on its surface. There is a set of basic pre-defined map overlay objects, as well as the ability to implement custom map overlay objects using the :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` type, which can contain any standard QtQuick item.

**Key Types**

+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapCircle <sdk_qtlocation_mapcircle>`         | A geographic circle (all points at a set distance from a center), optionally with a border.                                                                              |
+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapRectangle <sdk_qtlocation_maprectangle>`   | A rectangle whose top left and bottom right points are specified as coordinate types, optionally with a border.                                                          |
+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapPolygon <sdk_qtlocation_mappolygon>`       | A polygon made of an arbitrary list of coordinates.                                                                                                                      |
+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapPolyline <sdk_qtlocation_mappolyline>`     | A polyline made of an arbitrary list of coordinates.                                                                                                                     |
+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>`   | Turns any arbitrary QtQuick Item into a map overlay object. :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` is an enabler for specifying custom map overlay objects.   |
+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

To automatically generate map overlay objects based on the contents of a QtQuick model (for example a ListModel item), the :ref:`MapItemView <sdk_qtlocation_mapitemview>` type is available. It accepts any map overlay object as its delegate, and can only be created within a :ref:`Map <sdk_qtlocation_map>`.

**Key Types**

+------------------------------------------------+--------------------------------------------------------------------------------------+
| :ref:`MapItemView <sdk_qtlocation_mapitemview>`   | Populates a Map with map overlay objects based on the data provided by a model.   |
+------------------------------------------------+--------------------------------------------------------------------------------------+

Properties of map overlay objects that influence their appearance on the display can be changed at any time, and many can also be used in animations. Animating coordinate-based map overlay objects, such as :ref:`MapPolygon <sdk_qtlocation_mappolygon>` and :ref:`MapPolyline <sdk_qtlocation_mappolyline>`, is not yet available.

Geocoding is the translation of geographic coordinates into addresses, or vice versa. Such a translation usually involves sending the source data to a server which then performs the translation and returns the results, although some location-based service provider :ref:`plugins <sdk_qtlocation_plugin>` may be able to provide some geocoding functionality without sending data to a remote server. The availability and accuracy of the translation usually depends on the location or address being translated, as different areas of the Earth are mapped to varying degrees of accuracy.

A geocoding query in QML is performed using the :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` type. For an address-to-coordinate query, its ``query`` property may be set to either an Address object or a string containing the textual form of the address to search for. To perform the reverse, the same property can be set to a coordinate instead. Results are made available in the contents of the model.

**Key Types**

+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Plugin <sdk_qtlocation_plugin>`               | A location-based services plugin provides data including geocoding translation results which are exposed to clients via a :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.   |
+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`   | Queries the Plugin for geocoding translations and provides access to results via indexes in the model.                                                                         |
+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Address                                          | Structured address for use in queries and results of geocoding.                                                                                                                   |
+--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Note that the client must create a :ref:`Plugin <sdk_qtlocation_plugin>` object prior to using a :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` object. This will enable access to geocoding translation services and thus data to display.

Routing is the determination of a navigable path from one point to another on a map. Given a map that is aware of features that aid or hinder navigation, such as bridges, waterways and so on, a series of segments that make up the journey can be constructed. If these :ref:`RouteSegment <sdk_qtlocation_routesegment>`\ s are simple then we can add navigation information at the connecting points, :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`\ s, between the segments.

**Key Types**

+----------------------------------------------------+-------------------------------------------------------------------------------+
| :ref:`Route <sdk_qtlocation_route>`                   | The entire path to be navigated.                                           |
+----------------------------------------------------+-------------------------------------------------------------------------------+
| :ref:`RouteSegment <sdk_qtlocation_routesegment>`     | The individual components of a route.                                      |
+----------------------------------------------------+-------------------------------------------------------------------------------+
| :ref:`RouteManeuver <sdk_qtlocation_routemaneuver>`   | The navigation information that joins segments.                            |
+----------------------------------------------------+-------------------------------------------------------------------------------+
| :ref:`RouteModel <sdk_qtlocation_routemodel>`         | The means of making requests on the backend to supply route information.   |
+----------------------------------------------------+-------------------------------------------------------------------------------+

