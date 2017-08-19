QtQuick.qtquick-draganddrop-example
===================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Drag and Drop is a collection of small QML examples relating to drag and
drop functionality. For more information, visit the Drag and Drop page.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

To run the example from Qt Creator, open the Welcome mode and select the
example from Examples. For more information, visit Building and Running
an Example.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="tiles">

Tiles

.. raw:: html

   </h2>

.. raw:: html

   <p>

Tiles adds drag and drop to simple rectangles, which you can drag into a
specific grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

It has a DragTile component which uses a MouseArea to move an item when
dragged:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   property <span class="type">string</span> <span class="name">colorKey</span>
   <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">drag</span>.target: <span class="name">tile</span>
   <span class="name">onReleased</span>: <span class="name">parent</span> <span class="operator">=</span> <span class="name">tile</span>.<span class="name">Drag</span>.<span class="name">target</span> <span class="operator">!==</span> <span class="number">null</span> ? <span class="name">tile</span>.<span class="name">Drag</span>.<span class="name">target</span> : <span class="name">root</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">tile</span>
   <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">color</span>: <span class="name">colorKey</span>
   <span class="name">Drag</span>.keys: [ <span class="name">colorKey</span> ]
   <span class="name">Drag</span>.active: <span class="name">mouseArea</span>.<span class="name">drag</span>.<span class="name">active</span>
   <span class="name">Drag</span>.hotSpot.x: <span class="number">32</span>
   <span class="name">Drag</span>.hotSpot.y: <span class="number">32</span>
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">drag</span>.<span class="name">active</span>
   <span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> { <span class="name">target</span>: <span class="name">tile</span>; <span class="name">parent</span>: <span class="name">root</span> }
   <span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> { <span class="name">target</span>: <span class="name">tile</span>; <span class="name">anchors</span>.verticalCenter: <span class="name">undefined</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">undefined</span> }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

And a DropTile component which the dragged tiles can be dropped onto:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.DropArea.md">DropArea</a></span> {
   <span class="name">id</span>: <span class="name">dragTarget</span>
   property <span class="type">string</span> <span class="name">colorKey</span>
   property <span class="type">alias</span> <span class="name">dropProxy</span>: <span class="name">dragTarget</span>
   <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
   <span class="name">keys</span>: [ <span class="name">colorKey</span> ]
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">dropRectangle</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="name">colorKey</span>
   <span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">when</span>: <span class="name">dragTarget</span>.<span class="name">containsDrag</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
   <span class="name">target</span>: <span class="name">dropRectangle</span>
   <span class="name">color</span>: <span class="string">&quot;grey&quot;</span>
   }
   }
   ]
   }
   }</pre>

.. raw:: html

   <p>

The keys property of the DropArea will only allow an item with a
matching key in its Drag.keys property to be dropped on it.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="gridview">

GridView

.. raw:: html

   </h2>

.. raw:: html

   <p>

GridView adds drag and drop to a GridView, allowing you to reorder the
list. It also uses a DelegateModel to move a delegate item to the
position of another item it is dragged over.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">model</span>: <span class="name">DelegateModel</span> {
   <span class="name">delegate</span>: <span class="name">MouseArea</span> {
   <span class="name">id</span>: <span class="name">delegateRoot</span>
   property <span class="type">int</span> <span class="name">visualIndex</span>: <span class="name">DelegateModel</span>.<span class="name">itemsIndex</span>
   <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   <span class="name">drag</span>.target: <span class="name">icon</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">icon</span>
   <span class="name">width</span>: <span class="number">72</span>; <span class="name">height</span>: <span class="number">72</span>
   <span class="type">anchors</span> {
   <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>;
   <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   }
   <span class="name">color</span>: <span class="name">model</span>.<span class="name">color</span>
   <span class="name">radius</span>: <span class="number">3</span>
   <span class="name">Drag</span>.active: <span class="name">delegateRoot</span>.<span class="name">drag</span>.<span class="name">active</span>
   <span class="name">Drag</span>.source: <span class="name">delegateRoot</span>
   <span class="name">Drag</span>.hotSpot.x: <span class="number">36</span>
   <span class="name">Drag</span>.hotSpot.y: <span class="number">36</span>
   <span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">when</span>: <span class="name">icon</span>.<span class="name">Drag</span>.<span class="name">active</span>
   <span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> {
   <span class="name">target</span>: <span class="name">icon</span>
   <span class="name">parent</span>: <span class="name">root</span>
   }
   <span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> {
   <span class="name">target</span>: <span class="name">icon</span>;
   <span class="name">anchors</span>.horizontalCenter: <span class="name">undefined</span>;
   <span class="name">anchors</span>.verticalCenter: <span class="name">undefined</span>
   }
   }
   ]
   }
   <span class="type"><a href="QtQuick.DropArea.md">DropArea</a></span> {
   <span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">15</span> }
   <span class="name">onEntered</span>: <span class="name">visualModel</span>.<span class="name">items</span>.<span class="name">move</span>(<span class="name">drag</span>.<span class="name">source</span>.<span class="name">visualIndex</span>, <span class="name">delegateRoot</span>.<span class="name">visualIndex</span>)
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

draganddrop/draganddrop.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

draganddrop/tiles/DragTile.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

draganddrop/tiles/DropTile.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

draganddrop/tiles/tiles.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

draganddrop/views/gridview.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

draganddrop/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

draganddrop/draganddrop.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

draganddrop/draganddrop.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

draganddrop/draganddrop.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@draganddrop -->
