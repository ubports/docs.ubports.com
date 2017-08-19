QtSensors.qtsensors-maze-example
================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h3>

Maze in QML

.. raw:: html

   </h3>

.. raw:: html

   <p>

To write a QML application that will use the TiltSensor QML sensors type
you need to do the following steps:

.. raw:: html

   </p>

.. raw:: html

   <p>

Import the QtSensors 5.x declarative plugin:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtSensors 5.0</pre>

.. raw:: html

   <p>

Add the Sensor QML types into your qml file.

.. raw:: html

   </p>

.. raw:: html

   <p>

In this example we use the TiltSensor with values based in degrees and
an accuracy of 5 degree:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtSensors.TiltSensor.md">TiltSensor</a></span> {
   <span class="name">id</span>: <span class="name">tiltSensor</span>
   <span class="name">active</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

Starting the sensor can be done by setting the 'enabled' property to
true:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">onTriggered</span>: {
   <span class="keyword">if</span> (!<span class="name">tiltSensor</span>.<span class="name">enabled</span>)
   <span class="name">tiltSensor</span>.<span class="name">active</span> <span class="operator">=</span> <span class="number">true</span>;</pre>

.. raw:: html

   <p>

The mouse should move by a factor of the tilt value:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                var <span class="name">xstep</span> = <span class="number">0</span>;
   <span class="name">xstep</span> <span class="operator">=</span> <span class="name">tiltSensor</span>.<span class="name">reading</span>.<span class="name">yRotation</span> <span class="operator">*</span> <span class="number">0.1</span> <span class="comment">//acceleration</span>
   var <span class="name">ystep</span> = <span class="number">0</span>;
   <span class="name">ystep</span> <span class="operator">=</span> <span class="name">tiltSensor</span>.<span class="name">reading</span>.<span class="name">xRotation</span> <span class="operator">*</span> <span class="number">0.1</span> <span class="comment">//acceleration</span></pre>

.. raw:: html

   <p>

