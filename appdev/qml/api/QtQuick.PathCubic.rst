QtQuick.PathCubic
=================

.. raw:: html

   <p>

Defines a cubic Bezier curve with two control points More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathCubic -->

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

control1X : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

control1Y : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

control2X : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

control2Y : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeControl1X : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeControl1Y : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeControl2X : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeControl2Y : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeY : real

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

   <!-- $$$PathCubic-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The following QML produces the path shown below:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
   <span class="name">startX</span>: <span class="number">20</span>; <span class="name">startY</span>: <span class="number">0</span>
   <span class="type"><a href="index.html">PathCubic</a></span> {
   <span class="name">x</span>: <span class="number">180</span>; <span class="name">y</span>: <span class="number">0</span>
   <span class="name">control1X</span>: -<span class="number">10</span>; <span class="name">control1Y</span>: <span class="number">90</span>
   <span class="name">control2X</span>: <span class="number">210</span>; <span class="name">control2Y</span>: <span class="number">90</span>
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

See also Path, PathQuad, PathLine, PathArc, PathCurve, and PathSvg.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathCubic -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$control1X -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="control1X-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

control1X : real

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

Defines the position of the first control point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@control1X -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="control1Y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

control1Y : real

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

Defines the position of the first control point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@control1Y -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="control2X-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

control2X : real

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

Defines the position of the second control point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@control2X -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="control2Y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

control2Y : real

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

Defines the position of the second control point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@control2Y -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeControl1X-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeControl1X : real

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

Defines the positions of the control points relative to the curve's
start.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also control1X, control1Y, control2X, and control2Y.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeControl1X -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeControl1Y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeControl1Y : real

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

Defines the positions of the control points relative to the curve's
start.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also control1X, control1Y, control2X, and control2Y.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeControl1Y -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeControl2X-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeControl2X : real

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

Defines the positions of the control points relative to the curve's
start.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also control1X, control1Y, control2X, and control2Y.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeControl2X -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeControl2Y-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeControl2Y : real

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

Defines the positions of the control points relative to the curve's
start.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both a relative and absolute control position are specified for a
control point's axis, the relative position will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Relative and absolute positions can be mixed, for example it is valid to
set a relative control1 x and an absolute control1 y.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also control1X, control1Y, control2X, and control2Y.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeControl2Y -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeX : real

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

Defines the end point of the curve relative to its start.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also x and y.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeY : real

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

Defines the end point of the curve relative to its start.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both a relative and absolute end position are specified for a single
axis, the relative position will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Relative and absolute positions can be mixed, for example it is valid to
set a relative x and an absolute y.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also x and y.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeY -->

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

Defines the end point of the curve.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also relativeX and relativeY.

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

Defines the end point of the curve.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also relativeX and relativeY.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->


