QtQuick.qtquick-statesanimations-animations
===========================================

.. raw:: html

   <h2 id="animation-and-transitions-types">

Animation and Transitions Types

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Transition - Animates transitions during state changes

.. raw:: html

   </li>

.. raw:: html

   <li>

SequentialAnimation - Runs animations sequentially

.. raw:: html

   </li>

.. raw:: html

   <li>

ParallelAnimation - Runs animations in parallel

.. raw:: html

   </li>

.. raw:: html

   <li>

Behavior - Specifies a default animation for property changes

.. raw:: html

   </li>

.. raw:: html

   <li>

PropertyAction - Sets immediate property changes during animation

.. raw:: html

   </li>

.. raw:: html

   <li>

PauseAnimation - Introduces a pause in an animation

.. raw:: html

   </li>

.. raw:: html

   <li>

SmoothedAnimation - Allows a property to smoothly track a value

.. raw:: html

   </li>

.. raw:: html

   <li>

SpringAnimation - Allows a property to track a value in a spring-like
motion

.. raw:: html

   </li>

.. raw:: html

   <li>

ScriptAction - Runs scripts during an animation

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Types that animate properties based on data types

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

AnchorAnimation

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Animates changes in anchor values

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

ColorAnimation

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Animates changes in color values

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

NumberAnimation

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Animates changes in qreal-type values

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

ParentAnimation

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Animates changes in parent values

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

PathAnimation

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Animates an item along a path

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

PropertyAnimation

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Animates changes in property values

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

RotationAnimation

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Animates changes in rotation values

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

Vector3dAnimation

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Animates changes in QVector3d values

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   </p>

.. raw:: html

   <p>

Animations are created by applying animation types to property values.
Animation types will interpolate property values to create smooth
transitions. As well, state transitions may assign animations to state
changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

To create an animation, use an appropriate animation type for the type
of the property that is to be animated, and apply the animation
depending on the type of behavior that is required.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="triggering-animations">

Triggering Animations

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are several ways of setting animation to an object.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Direct Property Animation

.. raw:: html

   </h3>

.. raw:: html

   <p>

Animations are created by applying animation objects to property values
to gradually change the properties over time. These property animations
apply smooth movements by interpolating values between property value
changes. Property animations provide timing controls and allows
different interpolations through easing curves.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">flashingblob</span>
   <span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">opacity</span>: <span class="number">1.0</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">animateColor</span>.<span class="name">start</span>()
   <span class="name">animateOpacity</span>.<span class="name">start</span>()
   }
   }
   <span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> {<span class="name">id</span>: <span class="name">animateColor</span>; <span class="name">target</span>: <span class="name">flashingblob</span>; <span class="name">properties</span>: <span class="string">&quot;color&quot;</span>; <span class="name">to</span>: <span class="string">&quot;green&quot;</span>; <span class="name">duration</span>: <span class="number">100</span>}
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
   <span class="name">id</span>: <span class="name">animateOpacity</span>
   <span class="name">target</span>: <span class="name">flashingblob</span>
   <span class="name">properties</span>: <span class="string">&quot;opacity&quot;</span>
   <span class="name">from</span>: <span class="number">0.99</span>
   <span class="name">to</span>: <span class="number">1.0</span>
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="type">easing</span> {<span class="name">type</span>: <span class="name">Easing</span>.<span class="name">OutBack</span>; <span class="name">overshoot</span>: <span class="number">500</span>}
   }
   }</pre>

.. raw:: html

   <p>

Specialized property animation types have more efficient implementations
than the PropertyAnimation type. They are for setting animations to
different QML types such as int, color, and rotations. Similarly, the
ParentAnimation can animate parent changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the Controlling Animations section for more information about the
different animation properties.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Using Predefined Targets and Properties

.. raw:: html

   </h3>

.. raw:: html

   <p>

In the previous example, the PropertyAnimation and NumberAnimation
objects needed to specify particular target and properties values to
specify the objects and properties that should be animated. This can be
avoided by using the <Animation> on <Property> syntax, which specifies
the animation is to be applied as a property value source.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below are two PropertyAnimation objects that are specified using this
syntax:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   PropertyAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">100</span> }
   PropertyAnimation on <span class="name">y</span> { <span class="name">to</span>: <span class="number">100</span> }
   }</pre>

.. raw:: html

   <p>

The animation starts as soon as the rectangle is loaded, and will
automatically be applied to its x and y values. Since the <Animation> on
<Property> syntax has been used, it is not necessary to set the target
value of the PropertyAnimation objects to rect, and neither is it
necessary to set the property values to x and y.

.. raw:: html

   </p>

.. raw:: html

   <p>

This can also be used by grouped animations to ensure that all
animations within a group are applied to the same property. For example,
the previous example could instead use SequentialAnimation to animate
the rectangle's color first to yellow, then to blue:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   SequentialAnimation on <span class="name">color</span> {
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">to</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">to</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

