QtQuick.qtquick-input-mouseevents
=================================

.. raw:: html

   <h2 id="mouse-types">

Mouse Types

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li>

MouseArea type

.. raw:: html

   </li>

.. raw:: html

   <li>

MouseEvent object

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="mouse-event-handling">

Mouse Event Handling

.. raw:: html

   </h2>

.. raw:: html

   <p>

QML uses signals and handlers to deliver mouse interactions.
Specifically, Qt Quick provides the MouseArea and MouseEvent types which
allow developers to define signal handlers which accept mouse events
within a defined area.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="defining-a-mouse-area">

Defining a Mouse Area

.. raw:: html

   </h2>

.. raw:: html

   <p>

The MouseArea type receives events within a defined area. One quick way
to define this area is to anchor the MouseArea to its parent's area
using the anchors.fill property. If the parent is a Rectangle (or any
Item component), then the MouseArea will fill the area defined by the
parent's dimensions. Alternatively, an area smaller or larger than the
parent is definable.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;button clicked&quot;</span>)
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">width</span>:<span class="number">150</span>; <span class="name">height</span>: <span class="number">75</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;irregular area clicked&quot;</span>)
   }
   }</pre>

.. raw:: html

   <h2 id="receiving-events">

Receiving Events

.. raw:: html

   </h2>

.. raw:: html

   <p>

The MouseArea type provides signals and handlers to detect different
mouse events. The MouseArea type documentation describes these gestures
in greater detail:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

canceled

.. raw:: html

   </li>

.. raw:: html

   <li>

clicked

.. raw:: html

   </li>

.. raw:: html

   <li>

doubleClicked

.. raw:: html

   </li>

.. raw:: html

   <li>

entered

.. raw:: html

   </li>

.. raw:: html

   <li>

exited

.. raw:: html

   </li>

.. raw:: html

   <li>

positionChanged

.. raw:: html

   </li>

.. raw:: html

   <li>

pressAndHold

.. raw:: html

   </li>

.. raw:: html

   <li>

pressed

.. raw:: html

   </li>

.. raw:: html

   <li>

released

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These signals have signal handlers that are invoked when the signals are
emitted.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;area clicked&quot;</span>)
   <span class="name">onDoubleClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;area double clicked&quot;</span>)
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse entered the area&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse left the area&quot;</span>)
   }</pre>

.. raw:: html

   <h2 id="enabling-gestures">

Enabling Gestures

.. raw:: html

   </h2>

.. raw:: html

   <p>

Some mouse gestures and button clicks need to be enabled before they
send or receive events. Certain MouseArea and MouseEvent properties
enable these gestures.

.. raw:: html

   </p>

.. raw:: html

   <p>

To listen to (or explicitly ignore) a certain mouse button, set the
appropriate mouse button to the acceptedButtons property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Naturally, the mouse events, such as button presses and mouse positions,
are sent during a mouse click. For example, the containsMouse property
will only retrieve its correct value during a mouse press. The
hoverEnabled will enable mouse events and positioning even when there
are no mouse button presses. Setting the hoverEnabled property to true,
in turn will enable the entered, exited, and positionChanged signal and
their respective signal handlers.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">hoverEnabled</span>: <span class="number">true</span>
   <span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">LeftButton</span> <span class="operator">|</span> <span class="name">Qt</span>.<span class="name">RightButton</span>
   <span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse entered the area&quot;</span>)
   <span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse left the area&quot;</span>)
   }</pre>

.. raw:: html

   <p>

Additionally, to disable the whole mouse area, set the MouseArea enabled
property to false.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="mouseevent-object">

MouseEvent Object

.. raw:: html

   </h2>

.. raw:: html

   <p>

Signals and their handlers receive a MouseEvent object as a parameter.
The mouse object contain information about the mouse event. For example,
the mouse button that started the event is queried through the
mouse.button property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The MouseEvent object can also ignore a mouse event using its accepted
property.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Accepting Further Signals

.. raw:: html

   </h3>

.. raw:: html

   <p>

Many of the signals are sent multiple times to reflect various mouse
events such as double clicking. To facilitate the classification of
mouse clicks, the MouseEvent object has an accepted property to disable
the event propagation.

.. raw:: html

   </p>

.. raw:: html

   <p>

To learn more about QML's event system, please read the signals and
handlers, and event system document.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-input-mouseevents.html -->
