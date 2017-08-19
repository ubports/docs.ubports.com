QtQuick.CanvasGradient
======================

.. raw:: html

   <p>

Provides an opaque CanvasGradient interface More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CanvasGradient -->

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

Qt 5.0

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

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

CanvasGradient addColorStop(real offsetof, string color)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CanvasGradient-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CanvasGradient -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addColorStop -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addColorStop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

CanvasGradient addColorStop(real offsetof, string color)

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

Adds a color stop with the given color to the gradient at the given
offset. 0.0 is the offset at one end of the gradient, 1.0 is the offset
at the other end.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">var gradient <span class="operator">=</span> ctx<span class="operator">.</span>createLinearGradient(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">100</span><span class="operator">,</span> <span class="number">100</span>);
   gradient<span class="operator">.</span>addColorStop(<span class="number">0.3</span><span class="operator">,</span> <span class="type">Qt</span><span class="operator">.</span>rgba(<span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">1</span>));
   gradient<span class="operator">.</span>addColorStop(<span class="number">0.7</span><span class="operator">,</span> <span class="char">'rgba(0, 255, 255, 1'</span>);</pre>

.. raw:: html

   <!-- @@@addColorStop -->


