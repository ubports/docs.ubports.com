QtQuick.PathAnimation
=====================

.. raw:: html

   <p>

Animates an item along a path More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathAnimation -->

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

Qt 5.0

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

anchorPoint : point

.. raw:: html

   </li>

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

easing.bezierCurve : list<real>

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

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

endRotation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

orientation : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

orientationEntryDuration : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

orientationExitDuration : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

path : Path

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Item

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PathAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

When used in a transition, the path can be specified without start or
end points, for example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">PathAnimation</a></span> {
   <span class="name">path</span>: <span class="name">Path</span> {
   <span class="comment">//no startX, startY</span>
   <span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>}
   <span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> {}    <span class="comment">//last element is empty with no end point specified</span>
   }
   }</pre>

.. raw:: html

   <p>

In the above case, the path start will be the item's current position,
and the path end will be the item's target position in the target state.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Animation and Transitions in Qt Quick and PathInterpolator.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathAnimation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$anchorPoint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="anchorPoint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchorPoint : point

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

This property holds the anchor point for the item being animated.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the upper-left corner of the target (its 0,0 point) will be
anchored to (or follow) the path. The anchorPoint property can be used
to specify a different point for anchoring. For example, specifying an
anchorPoint of 5,5 for a 10x10 item means the center of the item will
follow the path.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@anchorPoint -->

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

   </table>

.. raw:: html

   <p>

the easing curve used for the animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

To specify an easing curve you need to specify at least the type. For
some curves you can also specify amplitude, period, overshoot or custom
bezierCurve data. The default easing curve is Easing.Linear.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the PropertyAnimation::easing.type documentation for information
about the different types of easing curves.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@easing -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="endRotation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

endRotation : real

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

This property holds the ending rotation for the target.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an orientation has been specified for the PathAnimation, and the path
doesn't end with the item at the desired rotation, the endRotation
property can be used to manually specify an end rotation.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is typically used with orientationExitDuration, as
specifying an endRotation without an orientationExitDuration may cause a
jump to the final rotation, rather than a smooth transition.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@endRotation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

orientation : enumeration

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

This property controls the rotation of the item as it animates along the
path.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a value other than Fixed is specified, the PathAnimation will rotate
the item to achieve the specified orientation as it travels along the
path.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

PathAnimation.Fixed (default) - the PathAnimation will not control the
rotation of the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathAnimation.RightFirst - The right side of the item will lead along
the path.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathAnimation.LeftFirst - The left side of the item will lead along the
path.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathAnimation.BottomFirst - The bottom of the item will lead along the
path.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathAnimation.TopFirst - The top of the item will lead along the path.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@orientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientationEntryDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

orientationEntryDuration : real

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

This property holds the duration (in milliseconds) of the transition in
to the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an orientation has been specified for the PathAnimation, and the
starting rotation of the item does not match that given by the
orientation, orientationEntryDuration can be used to smoothly transition
from the item's starting rotation to the rotation given by the path
orientation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@orientationEntryDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientationExitDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

orientationExitDuration : real

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

This property holds the duration (in milliseconds) of the transition out
of the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an orientation and endRotation have been specified for the
PathAnimation, orientationExitDuration can be used to smoothly
transition from the rotation given by the path orientation to the
specified endRotation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@orientationExitDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="path-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

path : Path

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

This property holds the path to animate along.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on defining a path see the Path documentation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@path -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : Item

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

This property holds the item to animate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->