Since the SequentialAnimation object has been specified on the color
property using the <Animation> on <Property> syntax, its child
ColorAnimation objects are also automatically applied to this property
and do not need to specify target or property animation values.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Transitions during State Changes

.. raw:: html

   </h3>

.. raw:: html

   <p>

Qt Quick States are property configurations where a property may have
different values to reflect different states. State changes introduce
abrupt property changes; animations smooth transitions to produce
visually appealing state changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Transition type can contain animation types to interpolate property
changes caused by state changes. To assign the transition to an object,
bind it to the transitions property.

.. raw:: html

   </p>

.. raw:: html

   <p>

A button might have two states, the pressed state when the user clicks
on the button and a released state when the user releases the button. We
can assign different property configurations for each state. A
transition would animate the change from the pressed state to the
released state. Likewise, there would be an animation during the change
from the released state to the pressed state.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>
   <span class="name">id</span>: <span class="name">button</span>
   <span class="name">state</span>: <span class="string">&quot;RELEASED&quot;</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: <span class="name">button</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;PRESSED&quot;</span>
   <span class="name">onReleased</span>: <span class="name">button</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;RELEASED&quot;</span>
   }
   <span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;PRESSED&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>}
   },
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;RELEASED&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>}
   }
   ]
   <span class="name">transitions</span>: [
   <span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
   <span class="name">from</span>: <span class="string">&quot;PRESSED&quot;</span>
   <span class="name">to</span>: <span class="string">&quot;RELEASED&quot;</span>
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">duration</span>: <span class="number">100</span>}
   },
   <span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
   <span class="name">from</span>: <span class="string">&quot;RELEASED&quot;</span>
   <span class="name">to</span>: <span class="string">&quot;PRESSED&quot;</span>
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">duration</span>: <span class="number">100</span>}
   }
   ]
   }</pre>

.. raw:: html

   <p>

Binding the to and from properties to the state's name will assign that
particular transition to the state change. For simple or symmetric
transitions, setting the to to property to the wild card symbol, "\*",
denotes that the transition applies to any state change.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">transitions</span>:
   <span class="name">Transition</span> {
   <span class="name">to</span>: <span class="string">&quot;*&quot;</span>
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">target</span>: <span class="name">button</span>; <span class="name">duration</span>: <span class="number">100</span>}
   }</pre>

.. raw:: html

   <h3>

Default Animation as Behaviors

.. raw:: html

   </h3>

.. raw:: html

   <p>

Default property animations are set using behavior animations.
Animations declared in Behavior types apply to the property and animates
any property value changes. However, Behavior types have an enabled
property to purposely enable or disable the behavior animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

A ball component might have a behavior animation assigned to its x, y,
and color properties. The behavior animation could be set up to simulate
an elastic effect. In effect, this behavior animation would apply the
elastic effect to the properties whenever the ball moves.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>; <span class="name">radius</span>: <span class="name">width</span>
   <span class="name">id</span>: <span class="name">ball</span>
   <span class="name">color</span>: <span class="string">&quot;salmon&quot;</span>
   Behavior on <span class="name">x</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
   <span class="name">id</span>: <span class="name">bouncebehavior</span>
   <span class="type">easing</span> {
   <span class="name">type</span>: <span class="name">Easing</span>.<span class="name">OutElastic</span>
   <span class="name">amplitude</span>: <span class="number">1.0</span>
   <span class="name">period</span>: <span class="number">0.5</span>
   }
   }
   }
   Behavior on <span class="name">y</span> {
   <span class="name">animation</span>: <span class="name">bouncebehavior</span>
   }
   <span class="type"><a href="QtQuick.Behavior.md">Behavior</a></span> {
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">target</span>: <span class="name">ball</span>; <span class="name">duration</span>: <span class="number">100</span> }
   }
   }</pre>

.. raw:: html

   <p>

There are several methods of assigning behavior animations to
properties. The Behavior on <property> declaration is a convenient way
of assigning a behavior animation onto a property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the Qt Quick Examples - Animation for a demonstration of behavioral
animations.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="playing-animations-in-parallel-or-in-sequence">

Playing Animations in Parallel or in Sequence

.. raw:: html

   </h2>

.. raw:: html

   <p>

Animations can run in parallel or in sequence. Parallel animations will
play a group of animations at the same time while sequential animations
play a group of animations in order: one after the other. Grouping
animations in SequentialAnimation and ParallelAnimation will play the
animations in sequence or in parallel.

.. raw:: html

   </p>

.. raw:: html

   <p>

