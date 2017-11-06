.. _sdk_qtlocation_map:

QtLocation Map
==============

The Map type displays a map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`activeMapType <sdk_qtlocation_map_activeMapType>` : MapType
-  :ref:`center <sdk_qtlocation_map_center>` : coordinate
-  :ref:`gesture <sdk_qtlocation_map_gesture>` : MapGestureArea
-  :ref:`mapItems <sdk_qtlocation_map_mapItems>` : list<MapItem>
-  :ref:`maximumZoomLevel <sdk_qtlocation_map_maximumZoomLevel>` : real
-  :ref:`minimumZoomLevel <sdk_qtlocation_map_minimumZoomLevel>` : real
-  :ref:`plugin <sdk_qtlocation_map_plugin>` : Plugin
-  :ref:`supportedMapTypes <sdk_qtlocation_map_supportedMapTypes>` : list<MapType>
-  :ref:`zoomLevel <sdk_qtlocation_map_zoomLevel>` : real

Signals
-------

-  :ref:`copyrightLinkActivated <sdk_qtlocation_map_copyrightLinkActivated>`\ (string *link*)

Methods
-------

-  :ref:`addMapItem <sdk_qtlocation_map_addMapItem>`\ (MapItem *item*)
-  void :ref:`cameraStopped <sdk_qtlocation_map_cameraStopped>`\ ()
-  void :ref:`clearMapItems <sdk_qtlocation_map_clearMapItems>`\ ()
-  :ref:`fitViewportToGeoShape <sdk_qtlocation_map_fitViewportToGeoShape>`\ (QGeoShape *shape*)
-  :ref:`fitViewportToMapItems <sdk_qtlocation_map_fitViewportToMapItems>`\ ()
-  void :ref:`pan <sdk_qtlocation_map_pan>`\ (int *dx*, int *dy*)
-  void :ref:`removeMapItem <sdk_qtlocation_map_removeMapItem>`\ (MapItem *item*)
-  :ref:`toCoordinate <sdk_qtlocation_map_toCoordinate>`\ (QPointF *screenPosition*)
-  :ref:`toScreenPosition <sdk_qtlocation_map_toScreenPosition>`\ (coordinate *coordinate*)

Detailed Description
--------------------

The Map type is used to display a map or image of the Earth, with the capability to also display interactive objects tied to the map's surface.

There are a variety of different ways to visualize the Earth's surface in a 2-dimensional manner, but all of them involve some kind of projection: a mathematical relationship between the 3D coordinates (latitude, longitude and altitude) and 2D coordinates (X and Y in pixels) on the screen.

Different sources of map data can use different projections, and from the point of view of the Map type, we treat these as one replaceable unit: the Map plugin. A Map plugin consists of a data source, as well as all other details needed to display its data on-screen.

The current Map plugin in use is contained in the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  property of the Map item. In order to display any image in a Map item, you will need to set this property. See the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  type for a description of how to retrieve an appropriate plugin for use.

The geographic region displayed in the Map item is referred to as its viewport, and this is defined by the properties :ref:`center <sdk_qtlocation_map_center>`, and :ref:`zoomLevel <sdk_qtlocation_map_zoomLevel>`. The :ref:`center <sdk_qtlocation_map_center>` property contains a coordinate specifying the center of the viewport, while :ref:`zoomLevel <sdk_qtlocation_map_zoomLevel>` controls the scale of the map. See each of these properties for further details about their values.

When the map is displayed, each possible geographic coordinate that is visible will map to some pixel X and Y coordinate on the screen. To perform conversions between these two, Map provides the :ref:`toCoordinate <sdk_qtlocation_map_toCoordinate>` and :ref:`toScreenPosition <sdk_qtlocation_map_toScreenPosition>` functions, which are of general utility.

Map Objects
~~~~~~~~~~~

Map related objects can be declared within the body of a Map object in Qt Quick and will automatically appear on the Map. To add objects programmatically, first be sure they are created with the Map as their parent (for example in an argument to Component::createObject), and then call the :ref:`addMapItem <sdk_qtlocation_map_addMapItem>` method on the Map. A corresponding :ref:`removeMapItem <sdk_qtlocation_map_removeMapItem>` method also exists to do the opposite and remove an object from the Map.

