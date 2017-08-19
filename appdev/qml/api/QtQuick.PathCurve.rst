QtQuick.PathCurve
=================

.. raw:: html

   <p>

Defines a point on a Catmull-Rom curve More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathCurve -->

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

   <!-- $$$PathCurve-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

PathCurve provides an easy way to specify a curve passing directly
through a set of points. Typically multiple PathCurves are used in a
series, as the following example demonstrates:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Canvas.md">Canvas</a></span> {
   <span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">contextType</span>: <span class="string">&quot;2d&quot;</span>
   <span class="type"><a href="QtQuick.Path.md">Path</a></span> {
   <span class="name">id</span>: <span class="name">myPath</span>
   <span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">PathCurve</a></span> { <span class="name">x</span>: <span class="number">75</span>; <span class="name">y</span>: <span class="number">75</span> }
   <span class="type"><a href="index.html">PathCurve</a></span> { <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">150</span> }
   <span class="type"><a href="index.html">PathCurve</a></span> { <span class="name">x</span>: <span class="number">325</span>; <span class="name">y</span>: <span class="number">25</span> }
   <span class="type"><a href="index.html">PathCurve</a></span> { <span class="name">x</span>: <span class="number">400</span>; <span class="name">y</span>: <span class="number">100</span> }
   }
   <span class="name">onPaint</span>: {
   <span class="name">context</span>.<span class="name">strokeStyle</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">.4</span>,<span class="number">.6</span>,<span class="number">.8</span>);
   <span class="name">context</span>.<span class="name">path</span> <span class="operator">=</span> <span class="name">myPath</span>;
   <span class="name">context</span>.<span class="name">stroke</span>();
   }
   }</pre>

.. raw:: html

   <p>

This example produces the following path (with the starting point and
PathCurve points highlighted in red):

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Path, PathLine, PathQuad, PathCubic, PathArc, and PathSvg.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathCurve -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$relativeX -->

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


