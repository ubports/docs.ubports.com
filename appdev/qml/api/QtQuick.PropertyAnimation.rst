QtQuick.PropertyAnimation
=========================

.. raw:: html

   <p>

Animates changes in property values More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PropertyAnimation -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Animation

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

ColorAnimation, NumberAnimation, RotationAnimation, and
Vector3dAnimation.

.. raw:: html

   </p>

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

duration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

easing

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

easing.type : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

easing.amplitude : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

easing.overshoot : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

easing.period : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

easing.bezierCurve : list<real>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exclude : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

from : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

properties : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

property : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

targets : list<Object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

to : variant

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PropertyAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

PropertyAnimation provides a way to animate changes to a property's
value.

.. raw:: html

   </p>

.. raw:: html

   <p>

It can be used to define animations in a number of ways:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

In a Transition

.. raw:: html

   <p>

For example, to animate any objects that have changed their x or y
properties as a result of a state change, using an InOutQuad easing
curve:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;moved&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">x</span>: <span class="number">50</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

In a Behavior

.. raw:: html

   <p>

For example, to animate all changes to a rectangle's x property:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   Behavior on <span class="name">x</span> { <span class="type"><a href="index.html">PropertyAnimation</a></span> {} }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">parent</span>.<span class="name">x</span> <span class="operator">=</span> <span class="number">50</span> }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

As a property value source

.. raw:: html

   <p>

For example, to repeatedly animate the rectangle's x property:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   SequentialAnimation on <span class="name">x</span> {
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">to</span>: <span class="number">50</span> }
   <span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">to</span>: <span class="number">0</span> }
   }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

In a signal handler

.. raw:: html

   <p>

For example, to fade out theObject when clicked:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">theObject</span>
   <span class="name">onClicked</span>: <span class="name">PropertyAnimation</span> { <span class="name">target</span>: <span class="name">theObject</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">0</span> }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

Standalone

.. raw:: html

   <p>

For example, to animate rect's width property over 500ms, from its
current width to 30:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="comment">// this is a standalone animation, it's not running by default</span>
   <span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">id</span>: <span class="name">animation</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;width&quot;</span>; <span class="name">to</span>: <span class="number">30</span>; <span class="name">duration</span>: <span class="number">500</span> }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">animation</span>.<span class="name">running</span> <span class="operator">=</span> <span class="number">true</span> }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Depending on how the animation is used, the set of properties normally
used will be different. For more information see the individual property
documentation, as well as the Animation and Transitions in Qt Quick
introduction.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that PropertyAnimation inherits the abstract Animation type. This
includes additional properties and methods for controlling the
animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick and Qt Quick Examples -
Animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PropertyAnimation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="duration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

duration : int

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

This property holds the duration of the animation, in milliseconds.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is 250.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@duration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="easing-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

easing group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="easing.type-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

easing.type : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="easing.amplitude-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

easing.amplitude : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="easing.overshoot-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

easing.overshoot : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="easing.period-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

easing.period : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="easing.bezierCurve-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

easing.bezierCurve : list<real>

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

//! propertyanimation.easing

.. raw:: html

   </p>

.. raw:: html

   <p>

Specifies the easing curve used for the animation

.. raw:: html

   </p>

.. raw:: html

   <p>

To specify an easing curve you need to specify at least the type. For
some curves you can also specify amplitude, period and/or overshoot
(more details provided after the table). The default easing curve is
Easing.Linear.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutElastic</span>; <span class="name">easing</span>.amplitude: <span class="number">2.0</span>; <span class="name">easing</span>.period: <span class="number">1.5</span> }</pre>

.. raw:: html

   <p>

