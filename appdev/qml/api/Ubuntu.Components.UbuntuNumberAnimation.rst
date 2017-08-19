Ubuntu.Components.UbuntuNumberAnimation
=======================================

.. raw:: html

   <p>

UbuntuNumberAnimation is a NumberAnimation that has predefined settings
to ensure that Ubuntu applications are consistent in their animations.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UbuntuNumberAnimation -->

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

import Ubuntu.Components 1.3

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

NumberAnimation

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

   <!-- $$$UbuntuNumberAnimation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of use:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
   UbuntuNumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">50</span> }
   }</pre>

.. raw:: html

   <p>

UbuntuNumberAnimation is predefined with the following settings:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

duration: UbuntuAnimation.FastDuration

.. raw:: html

   </li>

.. raw:: html

   <li>

easing: UbuntuAnimation.StandardEasing

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

If the standard duration and easing used by UbuntuNumberAnimation do not
satisfy a use case or you need to use a different type of Animation
(e.g. ColorAnimation), use standard durations and easing defined in
UbuntuAnimation manually in order to ensure consistency.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UbuntuNumberAnimation -->
