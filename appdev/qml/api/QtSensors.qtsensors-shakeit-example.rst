QtSensors.qtsensors-shakeit-example
===================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h3>

ShakeIt in QML

.. raw:: html

   </h3>

.. raw:: html

   <p>

Writing a QML application that uses the Shake QML sensorgestures type
requires the following steps:

.. raw:: html

   </p>

.. raw:: html

   <p>

Import the Sensors Declarative module.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtSensors 5.0</pre>

.. raw:: html

   <p>

Add a SensorGesture QML type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtSensors.SensorGesture.md">SensorGesture</a></span> {</pre>

.. raw:: html

   <p>

In the SensorGesture type, specify which gesture to be used. Note that
this can be a comma separated list. Here we are only interested in one
gesture recognizer.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">gestures</span> : [<span class="string">&quot;QtSensors.shake&quot;</span>, <span class="string">&quot;QtSensors.whip&quot;</span>, <span class="string">&quot;QtSensors.twist&quot;</span>, <span class="string">&quot;QtSensors.cover&quot;</span>,
   <span class="string">&quot;QtSensors.hover&quot;</span>, <span class="string">&quot;QtSensors.turnover&quot;</span>, <span class="string">&quot;QtSensors.pickup&quot;</span>, <span class="string">&quot;QtSensors.slam&quot;</span> , <span class="string">&quot;QtSensors.doubletap&quot;</span>]</pre>

.. raw:: html

   <p>

Use the 'enabled' property to start the sensor gesture.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">enabled</span>: <span class="number">true</span></pre>

.. raw:: html

   <p>

Use the onDetected signal to do stuff.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">onDetected</span>:{
   <span class="name">console</span>.<span class="name">debug</span>(<span class="name">gesture</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">gesture</span>
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;shake&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;rotated&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;rotated&quot;</span>
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;whip&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;whipped&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;whipped&quot;</span>
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;twistRight&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;twistedR&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;twistedR&quot;</span>
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;twistLeft&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;twistedL&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;twistedL&quot;</span>
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;cover&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;covered&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;covered&quot;</span>
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;hover&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;hovered&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;hovered&quot;</span>
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;turnover&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span>
   <span class="name">loopy2a_mono</span>.<span class="name">play</span>();
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;pickup&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span>
   <span class="name">phone</span>.<span class="name">play</span>()
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;slam&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;slammed&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;slammed&quot;</span>
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">==</span> <span class="string">&quot;doubletap&quot;</span>) {
   <span class="name">window</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;doubletapped&quot;</span> ? <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;default&quot;</span> : <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;doubletapped&quot;</span>
   <span class="name">timer</span>.<span class="name">start</span>()
   }
   }</pre>

.. raw:: html

   <p>

There are additional gestures to shake which are supported: whip,
twistRight, hover, cover, turnover and pickup.

.. raw:: html

   </p>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

shakeit/shakeit.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

shakeit/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

shakeit/shakeit.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

shakeit/shakeit.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@shakeit -->
