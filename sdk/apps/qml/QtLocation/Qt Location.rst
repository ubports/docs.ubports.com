

The Qt Location API provides mapping, navigation, and place search via
QML and C++ interfaces.

The API has not been released yet but due to its platform-independent
nature is available on all Qt platforms.

.. rubric:: Overview
   :name: overview

The Qt Location API gives developers the ability to determine a position
by using a variety of possible sources, including satellite, or wifi, or
text file, and so on. That information can then be used to determine a
position in a map context with appropriate navigation and to embed, in
the map, defined places with descriptive metadata. These three parts
allow a device to know where it is and its location with respect to
important features. Using features such as roads, destinations, routes,
and other navigation attributes, applications can specify beginning and
end-points for navigation and awareness of objects that may aid or
hinder a journey.

.. rubric:: Getting Started
   :name: getting-started

To load the Qt Location module, add the following statement to your .qml
files

.. code:: cpp

    import QtLocation 5.3

For C++ projects include the header appropriate for the current use
case, for example applications using routes may use

.. code:: cpp

    #include <QGeoRoute> 

The .pro file should have the *location* keyword added

.. code:: cpp

    QT += location

.. rubric:: API Sub-Modules
   :name: api-sub-modules

The API is split into sub-modules, which each have QML and C++ APIs. It
focuses on Map and Place information. The required position data can be
retrieved via the QtPositioning module.

.. rubric:: Places
   :name: places

Places is the natural complement to Positioning, providing a source of
geographic data about places of interest (POIs). As well as providing
the location, size and other vitals about a POI, the Places API can also
retrieve images, reviews and other rich content related to the place.

+------------------------+---------------------------------------------------------------+---------------------------------------------------------------+
| Places introduction:   | `for QML </sdk/apps/qml/QtLocation/location-places-qml/>`__   | `for C++ </sdk/apps/qml/QtLocation/location-places-cpp/>`__   |
+------------------------+---------------------------------------------------------------+---------------------------------------------------------------+

.. rubric:: Maps and Navigation
   :name: maps-and-navigation

Maps and Navigation provides Qt Quick user interface components for
displaying geographic information on a map, as well as allowing user
interaction with map objects and the display itself. It also contains
utilities for geocoding (finding a geographic coordinate from a street
address) and navigation (including driving and walking directions).

+-------------------------------------+-------------------------------------------------------------+-------------------------------------------------------------+
| Maps and Navigation introduction:   | `for QML </sdk/apps/qml/QtLocation/location-maps-qml/>`__   | `for C++ </sdk/apps/qml/QtLocation/location-maps-cpp/>`__   |
+-------------------------------------+-------------------------------------------------------------+-------------------------------------------------------------+

.. rubric:: API References and Examples
   :name: api-references-and-examples

Alphabetized lists of all classes and user interface components in the
API, as well as detailed example applications to demonstrate their
usage.

+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| QML API Reference                                                                 | Full list of QML components in the Qt Location API                              |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| `C++ API Reference by domain </sdk/apps/qml/QtLocation/qtlocation-cpp/>`__        | Full list of C++ classes and methods of the Qt Location APIs sorted by domain   |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| C++ API Reference                                                                 | Full list of C++ classes and methods of the Qt Location APIs                    |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| Example Apps                                                                      | Examples demonstrating use of the Qt Location APIs                              |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| `Maps and Navigation Tutorial </sdk/apps/qml/QtLocation/qml-location5-maps/>`__   | Tutorial introducing the QML Maps Types                                         |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+

.. rubric:: Plugin References and Parameters
   :name: plugin-references-and-parameters

Information about plugins, important notes on their usage, parameters
that can be provided to influence their behavior.

+--------------------------------------+--------------------------------------+
| `Qt Location Nokia                   | Uses the relevant Nokia services     |
| Plugin </sdk/apps/qml/QtLocation/loc | provided by Nokia.                   |
| ation-plugin-nokia/>`__              |                                      |
+--------------------------------------+--------------------------------------+
| `Qt Location Open Street Map         | Uses Open Street Map and related     |
| Plugin </sdk/apps/qml/QtLocation/loc | services.                            |
| ation-plugin-osm/>`__                |                                      |
+--------------------------------------+--------------------------------------+

.. rubric:: Implementing New Back-Ends and Porting
   :name: implementing-new-back-ends-and-porting

For systems integrators and distributors, information relating to making
Qt Location available for a new platform.

+----------------------------------------------------------------------+---------------------------------------------------------+
| `GeoServices </sdk/apps/qml/QtLocation/qtlocation-geoservices/>`__   | Information about the Qt Location GeoServices plugins   |
+----------------------------------------------------------------------+---------------------------------------------------------+
| `Places </sdk/apps/qml/QtLocation/location-places-backend/>`__       | Information for places backend implementors             |
+----------------------------------------------------------------------+---------------------------------------------------------+

.. rubric:: New Since Qt 4
   :name: new-since-qt-4

In Qt 4 Qt Mobility provided some location functionality for Positioning
and Maps with Landmarks support. The new Qt Location API has had an
extensive reworking of `Map </sdk/apps/qml/QtLocation/Map/>`__\ s and
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__\ s (formerly
Landmarks). Also both C++ and QML APIs have been reworked to be simpler
to use.

New features of Qt Location includes

-  Maps are now part of the Qt Quick scenegraph, and rendered using
   hardware-accelerated OpenGL
-  Arbitrary Qt Quick items on the map are supported using
   `MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__
-  Now possible to create map overlays with a model
-  Built-in support for pinch-to-zoom gestures, flicking , and panning
   (see `MapGestureArea </sdk/apps/qml/QtLocation/MapGestureArea/>`__)
-  Vast performance improvements over Qt Mobility 1.2, especially for
   large map polylines and objects in general
-  Full QML API now available for routing and geocoding -- compatible
   with standard QML model-view design
-  Service provider feature detection without having to open all the
   available plugins
-  Unified
   `Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ QML
   type used by routing/geocoding/maps etc with easy-to-set
   `PluginParameter </sdk/apps/qml/QtLocation/PluginParameter/>`__
-  Two plugins are supplied with Qt (a Nokia and an OSM plugin for
   GeoServices).
-  Landmarks API is replaced by the Places API
-  `Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__ supports
   viewing of richer content such as reviews, images, and editorials
-  `Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__ supports
   locale handling, sponsored search results, and supplier attribution

