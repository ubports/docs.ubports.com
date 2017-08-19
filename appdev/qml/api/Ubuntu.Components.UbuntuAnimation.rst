Ubuntu.Components.UbuntuAnimation
=================================

.. raw:: html

   <p>

Singleton defining standard Ubuntu durations and easing for animations
that should be used to ensure that Ubuntu applications are consistent in
their animations. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UbuntuAnimation -->

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

import Ubuntu.Components 1.3

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

BriskDuration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

FastDuration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

SleepyDuration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

SlowDuration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

SnapDuration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

StandardEasing : QEasingCurve

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

StandardEasingReverse : QEasingCurve

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$UbuntuAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of use:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.RotationAnimation.md">RotationAnimation</a></span> {
   <span class="name">duration</span>: <span class="name">UbuntuAnimation</span>.<span class="name">SlowDuration</span>
   <span class="name">easing</span>: <span class="name">UbuntuAnimation</span>.<span class="name">StandardEasing</span>
   }</pre>

.. raw:: html

   <p>

Animation durations should be selected depending on the frequency and
disruptiveness of the animation. The more frequent an animation is, the
faster it should be. The more disruptive an animation is, the slower it
should be. Rule of thumb to select durations:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

SnapDuration: very frequent, non-disruptive.

.. raw:: html

   </li>

.. raw:: html

   <li>

FastDuration: frequent, non-disruptive.

.. raw:: html

   </li>

.. raw:: html

   <li>

SlowDuration: less frequent, non-disruptive.

.. raw:: html

   </li>

.. raw:: html

   <li>

SleepyDuration: disruptive.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note that UbuntuNumberAnimation provides a standard NumberAnimation for
Ubuntu applications.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UbuntuAnimation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$BriskDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="BriskDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

BriskDuration : int

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

Used for frequent and non-disruptive transitions. Used when objects have
more distance to travel or when they are larger in size.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value is 333ms.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@BriskDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="FastDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

FastDuration : int

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

Used for frequent and non-disruptive transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value is 165ms.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FastDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="SleepyDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

SleepyDuration : int

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

Used for disruptive transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value is 1000ms.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SleepyDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="SlowDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

SlowDuration : int

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

Used for delay after key press and for less frequent and non-disruptive
transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value is 500ms.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SlowDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="SnapDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

SnapDuration : int

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

Used for very frequent and non-disruptive transitions on small objects.
The user would perceive the change as instant but smooth.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value is 100ms.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SnapDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="StandardEasing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

StandardEasing : QEasingCurve

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

Used for animations trigerred by user actions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StandardEasing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="StandardEasingReverse-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

StandardEasingReverse : QEasingCurve

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

StandardEasingReverse is mainly used in combination with StandardEasing.
For example, if animating an object that bounces, you will want the
object to slow down as it reaches the apex of its bounce and slowly
speed back up as it descends.

.. raw:: html

   </p>

.. raw:: html

   <p>

StandardEasingReverse should not be used to introduce a new object or
screen to the user. In general, it should only be used if StandardEasing
is visually inappropriate and even so, will usually be proceeded by
StandardEasing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StandardEasingReverse -->


