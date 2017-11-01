The MapCircle type displays a geographic circle on a Map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`border </sdk/apps/qml/QtLocation/MapCircle#border-prop>`__****

   -  ****`border.width </sdk/apps/qml/QtLocation/MapCircle#border.width-prop>`__****
      : int
   -  ****`border.color </sdk/apps/qml/QtLocation/MapCircle#border.color-prop>`__****
      : color

-  ****`center </sdk/apps/qml/QtLocation/MapCircle#center-prop>`__**** :
   coordinate
-  ****`color </sdk/apps/qml/QtLocation/MapCircle#color-prop>`__**** :
   color
-  ****`opacity </sdk/apps/qml/QtLocation/MapCircle#opacity-prop>`__****
   : real
-  ****`radius </sdk/apps/qml/QtLocation/MapCircle#radius-prop>`__**** :
   real

Detailed Description
--------------------

The `MapCircle </sdk/apps/qml/QtLocation/MapCircle/>`__ type displays a
geographic circle on a Map, which consists of all points that are within
a set distance from one central point. Depending on map projection, a
geographic circle may not always be a perfect circle on the screen: for
instance, in the Mercator projection, circles become ovoid in shape as
they near the poles. To display a perfect screen circle around a point,
use a `MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__
containing a relevant Qt Quick type instead.

By default, the circle is displayed as a 1 pixel black border with no
fill. To change its appearance, use the color, border.color and
border.width properties.

Internally, a `MapCircle </sdk/apps/qml/QtLocation/MapCircle/>`__ is
implemented as a many-sided polygon. To calculate the radius points it
uses a spherical model of the Earth, similar to the atDistanceAndAzimuth
method of the coordinate type. These two things can occasionally have
implications for the accuracy of the circle's shape, depending on
position and map projection.

**Note:** Dragging a `MapCircle </sdk/apps/qml/QtLocation/MapCircle/>`__
(through the use of MouseArea) causes new points to be generated at the
same distance (in meters) from the center. This is in contrast to other
map items which store their dimensions in terms of latitude and
longitude differences between vertices.

Performance
~~~~~~~~~~~

`MapCircle </sdk/apps/qml/QtLocation/MapCircle/>`__ performance is
almost equivalent to that of a
`MapPolygon </sdk/apps/qml/QtLocation/MapPolygon/>`__ with 125 vertices.
There is a small amount of additional overhead with respect to
calculating the vertices first.

Like the other map objects,
`MapCircle </sdk/apps/qml/QtLocation/MapCircle/>`__ is normally drawn
without a smooth appearance. Setting the opacity property will force the
object to be blended, which decreases performance considerably depending
on the graphics hardware in use.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a map containing a
`MapCircle </sdk/apps/qml/QtLocation/MapCircle/>`__, centered at the
coordinate (-27, 153) with a radius of 5km. The circle is filled in
green, with a 3 pixel black border.

.. code:: cpp

    Map {
        MapCircle {
            center {
                latitude: -27.5
                longitude: 153.0
            }
            radius: 5000.0
            color: 'green'
            border.width: 3
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

This property is part of the border group property. The border property
holds the width and color used to draw the border of the circle. The
width is in pixels and is independent of the zoom level of the map.

The default values correspond to a black border with a width of 1 pixel.
For no line, use a width of 0 or a transparent color.

| 

+--------------------------------------------------------------------------+
|        \ center : coordinate                                             |
+--------------------------------------------------------------------------+

This property holds the central point about which the circle is defined.

**See also**
`radius </sdk/apps/qml/QtLocation/MapCircle#radius-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

This property holds the fill color of the circle when drawn. For no
fill, use a transparent color.

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
|        \ radius : real                                                   |
+--------------------------------------------------------------------------+

This property holds the radius of the circle, in meters on the ground.

**See also**
`center </sdk/apps/qml/QtLocation/MapCircle#center-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtLocation/MapCircle/images/sdk-mapcircle.png

