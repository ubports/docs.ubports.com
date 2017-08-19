QtSensors.qtsensors-qmlsensorgestures-example
=============================================

.. raw:: html

   <h2 id="overview">

Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

To write a QML application that will use the gesture plugin, following
steps are needed:

.. raw:: html

   </p>

.. raw:: html

   <p>

Import the QtSensors 5.x module:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtSensors 5.0</pre>

.. raw:: html

   <p>

Add the SensorGesture QML type into your qml file.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtSensors.SensorGesture.md">SensorGesture</a></span> {
   <span class="name">id</span>: <span class="name">sensorGesture</span>
   <span class="name">enabled</span>: <span class="number">false</span>
   <span class="name">onDetected</span>: {
   <span class="keyword">if</span> (<span class="name">gesture</span> <span class="operator">!==</span> <span class="name">oldGesture</span>)
   <span class="name">count</span> <span class="operator">=</span> <span class="number">0</span>;
   <span class="name">valueText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">gesture</span> <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> <span class="name">count</span>;
   <span class="name">oldGesture</span> <span class="operator">=</span> <span class="name">gesture</span>;
   count++;
   }
   <span class="name">onEnabledChanged</span>: {
   <span class="name">valueText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

Each SensorGesture QML type contains a property called gestures. This
example uses an alias gestureId for this property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    property <span class="type">alias</span> <span class="name">gestureId</span>: <span class="name">sensorGesture</span>.<span class="name">gestures</span></pre>

.. raw:: html

   <p>

Then, the gesture or gestures to use can be specified using the alias:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">onSelectedGestureChanged</span>: {
   <span class="name">gesture</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="number">false</span>;
   <span class="name">gesture</span>.<span class="name">gestureId</span> <span class="operator">=</span> <span class="name">gestureList</span>.<span class="name">selectedGesture</span>;
   ...
   }</pre>

.. raw:: html

   <p>

A list of all available gestures is accessible through the
availableGestures property:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type">ListView</span> {
   <span class="name">id</span>: <span class="name">gestureList</span>
   <span class="name">model</span>: <span class="name">gesture</span>.<span class="name">availableGestures</span>
   ...
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

qmlsensorgestures/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/GestureList.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/GestureView.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/GesturesView.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/Makefile.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/qmlsensorgestures.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/plugin/qcountergestureplugin.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/plugin/qcountergestureplugin.h

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/plugin/qcounterrecognizer.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/plugin/qcounterrecognizer.h

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/qml.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/qml.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/qmlsensorgestures.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlsensorgestures/plugin/plugin.pro

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Qt Sensors - ShakeIt QML Example and Qt Sensor Gestures.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qmlsensorgestures -->