Available types are:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.Linear

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a linear (t) function: velocity is constant.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InQuad

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quadratic (t^2) function: accelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutQuad

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quadratic (t^2) function: decelerating to zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutQuad

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quadratic (t^2) function: acceleration until halfway,
then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInQuad

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quadratic (t^2) function: deceleration until halfway,
then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InCubic

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a cubic (t^3) function: accelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutCubic

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a cubic (t^3) function: decelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutCubic

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a cubic (t^3) function: acceleration until halfway,
then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInCubic

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a cubic (t^3) function: deceleration until halfway,
then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InQuart

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quartic (t^4) function: accelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutQuart

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quartic (t^4) function: decelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutQuart

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quartic (t^4) function: acceleration until halfway,
then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInQuart

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quartic (t^4) function: deceleration until halfway,
then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InQuint

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quintic (t^5) function: accelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutQuint

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quintic (t^5) function: decelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutQuint

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quintic (t^5) function: acceleration until halfway,
then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInQuint

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a quintic (t^5) function: deceleration until halfway,
then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InSine

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a sinusoidal (sin(t)) function: accelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutSine

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a sinusoidal (sin(t)) function: decelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutSine

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a sinusoidal (sin(t)) function: acceleration until
halfway, then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInSine

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a sinusoidal (sin(t)) function: deceleration until
halfway, then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InExpo

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for an exponential (2^t) function: accelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutExpo

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for an exponential (2^t) function: decelerating from zero
velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutExpo

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for an exponential (2^t) function: acceleration until
halfway, then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInExpo

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for an exponential (2^t) function: deceleration until
halfway, then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InCirc

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a circular (sqrt(1-t^2)) function: accelerating from
zero velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutCirc

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a circular (sqrt(1-t^2)) function: decelerating from
zero velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutCirc

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a circular (sqrt(1-t^2)) function: acceleration until
halfway, then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInCirc

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a circular (sqrt(1-t^2)) function: deceleration until
halfway, then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InElastic

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for an elastic (exponentially decaying sine wave) function:
accelerating from zero velocity. The peak amplitude can be set with the
amplitude parameter, and the period of decay by the period parameter.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutElastic

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for an elastic (exponentially decaying sine wave) function:
decelerating from zero velocity. The peak amplitude can be set with the
amplitude parameter, and the period of decay by the period parameter.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutElastic

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for an elastic (exponentially decaying sine wave) function:
acceleration until halfway, then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInElastic

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for an elastic (exponentially decaying sine wave) function:
deceleration until halfway, then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InBack

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a back (overshooting cubic function: (s+1)*t^3 -
s*\ t^2) easing in: accelerating from zero velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutBack

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a back (overshooting cubic function: (s+1)*t^3 -
s*\ t^2) easing out: decelerating to zero velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutBack

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a back (overshooting cubic function: (s+1)*t^3 -
s*\ t^2) easing in/out: acceleration until halfway, then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInBack

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*\ t^2)
easing out/in: deceleration until halfway, then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InBounce

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a bounce (exponentially decaying parabolic bounce)
function: accelerating from zero velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutBounce

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a bounce (exponentially decaying parabolic bounce)
function: decelerating from zero velocity.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.InOutBounce

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a bounce (exponentially decaying parabolic bounce)
function easing in/out: acceleration until halfway, then deceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.OutInBounce

.. raw:: html

   </td>

.. raw:: html

   <td>

Easing curve for a bounce (exponentially decaying parabolic bounce)
function easing out/in: deceleration until halfway, then acceleration.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Easing.Bezier

.. raw:: html

   </td>

.. raw:: html

   <td>

Custom easing curve defined by the easing.bezierCurve property.

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

easing.amplitude is only applicable for bounce and elastic curves
(curves of type Easing.InBounce, Easing.OutBounce, Easing.InOutBounce,
Easing.OutInBounce, Easing.InElastic, Easing.OutElastic,
Easing.InOutElastic or Easing.OutInElastic).

.. raw:: html

   </p>

.. raw:: html

   <p>

easing.overshoot is only applicable if easing.type is: Easing.InBack,
Easing.OutBack, Easing.InOutBack or Easing.OutInBack.

.. raw:: html

   </p>

.. raw:: html

   <p>

easing.period is only applicable if easing.type is: Easing.InElastic,
Easing.OutElastic, Easing.InOutElastic or Easing.OutInElastic.

.. raw:: html

   </p>

.. raw:: html

   <p>

easing.bezierCurve is only applicable if easing.type is: Easing.Bezier.
This property is a list<real> containing groups of three points defining
a curve from 0,0 to 1,1 - control1, control2, end point: [cx1, cy1, cx2,
cy2, endx, endy, ...]. The last point must be 1,1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the Easing Curves for a demonstration of the different easing
settings. //! propertyanimation.easing

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@easing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exclude-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

exclude : list<Object>

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

This property holds the items not to be affected by this animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also PropertyAnimation::targets.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exclude -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="from-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

from : variant

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

This property holds the starting value for the animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the PropertyAnimation is defined within a Transition or Behavior,
this value defaults to the value defined in the starting state of the
Transition, or the current value of the property at the moment the
Behavior is triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@from -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="properties-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

properties : string

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

These properties are used as a set to determine which properties should
be animated. The singular and plural forms are functionally identical,
e.g.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

has the same meaning as

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

The singular forms are slightly optimized, so if you do have only a
single target/property to animate you should try to use them.

.. raw:: html

   </p>

.. raw:: html

   <p>

The targets property allows multiple targets to be set. For example,
this animates the x property of both itemA and itemB:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

In many cases these properties do not need to be explicitly specified,
as they can be inferred from the animation framework:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic" width="80%">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Value Source / Behavior

.. raw:: html

   </td>

.. raw:: html

   <td>

When an animation is used as a value source or in a Behavior, the
default target and property name to be animated can both be inferred.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
   Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Transition

.. raw:: html

   </td>

.. raw:: html

   <td>