A banner component may have several icons or slogans to display, one
after the other. The opacity property could transform to 1.0 denoting an
opaque object. Using the SequentialAnimation type, the opacity
animations will play after the preceding animation finishes. The
ParallelAnimation type will play the animations at the same time.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">banner</span>
   <span class="name">width</span>: <span class="number">150</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">border</span>.color: <span class="string">&quot;black&quot;</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">code</span>
   <span class="name">text</span>: <span class="string">&quot;Code less.&quot;</span>
   <span class="name">opacity</span>: <span class="number">0.01</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">create</span>
   <span class="name">text</span>: <span class="string">&quot;Create more.&quot;</span>
   <span class="name">opacity</span>: <span class="number">0.01</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">deploy</span>
   <span class="name">text</span>: <span class="string">&quot;Deploy everywhere.&quot;</span>
   <span class="name">opacity</span>: <span class="number">0.01</span>
   }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: <span class="name">playbanner</span>.<span class="name">start</span>()
   }
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="name">id</span>: <span class="name">playbanner</span>
   <span class="name">running</span>: <span class="number">false</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">code</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">200</span>}
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">create</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">200</span>}
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">deploy</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">200</span>}
   }
   }</pre>

.. raw:: html

   <p>

Once individual animations are placed into a SequentialAnimation or
ParallelAnimation, they can no longer be started and stopped
independently. The sequential or parallel animation must be started and
stopped as a group.

.. raw:: html

   </p>

.. raw:: html

   <p>

The SequentialAnimation type is also useful for playing transition
animations because animations are played in parallel inside transitions.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="controlling-animations">

Controlling Animations

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are different methods to control animations.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Animation Playback

.. raw:: html

   </h3>

.. raw:: html

   <p>

All animation types inherit from the Animation type. It is not possible
to create Animation objects; instead, this type provides the essential
properties and methods for animation types. Animation types have
start(), stop(), resume(), pause(), restart(), and complete() -- all of
these methods control the execution of animations.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Easing

.. raw:: html

   </h3>

.. raw:: html

   <p>

Easing curves define how the animation will interpolate between the
start value and the end value. Different easing curves might go beyond
the defined range of interpolation. The easing curves simplify the
creation of animation effects such as bounce effects, acceleration,
deceleration, and cyclical animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

A QML object may have different easing curve for each property
animation. There are also different parameters to control the curve,
some of which are exclusive to a particular curve. For more information
about the easing curves, visit the easing documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

The easing example visually demonstrates each of the different easing
types.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Other Animation Types

.. raw:: html

   </h3>

.. raw:: html

   <p>

In addition, QML provides several other types useful for animation:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

PauseAnimation: enables pauses during animations

.. raw:: html

   </li>

.. raw:: html

   <li>

ScriptAction: allows JavaScript to be executed during an animation, and
can be used together with StateChangeScript to reused existing scripts

.. raw:: html

   </li>

.. raw:: html

   <li>

PropertyAction: changes a property immediately during an animation,
without animating the property change

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These are specialized animation types that animate different property
types

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

SmoothedAnimation: a specialized NumberAnimation that provides smooth
changes in animation when the target value changes

.. raw:: html

   </li>

.. raw:: html

   <li>

SpringAnimation: provides a spring-like animation with specialized
attributes such as mass, damping and epsilon

.. raw:: html

   </li>

.. raw:: html

   <li>

ParentAnimation: used for animating a parent change (see ParentChange)

.. raw:: html

   </li>

.. raw:: html

   <li>

AnchorAnimation: used for animating an anchor change (see AnchorChanges)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="sharing-animation-instances">

Sharing Animation Instances

.. raw:: html

   </h2>

.. raw:: html

   <p>

Sharing animation instances between Transitions or Behaviors is not
supported, and may lead to undefined behavior. In the following example,
changes to the Rectangle's position will most likely not be correctly
animated.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="comment">// NOT SUPPORTED: this will not work correctly as both Behaviors</span>
   <span class="comment">// try to control a single animation instance</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">anim</span>; <span class="name">duration</span>: <span class="number">300</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InBack</span> }
   Behavior on <span class="name">x</span> { <span class="name">animation</span>: <span class="name">anim</span> }
   Behavior on <span class="name">y</span> { <span class="name">animation</span>: <span class="name">anim</span> }
   }</pre>

.. raw:: html

   <p>

The easiest fix is to repeat the NumberAnimation for both Behaviors. If
the repeated animation is rather complex, you might also consider
creating a custom animation component and assigning an instance to each
Behavior, for example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// MyNumberAnimation.qml</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">anim</span>; <span class="name">duration</span>: <span class="number">300</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InBack</span> }</pre>

.. raw:: html

   <pre class="qml"><span class="comment">// main.qml</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   Behavior on <span class="name">x</span> { <span class="type">MyNumberAnimation</span> {} }
   Behavior on <span class="name">y</span> { <span class="type">MyNumberAnimation</span> {} }
   }</pre>

.. raw:: html

   <p>

See also Qt Quick Examples - Animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-statesanimations-animations.html -->
