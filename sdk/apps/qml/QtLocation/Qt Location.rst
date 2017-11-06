.. _sdk_qtlocation_qt_location:

QtLocation Qt Location
======================


The Qt Location API provides mapping, navigation, and place search via QML and C++ interfaces.

The API has not been released yet but due to its platform-independent nature is available on all Qt platforms.

The Qt Location API gives developers the ability to determine a position by using a variety of possible sources, including satellite, or wifi, or text file, and so on. That information can then be used to determine a position in a map context with appropriate navigation and to embed, in the map, defined places with descriptive metadata. These three parts allow a device to know where it is and its location with respect to important features. Using features such as roads, destinations, routes, and other navigation attributes, applications can specify beginning and end-points for navigation and awareness of objects that may aid or hinder a journey.

To load the Qt Location module, add the following statement to your .qml files

.. code:: cpp

    import QtLocation 5.3

For C++ projects include the header appropriate for the current use case, for example applications using routes may use

.. code:: cpp

    #include <QGeoRoute> 

The .pro file should have the *location* keyword added

.. code:: cpp

    QT += location

The API is split into sub-modules, which each have QML and C++ APIs. It focuses on Map and Place information. The required position data can be retrieved via the QtPositioning module.

Places is the natural complement to Positioning, providing a source of geographic data about places of interest (POIs). As well as providing the location, size and other vitals about a POI, the Places API can also retrieve images, reviews and other rich content related to the place.

+------------------------+---------------------------------------------------------------+---------------------------------------------------------------+
| Places introduction:   | `for QML </sdk/apps/qml/QtLocation/location-places-qml/>`_    | `for C++ </sdk/apps/qml/QtLocation/location-places-cpp/>`_    |
+------------------------+---------------------------------------------------------------+---------------------------------------------------------------+

Maps and Navigation provides Qt Quick user interface components for displaying geographic information on a map, as well as allowing user interaction with map objects and the display itself. It also contains utilities for geocoding (finding a geographic coordinate from a street address) and navigation (including driving and walking directions).

+-------------------------------------+-------------------------------------------------------------+-------------------------------------------------------------+
| Maps and Navigation introduction:   | `for QML </sdk/apps/qml/QtLocation/location-maps-qml/>`_    | `for C++ </sdk/apps/qml/QtLocation/location-maps-cpp/>`_    |
+-------------------------------------+-------------------------------------------------------------+-------------------------------------------------------------+

Alphabetized lists of all classes and user interface components in the API, as well as detailed example applications to demonstrate their usage.

+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| QML API Reference                                                                 | Full list of QML components in the Qt Location API                              |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| `C++ API Reference by domain </sdk/apps/qml/QtLocation/qtlocation-cpp/>`_         | Full list of C++ classes and methods of the Qt Location APIs sorted by domain   |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| C++ API Reference                                                                 | Full list of C++ classes and methods of the Qt Location APIs                    |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| Example Apps                                                                      | Examples demonstrating use of the Qt Location APIs                              |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| `Maps and Navigation Tutorial </sdk/apps/qml/QtLocation/qml-location5-maps/>`_    | Tutorial introducing the QML Maps Types                                         |
+-----------------------------------------------------------------------------------+---------------------------------------------------------------------------------+

Information about plugins, important notes on their usage, parameters that can be provided to influence their behavior.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Qt Location Nokia Plugin </sdk/apps/qml/QtLocation/location-plugin-nokia/>`_                                                                          | Uses the relevant Nokia services provided by Nokia.                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Qt Location Open Street Map Plugin </sdk/apps/qml/QtLocation/location-plugin-osm/>`_                                                                  | Uses Open Street Map and related services.                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

For systems integrators and distributors, information relating to making Qt Location available for a new platform.

+----------------------------------------------------------------------+---------------------------------------------------------+
| `GeoServices </sdk/apps/qml/QtLocation/qtlocation-geoservices/>`_    | Information about the Qt Location GeoServices plugins   |
+----------------------------------------------------------------------+---------------------------------------------------------+
| `Places </sdk/apps/qml/QtLocation/location-places-backend/>`_        | Information for places backend implementors             |
+----------------------------------------------------------------------+---------------------------------------------------------+

In Qt 4 Qt Mobility provided some location functionality for Positioning and Maps with Landmarks support. The new Qt Location API has had an extensive reworking of :ref:`Map <sdk_qtlocation_map>`\ s and `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ \ s (formerly Landmarks). Also both C++ and QML APIs have been reworked to be simpler to use.

New features of Qt Location includes

-  Maps are now part of the Qt Quick scenegraph, and rendered using hardware-accelerated OpenGL
-  Arbitrary Qt Quick items on the map are supported using :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>`
-  Now possible to create map overlays with a model
-  Built-in support for pinch-to-zoom gestures, flicking , and panning (see :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`)
-  Vast performance improvements over Qt Mobility 1.2, especially for large map polylines and objects in general
-  Full QML API now available for routing and geocoding -- compatible with standard QML model-view design
-  Service provider feature detection without having to open all the available plugins
-  Unified `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  QML type used by routing/geocoding/maps etc with easy-to-set :ref:`PluginParameter <sdk_qtlocation_pluginparameter>`
-  Two plugins are supplied with Qt (a Nokia and an OSM plugin for GeoServices).
-  Landmarks API is replaced by the Places API
-  `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_  supports viewing of richer content such as reviews, images, and editorials
-  `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_  supports locale handling, sponsored search results, and supplier attribution

