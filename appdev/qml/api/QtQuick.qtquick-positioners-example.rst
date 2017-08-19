QtQuick.qtquick-positioners-example
===================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Positioners is a collection of small QML examples relating to
positioners. Each example is a small QML file emphasizing a particular
type or feature. For more information, visit Important Concepts In Qt
Quick - Positioning.

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

   <h2 id="transitions">

Transitions

.. raw:: html

   </h2>

.. raw:: html

   <p>

Transitions shows animated transitions when showing or hiding items in a
positioner. It consists of a scene populated with items in a variety of
positioners: Column, Row, Grid, and Flow. Each positioner has animations
described as Transitions.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">move</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
   }</pre>

.. raw:: html

   <p>

The move transition specifies how items inside a positioner will animate
when they are displaced by the appearance or disappearance of other
items.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">add</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
   }</pre>

.. raw:: html

   <p>

The add transition specifies how items will appear when they are added
to a positioner.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">populate</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">from</span>: <span class="number">200</span>; <span class="name">duration</span>: <span class="number">100</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
   }</pre>

.. raw:: html

   <p>

The populate transition specifies how items will appear when their
parent positioner is first created.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <p>

Attached Properties shows how the Positioner attached property can be
used to determine where an item is within a positioner.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">green</span>
   <span class="name">color</span>: <span class="string">&quot;#80c342&quot;</span>
   <span class="name">width</span>: <span class="number">100</span> <span class="operator">*</span> <span class="name">ratio</span>
   <span class="name">height</span>: <span class="number">100</span> <span class="operator">*</span> <span class="name">ratio</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">right</span>
   <span class="name">anchors</span>.leftMargin: <span class="number">20</span>
   <span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
   <span class="name">text</span>: <span class="string">&quot;Index: &quot;</span> <span class="operator">+</span> <span class="name">parent</span>.<span class="name">Positioner</span>.<span class="name">index</span>
   <span class="operator">+</span> (<span class="name">parent</span>.<span class="name">Positioner</span>.<span class="name">isFirstItem</span> ? <span class="string">&quot; (First)&quot;</span> : <span class="string">&quot;&quot;</span>)
   <span class="operator">+</span> (<span class="name">parent</span>.<span class="name">Positioner</span>.<span class="name">isLastItem</span> ? <span class="string">&quot; (Last)&quot;</span> : <span class="string">&quot;&quot;</span>)
   }
   <span class="comment">// When mouse is clicked, display the values of the positioner</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">column</span>.<span class="name">showInfo</span>(<span class="name">green</span>.<span class="name">Positioner</span>)
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

positioners/positioners-attachedproperties.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

positioners/positioners-transitions.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

positioners/positioners.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

positioners/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

positioners/positioners.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

positioners/positioners.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

positioners/positioners.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@positioners -->
