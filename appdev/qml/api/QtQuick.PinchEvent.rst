QtQuick.PinchEvent
==================

.. raw:: html

   <p>

For specifying information about a pinch event More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PinchEvent -->

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

accepted : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

angle : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

center : QPointF

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

point1 : QPointF

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

point2 : QPointF

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pointCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

previousAngle : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

previousCenter : QPointF

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

previousScale : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rotation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

scale : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startCenter : QPointF

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startPoint1 : QPointF

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startPoint2 : QPointF

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PinchEvent-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The PinchEvent type was added in QtQuick 1.1

.. raw:: html

   </p>

.. raw:: html

   <p>

The center, startCenter, previousCenter properties provide the center
position between the two touch points.

.. raw:: html

   </p>

.. raw:: html

   <p>

The scale and previousScale properties provide the scale factor.

.. raw:: html

   </p>

.. raw:: html

   <p>

The angle, previousAngle and rotation properties provide the angle
between the two points and the amount of rotation.

.. raw:: html

   </p>

.. raw:: html

   <p>

The point1, point2, startPoint1, startPoint2 properties provide the
positions of the touch points.

.. raw:: html

   </p>

.. raw:: html

   <p>

The accepted property may be set to false in the onPinchStarted handler
if the gesture should not be handled.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also PinchArea.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PinchEvent -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="accepted-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

accepted : bool

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

Setting this property to false in the PinchArea::onPinchStarted handler
will result in no further pinch events being generated, and the gesture
ignored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@accepted -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="angle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

angle : real

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

These properties hold the angle between the two touch points.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

angle is the current angle between the two points in the range -180 to
180.

.. raw:: html

   </li>

.. raw:: html

   <li>

previousAngle is the angle of the previous event.

.. raw:: html

   </li>

.. raw:: html

   <li>

rotation is the total rotation since the pinch gesture started.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When a pinch gesture is started, the rotation is 0.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@angle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="center-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

center : QPointF

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

These properties hold the position of the center point between the two
touch points.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

center is the current center point

.. raw:: html

   </li>

.. raw:: html

   <li>

previousCenter is the center point of the previous event.

.. raw:: html

   </li>

.. raw:: html

   <li>

startCenter is the center point when the gesture began

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@center -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="point1-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

point1 : QPointF

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

These properties provide the actual touch points generating the pinch.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

point1 and point2 hold the current positions of the points.

.. raw:: html

   </li>

.. raw:: html

   <li>

startPoint1 and startPoint2 hold the positions of the points when the
second point was touched.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@point1 -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="point2-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

point2 : QPointF

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

These properties provide the actual touch points generating the pinch.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

point1 and point2 hold the current positions of the points.

.. raw:: html

   </li>

.. raw:: html

   <li>

startPoint1 and startPoint2 hold the positions of the points when the
second point was touched.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@point2 -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pointCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pointCount : int

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

Holds the number of points currently touched. The PinchArea will not
react until two touch points have initited a gesture, but will remain
active until all touch points have been released.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pointCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previousAngle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

previousAngle : real

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

These properties hold the angle between the two touch points.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

angle is the current angle between the two points in the range -180 to
180.

.. raw:: html

   </li>

.. raw:: html

   <li>

previousAngle is the angle of the previous event.

.. raw:: html

   </li>

.. raw:: html

   <li>

rotation is the total rotation since the pinch gesture started.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When a pinch gesture is started, the rotation is 0.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@previousAngle -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previousCenter-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

previousCenter : QPointF

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

These properties hold the position of the center point between the two
touch points.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

center is the current center point

.. raw:: html

   </li>

.. raw:: html

   <li>

previousCenter is the center point of the previous event.

.. raw:: html

   </li>

.. raw:: html

   <li>

startCenter is the center point when the gesture began

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@previousCenter -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previousScale-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

previousScale : real

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

These properties hold the scale factor determined by the change in
distance between the two touch points.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

scale is the current scale factor.

.. raw:: html

   </li>

.. raw:: html

   <li>

previousScale is the scale factor of the previous event.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When a pinch gesture is started, the scale is 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@previousScale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rotation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rotation : real

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

These properties hold the angle between the two touch points.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

angle is the current angle between the two points in the range -180 to
180.

.. raw:: html

   </li>

.. raw:: html

   <li>

previousAngle is the angle of the previous event.

.. raw:: html

   </li>

.. raw:: html

   <li>

rotation is the total rotation since the pinch gesture started.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When a pinch gesture is started, the rotation is 0.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rotation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="scale-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

scale : real

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

These properties hold the scale factor determined by the change in
distance between the two touch points.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

scale is the current scale factor.

.. raw:: html

   </li>

.. raw:: html

   <li>

previousScale is the scale factor of the previous event.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When a pinch gesture is started, the scale is 1.0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@scale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startCenter-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

startCenter : QPointF

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

These properties hold the position of the center point between the two
touch points.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

center is the current center point

.. raw:: html

   </li>

.. raw:: html

   <li>

previousCenter is the center point of the previous event.

.. raw:: html

   </li>

.. raw:: html

   <li>

startCenter is the center point when the gesture began

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@startCenter -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startPoint1-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

startPoint1 : QPointF

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

These properties provide the actual touch points generating the pinch.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

point1 and point2 hold the current positions of the points.

.. raw:: html

   </li>

.. raw:: html

   <li>

startPoint1 and startPoint2 hold the positions of the points when the
second point was touched.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@startPoint1 -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startPoint2-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

startPoint2 : QPointF

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

These properties provide the actual touch points generating the pinch.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

point1 and point2 hold the current positions of the points.

.. raw:: html

   </li>

.. raw:: html

   <li>

startPoint1 and startPoint2 hold the positions of the points when the
second point was touched.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@startPoint2 -->


