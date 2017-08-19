QtQuick.PathPercent
===================

.. raw:: html

   <p>

Manipulates the way a path is interpreted More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathPercent -->

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

value : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PathPercent-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

PathPercent allows you to manipulate the spacing between items on a
PathView's path. You can use it to bunch together items on part of the
path, and spread them out on other parts of the path.

.. raw:: html

   </p>

.. raw:: html

   <p>

The examples below show the normal distribution of items along a path
compared to a distribution which places 50% of the items along the
PathLine section of the path.

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

   <pre class="qml"><span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
   <span class="comment">// ...</span>
   <span class="type"><a href="QtQuick.Path.md">Path</a></span> {
   <span class="name">startX</span>: <span class="number">20</span>; <span class="name">startY</span>: <span class="number">0</span>
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">80</span>; <span class="name">controlX</span>: <span class="number">0</span>; <span class="name">controlY</span>: <span class="number">80</span> }
   <span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">150</span>; <span class="name">y</span>: <span class="number">80</span> }
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">180</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">controlX</span>: <span class="number">200</span>; <span class="name">controlY</span>: <span class="number">80</span> }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

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

   <pre class="qml"><span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
   <span class="comment">// ...</span>
   <span class="type"><a href="QtQuick.Path.md">Path</a></span> {
   <span class="name">startX</span>: <span class="number">20</span>; <span class="name">startY</span>: <span class="number">0</span>
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">80</span>; <span class="name">controlX</span>: <span class="number">0</span>; <span class="name">controlY</span>: <span class="number">80</span> }
   <span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">0.25</span> }
   <span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">150</span>; <span class="name">y</span>: <span class="number">80</span> }
   <span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">0.75</span> }
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">180</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">controlX</span>: <span class="number">200</span>; <span class="name">controlY</span>: <span class="number">80</span> }
   <span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">1</span> }
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

See also Path.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathPercent -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$value -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

value : real

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

The proportion of items that should be laid out up to this point.

.. raw:: html

   </p>

.. raw:: html

   <p>

This value should always be higher than the last value specified by a
PathPercent at a previous position in the Path.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example we have a Path made up of three PathLines.
Normally, the items of the PathView would be laid out equally along this
path, with an equal number of items per line segment. PathPercent allows
us to specify that the first and third lines should each hold 10% of the
laid out items, while the second line should hold the remaining 80%.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
   <span class="comment">// ...</span>
   <span class="type"><a href="QtQuick.Path.md">Path</a></span> {
   <span class="name">startX</span>: <span class="number">0</span>; <span class="name">startY</span>: <span class="number">0</span>
   <span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>:<span class="number">100</span>; <span class="name">y</span>: <span class="number">0</span>; }
   <span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">0.1</span> }
   <span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span> }
   <span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">0.9</span> }
   <span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">0</span> }
   <span class="type"><a href="index.html">PathPercent</a></span> { <span class="name">value</span>: <span class="number">1</span> }
   }
   }</pre>

.. raw:: html

   <!-- @@@value -->


