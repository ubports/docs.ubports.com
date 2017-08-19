QtQuick.Transition
==================

.. raw:: html

   <p>

Defines animated transitions that occur on state changes More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Transition -->

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

import QtQuick 2.4

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

animations : list<Animation>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

from : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reversible : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

running : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

to : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Transition-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A Transition defines the animations to be applied when a State change
occurs.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following Rectangle has two states: the default state,
and an added "moved" state. In the "moved state, the rectangle's
position changes to (50, 50). The added Transition specifies that when
the rectangle changes between the default and the "moved" state, any
changes to the x and y properties should be animated, using an
Easing.InOutQuad.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;moved&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   }
   }</pre>

.. raw:: html

   <p>

Notice the example does not require to and from values for the
NumberAnimation. As a convenience, these properties are automatically
set to the values of x and y before and after the state change; the from
values are provided by the current values of x and y, and the to values
are provided by the PropertyChanges object. If you wish, you can provide
to and from values anyway to override the default values.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, a Transition's animations are applied for any state change
in the parent item. The Transition from and to values can be set to
restrict the animations to only be applied when changing from one
particular state to another.

.. raw:: html

   </p>

.. raw:: html

   <p>

To define multiple transitions, specify Item::transitions as a list:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">transitions</span>: [
   <span class="type"><a href="index.html">Transition</a></span> {
   <span class="name">from</span>: <span class="string">&quot;stop&quot;</span>; <span class="name">to</span>: <span class="string">&quot;go&quot;</span>
   <span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">target</span>: <span class="name">stopLight</span>
   <span class="name">properties</span>: <span class="string">&quot;color&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   },
   <span class="type"><a href="index.html">Transition</a></span> {
   <span class="name">from</span>: <span class="string">&quot;go&quot;</span>; <span class="name">to</span>: <span class="string">&quot;stop&quot;</span>
   <span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">target</span>: <span class="name">goLight</span>
   <span class="name">properties</span>: <span class="string">&quot;color&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   } ]</pre>

.. raw:: html

   <p>

If multiple Transitions are specified, only a single (best-matching)
Transition will be applied for any particular state change. In the
example above, when changing to state1, the first transition will be
used, rather than the more generic second transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a state change has a Transition that matches the same property as a
Behavior, the Transition animation overrides the Behavior for that state
change.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick, States example, Qt Quick
States, and Qt QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Transition -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$animations -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="animations-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] animations : list<Animation>

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

This property holds a list of the animations to be run for this
transition.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"></pre>

.. raw:: html

   <p>

The top-level animations are run in parallel. To run them sequentially,
define them within a SequentialAnimation:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <!-- @@@animations -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

This property holds whether the Transition will be run when moving from
the from state to the to state.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default a Transition is enabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that in some circumstances disabling a Transition may cause an
alternative Transition to be used in its place. In the following
example, although the first Transition has been set to animate changes
from "state1" to "state2", this transition has been disabled by setting
enabled to false, so any such state change will actually be animated by
the second Transition instead.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">&quot;state1&quot;</span> },
   <span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">&quot;state2&quot;</span> }
   ]
   <span class="name">transitions</span>: [
   <span class="type"><a href="index.html">Transition</a></span> { <span class="name">from</span>: <span class="string">&quot;state1&quot;</span>; <span class="name">to</span>: <span class="string">&quot;state2&quot;</span>; <span class="name">enabled</span>: <span class="number">false</span> },
   <span class="type"><a href="index.html">Transition</a></span> {
   <span class="comment">// ...</span>
   }
   ]
   }</pre>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="from-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

from : string

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

These properties indicate the state changes that trigger the transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default values for these properties is "\*" (that is, any state).

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following transition has not set the to and from
properties, so the animation is always applied when changing between the
two states (i.e. when the mouse is pressed and released).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">id</span>: <span class="name">mouseArea</span>; <span class="name">anchors</span>.fill: <span class="name">parent</span> }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;brighter&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

If the transition was changed to this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="name">to</span>: <span class="string">&quot;brighter&quot;</span>
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
   }</pre>

.. raw:: html

   <p>

The animation would only be applied when changing from the default state
to the "brighter" state (i.e. when the mouse is pressed, but not on
release).

.. raw:: html

   </p>

.. raw:: html

   <p>

Multiple to and from values can be set by using a comma-separated
string.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also reversible.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@from -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reversible-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

reversible : bool

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

This property holds whether the transition should be automatically
reversed when the conditions that triggered this transition are
reversed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, transitions run in parallel and are applied to all state
changes if the from and to states have not been set. In this situation,
the transition is automatically applied when a state change is reversed,
and it is not necessary to set this property to reverse the transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

However, if a SequentialAnimation is used, or if the from or to
properties have been set, this property will need to be set to reverse a
transition when a state change is reverted. For example, the following
transition applies a sequential animation when the mouse is pressed, and
reverses the sequence of the animation when the mouse is released:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">id</span>: <span class="name">mouseArea</span>; <span class="name">anchors</span>.fill: <span class="name">parent</span> }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;brighter&quot;</span>
   <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">x</span>: <span class="number">50</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
   }
   }
   }</pre>

.. raw:: html

   <p>

If the transition did not set the to and reversible values, then on the
mouse release, the transition would play the PropertyAnimation before
the ColorAnimation instead of reversing the sequence.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reversible -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="running-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

running : bool

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

This property holds whether the transition is currently running.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@running -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="to-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

to : string

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

These properties indicate the state changes that trigger the transition.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default values for these properties is "\*" (that is, any state).

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following transition has not set the to and from
properties, so the animation is always applied when changing between the
two states (i.e. when the mouse is pressed and released).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">id</span>: <span class="name">mouseArea</span>; <span class="name">anchors</span>.fill: <span class="name">parent</span> }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;brighter&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

If the transition was changed to this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="name">to</span>: <span class="string">&quot;brighter&quot;</span>
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
   }</pre>

.. raw:: html

   <p>

The animation would only be applied when changing from the default state
to the "brighter" state (i.e. when the mouse is pressed, but not on
release).

.. raw:: html

   </p>

.. raw:: html

   <p>

Multiple to and from values can be set by using a comma-separated
string.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also reversible.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@to -->


