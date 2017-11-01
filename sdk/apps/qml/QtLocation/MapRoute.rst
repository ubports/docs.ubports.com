The MapRoute type displays a Route on a Map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`line </sdk/apps/qml/QtLocation/MapRoute#line-prop>`__****

   -  ****`line.width </sdk/apps/qml/QtLocation/MapRoute#line.width-prop>`__****
      : int
   -  ****`line.color </sdk/apps/qml/QtLocation/MapRoute#line.color-prop>`__****
      : color

-  ****`route </sdk/apps/qml/QtLocation/MapRoute#route-prop>`__**** :
   Route

Detailed Description
--------------------

The `MapRoute </sdk/apps/qml/QtLocation/MapRoute/>`__ type displays a
Route obtained through a
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__ or other means, on
the Map as a Polyline following the path of the Route.

`MapRoute </sdk/apps/qml/QtLocation/MapRoute/>`__ is really a
`MapPolyline </sdk/apps/qml/QtLocation/MapPolyline/>`__, but with the
path specified using the
`route </sdk/apps/qml/QtLocation/MapRoute#route-prop>`__ property
instead of directly in coordinates.

By default, the route is displayed as a 1-pixel thick black line. This
can be changed using the
`line.width </sdk/apps/qml/QtLocation/MapRoute#line.width-prop>`__ and
`line.color </sdk/apps/qml/QtLocation/MapRoute#line.color-prop>`__
properties.

Performance
~~~~~~~~~~~

For notes about the performance on
`MapRoute </sdk/apps/qml/QtLocation/MapRoute/>`__, refer to the
documentation for
`MapPolyline </sdk/apps/qml/QtLocation/MapPolyline/>`__.

Example Usage
~~~~~~~~~~~~~

Here is how to draw a `route </sdk/apps/qml/QtLocation/Route/>`__ on a
`map </sdk/apps/qml/QtLocation/Map/>`__:

.. code:: qml

    import QtQuick 2.0
    import QtLocation 5.3
    Map {
        RouteModel {
            id: routeModel
        }
        MapItemView {
            model: routeModel
            delegate: routeDelegate
        }
        Component {
            id: routeDelegate
            MapRoute {
                route: routeData
                line.color: "blue"
                line.width: 5
                smooth: true
                opacity: 0.8
            }
        }
    }

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
|        \ route : `Route </sdk/apps/qml/QtLocation/Route/>`__             |
+--------------------------------------------------------------------------+

This property holds the route to be drawn which can be used to represent
one geographical route.

| 
