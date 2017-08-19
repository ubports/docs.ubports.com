QtQuick.PathArc
===============

.. raw:: html

   <p>

Defines an arc with the given radius More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathArc -->

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

direction : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

radiusX : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

radiusY : real

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

useLargeArc : bool

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

   <!-- $$$PathArc-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

PathArc provides a simple way of specifying an arc that ends at a given
position and uses the specified radius. It is modeled after the SVG
elliptical arc command.

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
   <span class="name">startX</span>: <span class="number">100</span>; <span class="name">startY</span>: <span class="number">0</span>
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">100</span>
   <span class="name">radiusX</span>: <span class="number">100</span>; <span class="name">radiusY</span>: <span class="number">100</span>
   <span class="name">useLargeArc</span>: <span class="number">true</span>
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

Note that a single PathArc cannot be used to specify a circle. Instead,
you can use two PathArc elements, each specifying half of the circle.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Path, PathLine, PathQuad, PathCubic, PathCurve, and PathSvg.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathArc -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="direction-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

direction : enumeration

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

Defines the direction of the arc. Possible values are PathArc.Clockwise
(default) and PathArc.Counterclockwise.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following QML can produce either of the two illustrated arcs below
by changing the value of direction.

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
   <span class="name">startX</span>: <span class="number">50</span>; <span class="name">startY</span>: <span class="number">50</span>
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">x</span>: <span class="number">150</span>; <span class="name">y</span>: <span class="number">50</span>
   <span class="name">radiusX</span>: <span class="number">75</span>; <span class="name">radiusY</span>: <span class="number">50</span>
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

See also useLargeArc.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@direction -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="radiusX-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

radiusX : real

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

Defines the radius of the arc.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following QML demonstrates how different radius values can be used
to change the shape of the arc:

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
   <span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
   <span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">15</span>
   }
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
   <span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">25</span>
   }
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
   <span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">50</span>
   }
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
   <span class="name">radiusX</span>: <span class="number">50</span>; <span class="name">radiusY</span>: <span class="number">100</span>
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@radiusX -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="radiusY-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

radiusY : real

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

Defines the radius of the arc.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following QML demonstrates how different radius values can be used
to change the shape of the arc:

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
   <span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
   <span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">15</span>
   }
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
   <span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">25</span>
   }
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
   <span class="name">radiusX</span>: <span class="number">25</span>; <span class="name">radiusY</span>: <span class="number">50</span>
   }
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">100</span>
   <span class="name">radiusX</span>: <span class="number">50</span>; <span class="name">radiusY</span>: <span class="number">100</span>
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@radiusY -->

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

Defines the end point of the arc relative to its start.

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

Defines the end point of the arc relative to its start.

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

   <tr valign="top" id="useLargeArc-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

useLargeArc : bool

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

Whether to use a large arc as defined by the arc points.

.. raw:: html

   </p>

.. raw:: html

   <p>

Given fixed start and end positions, radius, and direction, there are
two possible arcs that can fit the data. useLargeArc is used to
distinguish between these. For example, the following QML can produce
either of the two illustrated arcs below by changing the value of
useLargeArc.

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
   <span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">PathArc</a></span> {
   <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">200</span>
   <span class="name">radiusX</span>: <span class="number">100</span>; <span class="name">radiusY</span>: <span class="number">100</span>
   <span class="name">direction</span>: <span class="name">PathArc</span>.<span class="name">Clockwise</span>
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

The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@useLargeArc -->

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

Defines the end point of the arc.

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

Defines the end point of the arc.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also relativeX and relativeY.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->


