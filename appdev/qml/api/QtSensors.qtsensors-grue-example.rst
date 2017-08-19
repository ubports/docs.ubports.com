QtSensors.qtsensors-grue-example
================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The Qt Sensors - Grue sensor example demonstrates all the steps from
creating a new sensor to using it.

.. raw:: html

   </p>

.. raw:: html

   <p>

The sensor definition is placed in a library where client apps can
access it. The actual implementation lives in a plugin.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Grue Sensor Definition

.. raw:: html

   </li>

.. raw:: html

   <li>

Grue Sensor Implementation

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The sensor can now be used by a C++ application, even if the application
does not have access to the definition.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Grue Sensor Console Application

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

To make the sensor available to a QML application an import must be
created.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Grue Sensor QML Import

.. raw:: html

   </li>

.. raw:: html

   <li>

Grue Sensor QML Application

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="grue-sensor-definition">

Grue Sensor Definition

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Grue sensor is defined in a library so that applications can use it.
The source code is available in the grue/lib subdirectory.

.. raw:: html

   </p>

.. raw:: html

   <p>

First up is the sensor type. This is the interface for sensors that
report on your likelihood of being eaten by a Grue. Such sensors are
very important to adventurers, particularly if they are going into dark
places as this is where Grues live.

.. raw:: html

   </p>

.. raw:: html

   <p>

The interface is a simple one. It provides only 1 piece of information,
your chance of being eaten. For the details on how this is property
should be interpreted please see the documentation in gruesensor.cpp.

.. raw:: html

   </p>

.. raw:: html

   <p>

This example was created using the make\_sensor.pl script which can be
found in src/sensors. As such, it contains some generated code that
defines the convenience classes GrueFilter and GrueSensor.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="grue-sensor-implementation">

Grue Sensor Implementation

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Grue sensor implementation lives in a plugin that is loaded by the
Qt Sensors library. The source code is available in the grue/plugin
subdirectory.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Grue sensor needs a backend before it can be used. The backend
provided is rather basic and it relies on some kind of light sensor to
work but it gets the job done. If new hardware that can detect the
actual presence of Grues becomes available a backend could be created
that supports this hardware and applications using the Grue sensor would
be able to use it without any changes.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are a few mandatory parts to a backend. They are the start and
stop methods and the setReading call. The start and stop methods are
used to start and stop any underlying hardware. In the case of this
backend they start and stop a light sensor. In the start method, the
backend should be sure to call the sensorStopped() or sensorBusy()
methods if it cannot start.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    lightSensor<span class="operator">-</span><span class="operator">&gt;</span>setDataRate(sensor()<span class="operator">-</span><span class="operator">&gt;</span>dataRate());
   lightSensor<span class="operator">-</span><span class="operator">&gt;</span>start();
   <span class="comment">// If the light sensor doesn't work we don't work either</span>
   <span class="keyword">if</span> (<span class="operator">!</span>lightSensor<span class="operator">-</span><span class="operator">&gt;</span>isActive())
   sensorStopped();
   <span class="keyword">if</span> (lightSensor<span class="operator">-</span><span class="operator">&gt;</span>isBusy())
   sensorBusy();</pre>

.. raw:: html

   <p>

The setReading method is needed so that the sensors library knows where
the readings are coming from. This backend has a local copy of the
reading so it passes a pointer to the function.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="comment">// Register our reading instance</span>
   setReading<span class="operator">&lt;</span>GrueSensorReading<span class="operator">&gt;</span>(<span class="operator">&amp;</span>m_reading);</pre>

.. raw:: html

   <p>

However it is also possible to pass null to the setReading method in
which case the sensors library will create an instance and return a
pointer.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// Create a reading instance for us to use</span>
   m_reading <span class="operator">=</span> setReading<span class="operator">&lt;</span>GrueSensorReading<span class="operator">&gt;</span>(<span class="number">0</span>);</pre>

.. raw:: html

   <p>

The Grue sensor backend also supplies some metadata.

.. raw:: html

   </p>

.. raw:: html

   <p>

The backend checks 2 things, how dark it is and how long you have been
in the dark. It uses the readingChanged() signal to know when to check
the light sensor's value. Once it is dark, it uses a timer to increase
your chance of being eaten.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Grue sensor backend is delivered as a plugin. The plugin has a
factory object that registers the types available and does the actual
instantiation of the backend.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="grue-sensor-console-application">

Grue Sensor Console Application

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Grue sensor console application demonstrates use of the Grue sensor.
The source code is available in the grue/console\_app subdirectory.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a simple commandline application. It demonstrates how to use the
generic access feature of Qt Sensors to avoid a link-time dependency on
the Grue Sensor library.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="grue-sensor-qml-import">

Grue Sensor QML Import

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Grue sensor QML import exports the GrueSensor class as a QML type.
The source code is available in the grue/import subdirectory.

.. raw:: html

   </p>

.. raw:: html

   <p>

This creates the Grue 1.0 import.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="grue-sensor-qml-application">

Grue Sensor QML Application

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Grue sensor QML application demonstrates the use of GrueSensor QML
type.

.. raw:: html

   </p>

.. raw:: html

   <p>

The application consists of a single QML file and an image. It is built
as an exucutable with C++ code that runs the QML, but it can also be
launched directly using the qmlscene tool.

.. raw:: html

   </p>

.. raw:: html

   <p>

You should build the top-level 'grue' project before trying to run this
example or it will not be able to find its dependencies.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlscene <span class="operator">-</span>I <span class="operator">.</span> grue<span class="operator">.</span>qml</pre>

.. raw:: html

   <p>

Above, the -I . parameter adds the current directory as a module import
path to locate the Grue QML module.

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

grue/Makefile.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/grue.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/lib/gruesensor.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/lib/gruesensor.h

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/lib/gruesensor\_p.h

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/plugin/gruesensorimpl.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/plugin/gruesensorimpl.h

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/grue.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/qml.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/qml.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/console\_app/console\_app.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/import/import.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/import/qmldir

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/lib/lib.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

grue/plugin/plugin.pro

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@grue -->
