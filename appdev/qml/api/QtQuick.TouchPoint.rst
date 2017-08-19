QtQuick.TouchPoint
==================

.. raw:: html

   <p>

Describes a touch point in a MultiPointTouchArea More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TouchPoint -->

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

area : rectangle

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pointId : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pressure : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

previousX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

previousY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sceneX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sceneY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

startY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

velocity : vector2d

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

x : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

y : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TouchPoint-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The TouchPoint type contains information about a touch point, such as
the current position, pressure, and area.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TouchPoint -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$area -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="area-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

area : rectangle

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

These properties hold additional information about the current state of
the touch point.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

pressure is a value in the range of 0.0 to 1.0.

.. raw:: html

   </li>

.. raw:: html

   <li>

velocity is a vector with magnitude reported in pixels per second.

.. raw:: html

   </li>

.. raw:: html

   <li>

area is a rectangle covering the area of the touch point, centered on
the current position of the touch point.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Not all touch devices support velocity. If velocity is not supported, it
will be reported as 0,0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@area -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pointId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pointId : int

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

This property holds the point id of the touch point.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each touch point within a MultiPointTouchArea will have a unique id.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pointId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pressed : bool

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

This property holds whether the touch point is currently pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pressure-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

pressure : real

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

These properties hold additional information about the current state of
the touch point.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

pressure is a value in the range of 0.0 to 1.0.

.. raw:: html

   </li>

.. raw:: html

   <li>

velocity is a vector with magnitude reported in pixels per second.

.. raw:: html

   </li>

.. raw:: html

   <li>

area is a rectangle covering the area of the touch point, centered on
the current position of the touch point.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Not all touch devices support velocity. If velocity is not supported, it
will be reported as 0,0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@pressure -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previousX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

previousX : real

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

These properties hold the previous position of the touch point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@previousX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="previousY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

previousY : real

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

These properties hold the previous position of the touch point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@previousY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sceneX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sceneX : real

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

These properties hold the current position of the touch point in scene
coordinates.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sceneX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sceneY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sceneY : real

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

These properties hold the current position of the touch point in scene
coordinates.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sceneY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

startX : real

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

These properties hold the starting position of the touch point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@startX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="startY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

startY : real

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

These properties hold the starting position of the touch point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@startY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="velocity-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

velocity : vector2d

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

These properties hold additional information about the current state of
the touch point.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

pressure is a value in the range of 0.0 to 1.0.

.. raw:: html

   </li>

.. raw:: html

   <li>

velocity is a vector with magnitude reported in pixels per second.

.. raw:: html

   </li>

.. raw:: html

   <li>

area is a rectangle covering the area of the touch point, centered on
the current position of the touch point.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Not all touch devices support velocity. If velocity is not supported, it
will be reported as 0,0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@velocity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="x-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

x : real

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

These properties hold the current position of the touch point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@x -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

y : real

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

These properties hold the current position of the touch point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->


