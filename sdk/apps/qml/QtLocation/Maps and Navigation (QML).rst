

**Maps and Navigation** provides QtQuick user interface types for
displaying geographic information on a map, as well as allowing user
interaction with map overlay objects and the display itself. It also
contains utilities for geocoding (finding a geographic coordinate from a
street address) and navigation (including driving and walking
directions).

It builds upon the API concepts and types in the QML Positioning API. A
more hands-on introduction of the Maps and Navigation types can be found
in the `Maps and Navigation
tutorial </sdk/apps/qml/QtLocation/qml-location5-maps/>`__.

.. rubric:: Maps
   :name: maps

.. rubric:: Displaying Maps
   :name: displaying-maps

Displaying a map is done using the
`Map </sdk/apps/qml/QtLocation/Map/>`__ QML types. The Map type supports
user interaction through the
`MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__ QML type.
The Map object draws the map on-screen using OpenGL (ES), allowing for
hardware-accelerated rendering where available.

**Key Types**

+-----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| `Plugin </sdk/apps/qml/QtLocation/Plugin/>`__                   | A location-based services plugin provides data including map data which is then displayed in a Map object.   |
+-----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| `Map </sdk/apps/qml/QtLocation/Map/>`__                         | QtQuick item to display a map on-screen.                                                                     |
+-----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| `MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__   | Interaction helper for panning, flicking and pinch-to-zoom gesture on a Map.                                 |
+-----------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+

Note that the client must create a
`Plugin </sdk/apps/qml/QtLocation/Plugin/>`__ object prior to using a
`Map </sdk/apps/qml/QtLocation/Map/>`__ type in order to have access to
map data to display.

.. rubric:: Putting Objects on a Map (Map Overlay Objects)
   :name: putting-objects-on-a-map-map-overlay-objects

Maps can also contain map overlay objects, which are used to display
information on its surface. There is a set of basic pre-defined map
overlay objects, as well as the ability to implement custom map overlay
objects using the
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ type, which
can contain any standard QtQuick item.

**Key Types**

+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `MapCircle </sdk/apps/qml/QtLocation/MapCircle/>`__         | A geographic circle (all points at a set distance from a center), optionally with a border.                                                                                      |
+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `MapRectangle </sdk/apps/qml/QtLocation/MapRectangle/>`__   | A rectangle whose top left and bottom right points are specified as coordinate types, optionally with a border.                                                                  |
+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `MapPolygon </sdk/apps/qml/QtLocation/MapPolygon/>`__       | A polygon made of an arbitrary list of coordinates.                                                                                                                              |
+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `MapPolyline </sdk/apps/qml/QtLocation/MapPolyline/>`__     | A polyline made of an arbitrary list of coordinates.                                                                                                                             |
+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__   | Turns any arbitrary QtQuick Item into a map overlay object. `MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ is an enabler for specifying custom map overlay objects.   |
+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rubric:: Model-View Design with Map Overlay Objects
   :name: model-view-design-with-map-overlay-objects

To automatically generate map overlay objects based on the contents of a
QtQuick model (for example a ListModel item), the
`MapItemView </sdk/apps/qml/QtLocation/MapItemView/>`__ type is
available. It accepts any map overlay object as its delegate, and can
only be created within a `Map </sdk/apps/qml/QtLocation/Map/>`__.

**Key Types**

+-----------------------------------------------------------+-----------------------------------------------------------------------------------+
| `MapItemView </sdk/apps/qml/QtLocation/MapItemView/>`__   | Populates a Map with map overlay objects based on the data provided by a model.   |
+-----------------------------------------------------------+-----------------------------------------------------------------------------------+

.. rubric:: Interaction with Map Overlay Objects
   :name: interaction-with-map-overlay-objects

Properties of map overlay objects that influence their appearance on the
display can be changed at any time, and many can also be used in
animations. Animating coordinate-based map overlay objects, such as
`MapPolygon </sdk/apps/qml/QtLocation/MapPolygon/>`__ and
`MapPolyline </sdk/apps/qml/QtLocation/MapPolyline/>`__, is not yet
available.

.. rubric:: Geocoding -- Address to Coordinate and Vice Versa
   :name: geocoding-address-to-coordinate-and-vice-versa

Geocoding is the translation of geographic coordinates into addresses,
or vice versa. Such a translation usually involves sending the source
data to a server which then performs the translation and returns the
results, although some location-based service provider
`plugins </sdk/apps/qml/QtLocation/Plugin/>`__ may be able to provide
some geocoding functionality without sending data to a remote server.
The availability and accuracy of the translation usually depends on the
location or address being translated, as different areas of the Earth
are mapped to varying degrees of accuracy.

A geocoding query in QML is performed using the
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ type. For an
address-to-coordinate query, its ``query`` property may be set to either
an Address object or a string containing the textual form of the address
to search for. To perform the reverse, the same property can be set to a
coordinate instead. Results are made available in the contents of the
model.

**Key Types**

+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Plugin </sdk/apps/qml/QtLocation/Plugin/>`__               | A location-based services plugin provides data including geocoding translation results which are exposed to clients via a `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.   |
+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__   | Queries the Plugin for geocoding translations and provides access to results via indexes in the model.                                                                                 |
+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Address                                                     | Structured address for use in queries and results of geocoding.                                                                                                                        |
+-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Note that the client must create a
`Plugin </sdk/apps/qml/QtLocation/Plugin/>`__ object prior to using a
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ object. This
will enable access to geocoding translation services and thus data to
display.

.. rubric:: Routing and Navigation
   :name: routing-and-navigation

Routing is the determination of a navigable path from one point to
another on a map. Given a map that is aware of features that aid or
hinder navigation, such as bridges, waterways and so on, a series of
segments that make up the journey can be constructed. If these
`RouteSegment </sdk/apps/qml/QtLocation/RouteSegment/>`__\ s are simple
then we can add navigation information at the connecting points,
`RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__\ s, between
the segments.

**Key Types**

+---------------------------------------------------------------+----------------------------------------------------------------------------+
| `Route </sdk/apps/qml/QtLocation/Route/>`__                   | The entire path to be navigated.                                           |
+---------------------------------------------------------------+----------------------------------------------------------------------------+
| `RouteSegment </sdk/apps/qml/QtLocation/RouteSegment/>`__     | The individual components of a route.                                      |
+---------------------------------------------------------------+----------------------------------------------------------------------------+
| `RouteManeuver </sdk/apps/qml/QtLocation/RouteManeuver/>`__   | The navigation information that joins segments.                            |
+---------------------------------------------------------------+----------------------------------------------------------------------------+
| `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__         | The means of making requests on the backend to supply route information.   |
+---------------------------------------------------------------+----------------------------------------------------------------------------+

