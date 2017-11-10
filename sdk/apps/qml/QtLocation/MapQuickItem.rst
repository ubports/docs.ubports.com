.. _sdk_qtlocation_mapquickitem:

QtLocation MapQuickItem
=======================

The MapQuickItem type displays an arbitrary Qt Quick object on a Map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`anchorPoint <sdk_qtlocation_mapquickitem_anchorPoint>` : QPointF
-  :ref:`coordinate <sdk_qtlocation_mapquickitem_coordinate>` : coordinate
-  :ref:`sourceItem <sdk_qtlocation_mapquickitem_sourceItem>` : object
-  :ref:`zoomLevel <sdk_qtlocation_mapquickitem_zoomLevel>` : real

Detailed Description
--------------------

The :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` type is used to place an arbitrary Qt Quick object on a Map at a specified location and size. Compared to floating an item above the Map, a :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` will follow the panning (and optionally, the zooming) of the Map as if it is on the Map surface.

The :ref:`sourceItem <sdk_qtlocation_mapquickitem_sourceItem>` property contains the Qt Quick item to be drawn, which can be any kind of visible type.

Positioning and Sizing
~~~~~~~~~~~~~~~~~~~~~~

The positioning of the :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` on the Map is controlled by two properties: :ref:`coordinate <sdk_qtlocation_mapquickitem_coordinate>` and :ref:`anchorPoint <sdk_qtlocation_mapquickitem_anchorPoint>`. If only :ref:`coordinate <sdk_qtlocation_mapquickitem_coordinate>` is set, it specifies a longitude/latitude coordinate for the item to be placed at. The set coordinate will line up with the top-left corner of the contained item when shown on the screen.

The :ref:`anchorPoint <sdk_qtlocation_mapquickitem_anchorPoint>` property provides a way to line up the coordinate with other parts of the item than just the top-left corner, by setting a number of pixels the item will be offset by. A simple way to think about it is to note that the point given by :ref:`anchorPoint <sdk_qtlocation_mapquickitem_anchorPoint>` on the item itself is the point that will line up with the given :ref:`coordinate <sdk_qtlocation_mapquickitem_coordinate>` when displayed.

In addition to being anchored to the map, the :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` can optionally follow the scale of the map, and change size when the Map is zoomed in or zoomed out. This behaviour is controlled by the :ref:`zoomLevel <sdk_qtlocation_mapquickitem_zoomLevel>` property. The default behaviour if :ref:`zoomLevel <sdk_qtlocation_mapquickitem_zoomLevel>` is not set is for the item to be drawn "on the screen" rather than "on the map", so that its size remains the same regardless of the zoom level of the Map.

Performance
~~~~~~~~~~~

Performance of a :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` is normally in the same ballpark as the contained Qt Quick item alone. Overheads added amount to a translation and (possibly) scaling of the original item, as well as a transformation from longitude and latitude to screen position.

Limitations
~~~~~~~~~~~

**Note:** Due to an implementation detail, items placed inside a :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` will have a ``parent`` item which is not the :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>`. Refer to the :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` by its ``id``, and avoid the use of ``anchor`` in the ``sourceItem``.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>` containing an Image object, to display a Marker on the Map. This strategy is used to show the map markers in the MapViewer example.

.. code:: qml

    MapQuickItem {
        id: marker
        anchorPoint.x: image.width/4
        anchorPoint.y: image.height
        sourceItem: Image {
            id: image
        }
    }

Property Documentation
----------------------

.. _sdk_qtlocation_mapquickitem_anchorPoint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchorPoint : QPointF                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property determines which point on the sourceItem that will be lined up with the coordinate on the map.

.. _sdk_qtlocation_mapquickitem_coordinate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| coordinate : :ref:`coordinate <sdk_qtlocation_mapquickitem_coordinate>`                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the anchor coordinate of the :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>`. The point on the :ref:`sourceItem <sdk_qtlocation_mapquickitem_sourceItem>` that is specified by :ref:`anchorPoint <sdk_qtlocation_mapquickitem_anchorPoint>` is kept aligned with this coordinate when drawn on the map.

In the image below, there are 3 MapQuickItems that are identical except for the value of their :ref:`anchorPoint <sdk_qtlocation_mapquickitem_anchorPoint>` properties. The values of :ref:`anchorPoint <sdk_qtlocation_mapquickitem_anchorPoint>` for each are written on top of the item.

.. _sdk_qtlocation_mapquickitem_sourceItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sourceItem : object                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the source item that will be drawn on the map.

.. _sdk_qtlocation_mapquickitem_zoomLevel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| zoomLevel : real                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property controls the scaling behaviour of the contents of the :ref:`MapQuickItem <sdk_qtlocation_mapquickitem>`. In particular, by setting this property it is possible to choose between objects that are drawn on the screen (and sized in screen pixels), and those drawn on the map surface (which change size with the zoom level of the map).

The default value for this property is 0.0, which corresponds to drawing the object on the screen surface. If set to another value, the object will be drawn on the map surface instead. The value (if not zero) specifies the zoomLevel at which the object will be visible at a scale of 1:1 (ie, where object pixels and screen pixels are the same). At zoom levels lower than this, the object will appear smaller, and at higher zoom levels, appear larger. This is in contrast to when this property is set to zero, where the object remains the same size on the screen at all zoom levels.

