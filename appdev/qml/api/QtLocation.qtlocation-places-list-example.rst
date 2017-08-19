QtLocation.qtlocation-places-list-example
=========================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

To write a QML application that will show places in a list, we start by
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
   <span class="comment">//specify plugin parameters as necessary</span>
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
   <span class="name">searchTerm</span>: <span class="string">&quot;pizza&quot;</span>
   <span class="name">searchArea</span>: <span class="name">QtPositioning</span>.<span class="name">circle</span>(<span class="name">startCoordinate</span>);
   <span class="name">Component</span>.onCompleted: <span class="name">update</span>()
   }</pre>

.. raw:: html

   <p>

Finally we instantiate a ListView to show the search results found by
the model. An inline delegate has been used and we have assumed that
every search result is of type PlaceSearchesult. Consequently it is
assumed that we always have access to the place role, other search
result types may not have a place role.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">searchModel</span>
   <span class="name">delegate</span>: <span class="name">Component</span> {
   <span class="type">Column</span> {
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">title</span> }
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">place</span>.<span class="name">location</span>.<span class="name">address</span>.<span class="name">text</span> }
   }
   }
   <span class="name">spacing</span>: <span class="number">10</span>
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

places\_list/places\_list.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

places\_list/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

places\_list/places\_list.pro

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@places_list -->
