.. _sdk_qtlocation_mappolygon:

QtLocation MapPolygon
=====================

The MapPolygon type displays a polygon on a Map

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`border <sdk_qtlocation_mappolygon_border>`

   -  :ref:`border.width <sdk_qtlocation_mappolygon_border_width>` : int
   -  :ref:`border.color <sdk_qtlocation_mappolygon_border_color>` : color

-  :ref:`color <sdk_qtlocation_mappolygon_color>` : color
-  :ref:`path <sdk_qtlocation_mappolygon_path>` : list<coordinate>

Methods
-------

-  :ref:`addCoordinate <sdk_qtlocation_mappolygon_addCoordinate>`\ (coordinate)
-  :ref:`removeCoordinate <sdk_qtlocation_mappolygon_removeCoordinate>`\ (coordinate)

Detailed Description
--------------------

The :ref:`MapPolygon <sdk_qtlocation_mappolygon>` type displays a polygon on a Map, specified in terms of an ordered list of coordinates. For best appearance and results, polygons should be simple (not self-intersecting).

The coordinates on the path cannot be directly changed after being added to the Polygon. Instead, copy the :ref:`path <sdk_qtlocation_mappolygon_path>` into a var, modify the copy and reassign the copy back to the :ref:`path <sdk_qtlocation_mappolygon_path>`.

.. code:: cpp

    var path = mapPolygon.path;
    path[0].latitude = 5;
    mapPolygon.path = path;

Coordinates can also be added and removed at any time using the :ref:`addCoordinate <sdk_qtlocation_mappolygon_addCoordinate>` and :ref:`removeCoordinate <sdk_qtlocation_mappolygon_removeCoordinate>` methods.

For drawing rectangles with "straight" edges (same latitude across one edge, same latitude across the other), the :ref:`MapRectangle <sdk_qtlocation_maprectangle>` type provides a simpler, two-point API.

By default, the polygon is displayed as a 1 pixel black border with no fill. To change its appearance, use the :ref:`color <sdk_qtlocation_mappolygon_color>`, :ref:`border.color <sdk_qtlocation_mappolygon_border_color>` and :ref:`border.width <sdk_qtlocation_mappolygon_border_width>` properties.

**Note:** Since MapPolygons are geographic items, dragging a :ref:`MapPolygon <sdk_qtlocation_mappolygon>` (through the use of MouseArea) causes its vertices to be recalculated in the geographic coordinate space. The edges retain the same geographic lengths (latitude and longitude differences between the vertices), but they remain straight. Apparent stretching of the item occurs when dragged to a different latitude.

Performance
~~~~~~~~~~~

MapPolygons have a rendering cost that is O(n) with respect to the number of vertices. This means that the per frame cost of having a Polygon on the Map grows in direct proportion to the number of points on the Polygon. There is an additional triangulation cost (approximately O(n log n)) which is currently paid with each frame, but in future may be paid only upon adding or removing points.

Like the other map objects, :ref:`MapPolygon <sdk_qtlocation_mappolygon>` is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a :ref:`MapPolygon <sdk_qtlocation_mappolygon>` being used to display a triangle, with three vertices near Brisbane, Australia. The triangle is filled in green, with a 1 pixel black border.

.. code:: cpp

    Map {
        MapPolygon {
            color: 'green'
            path: [
                { latitude: -27, longitude: 153.0 },
                { latitude: -27, longitude: 154.1 },
                { latitude: -28, longitude: 153.5 }
            ]
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **border group**                                                                                                                                                                                                                                                                                             |
+==============================================================================================================================================================================================================================================================================================================+
| border.width : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| border.color : color                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property is part of the border property group. The border property group holds the width and color used to draw the border of the polygon.

The width is in pixels and is independent of the zoom level of the map.

The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.

.. _sdk_qtlocation_mappolygon_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the color used to fill the polygon.

The default value is transparent.

.. _sdk_qtlocation_mappolygon_path:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| path : list<coordinate>                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the ordered list of coordinates which define the polygon.

**See also** :ref:`addCoordinate <sdk_qtlocation_mappolygon_addCoordinate>` and :ref:`removeCoordinate <sdk_qtlocation_mappolygon_removeCoordinate>`.

Method Documentation
--------------------

.. _sdk_qtlocation_mappolygon_addCoordinate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addCoordinate(coordinate)                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adds a coordinate to the path.

**See also** :ref:`removeCoordinate <sdk_qtlocation_mappolygon_removeCoordinate>` and :ref:`path <sdk_qtlocation_mappolygon_path>`.

.. _sdk_qtlocation_mappolygon_removeCoordinate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeCoordinate(coordinate)                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes a coordinate from the path. If there are multiple instances of the same coordinate, the one added last is removed.

**See also** :ref:`addCoordinate <sdk_qtlocation_mappolygon_addCoordinate>` and :ref:`path <sdk_qtlocation_mappolygon_path>`.

