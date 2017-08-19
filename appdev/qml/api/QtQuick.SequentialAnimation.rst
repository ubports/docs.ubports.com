QtQuick.SequentialAnimation
===========================

.. raw:: html

   <p>

Allows animations to be run sequentially More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SequentialAnimation -->

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

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Animation

.. raw:: html

   </p>

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

   <!-- $$$SequentialAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The SequentialAnimation and ParallelAnimation types allow multiple
animations to be run together. Animations defined in a
SequentialAnimation are run one after the other, while animations
defined in a ParallelAnimation are run at the same time.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example runs two number animations in a sequence. The
Rectangle animates to a x position of 50, then to a y position of 50.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type"><a href="index.html">SequentialAnimation</a></span> {
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">50</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">property</span>: <span class="string">&quot;y&quot;</span>; <span class="name">to</span>: <span class="number">50</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   }
   }</pre>

.. raw:: html

   <p>

Animations defined within a Transition are automatically run in
parallel, so SequentialAnimation can be used to enclose the animations
in a Transition if this is the preferred behavior.

.. raw:: html

   </p>

.. raw:: html

   <p>

Like any other animation type, a SequentialAnimation can be applied in a
number of ways, including transitions, behaviors and property value
sources. The Animation and Transitions in Qt Quick documentation shows a
variety of methods for creating animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Once an animation has been grouped into a SequentialAnimation or
ParallelAnimation, it cannot be individually started and stopped; the
SequentialAnimation or ParallelAnimation must be started and stopped as
a group.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also ParallelAnimation, Animation and Transitions in Qt Quick, and
Qt Quick Examples - Animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SequentialAnimation -->