When used in a transition, a property animation is assumed to match all
targets but no properties. In practice, that means you need to specify
at least the properties in order for the animation to do anything.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
   <span class="comment">//animate theRect's z to its final value</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Standalone

.. raw:: html

   </td>

.. raw:: html

   <td>

When an animation is used standalone, both the target and property need
to be explicitly specified.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   <span class="comment">//need to explicitly specify target and property</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

As seen in the above example, properties is specified as a
comma-separated string of property names to animate.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also exclude and Animation and Transitions in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@properties -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="property-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

property : string

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

These properties are used as a set to determine which properties should
be animated. The singular and plural forms are functionally identical,
e.g.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

has the same meaning as

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

The singular forms are slightly optimized, so if you do have only a
single target/property to animate you should try to use them.

.. raw:: html

   </p>

.. raw:: html

   <p>

The targets property allows multiple targets to be set. For example,
this animates the x property of both itemA and itemB:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

In many cases these properties do not need to be explicitly specified,
as they can be inferred from the animation framework:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic" width="80%">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Value Source / Behavior

.. raw:: html

   </td>

.. raw:: html

   <td>

When an animation is used as a value source or in a Behavior, the
default target and property name to be animated can both be inferred.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
   Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Transition

.. raw:: html

   </td>

.. raw:: html

   <td>

When used in a transition, a property animation is assumed to match all
targets but no properties. In practice, that means you need to specify
at least the properties in order for the animation to do anything.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
   <span class="comment">//animate theRect's z to its final value</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Standalone

.. raw:: html

   </td>

.. raw:: html

   <td>

When an animation is used standalone, both the target and property need
to be explicitly specified.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   <span class="comment">//need to explicitly specify target and property</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

As seen in the above example, properties is specified as a
comma-separated string of property names to animate.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also exclude and Animation and Transitions in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@property -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : Object

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

These properties are used as a set to determine which properties should
be animated. The singular and plural forms are functionally identical,
e.g.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

has the same meaning as

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

The singular forms are slightly optimized, so if you do have only a
single target/property to animate you should try to use them.

.. raw:: html

   </p>

.. raw:: html

   <p>

The targets property allows multiple targets to be set. For example,
this animates the x property of both itemA and itemB:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

In many cases these properties do not need to be explicitly specified,
as they can be inferred from the animation framework:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic" width="80%">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Value Source / Behavior

.. raw:: html

   </td>

.. raw:: html

   <td>

When an animation is used as a value source or in a Behavior, the
default target and property name to be animated can both be inferred.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
   Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Transition

.. raw:: html

   </td>

.. raw:: html

   <td>

When used in a transition, a property animation is assumed to match all
targets but no properties. In practice, that means you need to specify
at least the properties in order for the animation to do anything.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
   <span class="comment">//animate theRect's z to its final value</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Standalone

.. raw:: html

   </td>

.. raw:: html

   <td>

When an animation is used standalone, both the target and property need
to be explicitly specified.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   <span class="comment">//need to explicitly specify target and property</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

As seen in the above example, properties is specified as a
comma-separated string of property names to animate.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also exclude and Animation and Transitions in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="targets-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

targets : list<Object>

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

These properties are used as a set to determine which properties should
be animated. The singular and plural forms are functionally identical,
e.g.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

has the same meaning as

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

The singular forms are slightly optimized, so if you do have only a
single target/property to animate you should try to use them.

.. raw:: html

   </p>

.. raw:: html

   <p>

The targets property allows multiple targets to be set. For example,
this animates the x property of both itemA and itemB:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>

.. raw:: html

   <p>

In many cases these properties do not need to be explicitly specified,
as they can be inferred from the animation framework:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic" width="80%">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Value Source / Behavior

.. raw:: html

   </td>

.. raw:: html

   <td>

When an animation is used as a value source or in a Behavior, the
default target and property name to be animated can both be inferred.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
   Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Transition

.. raw:: html

   </td>

.. raw:: html

   <td>

When used in a transition, a property animation is assumed to match all
targets but no properties. In practice, that means you need to specify
at least the properties in order for the animation to do anything.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
   }
   <span class="name">transitions</span>: <span class="name">Transition</span> {
   <span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
   <span class="comment">//animate theRect's z to its final value</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Standalone

.. raw:: html

   </td>

.. raw:: html

   <td>

When an animation is used standalone, both the target and property need
to be explicitly specified.

.. raw:: html

   <pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">theRect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
   <span class="comment">//need to explicitly specify target and property</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

As seen in the above example, properties is specified as a
comma-separated string of property names to animate.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also exclude and Animation and Transitions in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@targets -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="to-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

to : variant

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

This property holds the end value for the animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the PropertyAnimation is defined within a Transition or Behavior,
this value defaults to the value defined in the end state of the
Transition, or the value of the property change that triggered the
Behavior.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@to -->


