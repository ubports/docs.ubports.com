QtSensors.qtsensors-qmlqtsensors-example
========================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h3>

Qt Sensors in QML

.. raw:: html

   </h3>

.. raw:: html

   <p>

To write a QML application that will use the QML sensors types in the
QtSensors 5 import you need to to the following steps:

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

In this example we use the TiltSensor:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtSensors.TiltSensor.md">TiltSensor</a></span> {
   <span class="name">id</span>: <span class="name">tilt</span>
   <span class="name">active</span>: <span class="number">false</span>
   }</pre>

.. raw:: html

   <p>

The Tilt-, AmbientLight- and the Proximity QML sensor types have the
'enabled' property in common. To start or stop the sensor set this
property to true or false.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">tilt</span>.<span class="name">active</span> <span class="operator">=</span> (<span class="name">tiltStart</span>.<span class="name">text</span> <span class="operator">===</span> <span class="string">&quot;Start&quot;</span>);</pre>

.. raw:: html

   <p>

Reading the data can be done for each sensor type like following:

.. raw:: html

   </p>

.. raw:: html

   <p>

TiltSensor

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">text</span>: <span class="string">&quot;X Rotation: &quot;</span> <span class="operator">+</span> <span class="name">tilt</span>.<span class="name">xRotation</span> <span class="operator">+</span> <span class="string">&quot;��&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Y Rotation: &quot;</span> <span class="operator">+</span> <span class="name">tilt</span>.<span class="name">yRotation</span> <span class="operator">+</span>  <span class="string">&quot;��&quot;</span></pre>

.. raw:: html

   <p>

AmbientLightSensor

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">onReadingChanged</span>: {
   <span class="keyword">if</span> (<span class="name">reading</span>.<span class="name">lightLevel</span> <span class="operator">==</span> <span class="name">AmbientLightSensor</span>.<span class="name">Unknown</span>)
   <span class="name">ambientlighttext</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Ambient light: Unknown&quot;</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">reading</span>.<span class="name">lightLevel</span> <span class="operator">==</span> <span class="name">AmbientLightSensor</span>.<span class="name">Dark</span>)
   <span class="name">ambientlighttext</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Ambient light: Dark&quot;</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">reading</span>.<span class="name">lightLevel</span> <span class="operator">==</span> <span class="name">AmbientLightSensor</span>.<span class="name">Twilight</span>)
   <span class="name">ambientlighttext</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Ambient light: Twilight&quot;</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">reading</span>.<span class="name">lightLevel</span> <span class="operator">==</span> <span class="name">AmbientLightSensor</span>.<span class="name">Light</span>)
   <span class="name">ambientlighttext</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Ambient light: Light&quot;</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">reading</span>.<span class="name">lightLevel</span> <span class="operator">==</span> <span class="name">AmbientLightSensor</span>.<span class="name">Bright</span>)
   <span class="name">ambientlighttext</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Ambient light: Bright&quot;</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">reading</span>.<span class="name">lightLevel</span> <span class="operator">==</span> <span class="name">AmbientLightSensor</span>.<span class="name">Sunny</span>)
   <span class="name">ambientlighttext</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Ambient light: Sunny&quot;</span>;
   }</pre>

.. raw:: html

   <p>

ProximitySensor

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">text</span>: <span class="string">&quot;Proximity: &quot;</span> <span class="operator">+</span>
   (<span class="name">proxi</span>.<span class="name">active</span> ? (<span class="name">proxi</span>.<span class="name">reading</span>.<span class="name">near</span> ? <span class="string">&quot;Near&quot;</span> : <span class="string">&quot;Far&quot;</span>) : <span class="string">&quot;Unknown&quot;</span>)</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

qmlqtsensors/qmlqtsensors.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlqtsensors/components/ApplicationWindow.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlqtsensors/components/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlqtsensors/components/Divider.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlqtsensors/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlqtsensors/qmlqtsensors.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlqtsensors/qmlqtsensors.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@qmlqtsensors -->
