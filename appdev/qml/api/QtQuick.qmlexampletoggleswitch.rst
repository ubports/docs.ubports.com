QtQuick.qmlexampletoggleswitch
==============================

.. raw:: html

   <p>

This example shows how to create a reusable switch component in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

The code for this example can be found in the
examples/quick/customitems/slideswitch directory.

.. raw:: html

   </p>

.. raw:: html

   <p>

The objects that compose the switch are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

a on property (the interface to interact with the switch),

.. raw:: html

   </li>

.. raw:: html

   <li>

two images (the background image and the knob),

.. raw:: html

   </li>

.. raw:: html

   <li>

two mouse regions for user interation (on the background image and on
the knob),

.. raw:: html

   </li>

.. raw:: html

   <li>

two states (an on state and an off state),

.. raw:: html

   </li>

.. raw:: html

   <li>

two functions or slots to react to the user interation (toggle() and
dorelease()),

.. raw:: html

   </li>

.. raw:: html

   <li>

and a transition that describe how to go from one state to the other.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="switch-qml">

Switch.qml

.. raw:: html

   </h2>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">toggleswitch</span>
   <span class="name">width</span>: <span class="name">background</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">background</span>.<span class="name">height</span>
   property <span class="type">bool</span> <span class="name">on</span>: <span class="number">false</span>
   <span class="keyword">function</span> <span class="name">toggle</span>() {
   <span class="keyword">if</span> (<span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;on&quot;</span>)
   <span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;off&quot;</span>;
   <span class="keyword">else</span>
   <span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;on&quot;</span>;
   }
   <span class="keyword">function</span> <span class="name">releaseSwitch</span>() {
   <span class="keyword">if</span> (<span class="name">knob</span>.<span class="name">x</span> <span class="operator">==</span> <span class="number">1</span>) {
   <span class="keyword">if</span> (<span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;off&quot;</span>) <span class="keyword">return</span>;
   }
   <span class="keyword">if</span> (<span class="name">knob</span>.<span class="name">x</span> <span class="operator">==</span> <span class="number">78</span>) {
   <span class="keyword">if</span> (<span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;on&quot;</span>) <span class="keyword">return</span>;
   }
   <span class="name">toggle</span>();
   }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">background</span>
   <span class="name">source</span>: <span class="string">&quot;background.png&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">toggle</span>() }
   }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">knob</span>
   <span class="name">x</span>: <span class="number">1</span>; <span class="name">y</span>: <span class="number">2</span>
   <span class="name">source</span>: <span class="string">&quot;knob.png&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">drag</span>.target: <span class="name">knob</span>; <span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">XAxis</span>; <span class="name">drag</span>.minimumX: <span class="number">1</span>; <span class="name">drag</span>.maximumX: <span class="number">78</span>
   <span class="name">onClicked</span>: <span class="name">toggle</span>()
   <span class="name">onReleased</span>: <span class="name">releaseSwitch</span>()
   }
   }
   <span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;on&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">knob</span>; <span class="name">x</span>: <span class="number">78</span> }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">toggleswitch</span>; <span class="name">on</span>: <span class="number">true</span> }
   },
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;off&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">knob</span>; <span class="name">x</span>: <span class="number">1</span> }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">toggleswitch</span>; <span class="name">on</span>: <span class="number">false</span> }
   }
   ]
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span>; <span class="name">duration</span>: <span class="number">200</span> }
   }
   }</pre>

.. raw:: html

   <h2 id="walkthrough">

Walkthrough

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Interface

.. raw:: html

   </h3>

.. raw:: html

   <pre class="qml">    property <span class="type">bool</span> <span class="name">on</span>: <span class="number">false</span></pre>

.. raw:: html

   <p>

This property is the interface of the switch. By default, the switch is
off and this property is false. It can be used to activate/deactivate
the switch or to query its current state.

.. raw:: html

   </p>

.. raw:: html

   <p>

In this example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type">Switch</span> {
   <span class="name">id</span>: <span class="name">mySwitch</span>
   <span class="name">on</span>: <span class="number">true</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="string">&quot;The switch is on&quot;</span>
   <span class="name">visible</span>: <span class="name">mySwitch</span>.<span class="name">on</span> <span class="operator">==</span> <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

the text will only be visible when the switch is on.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Images and user interaction

