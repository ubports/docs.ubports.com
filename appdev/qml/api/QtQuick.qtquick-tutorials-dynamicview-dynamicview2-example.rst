QtQuick.qtquick-tutorials-dynamicview-dynamicview2-example
==========================================================

.. raw:: html

   <p>

Now that we have a visible list of items we want to be able to interact
with them. We'll start by extending the delegate so the visible content
can be dragged up and down the screen. The updated delegate looks like
this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">dragDelegate</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">dragArea</span>
   property <span class="type">bool</span> <span class="name">held</span>: <span class="number">false</span>
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
   <span class="name">height</span>: <span class="name">content</span>.<span class="name">height</span>
   <span class="name">drag</span>.target: <span class="name">held</span> ? <span class="name">content</span> : <span class="name">undefined</span>
   <span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">YAxis</span>
   <span class="name">onPressAndHold</span>: <span class="name">held</span> <span class="operator">=</span> <span class="number">true</span>
   <span class="name">onReleased</span>: <span class="name">held</span> <span class="operator">=</span> <span class="number">false</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">content</span>
   <span class="type">anchors</span> {
   <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   }
   <span class="name">width</span>: <span class="name">dragArea</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">column</span>.<span class="name">implicitHeight</span> <span class="operator">+</span> <span class="number">4</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="name">border</span>.color: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="name">color</span>: <span class="name">dragArea</span>.<span class="name">held</span> ? <span class="string">&quot;lightsteelblue&quot;</span> : <span class="string">&quot;white&quot;</span>
   Behavior on <span class="name">color</span> { <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">100</span> } }
   <span class="name">radius</span>: <span class="number">2</span>
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">when</span>: <span class="name">dragArea</span>.<span class="name">held</span>
   <span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> { <span class="name">target</span>: <span class="name">content</span>; <span class="name">parent</span>: <span class="name">root</span> }
   <span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> {
   <span class="name">target</span>: <span class="name">content</span>
   <span class="type">anchors</span> { <span class="name">horizontalCenter</span>: <span class="name">undefined</span>; <span class="name">verticalCenter</span>: <span class="name">undefined</span> }
   }
   }
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">id</span>: <span class="name">column</span>
   <span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">2</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Name: '</span> <span class="operator">+</span> <span class="name">name</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Type: '</span> <span class="operator">+</span> <span class="name">type</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Age: '</span> <span class="operator">+</span> <span class="name">age</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">'Size: '</span> <span class="operator">+</span> <span class="name">size</span> }
   }
   }
   }
   }</pre>

.. raw:: html

   <h3>

Walkthrough

.. raw:: html

   </h3>

.. raw:: html

   <p>

The major change here is the root item of the delegate is now a
MouseArea which provides handlers for mouse events and will allow us to
drag the delegate's content item. It also acts as a container for the
content item which is important as a delegate's root item is positioned
by the view and cannot be moved by other means.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">dragArea</span>
   property <span class="type">bool</span> <span class="name">held</span>: <span class="number">false</span>
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span> }
   <span class="name">height</span>: <span class="name">content</span>.<span class="name">height</span>
   <span class="name">drag</span>.target: <span class="name">held</span> ? <span class="name">content</span> : <span class="name">undefined</span>
   <span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">YAxis</span>
   <span class="name">onPressAndHold</span>: <span class="name">held</span> <span class="operator">=</span> <span class="number">true</span>
   <span class="name">onReleased</span>: <span class="name">held</span> <span class="operator">=</span> <span class="number">false</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">content</span>
   }
   }</pre>

.. raw:: html

   <p>

Dragging the content item is enabled by binding it to the MouseArea's
drag.target property. Because we still want the view to be flickable we
wait until the MouseArea's pressAndHold signal is emitted before binding
the drag target. This way when mouse moves before the hold timeout has
expired it is interpreted as moving the list and if it moves after it is
interpreted as dragging an item. To make it more obvious to the user
when an item can be dragged we'll change the background color of the
content item when the timeout has expired.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                <span class="name">color</span>: <span class="name">dragArea</span>.<span class="name">held</span> ? <span class="string">&quot;lightsteelblue&quot;</span> : <span class="string">&quot;white&quot;</span>
   Behavior on <span class="name">color</span> { <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">100</span> } }</pre>

.. raw:: html

   <p>

The other thing we'll need to do before an item can be dragged is to
unset any anchors on the content item so it can be freely moved around.
We do this in a state change that is triggered when the delegate item is
held, at the same time we can reparent the content item to the root item
so that is above other items in the stacking order and isn't obscured as
it is dragged around.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">when</span>: <span class="name">dragArea</span>.<span class="name">held</span>
   <span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> { <span class="name">target</span>: <span class="name">content</span>; <span class="name">parent</span>: <span class="name">root</span> }
   <span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> {
   <span class="name">target</span>: <span class="name">content</span>
   <span class="type">anchors</span> { <span class="name">horizontalCenter</span>: <span class="name">undefined</span>; <span class="name">verticalCenter</span>: <span class="name">undefined</span> }
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

tutorials/dynamicview/dynamicview2/PetsModel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/dynamicview/dynamicview2/dynamicview.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/dynamicview/dynamicview2/dynamicview2.qmlproject

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@tutorials/dynamicview/dynamicview2 -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

QML Dynamic View Ordering Tutorial 1 - A Simple ListView and Delegate
QML Dynamic View Ordering Tutorial 3 - Moving Dragged Items

.. raw:: html

   </p>