Moving Map objects around, resizing them or changing their shape normally does not involve any special interaction with Map itself -- changing these details about a map object will automatically update the display.

Interaction
~~~~~~~~~~~

The Map type includes support for pinch and flick gestures to control zooming and panning. These are enabled by default, and available at any time by using the :ref:`gesture <sdk_qtlocation_map_gesture>` object. The actual GestureArea is constructed specially at startup and cannot be replaced or destroyed. Its properties can be altered, however, to control its behavior.

Performance
~~~~~~~~~~~

Maps are rendered using OpenGL (ES) and the Qt Scene Graph stack, and as a result perform quite well where GL accelerated hardware is available.

For "online" Map plugins, network bandwidth and latency can be major contributors to the user's perception of performance. Extensive caching is performed to mitigate this, but such mitigation is not always perfect. For "offline" plugins, the time spent retrieving the stored geographic data and rendering the basic map features can often play a dominant role. Some offline plugins may use hardware acceleration themselves to (partially) avert this.

In general, large and complex Map items such as polygons and polylines with large numbers of vertices can have an adverse effect on UI performance. Further, more detailed notes on this are in the documentation for each map item type.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a simple Map and the necessary Plugin type to use it. The map is centered near Brisbane, Australia, zoomed out to the minimum zoom level, with gesture interaction enabled.

.. code:: cpp

    Plugin {
        id: somePlugin
        // code here to choose the plugin as necessary
    }
    Map {
        id: map
        plugin: somePlugin
        center {
            latitude: -27
            longitude: 153
        }
        zoomLevel: map.minimumZoomLevel
        gesture.enabled: true
    }

Property Documentation
----------------------

.. _sdk_qtlocation_map_activeMapType:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| activeMapType : :ref:`MapType <sdk_qtlocation_maptype>`                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Access to the currently active :ref:`map type <sdk_qtlocation_maptype>`.

This property can be set to change the active :ref:`map type <sdk_qtlocation_maptype>`. See the :ref:`supportedMapTypes <sdk_qtlocation_map_supportedMapTypes>` property for possible values.

**See also** :ref:`MapType <sdk_qtlocation_maptype>`.

.. _sdk_qtlocation_map_center:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| center : coordinate                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the coordinate which occupies the center of the mapping viewport. Invalid center coordinates are ignored.

The default value is an arbitrary valid coordinate.

.. _sdk_qtlocation_map_gesture:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| gesture : :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>`                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Contains the :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>` created with the Map. This covers pan, flick and pinch gestures. Use ``gesture.enabled: true`` to enable basic gestures, or see :ref:`MapGestureArea <sdk_qtlocation_mapgesturearea>` for further details.

.. _sdk_qtlocation_map_mapItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| mapItems : list<MapItem>                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the list of all map items in no particular order. These items include items that were declared statically as part of the type declaration, as well as dynamical items (:ref:`addMapItem <sdk_qtlocation_map_addMapItem>`, :ref:`MapItemView <sdk_qtlocation_mapitemview>`).

**See also** :ref:`addMapItem <sdk_qtlocation_map_addMapItem>`, :ref:`removeMapItem <sdk_qtlocation_map_removeMapItem>`, and :ref:`clearMapItems <sdk_qtlocation_map_clearMapItems>`.

.. _sdk_qtlocation_map_maximumZoomLevel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| maximumZoomLevel : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the maximum valid zoom level for the map.

The maximum zoom level is defined by the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  used. If a plugin supporting mapping is not set, -1.0 is returned.

.. _sdk_qtlocation_map_minimumZoomLevel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| minimumZoomLevel : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the minimum valid zoom level for the map.

The minimum zoom level is defined by the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  used. If a plugin supporting mapping is not set, -1.0 is returned.