The walk direction of the mouse takes into account some collision
detection:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                <span class="keyword">if</span> (<span class="name">xstep</span> <span class="operator">&lt;</span> <span class="number">1</span> <span class="operator">&amp;&amp;</span> <span class="name">xstep</span> <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="name">xstep</span> <span class="operator">=</span> <span class="number">0</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">xstep</span> <span class="operator">&gt;</span> -<span class="number">1</span> <span class="operator">&amp;&amp;</span> <span class="name">xstep</span> <span class="operator">&lt;</span> <span class="number">0</span>)
   <span class="name">xstep</span> <span class="operator">=</span> <span class="number">0</span>
   <span class="keyword">if</span> (<span class="name">ystep</span> <span class="operator">&lt;</span> <span class="number">1</span> <span class="operator">&amp;&amp;</span> <span class="name">ystep</span> <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="name">ystep</span> <span class="operator">=</span> <span class="number">0</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">ystep</span> <span class="operator">&gt;</span> -<span class="number">1</span> <span class="operator">&amp;&amp;</span> <span class="name">ystep</span> <span class="operator">&lt;</span> <span class="number">0</span>)
   <span class="name">ystep</span> <span class="operator">=</span> <span class="number">0</span>;
   <span class="keyword">if</span> ((<span class="name">xstep</span> <span class="operator">&lt;</span> <span class="number">0</span> <span class="operator">&amp;&amp;</span> <span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">&gt;</span> <span class="number">0</span>
   <span class="operator">&amp;&amp;</span> <span class="name">Lib</span>.<span class="name">canMove</span>(<span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">xstep</span>,<span class="name">mouseCtrl</span>.<span class="name">y</span>))) {
   <span class="name">xval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">xstep</span>;
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">xstep</span> <span class="operator">&gt;</span> <span class="number">0</span> <span class="operator">&amp;&amp;</span> <span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">&lt;</span> (<span class="name">Lib</span>.<span class="name">cellDimension</span> <span class="operator">*</span> (<span class="name">Lib</span>.<span class="name">dimension</span> <span class="operator">-</span> <span class="number">1</span>))
   <span class="operator">&amp;&amp;</span> <span class="name">Lib</span>.<span class="name">canMove</span>(<span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">xstep</span>,<span class="name">mouseCtrl</span>.<span class="name">y</span>)) {
   <span class="name">xval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">xstep</span>;
   } <span class="keyword">else</span>
   <span class="name">xval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">x</span>;
   <span class="keyword">if</span> (<span class="name">ystep</span> <span class="operator">&lt;</span> <span class="number">0</span> <span class="operator">&amp;&amp;</span> <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">&gt;</span> <span class="number">0</span>
   <span class="operator">&amp;&amp;</span> <span class="name">Lib</span>.<span class="name">canMove</span>(<span class="name">mouseCtrl</span>.<span class="name">x</span>, <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">ystep</span>)) {
   <span class="name">yval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">ystep</span>;
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">ystep</span> <span class="operator">&gt;</span> <span class="number">0</span> <span class="operator">&amp;&amp;</span> (<span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">&lt;</span> (<span class="name">Lib</span>.<span class="name">cellDimension</span> <span class="operator">*</span> (<span class="name">Lib</span>.<span class="name">dimension</span> <span class="operator">-</span> <span class="number">1</span>)))
   <span class="operator">&amp;&amp;</span> <span class="name">Lib</span>.<span class="name">canMove</span>(<span class="name">mouseCtrl</span>.<span class="name">x</span>, <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">ystep</span>)) {
   <span class="name">yval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">ystep</span>;
   } <span class="keyword">else</span>
   <span class="name">yval</span> <span class="operator">=</span> <span class="name">mouseCtrl</span>.<span class="name">y</span>
   <span class="name">mouseCtrl</span>.<span class="name">move</span>(<span class="name">xval</span>, <span class="name">yval</span>);</pre>

.. raw:: html

   <p>

The rotation of the mouse image is determined according to the angle
that the mouse is moving.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        var <span class="name">a</span> = <span class="name">newy</span> <span class="operator">-</span> <span class="name">mouse</span>.<span class="name">y</span>
   var <span class="name">b</span> = <span class="name">newx</span> <span class="operator">-</span> <span class="name">mouse</span>.<span class="name">x</span>
   var <span class="name">c</span> = <span class="name">distance</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>, <span class="name">newx</span>, <span class="name">newy</span>)
   var <span class="name">radians_to_degrees</span> = <span class="number">57.2957795</span>
   <span class="keyword">if</span> (<span class="name">a</span> <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="name">angle</span> <span class="operator">=</span> -<span class="name">Math</span>.<span class="name">acos</span>(<span class="name">a</span> <span class="operator">/</span> <span class="name">b</span>) <span class="operator">*</span> <span class="name">radians_to_degrees</span>
   <span class="keyword">else</span>
   <span class="name">angle</span> <span class="operator">=</span> -<span class="name">Math</span>.<span class="name">asin</span>(<span class="name">b</span> <span class="operator">/</span> <span class="name">c</span>) <span class="operator">*</span> <span class="name">radians_to_degrees</span>
   <span class="keyword">if</span> (<span class="name">b</span> <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="name">angle</span> <span class="operator">=</span> -<span class="name">Math</span>.<span class="name">acos</span>(<span class="name">a</span> <span class="operator">/</span> <span class="name">c</span>) <span class="operator">*</span> <span class="name">radians_to_degrees</span>
   <span class="keyword">else</span>
   <span class="name">angle</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">acos</span>(<span class="name">a</span> <span class="operator">/</span> <span class="name">c</span>) <span class="operator">*</span> <span class="name">radians_to_degrees</span>
   <span class="keyword">if</span> (<span class="name">angle</span> <span class="operator">&lt;</span> <span class="number">0</span>)
   <span class="name">angle</span> <span class="operator">=</span> <span class="number">360</span> <span class="operator">+</span> <span class="name">angle</span>
   <span class="name">img</span>.<span class="name">rotation</span> <span class="operator">=</span> <span class="name">angle</span>
   <span class="name">mouse</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">newx</span>;
   <span class="name">mouse</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">newy</span>;</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

maze/Congratulation.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/LabyrinthSquare.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/Mouse.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/lib.js

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/maze.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/android/AndroidManifest.xml

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/components/ApplicationWindow.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/components/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/maze.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

maze/maze.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@maze -->
