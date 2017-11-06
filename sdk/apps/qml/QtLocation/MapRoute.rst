.. _sdk_qtlocation_maproute:

QtLocation MapRoute
===================

The MapRoute type displays a Route on a Map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`line <sdk_qtlocation_maproute_line>`

   -  :ref:`line.width <sdk_qtlocation_maproute_line_width>` : int
   -  :ref:`line.color <sdk_qtlocation_maproute_line_color>` : color

-  :ref:`route <sdk_qtlocation_maproute_route>` : Route

Detailed Description
--------------------

The :ref:`MapRoute <sdk_qtlocation_maproute>` type displays a Route obtained through a :ref:`RouteModel <sdk_qtlocation_routemodel>` or other means, on the Map as a Polyline following the path of the Route.

:ref:`MapRoute <sdk_qtlocation_maproute>` is really a :ref:`MapPolyline <sdk_qtlocation_mappolyline>`, but with the path specified using the :ref:`route <sdk_qtlocation_maproute_route>` property instead of directly in coordinates.

By default, the route is displayed as a 1-pixel thick black line. This can be changed using the :ref:`line.width <sdk_qtlocation_maproute_line_width>` and :ref:`line.color <sdk_qtlocation_maproute_line_color>` properties.

Performance
~~~~~~~~~~~

For notes about the performance on :ref:`MapRoute <sdk_qtlocation_maproute>`, refer to the documentation for :ref:`MapPolyline <sdk_qtlocation_mappolyline>`.

Example Usage
~~~~~~~~~~~~~

Here is how to draw a :ref:`route <sdk_qtlocation_route>` on a :ref:`map <sdk_qtlocation_map>`:

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

.. _sdk_qtlocation_maproute_route:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| route : :ref:`Route <sdk_qtlocation_route>`                                                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the route to be drawn which can be used to represent one geographical route.

