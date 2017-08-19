QtLocation.MapQuickItem
=======================

.. raw:: html

   <p>

The MapQuickItem type displays an arbitrary Qt Quick object on a Map.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapQuickItem -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtLocation 5.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt Location 5.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

anchorPoint : QPointF

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

coordinate : coordinate

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceItem : object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

zoomLevel : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MapQuickItem-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The MapQuickItem will follow the panning (and optionally, the zooming)
of the Map as if it is on the Map surface.

.. raw:: html

   </p>

.. raw:: html

   <p>

The sourceItem property contains the Qt Quick item to be drawn, which
can be any kind of visible type.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Positioning and Sizing

.. raw:: html

   </h3>

.. raw:: html

   <p>

The positioning of the coordinate is set, it specifies a
longitude/latitude coordinate for the item to be placed at. The set
coordinate will line up with the top-left corner of the contained item
when shown on the screen.

.. raw:: html

   </p>

.. raw:: html

   <p>

The coordinate when displayed.

.. raw:: html

   </p>

.. raw:: html

   <p>

In addition to being anchored to the map, the zoomLevel is not set is
for the item to be drawn "on the screen" rather than "on the map", so
that its size remains the same regardless of the zoom level of the Map.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Performance

.. raw:: html

   </h3>

.. raw:: html

   <p>

Performance of a MapQuickItem is normally in the same ballpark as the
contained Qt Quick item alone. Overheads added amount to a translation
and (possibly) scaling of the original item, as well as a transformation
from longitude and latitude to screen position.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Limitations

.. raw:: html

   </h3>

.. raw:: html

   <p>

Note: Due to an implementation detail, items placed inside a
MapQuickItem by its id, and avoid the use of anchor in the sourceItem.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following snippet shows a MapQuickItem containing an Image object,
to display a Marker on the Map. This strategy is used to show the map
markers in the MapViewer example.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="#">MapQuickItem</a></span> {
   <span class="name">id</span>: <span class="name">marker</span>
   <span class="name">anchorPoint</span>.x: <span class="name">image</span>.<span class="name">width</span><span class="operator">/</span><span class="number">4</span>
   <span class="name">anchorPoint</span>.y: <span class="name">image</span>.<span class="name">height</span>
   <span class="name">sourceItem</span>: <span class="name">Image</span> {
   <span class="name">id</span>: <span class="name">image</span>
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapQuickItem -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$anchorPoint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="anchorPoint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchorPoint : QPointF

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property determines which point on the sourceItem that will be
lined up with the coordinate on the map.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@anchorPoint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="coordinate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

coordinate : anchorPoint is kept aligned with this coordinate when drawn
on the map.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the image below, there are 3 MapQuickItems that are identical except
for the value of their anchorPoint for each are written on top of the
item.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@coordinate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceItem-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceItem : object

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the source item that will be drawn on the map.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="zoomLevel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

zoomLevel : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property controls the scaling behaviour of the contents of the
MapQuickItem. In particular, by setting this property it is possible to
choose between objects that are drawn on the screen (and sized in screen
pixels), and those drawn on the map surface (which change size with the
zoom level of the map).

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value for this property is 0.0, which corresponds to drawing
the object on the screen surface. If set to another value, the object
will be drawn on the map surface instead. The value (if not zero)
specifies the zoomLevel at which the object will be visible at a scale
of 1:1 (ie, where object pixels and screen pixels are the same). At zoom
levels lower than this, the object will appear smaller, and at higher
zoom levels, appear larger. This is in contrast to when this property is
set to zero, where the object remains the same size on the screen at all
zoom levels.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@zoomLevel -->


