QtQuick.PathLine
================

.. raw:: html

   <p>

Defines a straight line More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathLine -->

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

   <!-- $$$PathLine-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The example below creates a path consisting of a straight line from
0,100 to 200,100:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
   <span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">PathLine</a></span> { <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">100</span> }
   }</pre>

.. raw:: html

   <p>

See also Path, PathQuad, PathCubic, PathArc, PathCurve, and PathSvg.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathLine -->

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

Defines the end point of the line relative to its start.

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

Defines the end point of the line relative to its start.

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

Defines the end point of the line.

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

Defines the end point of the line.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also relativeX and relativeY.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@y -->


