QtQuick.Animator
================

.. raw:: html

   <p>

Is the base of all QML animators. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Animator -->

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

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt 5.2

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

from : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : QtQuick::Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

to : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Animator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Animator types are a special type of animation which operate directly on
Qt Quick's scene graph, rather than the QML objects and their properties
like regular Animation types do. This has the benefit that Animator
based animations can animate on the scene graph's rendering thread even
when the UI thread is blocked.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value of the QML property will be updated after the animation has
finished. The property is not updated while the animation is running.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Animator types can be used just like any other Animation type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">mixBox</span>
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="type"><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a></span> {
   <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> {
   <span class="name">target</span>: <span class="name">mixBox</span>
   <span class="name">property</span>: <span class="string">&quot;color&quot;</span>
   <span class="name">from</span>: <span class="string">&quot;forestgreen&quot;</span>
   <span class="name">to</span>: <span class="string">&quot;lightsteelblue&quot;</span>;
   <span class="name">duration</span>: <span class="number">1000</span>
   }
   <span class="type"><a href="QtQuick.ScaleAnimator.md">ScaleAnimator</a></span> {
   <span class="name">target</span>: <span class="name">mixBox</span>
   <span class="name">from</span>: <span class="number">2</span>
   <span class="name">to</span>: <span class="number">1</span>
   <span class="name">duration</span>: <span class="number">1000</span>
   }
   <span class="name">running</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

If all sub-animations of ParallelAnimation and SequentialAnimation are
Animator types, the ParallelAnimation and SequentialAnimation will also
be treated as an Animator and be run on the scene graph's rendering
thread when possible.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Animator types can be used for animations during transitions, but
they do not support the reversible property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Animator type cannot be used directly in a QML file. It exists to
provide a set of common properties and methods, available across all the
other animator types that inherit from it. Attempting to use the
Animator type directly will result in an error.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Animator -->

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

This property holds the duration of the animation in milliseconds.

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

   <pre class="qml"><span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutElastic</span>; <span class="name">easing</span>.amplitude: <span class="number">2.0</span>; <span class="name">easing</span>.period: <span class="number">1.5</span> }</pre>

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
settings.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@easing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="from-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

from : real

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

If the Animator is defined within a Transition or Behavior, this value
defaults to the value defined in the starting state of the Transition,
or the current value of the property at the moment the Behavior is
triggered.

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

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : QtQuick::Item

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

This property holds the target item of the animator.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Animator targets must be Item based types.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="to-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

to : real

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

If the Animator is defined within a Transition or Behavior, this value
defaults to the value defined in the end state of the Transition, or the
value of the property change that triggered the Behavior.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@to -->


