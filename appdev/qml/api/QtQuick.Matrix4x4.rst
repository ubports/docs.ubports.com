QtQuick.Matrix4x4
=================

.. raw:: html

   <p>

Provides a way to apply a 4x4 tranformation matrix to an Item More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Matrix4x4 -->

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

matrix : QMatrix4x4

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Matrix4x4-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Matrix4x4 type provides a way to apply a transformation to an Item
through a 4x4 matrix.

.. raw:: html

   </p>

.. raw:: html

   <p>

It allows for a combination of rotation, scale, translatation and
shearing by using just one tranformation provided in a 4x4-matrix.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example rotates a Rectangle 45 degress (PI/4):

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">transform</span>: <span class="name">Matrix4x4</span> {
   property <span class="type">real</span> <span class="name">a</span>: <span class="name">Math</span>.<span class="name">PI</span> <span class="operator">/</span> <span class="number">4</span>
   <span class="name">matrix</span>: <span class="name">Qt</span>.<span class="name">matrix4x4</span>(<span class="name">Math</span>.<span class="name">cos</span>(<span class="name">a</span>), -<span class="name">Math</span>.<span class="name">sin</span>(<span class="name">a</span>), <span class="number">0</span>, <span class="number">0</span>,
   <span class="name">Math</span>.<span class="name">sin</span>(<span class="name">a</span>),  <span class="name">Math</span>.<span class="name">cos</span>(<span class="name">a</span>), <span class="number">0</span>, <span class="number">0</span>,
   <span class="number">0</span>,           <span class="number">0</span>,            <span class="number">1</span>, <span class="number">0</span>,
   <span class="number">0</span>,           <span class="number">0</span>,            <span class="number">0</span>, <span class="number">1</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@Matrix4x4 -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$matrix -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="matrix-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

matrix : QMatrix4x4

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

4x4-matrix which will be used in the tranformation of an Item

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@matrix -->


