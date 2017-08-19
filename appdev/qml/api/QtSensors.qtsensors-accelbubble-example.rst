QtSensors.qtsensors-accelbubble-example
=======================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

Writing a QML application that uses the Accelerometer QML sensors type
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

Add an Accelerometer QML type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtSensors.Accelerometer.md">Accelerometer</a></span> {
   <span class="name">id</span>: <span class="name">accel</span>
   <span class="name">dataRate</span>: <span class="number">100</span></pre>

.. raw:: html

   <p>

Use the 'active' property to start the sensor

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">active</span>:<span class="number">true</span></pre>

.. raw:: html

   <p>

Move the bubble according to a factor of the accelerator sensor

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">onReadingChanged</span>: {
   var <span class="name">newX</span> = (<span class="name">bubble</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">calcRoll</span>(<span class="name">accel</span>.<span class="name">reading</span>.<span class="name">x</span>, <span class="name">accel</span>.<span class="name">reading</span>.<span class="name">y</span>, <span class="name">accel</span>.<span class="name">reading</span>.<span class="name">z</span>) <span class="operator">*</span> <span class="number">.1</span>)
   var <span class="name">newY</span> = (<span class="name">bubble</span>.<span class="name">y</span> <span class="operator">-</span> <span class="name">calcPitch</span>(<span class="name">accel</span>.<span class="name">reading</span>.<span class="name">x</span>, <span class="name">accel</span>.<span class="name">reading</span>.<span class="name">y</span>, <span class="name">accel</span>.<span class="name">reading</span>.<span class="name">z</span>) <span class="operator">*</span> <span class="number">.1</span>)
   <span class="keyword">if</span> (<span class="name">isNaN</span>(<span class="name">newX</span>) <span class="operator">||</span> <span class="name">isNaN</span>(<span class="name">newY</span>))
   <span class="keyword">return</span>;
   <span class="keyword">if</span> (<span class="name">newX</span> <span class="operator">&lt;</span> <span class="number">0</span>)
   <span class="name">newX</span> <span class="operator">=</span> <span class="number">0</span>
   <span class="keyword">if</span> (<span class="name">newX</span> <span class="operator">&gt;</span> <span class="name">mainWindow</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">bubble</span>.<span class="name">width</span>)
   <span class="name">newX</span> <span class="operator">=</span> <span class="name">mainWindow</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">bubble</span>.<span class="name">width</span>
   <span class="keyword">if</span> (<span class="name">newY</span> <span class="operator">&lt;</span> <span class="number">18</span>)
   <span class="name">newY</span> <span class="operator">=</span> <span class="number">18</span>
   <span class="keyword">if</span> (<span class="name">newY</span> <span class="operator">&gt;</span> <span class="name">mainWindow</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">bubble</span>.<span class="name">height</span>)
   <span class="name">newY</span> <span class="operator">=</span> <span class="name">mainWindow</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">bubble</span>.<span class="name">height</span>
   <span class="name">bubble</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">newX</span>
   <span class="name">bubble</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">newY</span>
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

accelbubble/accelbubble.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

accelbubble/android/AndroidManifest.xml

.. raw:: html

   </li>

.. raw:: html

   <li>

accelbubble/content/Bluebubble.svg

.. raw:: html

   </li>

.. raw:: html

   <li>

accelbubble/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

accelbubble/accelbubble.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

accelbubble/accelbubble.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@accelbubble -->
