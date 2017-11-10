.. _sdk_qtlocation_maprectangle:

QtLocation MapRectangle
=======================

The MapRectangle type displays a rectangle on a Map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`border <sdk_qtlocation_maprectangle_border>`

   -  :ref:`border.width <sdk_qtlocation_maprectangle_border_width>` : int
   -  :ref:`border.color <sdk_qtlocation_maprectangle_border_color>` : color

-  :ref:`bottomRight <sdk_qtlocation_maprectangle_bottomRight>` : coordinate
-  :ref:`color <sdk_qtlocation_maprectangle_color>` : color
-  :ref:`opacity <sdk_qtlocation_maprectangle_opacity>` : real
-  :ref:`topLeft <sdk_qtlocation_maprectangle_topLeft>` : coordinate

Detailed Description
--------------------

The :ref:`MapRectangle <sdk_qtlocation_maprectangle>` type displays a rectangle on a Map. Rectangles are a special case of Polygon with exactly 4 vertices and 4 "straight" edges. In this case, "straight" means that the top-left point has the same latitude as the top-right point (the top edge), and the bottom-left point has the same latitude as the bottom-right point (the bottom edge). Similarly, the points on the left side have the same longitude, and the points on the right side have the same longitude.

To specify the rectangle, it requires a :ref:`topLeft <sdk_qtlocation_maprectangle_topLeft>` and :ref:`bottomRight <sdk_qtlocation_maprectangle_bottomRight>` point, both given by a coordinate.

By default, the rectangle is displayed with transparent fill and a 1-pixel thick black border. This can be changed using the :ref:`color <sdk_qtlocation_maprectangle_color>`, :ref:`border.color <sdk_qtlocation_maprectangle_border_color>` and :ref:`border.width <sdk_qtlocation_maprectangle_border_width>` properties.

**Note:** Similar to the :ref:`MapPolygon <sdk_qtlocation_mappolygon>` type, MapRectangles are geographic items, thus dragging a :ref:`MapRectangle <sdk_qtlocation_maprectangle>` causes its vertices to be recalculated in the geographic coordinate space. Apparent stretching of the item occurs when dragged to the a different latitude, however, its edges remain straight.

Performance
~~~~~~~~~~~

MapRectangles have a rendering cost identical to a :ref:`MapPolygon <sdk_qtlocation_mappolygon>` with 4 vertices.

Like the other map objects, :ref:`MapRectangle <sdk_qtlocation_maprectangle>` is normally drawn without a smooth appearance. Setting the :ref:`opacity <sdk_qtlocation_maprectangle_opacity>` property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a map containing a :ref:`MapRectangle <sdk_qtlocation_maprectangle>`, spanning from (-27, 153) to (-28, 153.5), near Brisbane, Australia. The rectangle is filled in green, with a 2 pixel black border.

.. code:: cpp

    Map {
        MapRectangle {
            color: 'green'
            border.width: 2
            topLeft {
                latitude: -27
                longitude: 153
            }
            bottomRight {
                latitude: -28
                longitude: 153.5
            }
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

This property is part of the border property group. The border property group holds the width and color used to draw the border of the rectangle. The width is in pixels and is independent of the zoom level of the map.

The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.

.. _sdk_qtlocation_maprectangle_bottomRight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bottomRight : coordinate                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the bottom-right coordinate of the :ref:`MapRectangle <sdk_qtlocation_maprectangle>` which can be used to retrieve its longitude, latitude and altitude.

.. _sdk_qtlocation_maprectangle_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the fill color of the rectangle. For no fill, use a transparent color.

.. _sdk_qtlocation_maprectangle_opacity:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| opacity : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the opacity of the item. Opacity is specified as a number between 0 (fully transparent) and 1 (fully opaque). The default is 1.

An item with 0 opacity will still receive mouse events. To stop mouse events, set the visible property of the item to false.

.. _sdk_qtlocation_maprectangle_topLeft:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| topLeft : coordinate                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the top-left coordinate of the :ref:`MapRectangle <sdk_qtlocation_maprectangle>` which can be used to retrieve its longitude, latitude and altitude.

