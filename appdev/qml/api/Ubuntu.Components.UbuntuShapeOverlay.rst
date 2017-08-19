Ubuntu.Components.UbuntuShapeOverlay
====================================

.. raw:: html

   <p>

Extended UbuntuShape adding a colored overlay layer. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UbuntuShapeOverlay -->

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

overlayColor : color

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

overlayRect : rect

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$UbuntuShapeOverlay-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The UbuntuShapeOverlay is a rounded rectangle (based on a squircle)
containing a set of layers composed, from top to bottom, of a colored
rectangle overlay, an optional source image and a background color
(solid or linear gradient). Different properties allow to change the
look of the shape.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Ubuntu.Components 1.2
   <span class="type"><a href="index.html">UbuntuShapeOverlay</a></span> {
   <span class="name">backgroundColor</span>: <span class="string">&quot;white&quot;</span>
   <span class="name">overlayColor</span>: <span class="string">&quot;black&quot;</span>
   <span class="name">overlayRect</span>: <span class="name">Qt</span>.<span class="name">rect</span>(<span class="number">0.25</span>, <span class="number">0.25</span>, <span class="number">0.5</span>, <span class="number">0.5</span>)
   }</pre>

.. raw:: html

   <!-- @@@UbuntuShapeOverlay -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$overlayColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="overlayColor-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

overlayColor : color

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

This property sets the color of the overlay rectangle defined by
overlayRect. The default value is transparent black.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@overlayColor -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="overlayRect-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

overlayRect : rect

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

This property sets the overlay rectangle. The default value is the empty
rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is defined by a position and a size in normalized item coordinates
(in the range between 0 and 1) with the origin at the top-left corner.
An overlay covering the bottom part and starting at the vertical center
can be done like that:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">UbuntuShapeOverlay</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">overlayColor</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.0</span>, <span class="number">0.0</span>, <span class="number">0.5</span>, <span class="number">0.5</span>)
   <span class="name">overlayRect</span>: <span class="name">Qt</span>.<span class="name">rect</span>(<span class="number">0.0</span>, <span class="number">0.5</span>, <span class="number">1.0</span>, <span class="number">0.5</span>)
   }</pre>

.. raw:: html

   <p>

Converting a position and a size in pixels to normalized item
coordinates can be done with a division by the size. Here is an
equivalent of the previous code sample:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">UbuntuShapeOverlay</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">overlayColor</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0.0</span>, <span class="number">0.0</span>, <span class="number">0.5</span>, <span class="number">0.5</span>)
   <span class="name">overlayRect</span>: <span class="name">Qt</span>.<span class="name">rect</span>(<span class="number">100.0</span><span class="operator">/</span><span class="name">width</span>, <span class="number">100.0</span><span class="operator">/</span><span class="name">height</span>, <span class="number">200.0</span><span class="operator">/</span><span class="name">width</span>, <span class="number">100.0</span><span class="operator">/</span><span class="name">height</span>)
   }</pre>

.. raw:: html

   <p>

A geometry exceeding the item area is cropped.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.2.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@overlayRect -->


