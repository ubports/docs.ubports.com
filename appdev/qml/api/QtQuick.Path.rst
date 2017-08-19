QtQuick.Path
============

.. raw:: html

   <p>

Defines a path for use by PathView More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Path -->

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

closed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

pathElements : list<PathElement>

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

   </ul>

.. raw:: html

   <!-- $$$Path-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A Path is composed of one or more path segments - PathLine, PathQuad,
PathCubic, PathArc, PathCurve, PathSvg.

.. raw:: html

   </p>

.. raw:: html

   <p>

The spacing of the items along the Path can be adjusted via a
PathPercent object.

.. raw:: html

   </p>

.. raw:: html

   <p>

PathAttribute allows named attributes with values to be defined along
the path.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also PathView, PathAttribute, PathPercent, PathLine, PathQuad,
PathCubic, PathArc, PathCurve, and PathSvg.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Path -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$closed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="closed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

closed : bool

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

This property holds whether the start and end of the path are identical.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@closed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="pathElements-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[default] pathElements : list<PathElement>

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

This property holds the objects composing the path.

.. raw:: html

   </p>

.. raw:: html

   <p>

A path can contain the following path objects:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

PathLine - a straight line to a given position.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathQuad - a quadratic Bezier curve to a given position with a control
point.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathCubic - a cubic Bezier curve to a given position with two control
points.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathArc - an arc to a given position with a radius.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathSvg - a path specified as an SVG path data string.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathCurve - a point on a Catmull-Rom curve.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathAttribute - an attribute at a given position in the path.

.. raw:: html

   </li>

.. raw:: html

   <li>

PathPercent - a way to spread out items along various segments of the
path.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">delegate</span>
   <span class="name">path</span>: <span class="name">Path</span> {
   <span class="name">startX</span>: <span class="number">120</span>; <span class="name">startY</span>: <span class="number">100</span>
   <span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconScale&quot;</span>; <span class="name">value</span>: <span class="number">1.0</span> }
   <span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconOpacity&quot;</span>; <span class="name">value</span>: <span class="number">1.0</span> }
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">controlX</span>: <span class="number">260</span>; <span class="name">controlY</span>: <span class="number">75</span> }
   <span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconScale&quot;</span>; <span class="name">value</span>: <span class="number">0.3</span> }
   <span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconOpacity&quot;</span>; <span class="name">value</span>: <span class="number">0.5</span> }
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">controlX</span>: -<span class="number">20</span>; <span class="name">controlY</span>: <span class="number">75</span> }
   }
   }</pre>

.. raw:: html

   <!-- @@@pathElements -->

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

These properties hold the starting position of the path.

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

These properties hold the starting position of the path.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@startY -->


