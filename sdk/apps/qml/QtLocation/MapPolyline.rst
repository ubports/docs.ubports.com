.. _sdk_qtlocation_mappolyline:

QtLocation MapPolyline
======================

The MapPolyline type displays a polyline on a map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`line <sdk_qtlocation_mappolyline_line>`

   -  :ref:`line.width <sdk_qtlocation_mappolyline_line_width>` : int
   -  :ref:`line.color <sdk_qtlocation_mappolyline_line_color>` : color

-  :ref:`path <sdk_qtlocation_mappolyline_path>` : list<coordinate>

Methods
-------

-  :ref:`addCoordinate <sdk_qtlocation_mappolyline_addCoordinate>`\ (coordinate)
-  :ref:`removeCoordinate <sdk_qtlocation_mappolyline_removeCoordinate>`\ (coordinate)

Detailed Description
--------------------

The :ref:`MapPolyline <sdk_qtlocation_mappolyline>` type displays a polyline on a map, specified in terms of an ordered list of coordinates. The coordinates on the path cannot be directly changed after being added to the Polyline. Instead, copy the :ref:`path <sdk_qtlocation_mappolyline_path>` into a var, modify the copy and reassign the copy back to the :ref:`path <sdk_qtlocation_mappolyline_path>`.

.. code:: cpp

    var path = mapPolyline.path;
    path[0].latitude = 5;
    mapPolyline.path = path;

Coordinates can also be added and removed at any time using the :ref:`addCoordinate <sdk_qtlocation_mappolyline_addCoordinate>` and :ref:`removeCoordinate <sdk_qtlocation_mappolyline_removeCoordinate>` methods.

By default, the polyline is displayed as a 1-pixel thick black line. This can be changed using the :ref:`line.width <sdk_qtlocation_mappolyline_line_width>` and :ref:`line.color <sdk_qtlocation_mappolyline_line_color>` properties.

Performance
~~~~~~~~~~~

MapPolylines have a rendering cost that is O(n) with respect to the number of vertices. This means that the per frame cost of having a polyline on the Map grows in direct proportion to the number of points in the polyline.

Like the other map objects, :ref:`MapPolyline <sdk_qtlocation_mappolyline>` is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

**Note:** MapPolylines are implemented using the OpenGL GL\_LINES primitive. There have been occasional reports of issues and rendering inconsistencies on some (particularly quite old) platforms. No workaround is yet available for these issues.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a :ref:`MapPolyline <sdk_qtlocation_mappolyline>` with 4 points, making a shape like the top part of a "question mark" (?), near Brisbane, Australia. The line drawn is 3 pixels in width and green in color.

.. code:: cpp

    Map {
        MapPolyline {
            line.width: 3
            line.color: 'green'
            path: [
                { latitude: -27, longitude: 153.0 },
                { latitude: -27, longitude: 154.1 },
                { latitude: -28, longitude: 153.5 },
                { latitude: -29, longitude: 153.5 }
            ]
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **line group**                                                                                                                                                                                                                                                                                               |
+==============================================================================================================================================================================================================================================================================================================+
| line.width : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| line.color : color                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property is part of the line property group. The line property group holds the width and color used to draw the line.

The width is in pixels and is independent of the zoom level of the map. The default values correspond to a black border with a width of 1 pixel.

For no line, use a width of 0 or a transparent color.

.. _sdk_qtlocation_mappolyline_path:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| path : list<coordinate>                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the ordered list of coordinates which define the polyline.

Method Documentation
--------------------

.. _sdk_qtlocation_mappolyline_addCoordinate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addCoordinate(coordinate)                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adds a coordinate to the path.

**See also** :ref:`removeCoordinate <sdk_qtlocation_mappolyline_removeCoordinate>` and :ref:`path <sdk_qtlocation_mappolyline_path>`.

.. _sdk_qtlocation_mappolyline_removeCoordinate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeCoordinate(coordinate)                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes a coordinate from the path. If there are multiple instances of the same coordinate, the one added last is removed.

**See also** :ref:`addCoordinate <sdk_qtlocation_mappolyline_addCoordinate>` and :ref:`path <sdk_qtlocation_mappolyline_path>`.

