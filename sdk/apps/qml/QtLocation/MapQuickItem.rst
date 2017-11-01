The MapQuickItem type displays an arbitrary Qt Quick object on a Map.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`anchorPoint </sdk/apps/qml/QtLocation/MapQuickItem#anchorPoint-prop>`__****
   : QPointF
-  ****`coordinate </sdk/apps/qml/QtLocation/MapQuickItem#coordinate-prop>`__****
   : coordinate
-  ****`sourceItem </sdk/apps/qml/QtLocation/MapQuickItem#sourceItem-prop>`__****
   : object
-  ****`zoomLevel </sdk/apps/qml/QtLocation/MapQuickItem#zoomLevel-prop>`__****
   : real

Detailed Description
--------------------

The `MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ type is
used to place an arbitrary Qt Quick object on a Map at a specified
location and size. Compared to floating an item above the Map, a
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ will follow
the panning (and optionally, the zooming) of the Map as if it is on the
Map surface.

The
`sourceItem </sdk/apps/qml/QtLocation/MapQuickItem#sourceItem-prop>`__
property contains the Qt Quick item to be drawn, which can be any kind
of visible type.

Positioning and Sizing
~~~~~~~~~~~~~~~~~~~~~~

The positioning of the
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ on the Map is
controlled by two properties:
`coordinate </sdk/apps/qml/QtLocation/MapQuickItem#coordinate-prop>`__
and
`anchorPoint </sdk/apps/qml/QtLocation/MapQuickItem#anchorPoint-prop>`__.
If only
`coordinate </sdk/apps/qml/QtLocation/MapQuickItem#coordinate-prop>`__
is set, it specifies a longitude/latitude coordinate for the item to be
placed at. The set coordinate will line up with the top-left corner of
the contained item when shown on the screen.

The
`anchorPoint </sdk/apps/qml/QtLocation/MapQuickItem#anchorPoint-prop>`__
property provides a way to line up the coordinate with other parts of
the item than just the top-left corner, by setting a number of pixels
the item will be offset by. A simple way to think about it is to note
that the point given by
`anchorPoint </sdk/apps/qml/QtLocation/MapQuickItem#anchorPoint-prop>`__
on the item itself is the point that will line up with the given
`coordinate </sdk/apps/qml/QtLocation/MapQuickItem#coordinate-prop>`__
when displayed.

In addition to being anchored to the map, the
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ can optionally
follow the scale of the map, and change size when the Map is zoomed in
or zoomed out. This behaviour is controlled by the
`zoomLevel </sdk/apps/qml/QtLocation/MapQuickItem#zoomLevel-prop>`__
property. The default behaviour if
`zoomLevel </sdk/apps/qml/QtLocation/MapQuickItem#zoomLevel-prop>`__ is
not set is for the item to be drawn "on the screen" rather than "on the
map", so that its size remains the same regardless of the zoom level of
the Map.

Performance
~~~~~~~~~~~

Performance of a
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ is normally in
the same ballpark as the contained Qt Quick item alone. Overheads added
amount to a translation and (possibly) scaling of the original item, as
well as a transformation from longitude and latitude to screen position.

Limitations
~~~~~~~~~~~

**Note:** Due to an implementation detail, items placed inside a
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ will have a
``parent`` item which is not the
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__. Refer to the
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ by its ``id``,
and avoid the use of ``anchor`` in the ``sourceItem``.

Example Usage
~~~~~~~~~~~~~

The following snippet shows a
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__ containing an
Image object, to display a Marker on the Map. This strategy is used to
show the map markers in the MapViewer example.

.. code:: qml

    MapQuickItem {
        id: marker
        anchorPoint.x: image.width/4
        anchorPoint.y: image.height
        sourceItem: Image {
            id: image
        }
    }

|image0|

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ anchorPoint : QPointF                                           |
+--------------------------------------------------------------------------+

This property determines which point on the sourceItem that will be
lined up with the coordinate on the map.

| 

+--------------------------------------------------------------------------+
|        \ coordinate :                                                    |
| `coordinate </sdk/apps/qml/QtLocation/MapQuickItem#coordinate-prop>`__   |
+--------------------------------------------------------------------------+

This property holds the anchor coordinate of the
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__. The point on
the
`sourceItem </sdk/apps/qml/QtLocation/MapQuickItem#sourceItem-prop>`__
that is specified by
`anchorPoint </sdk/apps/qml/QtLocation/MapQuickItem#anchorPoint-prop>`__
is kept aligned with this coordinate when drawn on the map.

In the image below, there are 3 MapQuickItems that are identical except
for the value of their
`anchorPoint </sdk/apps/qml/QtLocation/MapQuickItem#anchorPoint-prop>`__
properties. The values of
`anchorPoint </sdk/apps/qml/QtLocation/MapQuickItem#anchorPoint-prop>`__
for each are written on top of the item.

|image1|

| 

+--------------------------------------------------------------------------+
|        \ sourceItem : object                                             |
+--------------------------------------------------------------------------+

This property holds the source item that will be drawn on the map.

| 

+--------------------------------------------------------------------------+
|        \ zoomLevel : real                                                |
+--------------------------------------------------------------------------+

This property controls the scaling behaviour of the contents of the
`MapQuickItem </sdk/apps/qml/QtLocation/MapQuickItem/>`__. In
particular, by setting this property it is possible to choose between
objects that are drawn on the screen (and sized in screen pixels), and
those drawn on the map surface (which change size with the zoom level of
the map).

The default value for this property is 0.0, which corresponds to drawing
the object on the screen surface. If set to another value, the object
will be drawn on the map surface instead. The value (if not zero)
specifies the zoomLevel at which the object will be visible at a scale
of 1:1 (ie, where object pixels and screen pixels are the same). At zoom
levels lower than this, the object will appear smaller, and at higher
zoom levels, appear larger. This is in contrast to when this property is
set to zero, where the object remains the same size on the screen at all
zoom levels.

| 

.. |image0| image:: /media/sdk/apps/qml/QtLocation/MapQuickItem/images/sdk-mapquickitem.png
.. |image1| image:: /media/sdk/apps/qml/QtLocation/MapQuickItem/images/sdk-mapquickitem-anchor.png

