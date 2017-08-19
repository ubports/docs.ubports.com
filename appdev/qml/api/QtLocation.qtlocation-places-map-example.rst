QtLocation.qtlocation-places-map-example
========================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

To write a QML application that will show places on a map, we start by
making the following import declarations.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3</pre>

.. raw:: html

   <p>

Instantiate a Plugin instance. The Plugin is effectively the backend
from where places are sourced from. Because the nokia plugin has been
specified, some mandatory parameters need to be filled in, see the Nokia
Plugin documentation for details:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span> {
   <span class="name">id</span>: <span class="name">myPlugin</span>
   <span class="name">name</span>: <span class="string">&quot;nokia&quot;</span>
   <span class="comment">//specify plugin parameters if necessary</span>
   <span class="comment">//PluginParameter {...}</span>
   <span class="comment">//PluginParameter {...}</span>
   <span class="comment">//...</span>
   }</pre>

.. raw:: html

   <p>

Next we instantiate a PlaceSearchModel which we can use to specify
search parameters and perform a places search operation. For
illustrative purposes, update() is invoked once construction of the
model is complete. Typically update() would be invoked in response to a
user action such as a button click.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a></span> {
   <span class="name">id</span>: <span class="name">searchModel</span>
   <span class="name">plugin</span>: <span class="name">myPlugin</span>
   <span class="name">searchTerm</span>: <span class="string">&quot;Pizza&quot;</span>
   <span class="comment">//Brisbane</span>
   <span class="name">searchArea</span>: <span class="name">QtPositioning</span>.<span class="name">circle</span>(<span class="name">QtPositioning</span>.<span class="name">coordinate</span>(-<span class="number">27.46778</span>, <span class="number">153.02778</span>))
   <span class="name">Component</span>.onCompleted: <span class="name">update</span>()
   }</pre>

.. raw:: html

   <p>

The map is displayed by using the Map type and inside we declare the
MapItemView and supply the search model and a delegate. An inline
delegate has been used and we have assumed that every search result is
of type PlaceSerachesult. Consequently it is assumed that we always have
access to the place role, other search result types may not have a place
role.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtLocation.Map.md">Map</a></span> {
   <span class="name">id</span>: <span class="name">map</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">plugin</span>: <span class="name">myPlugin</span>;
   <span class="type">center</span> {
   <span class="name">latitude</span>: -<span class="number">27.47</span>
   <span class="name">longitude</span>: <span class="number">153.025</span>
   }
   <span class="name">zoomLevel</span>: <span class="number">13</span>
   <span class="type"><a href="QtLocation.MapItemView.md">MapItemView</a></span> {
   <span class="name">model</span>: <span class="name">searchModel</span>
   <span class="name">delegate</span>: <span class="name">MapQuickItem</span> {
   <span class="name">coordinate</span>: <span class="name">place</span>.<span class="name">location</span>.<span class="name">coordinate</span>
   <span class="name">anchorPoint</span>.x: <span class="name">image</span>.<span class="name">width</span> <span class="operator">*</span> <span class="number">0.5</span>
   <span class="name">anchorPoint</span>.y: <span class="name">image</span>.<span class="name">height</span>
   <span class="name">sourceItem</span>: <span class="name">Image</span> {
   <span class="name">id</span>: <span class="name">image</span>
   <span class="name">source</span>: <span class="string">&quot;marker.png&quot;</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

places\_map/places\_map.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places\_map/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

places\_map/places\_map.pro

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@places_map -->
