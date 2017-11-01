The MapRectangle type displays a rectangle on a Map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`border </sdk/apps/qml/QtLocation/MapRectangle#border-prop>`__****

   -  ****`border.width </sdk/apps/qml/QtLocation/MapRectangle#border.width-prop>`__****
      : int
   -  ****`border.color </sdk/apps/qml/QtLocation/MapRectangle#border.color-prop>`__****
      : color

-  ****`bottomRight </sdk/apps/qml/QtLocation/MapRectangle#bottomRight-prop>`__****
   : coordinate
-  ****`color </sdk/apps/qml/QtLocation/MapRectangle#color-prop>`__****
   : color
-  ****`opacity </sdk/apps/qml/QtLocation/MapRectangle#opacity-prop>`__****
   : real
-  ****`topLeft </sdk/apps/qml/QtLocation/MapRectangle#topLeft-prop>`__****
   : coordinate

Detailed Description
--------------------

The `MapRectangle </sdk/apps/qml/QtLocation/MapRectangle/>`__ type
displays a rectangle on a Map. Rectangles are a special case of Polygon
with exactly 4 vertices and 4 "straight" edges. In this case, "straight"
means that the top-left point has the same latitude as the top-right
point (the top edge), and the bottom-left point has the same latitude as
the bottom-right point (the bottom edge). Similarly, the points on the
left side have the same longitude, and the points on the right side have
the same longitude.

To specify the rectangle, it requires a
`topLeft </sdk/apps/qml/QtLocation/MapRectangle#topLeft-prop>`__ and
`bottomRight </sdk/apps/qml/QtLocation/MapRectangle#bottomRight-prop>`__
point, both given by a coordinate.

By default, the rectangle is displayed with transparent fill and a
1-pixel thick black border. This can be changed using the
`color </sdk/apps/qml/QtLocation/MapRectangle#color-prop>`__,
`border.color </sdk/apps/qml/QtLocation/MapRectangle#border.color-prop>`__
and
`border.width </sdk/apps/qml/QtLocation/MapRectangle#border.width-prop>`__
properties.

**Note:** Similar to the
`MapPolygon </sdk/apps/qml/QtLocation/MapPolygon/>`__ type,
MapRectangles are geographic items, thus dragging a
`MapRectangle </sdk/apps/qml/QtLocation/MapRectangle/>`__ causes its
vertices to be recalculated in the geographic coordinate space. Apparent
stretching of the item occurs when dragged to the a different latitude,
however, its edges remain straight.

Performance
~~~~~~~~~~~

MapRectangles have a rendering cost identical to a
`MapPolygon </sdk/apps/qml/QtLocation/MapPolygon/>`__ with 4 vertices.

Like the other map objects,
`MapRectangle </sdk/apps/qml/QtLocation/MapRectangle/>`__ is normally
drawn without a smooth appearance. Setting the
`opacity </sdk/apps/qml/QtLocation/MapRectangle#opacity-prop>`__
property will force the object to be blended, which decreases
performance considerably depending on the hardware in use.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a map containing a
`MapRectangle </sdk/apps/qml/QtLocation/MapRectangle/>`__, spanning from
(-27, 153) to (-28, 153.5), near Brisbane, Australia. The rectangle is
filled in green, with a 2 pixel black border.

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

|image0|

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ **border group**                                                |
+==========================================================================+
|        \ border.width : int                                              |
+--------------------------------------------------------------------------+
|        \ border.color : color                                            |
+--------------------------------------------------------------------------+

This property is part of the border property group. The border property
group holds the width and color used to draw the border of the
rectangle. The width is in pixels and is independent of the zoom level
of the map.

The default values correspond to a black border with a width of 1 pixel.
For no line, use a width of 0 or a transparent color.

| 

+--------------------------------------------------------------------------+
|        \ bottomRight : coordinate                                        |
+--------------------------------------------------------------------------+

This property holds the bottom-right coordinate of the
`MapRectangle </sdk/apps/qml/QtLocation/MapRectangle/>`__ which can be
used to retrieve its longitude, latitude and altitude.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

This property holds the fill color of the rectangle. For no fill, use a
transparent color.

| 

+--------------------------------------------------------------------------+
|        \ opacity : real                                                  |
+--------------------------------------------------------------------------+

This property holds the opacity of the item. Opacity is specified as a
number between 0 (fully transparent) and 1 (fully opaque). The default
is 1.

An item with 0 opacity will still receive mouse events. To stop mouse
events, set the visible property of the item to false.

| 

+--------------------------------------------------------------------------+
|        \ topLeft : coordinate                                            |
+--------------------------------------------------------------------------+

This property holds the top-left coordinate of the
`MapRectangle </sdk/apps/qml/QtLocation/MapRectangle/>`__ which can be
used to retrieve its longitude, latitude and altitude.

| 

.. |image0| image:: /media/sdk/apps/qml/QtLocation/MapRectangle/images/sdk-maprectangle.png

