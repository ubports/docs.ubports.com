QtQuick.qtquick-statesanimations-states
=======================================

.. raw:: html

   <h2 id="related-types">

Related Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

Many user interface designs are state driven; interfaces have
configurations that differ depending on the current state. For example,
a traffic signal will configure its flags or lights depending on its
state. While in the signal's stop state, a red light will turn on while
the yellow and the green lights will turn off. In the caution state, the
yellow light is on while the other lights are turned off.

.. raw:: html

   </p>

.. raw:: html

   <p>

In QML, states are a set of property configurations defined in a State
type. Different configurations could, for example:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Show some UI components and hide others

.. raw:: html

   </li>

.. raw:: html

   <li>

Present different available actions to the user

.. raw:: html

   </li>

.. raw:: html

   <li>

Start, stop, or pause animations

.. raw:: html

   </li>

.. raw:: html

   <li>

Execute some script required in the new state

.. raw:: html

   </li>

.. raw:: html

   <li>

Change a property value for a particular item

.. raw:: html

   </li>

.. raw:: html

   <li>

Show a different view or screen

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

All Item-based objects have a state property, and can specify additional
states by adding new State objects to the item's states property. Each
state within a component has a unique name, an empty string being the
default. To change the current state of an item, set the state property
to the name of the state.

.. raw:: html

   </p>

.. raw:: html

   <p>

Non-Item objects may use states through the StateGroup type.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="creating-states">

Creating States

.. raw:: html

   </h2>

.. raw:: html

   <p>

To create a state, add a State object to the item's states property,
which holds a list of states for that item.

.. raw:: html

   </p>

.. raw:: html

   <p>

A warning signal component may have two states, the NORMAL and the
CRITICAL state. Suppose that in the NORMAL state, the color of the
signal should be green and the warning flag is down. Meanwhile, in the
CRITICAL state, the color should be red and the flag is up. We may model
the states using the State type and the color and flag configurations
with the PropertyChanges type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">signal</span>
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">state</span>: <span class="string">&quot;NORMAL&quot;</span>
   <span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;NORMAL&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">signal</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span>}
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">flag</span>; <span class="name">state</span>: <span class="string">&quot;FLAG_DOWN&quot;</span>}
   },
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;CRITICAL&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">signal</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span>}
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">flag</span>; <span class="name">state</span>: <span class="string">&quot;FLAG_UP&quot;</span>}
   }
   ]
   }</pre>

.. raw:: html

   <p>

The PropertyChanges type will change the values of object properties.
Objects are referenced through their id. Objects outside the component
are also referenced using the id property, exemplified by the property
change to the external flag object.

.. raw:: html

   </p>

.. raw:: html

   <p>

Further, the state may change by assigning the state property with the
appropriate signal state. A state switch could be in a MouseArea type,
assigning a different state whenever the signal receives a mouse click.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">signalswitch</span>
   <span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="keyword">if</span> (<span class="name">signal</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;NORMAL&quot;</span>)
   <span class="name">signal</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;CRITICAL&quot;</span>
   <span class="keyword">else</span>
   <span class="name">signal</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;NORMAL&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

The State type is not limited to performing modifications on property
values. It can also:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Run some script using StateChangeScript

.. raw:: html

   </li>

.. raw:: html

   <li>

Override an existing signal handler for an object using PropertyChanges

.. raw:: html

   </li>

.. raw:: html

   <li>

Re-parent an Item using ParentChange

.. raw:: html

   </li>

.. raw:: html

   <li>

Modify anchor values using AnchorChanges

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="the-default-state">

The Default State

.. raw:: html

   </h2>

.. raw:: html

   <p>

Every Item based component has a state property and a default state. The
default state is the empty string ("") and contains all of an item's
initial property values. The default state is useful for managing
property values before state changes. Setting the state property to an
empty string will load the default state.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="the-when-property">

The when Property

.. raw:: html

   </h2>

.. raw:: html

   <p>

For convenience, the State type has a when property that can bind to
expressions to change the state whenever the bound expression evaluates
to true. The when property will revert the state back to the default
state when the expression evaluates to false.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">bell</span>
   <span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>
   <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;RINGING&quot;</span>
   <span class="name">when</span>: (<span class="name">signal</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;CRITICAL&quot;</span>)
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {<span class="name">target</span>: <span class="name">speaker</span>; <span class="name">play</span>: <span class="string">&quot;RING!&quot;</span>}
   }
   }</pre>

.. raw:: html

   <p>

The bell component will change to the RINGING state whenever the
signal.state is CRITICAL.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="animating-state-changes">

Animating State Changes

.. raw:: html

   </h2>

.. raw:: html

   <p>

State changes induce abrupt value changes. The Transition type allow
smoother changes during state changes. In transitions, animations and
interpolation behaviors are definable. The Animation and Transitions
article has more information about creating state animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

The States and Transitions example demonstrates how to declare a basic
set of states and apply animated transitions between them.

.. raw:: html

   </p>

.. raw:: html

   <p>

Using Qt Quick Behaviors with States explains a common problem when
using Behaviors to animate state changes.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="state-fast-forwarding">

State Fast Forwarding

.. raw:: html

   </h2>

.. raw:: html

   <p>

In order for Transition to correctly animate state changes, it is
sometimes necessary for the engine to fast forward and rewind a state
(that is, internally set and unset the state) before it is finally
applied. The process is as follows:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

The state is fast forwarded to determine the complete set of end values.

.. raw:: html

   </li>

.. raw:: html

   <li>

The state is rewound.

.. raw:: html

   </li>

.. raw:: html

   <li>

The state is fully applied, with transitions.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

In some cases this may cause unintended behavior. For example, a state
that changes a view's model or a Loader's sourceComponent will set these
properties multiple times (to apply, rewind, and then reapply), which
can be relatively expensive.

.. raw:: html

   </p>

.. raw:: html

   <p>

State fast forwarding should be considered an implementation detail, and
may change in later versions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-statesanimations-states.html -->