.. raw:: html

   </h3>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">background</span>
   <span class="name">source</span>: <span class="string">&quot;background.png&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">toggle</span>() }
   }</pre>

.. raw:: html

   <p>

First, we create the background image of the switch. In order for the
switch to toggle when the user clicks on the background, we add a
MouseArea as a child item of the image. A MouseArea has a onClicked
property that is triggered when the item is clicked. For the moment we
will just call a toggle() function. We will see what this function does
in a moment.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">knob</span>
   <span class="name">x</span>: <span class="number">1</span>; <span class="name">y</span>: <span class="number">2</span>
   <span class="name">source</span>: <span class="string">&quot;knob.png&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">drag</span>.target: <span class="name">knob</span>; <span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">XAxis</span>; <span class="name">drag</span>.minimumX: <span class="number">1</span>; <span class="name">drag</span>.maximumX: <span class="number">78</span>
   <span class="name">onClicked</span>: <span class="name">toggle</span>()
   <span class="name">onReleased</span>: <span class="name">releaseSwitch</span>()
   }
   }</pre>

.. raw:: html

   <p>

Then, we place the image of the knob on top of the background. The
interaction here is a little more complex. We want the knob to move with
the finger when it is clicked. That is what the drag property of the
MouseArea is for. We also want to toggle the switch if the knob is
released between state. We handle this case in the dorelease() function
that is called in the onReleased property.

.. raw:: html

   </p>

.. raw:: html

   <h3>

States

.. raw:: html

   </h3>

.. raw:: html

   <pre class="qml">    <span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;on&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">knob</span>; <span class="name">x</span>: <span class="number">78</span> }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">toggleswitch</span>; <span class="name">on</span>: <span class="number">true</span> }
   },
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;off&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">knob</span>; <span class="name">x</span>: <span class="number">1</span> }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">toggleswitch</span>; <span class="name">on</span>: <span class="number">false</span> }
   }
   ]</pre>

.. raw:: html

   <p>

We define the two states of the switch:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

In the on state the knob is on the right (x position is 78) and the on
property is true.

.. raw:: html

   </li>

.. raw:: html

   <li>

In the off state the knob is on the left (x position is 1) and the on
property is false.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For more information on states see Qt Quick States.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Functions

.. raw:: html

   </h3>

.. raw:: html

   <p>

We add two JavaScript functions to our switch:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="keyword">function</span> <span class="name">toggle</span>() {
   <span class="keyword">if</span> (<span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;on&quot;</span>)
   <span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;off&quot;</span>;
   <span class="keyword">else</span>
   <span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;on&quot;</span>;
   }</pre>

.. raw:: html

   <p>

This first function is called when the background image or the knob are
clicked. We simply want the switch to toggle between the two states (on
and off).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="keyword">function</span> <span class="name">releaseSwitch</span>() {
   <span class="keyword">if</span> (<span class="name">knob</span>.<span class="name">x</span> <span class="operator">==</span> <span class="number">1</span>) {
   <span class="keyword">if</span> (<span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;off&quot;</span>) <span class="keyword">return</span>;
   }
   <span class="keyword">if</span> (<span class="name">knob</span>.<span class="name">x</span> <span class="operator">==</span> <span class="number">78</span>) {
   <span class="keyword">if</span> (<span class="name">toggleswitch</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;on&quot;</span>) <span class="keyword">return</span>;
   }
   <span class="name">toggle</span>();
   }</pre>

.. raw:: html

   <p>

This second function is called when the knob is released and we want to
make sure that the knob does not end up between states (neither on nor
off). If it is the case call the toggle() function otherwise we do
nothing.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on scripts see JavaScript Expressions in QML
Documents.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Transition

.. raw:: html

   </h3>

.. raw:: html

   <pre class="qml">    <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span>; <span class="name">duration</span>: <span class="number">200</span> }
   }</pre>

.. raw:: html

   <p>

At this point, when the switch toggles between the two states the knob
will instantly change its x position between 1 and 78. In order for the
knob to move smoothly we add a transition that will animate the x
property with an easing curve for a duration of 200ms.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on transitions see Animation and Transitions in Qt
Quick.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="usage">

Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

The switch can be used in a QML file, like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Switch</span> { <span class="name">anchors</span>.centerIn: <span class="name">parent</span>; <span class="name">on</span>: <span class="number">false</span> }</pre>

.. raw:: html

   <!-- @@@qmlexampletoggleswitch.html -->
