QtQuick.qtquick-canvas-example
==============================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Canvas is a collection of small QML examples relating to the Canvas
type. Each example is a small QML file emphasizing a particular type or
feature.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

To run the example from Qt Creator, open the Welcome mode and select the
example from Examples. For more information, visit Building and Running
an Example.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="red-heart">

Red Heart

.. raw:: html

   </h2>

.. raw:: html

   <p>

Red heart uses the bezier curve API to stroke and fill a red heart.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">ctx</span>.<span class="name">beginPath</span>();
   <span class="name">ctx</span>.<span class="name">moveTo</span>(<span class="number">75</span>,<span class="number">40</span>);
   <span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">75</span>,<span class="number">37</span>,<span class="number">70</span>,<span class="number">25</span>,<span class="number">50</span>,<span class="number">25</span>);
   <span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">20</span>,<span class="number">25</span>,<span class="number">20</span>,<span class="number">62.5</span>,<span class="number">20</span>,<span class="number">62.5</span>);
   <span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">20</span>,<span class="number">80</span>,<span class="number">40</span>,<span class="number">102</span>,<span class="number">75</span>,<span class="number">120</span>);
   <span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">110</span>,<span class="number">102</span>,<span class="number">130</span>,<span class="number">80</span>,<span class="number">130</span>,<span class="number">62.5</span>);
   <span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">130</span>,<span class="number">62.5</span>,<span class="number">130</span>,<span class="number">25</span>,<span class="number">100</span>,<span class="number">25</span>);
   <span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">85</span>,<span class="number">25</span>,<span class="number">75</span>,<span class="number">37</span>,<span class="number">75</span>,<span class="number">40</span>);
   <span class="name">ctx</span>.<span class="name">closePath</span>();</pre>

.. raw:: html

   <h2 id="talk-bubble">

Talk Bubble

.. raw:: html

   </h2>

.. raw:: html

   <p>

Talk bubble uses the quadraticCurveTo() API to stroke and fill a
customized talk bubble:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">ctx</span>.<span class="name">beginPath</span>();
   <span class="name">ctx</span>.<span class="name">moveTo</span>(<span class="number">75</span>,<span class="number">25</span>);
   <span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">25</span>,<span class="number">25</span>,<span class="number">25</span>,<span class="number">62.5</span>);
   <span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">25</span>,<span class="number">100</span>,<span class="number">50</span>,<span class="number">100</span>);
   <span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">50</span>,<span class="number">120</span>,<span class="number">30</span>,<span class="number">125</span>);
   <span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">60</span>,<span class="number">120</span>,<span class="number">65</span>,<span class="number">100</span>);
   <span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">125</span>,<span class="number">100</span>,<span class="number">125</span>,<span class="number">62.5</span>);
   <span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">125</span>,<span class="number">25</span>,<span class="number">75</span>,<span class="number">25</span>);
   <span class="name">ctx</span>.<span class="name">closePath</span>();</pre>

.. raw:: html

   <p>

This example also demonstrates the fillText() API:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">ctx</span>.<span class="name">fillStyle</span> <span class="operator">=</span> <span class="string">&quot;white&quot;</span>;
   <span class="name">ctx</span>.<span class="name">font</span> <span class="operator">=</span> <span class="string">&quot;bold 17px sans-serif&quot;</span>;
   <span class="name">ctx</span>.<span class="name">fillText</span>(<span class="string">&quot;Qt Quick&quot;</span>, <span class="number">40</span>, <span class="number">70</span>);</pre>

.. raw:: html

   <h2 id="squircle">

Squircle

.. raw:: html

   </h2>

.. raw:: html

   <p>

Squircle uses a collection of simple moveTo() and lineTo() path APIs to
draw a smooth squircle.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="rounded-rectangle">

Rounded Rectangle

.. raw:: html

   </h2>

.. raw:: html

   <p>

Rounded rectangle uses a collection of lineTo() and arcTo() path APIs to
draw a rounded rectangle.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="smile-face">

Smile Face

.. raw:: html

   </h2>

.. raw:: html

   <p>

Smile face uses several paths to draw and fill a smiling face.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="clip">

Clip

.. raw:: html

   </h2>

.. raw:: html

   <p>

Clip uses the clip API to clip a given image.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">ctx</span>.<span class="name">clip</span>();
   <span class="name">ctx</span>.<span class="name">drawImage</span>(<span class="name">canvas</span>.<span class="name">imagefile</span>, <span class="number">0</span>, <span class="number">0</span>);</pre>

.. raw:: html

   <h2 id="tiger">

Tiger

.. raw:: html

   </h2>

.. raw:: html

   <p>

Tiger uses the SVG path API to draw a tiger with a collection of SVG
path strings.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="name">Tiger</span>.<span class="name">tiger</span>.<span class="name">length</span>; i++) {
   <span class="keyword">if</span> (<span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">width</span> <span class="operator">!=</span> <span class="name">undefined</span>)
   <span class="name">ctx</span>.<span class="name">lineWidth</span> <span class="operator">=</span> <span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">width</span>;
   <span class="keyword">if</span> (<span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">path</span> <span class="operator">!=</span> <span class="name">undefined</span>)
   <span class="name">ctx</span>.<span class="name">path</span> <span class="operator">=</span> <span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">path</span>;
   <span class="keyword">if</span> (<span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">fill</span> <span class="operator">!=</span> <span class="name">undefined</span>) {
   <span class="name">ctx</span>.<span class="name">fillStyle</span> <span class="operator">=</span> <span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">fill</span>;
   <span class="name">ctx</span>.<span class="name">fill</span>();
   }
   <span class="keyword">if</span> (<span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">stroke</span> <span class="operator">!=</span> <span class="name">undefined</span>) {
   <span class="name">ctx</span>.<span class="name">strokeStyle</span> <span class="operator">=</span> <span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">stroke</span>;
   <span class="name">ctx</span>.<span class="name">stroke</span>();
   }
   }</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

canvas/canvas.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/bezierCurve/bezierCurve.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/clip/clip.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/quadraticCurveTo/quadraticCurveTo.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/roundedrect/roundedrect.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/smile/smile.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/squircle/squircle.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/tiger/tiger.js

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/tiger/tiger.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/canvas.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

canvas/canvas.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@canvas -->
