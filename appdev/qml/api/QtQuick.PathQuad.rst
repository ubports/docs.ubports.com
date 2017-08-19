QtQuick.PathQuad
================

.. raw:: html

   <p>

Defines a quadratic Bezier curve with a control point More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathQuad -->

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

controlX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

controlY : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeControlX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relativeControlY : real

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

   <!-- $$$PathQuad-description -->

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
   <span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">0</span>
   <span class="type"><a href="index.html">PathQuad</a></span> { <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">controlX</span>: <span class="number">100</span>; <span class="name">controlY</span>: <span class="number">150</span> }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

See also Path, PathCubic, PathLine, PathArc, PathCurve, and PathSvg.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathQuad -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$controlX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="controlX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

controlX : real

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

Defines the position of the control point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@controlX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="controlY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

controlY : real

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

Defines the position of the control point.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@controlY -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeControlX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeControlX : real

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

Defines the position of the control point relative to the curve's start.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both a relative and absolute control position are specified for a
single axis, the relative position will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Relative and absolute positions can be mixed, for example it is valid to
set a relative control x and an absolute control y.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also controlX and controlY.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeControlX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relativeControlY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relativeControlY : real

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

Defines the position of the control point relative to the curve's start.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both a relative and absolute control position are specified for a
single axis, the relative position will be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Relative and absolute positions can be mixed, for example it is valid to
set a relative control x and an absolute control y.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also controlX and controlY.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relativeControlY -->

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


