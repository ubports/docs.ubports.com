QtQuick.qtquick-mousearea-example
=================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

MouseArea example shows how to respond to clicks and drags with a
MouseArea. For more information, visit Important Concepts In Qt Quick -
User Input.

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

   <h2 id="mousearea-behavior">

MouseArea Behavior

.. raw:: html

   </h2>

.. raw:: html

   <p>

When you click inside the red square, the Text type will list several
properties of that click which are available to QML. The opacity of the
red square will be reduced while the mouse is pressed and remains inside
the MouseArea.

.. raw:: html

   </p>

.. raw:: html

   <p>

Signals are emitted by the MouseArea when clicks or other discrete
operations occur within it.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">onPressAndHold</span>: <span class="name">btn</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Press and hold'</span>
   <span class="name">onClicked</span>: <span class="name">btn</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Clicked (wasHeld='</span> <span class="operator">+</span> <span class="name">mouse</span>.<span class="name">wasHeld</span> <span class="operator">+</span> <span class="string">')'</span>
   <span class="name">onDoubleClicked</span>: <span class="name">btn</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Double clicked'</span></pre>

.. raw:: html

   <p>

MouseArea can also be used to drag items around. By setting the
parameters of the drag property, the target item will be dragged around
if the user starts to drag within the mouse area boundary.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">drag</span>.target: <span class="name">blueSquare</span>
   <span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">XAndYAxis</span>
   <span class="name">drag</span>.minimumX: <span class="number">0</span>
   <span class="name">drag</span>.maximumX: <span class="name">box</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">drag</span>.minimumY: <span class="number">0</span>
   <span class="name">drag</span>.maximumY: <span class="name">box</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">parent</span>.<span class="name">width</span></pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

mousearea/mousearea-wheel-example.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mousearea/mousearea.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

mousearea/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

mousearea/mousearea.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

mousearea/mousearea.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

mousearea/mousearea.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@mousearea -->