.. _sdk_qtlocation_map_plugin:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| plugin : :ref:`Plugin <sdk_qtlocation_plugin>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the plugin which provides the mapping functionality.

This is a write-once property. Once the map has a plugin associated with it, any attempted modifications of the plugin will be ignored.

.. _sdk_qtlocation_map_supportedMapTypes:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| supportedMapTypes : list<:ref:`MapType <sdk_qtlocation_maptype>`>                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This read-only property holds the set of :ref:`map types <sdk_qtlocation_maptype>` supported by this map.

**See also** :ref:`activeMapType <sdk_qtlocation_map_activeMapType>`.

.. _sdk_qtlocation_map_zoomLevel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| zoomLevel : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the zoom level for the map.

Larger values for the zoom level provide more detail. Zoom levels are always non-negative. The default value is 8.0.

Signal Documentation
--------------------

.. _sdk_qtlocation_map_copyrightLinkActivated:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| copyrightLinkActivated(string *link*)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the user clicks on a *link* in the copyright notice. The application should open the link in a browser or display its contents to the user.

Method Documentation
--------------------

.. _sdk_qtlocation_map_addMapItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addMapItem(MapItem *item*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adds the given *item* to the Map (for example :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>`, :ref:`MapCircle <sdk_qtlocation_mapcircle>`). If the object already is on the Map, it will not be added again.

As an example, consider the case where you have a :ref:`MapCircle <sdk_qtlocation_mapcircle>` representing your current position:

.. code:: qml

    import QtQuick 2.0
    import QtLocation 5.3
    PositionSource {
        id: positionSource
    }
    Map {
        id: map
        property MapCircle circle
        Component.onCompleted: {
            circle = Qt.createQmlObject('import QtLocation 5.3; MapCircle {}', page)
            circle.center = positionSource.position.coordinate
            circle.radius = 5000.0
            circle.color = 'green'
            circle.border.width = 3
            map.addMapItem(circle)
        }
    }

**Note:** MapItemViews cannot be added with this method.

**See also** :ref:`mapItems <sdk_qtlocation_map_mapItems>`, :ref:`removeMapItem <sdk_qtlocation_map_removeMapItem>`, and :ref:`clearMapItems <sdk_qtlocation_map_clearMapItems>`.

.. _sdk_qtlocation_map_cameraStopped:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void cameraStopped()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Optional hint that allows the map to prefetch during this idle period

.. _sdk_qtlocation_map_clearMapItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void clearMapItems()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes all items from the map.

**See also** :ref:`mapItems <sdk_qtlocation_map_mapItems>`, :ref:`addMapItem <sdk_qtlocation_map_addMapItem>`, and :ref:`removeMapItem <sdk_qtlocation_map_removeMapItem>`.

.. _sdk_qtlocation_map_fitViewportToGeoShape:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fitViewportToGeoShape(QGeoShape *shape*)                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fits the current viewport to the boundary of the shape. The camera is positioned in the center of the shape, and at the largest integral zoom level possible which allows the whole shape to be visible on screen

.. _sdk_qtlocation_map_fitViewportToMapItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fitViewportToMapItems()                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Fits the current viewport to the boundary of all map items. The camera is positioned in the center of the map items, and at the largest integral zoom level possible which allows all map items to be visible on screen

.. _sdk_qtlocation_map_pan:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void pan(int *dx*, int *dy*)                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Starts panning the map by *dx* pixels along the x-axis and by *dy* pixels along the y-axis.

Positive values for *dx* move the map right, negative values left. Positive values for *dy* move the map down, negative values up.

During panning the :ref:`center <sdk_qtlocation_map_center>`, and :ref:`zoomLevel <sdk_qtlocation_map_zoomLevel>` may change.

.. _sdk_qtlocation_map_removeMapItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void removeMapItem(MapItem *item*)                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes the given *item* from the Map (for example :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>`, :ref:`MapCircle <sdk_qtlocation_mapcircle>`). If the MapItem does not exist or was not previously added to the map, the method does nothing.

**See also** :ref:`mapItems <sdk_qtlocation_map_mapItems>`, :ref:`addMapItem <sdk_qtlocation_map_addMapItem>`, and :ref:`clearMapItems <sdk_qtlocation_map_clearMapItems>`.

.. _sdk_qtlocation_map_toCoordinate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| toCoordinate(QPointF *screenPosition*)                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the coordinate which corresponds to the screen position *screenPosition*.

Returns an invalid coordinate if *screenPosition* is not within the current viewport.

.. _sdk_qtlocation_map_toScreenPosition:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| toScreenPosition(coordinate *coordinate*)                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the screen position which corresponds to the coordinate *coordinate*.

Returns an invalid QPointF if *coordinate* is not within the current viewport.

