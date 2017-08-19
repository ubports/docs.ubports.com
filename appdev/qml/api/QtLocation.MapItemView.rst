QtLocation.MapItemView
======================

.. raw:: html

   <p>

The MapItemView is used to populate Map from a model. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@MapItemView -->

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

autoFitViewport : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : model

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$MapItemView-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The MapItemView type only makes sense when contained in a Map, meaning
that it has no standalone presentation.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

This example demonstrates how to use the MapViewItem object to display a
route on a map:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtLocation 5.3
   <span class="type"><a href="QtLocation.Map.md">Map</a></span> {
   <span class="type"><a href="QtLocation.RouteModel.md">RouteModel</a></span> {
   <span class="name">id</span>: <span class="name">routeModel</span>
   }
   <span class="type"><a href="#">MapItemView</a></span> {
   <span class="name">model</span>: <span class="name">routeModel</span>
   <span class="name">delegate</span>: <span class="name">routeDelegate</span>
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">routeDelegate</span>
   <span class="type"><a href="QtLocation.MapRoute.md">MapRoute</a></span> {
   <span class="name">route</span>: <span class="name">routeData</span>
   <span class="name">line</span>.color: <span class="string">&quot;blue&quot;</span>
   <span class="name">line</span>.width: <span class="number">5</span>
   <span class="name">smooth</span>: <span class="number">true</span>
   <span class="name">opacity</span>: <span class="number">0.8</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@MapItemView -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$autoFitViewport -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoFitViewport-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoFitViewport : Component

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

This property controls whether to automatically pan and zoom the
viewport to display all map items when items are added or removed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoFitViewport -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

delegate : Component

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

This property holds the delegate which defines how each item in the
model should be displayed. The Component must contain exactly one
MapItem -derived object as the root object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="model-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

model : model

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

This property holds the model that provides data used for creating the
map items defined by the delegate. Only QAbstractItemModel based models
are supported.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@model -->


