QtSensors.qtsensors-sensor-explorer-example
===========================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

This example is divided into two parts:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

A C++ plugin that provides QML alternatives for QSensorExplorer,
QPropertyInfo and QSensorItem C++ classes.

.. raw:: html

   </li>

.. raw:: html

   <li>

A QML Application that uses the QML types to read the sensor meta-data
and present it.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This example is built as an executable with C++ code that runs the QML,
but it can also be launched directly using the qmlscene tool. You should
build the top-level sensor\_explorer project before trying to run this
example or it will not be able to find its dependencies.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlscene <span class="operator">-</span>I <span class="operator">.</span> sensor_explorer<span class="operator">.</span>qml</pre>

.. raw:: html

   <p>

Above, the -I . parameter adds the current directory as a module import
path to locate the Explorer QML module.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="sensor-explorer-qml-import">

Sensor Explorer QML Import

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Sensor Explorer QML import defines the Explorer QML module,
exporting QSensorExplorer, QPropertyInfo and QSensorItem C++ classes as
QML types. The source code is available in the sensor\_explorer/import
subdirectory.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="sensor-explorer-qml-application">

Sensor Explorer QML Application

.. raw:: html

   </h2>

.. raw:: html

   <p>

To write a QML application that will use the QML types exposed by the
Explorer module, following steps are needed:

.. raw:: html

   </p>

.. raw:: html

   <p>

Import the Explorer 1.0 declarative plugin:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import Explorer 1.0</pre>

.. raw:: html

   <p>

Create a SensorExplorer QML item:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">SensorExplorer</span> {
   <span class="name">id</span>: <span class="name">explorer</span>
   }</pre>

.. raw:: html

   <p>

You can retrieve a list of all available sensors using
SensorExplorer.availableSensors:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">model</span>: <span class="name">explorer</span>.<span class="name">availableSensors</span></pre>

.. raw:: html

   <p>

The example uses the returned list as a model to populate a view of
available sensors.

.. raw:: html

   </p>

.. raw:: html

   <p>

To retrieve the properties of a sensor, use SensorItem.properties:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">propertyList</span>.<span class="name">model</span> <span class="operator">=</span> <span class="name">explorer</span>.<span class="name">selectedSensorItem</span>.<span class="name">properties</span></pre>

.. raw:: html

   <p>

The property list is used as a model for another view that displays the
property names and values.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is possible to edit the values of certain sensor properties.
Selecting a writable property value will open an editor. SensorExplorer
QML type allows you to pass a new value for a sensor property value as
follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">explorer</span>.<span class="name">selectedSensorItem</span>.<span class="name">changePropertyValue</span>(<span class="name">propertyList</span>.<span class="name">selectedItem</span>, <span class="name">loaderEditor</span>.<span class="name">item</span>.<span class="name">text</span>);</pre>

.. raw:: html

   <p>

Starting and stopping a sensor can be done by setting the
SensorItem.start property:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="keyword">if</span> (<span class="name">text</span> <span class="operator">===</span> <span class="string">&quot;Start&quot;</span>) {
   <span class="name">explorer</span>.<span class="name">selectedSensorItem</span>.<span class="name">start</span> <span class="operator">=</span> <span class="number">true</span>;
   <span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Stop&quot;</span>;
   }
   <span class="keyword">else</span> {
   <span class="name">explorer</span>.<span class="name">selectedSensorItem</span>.<span class="name">start</span> <span class="operator">=</span> <span class="number">false</span>;
   <span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Start&quot;</span>;
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

sensor\_explorer/Makefile.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/sensor\_explorer.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/import/explorer.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/import/explorer.h

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/import/propertyinfo.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/import/propertyinfo.h

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/import/sensoritem.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/import/sensoritem.h

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/qml.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/qml.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/sensor\_explorer.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/import/import.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

sensor\_explorer/import/qmldir

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@sensor_explorer -->
