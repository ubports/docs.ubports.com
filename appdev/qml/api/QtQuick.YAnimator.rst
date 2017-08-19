QtQuick.YAnimator
=================

.. raw:: html

   <p>

The YAnimator type animates the y position of an Item. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@YAnimator -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt 5.2

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

   <!-- $$$YAnimator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Animator types are different from normal Animation types. When using an
Animator, the animation can be run in the render thread and the property
value will jump to the end when the animation is complete.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value of Item::y is updated after the animation has finished.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following snippet shows how to use a YAnimator together with a
Rectangle item.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">ymovingBox</span>
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type"><a href="index.html">YAnimator</a></span> {
   <span class="name">target</span>: <span class="name">ymovingBox</span>;
   <span class="name">from</span>: <span class="number">10</span>;
   <span class="name">to</span>: <span class="number">0</span>;
   <span class="name">duration</span>: <span class="number">1000</span>
   <span class="name">running</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

It is also possible to use the on keyword to tie the YAnimator directly
to an Item instance.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   YAnimator on <span class="name">y</span> {
   <span class="name">from</span>: <span class="number">10</span>;
   <span class="name">to</span>: <span class="number">0</span>;
   <span class="name">duration</span>: <span class="number">1000</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@YAnimator -->
