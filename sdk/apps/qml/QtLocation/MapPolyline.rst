The MapPolyline type displays a polyline on a map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`line </sdk/apps/qml/QtLocation/MapPolyline#line-prop>`__****

   -  ****`line.width </sdk/apps/qml/QtLocation/MapPolyline#line.width-prop>`__****
      : int
   -  ****`line.color </sdk/apps/qml/QtLocation/MapPolyline#line.color-prop>`__****
      : color

-  ****`path </sdk/apps/qml/QtLocation/MapPolyline#path-prop>`__**** :
   list<coordinate>

Methods
-------

-  ****`addCoordinate </sdk/apps/qml/QtLocation/MapPolyline#addCoordinate-method>`__****\ (coordinate)
-  ****`removeCoordinate </sdk/apps/qml/QtLocation/MapPolyline#removeCoordinate-method>`__****\ (coordinate)

Detailed Description
--------------------

The `MapPolyline </sdk/apps/qml/QtLocation/MapPolyline/>`__ type
displays a polyline on a map, specified in terms of an ordered list of
coordinates. The coordinates on the path cannot be directly changed
after being added to the Polyline. Instead, copy the
`path </sdk/apps/qml/QtLocation/MapPolyline#path-prop>`__ into a var,
modify the copy and reassign the copy back to the
`path </sdk/apps/qml/QtLocation/MapPolyline#path-prop>`__.

.. code:: cpp

    var path = mapPolyline.path;
    path[0].latitude = 5;
    mapPolyline.path = path;

Coordinates can also be added and removed at any time using the
`addCoordinate </sdk/apps/qml/QtLocation/MapPolyline#addCoordinate-method>`__
and
`removeCoordinate </sdk/apps/qml/QtLocation/MapPolyline#removeCoordinate-method>`__
methods.

By default, the polyline is displayed as a 1-pixel thick black line.
This can be changed using the
`line.width </sdk/apps/qml/QtLocation/MapPolyline#line.width-prop>`__
and
`line.color </sdk/apps/qml/QtLocation/MapPolyline#line.color-prop>`__
properties.

Performance
~~~~~~~~~~~

MapPolylines have a rendering cost that is O(n) with respect to the
number of vertices. This means that the per frame cost of having a
polyline on the Map grows in direct proportion to the number of points
in the polyline.

Like the other map objects,
`MapPolyline </sdk/apps/qml/QtLocation/MapPolyline/>`__ is normally
drawn without a smooth appearance. Setting the opacity property will
force the object to be blended, which decreases performance considerably
depending on the hardware in use.

**Note:** MapPolylines are implemented using the OpenGL GL\_LINES
primitive. There have been occasional reports of issues and rendering
inconsistencies on some (particularly quite old) platforms. No
workaround is yet available for these issues.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a
`MapPolyline </sdk/apps/qml/QtLocation/MapPolyline/>`__ with 4 points,
making a shape like the top part of a "question mark" (?), near
Brisbane, Australia. The line drawn is 3 pixels in width and green in
color.

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

|image0|

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ **line group**                                                  |
+==========================================================================+
|        \ line.width : int                                                |
+--------------------------------------------------------------------------+
|        \ line.color : color                                              |
+--------------------------------------------------------------------------+

This property is part of the line property group. The line property
group holds the width and color used to draw the line.

The width is in pixels and is independent of the zoom level of the map.
The default values correspond to a black border with a width of 1 pixel.

For no line, use a width of 0 or a transparent color.

| 

+--------------------------------------------------------------------------+
|        \ path : list<coordinate>                                         |
+--------------------------------------------------------------------------+

This property holds the ordered list of coordinates which define the
polyline.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ addCoordinate(coordinate)                                       |
+--------------------------------------------------------------------------+

Adds a coordinate to the path.

**See also**
`removeCoordinate </sdk/apps/qml/QtLocation/MapPolyline#removeCoordinate-method>`__
and `path </sdk/apps/qml/QtLocation/MapPolyline#path-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ removeCoordinate(coordinate)                                    |
+--------------------------------------------------------------------------+

Removes a coordinate from the path. If there are multiple instances of
the same coordinate, the one added last is removed.

**See also**
`addCoordinate </sdk/apps/qml/QtLocation/MapPolyline#addCoordinate-method>`__
and `path </sdk/apps/qml/QtLocation/MapPolyline#path-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtLocation/MapPolyline/images/sdk-mappolyline.png

