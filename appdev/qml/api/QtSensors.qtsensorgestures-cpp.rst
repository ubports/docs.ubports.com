QtSensors.qtsensorgestures-cpp
==============================

.. raw:: html

   <h2 id="using-qtsensorgestures">

Using QtSensorGestures

.. raw:: html

   </h2>

.. raw:: html

   <p>

With the Sensor Gestures classes, you are able to easily utilize device
gesturing using sensors, such as the accelerometer and proximity.

.. raw:: html

   </p>

.. raw:: html

   <p>

A list of currently supported sensor gestures and their descriptions can
be found here: Qt Sensor Gestures

.. raw:: html

   </p>

.. raw:: html

   <p>

Using QtSensorGestures is easy. There are two main classes you will need
to use:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QSensorGestureManager: can be used for determining which sensor gestures
are available.

.. raw:: html

   </li>

.. raw:: html

   <li>

QSensorGesture : for connecting the sensor gesture signals.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <pre class="cpp"><span class="comment">// Create a QSensorGestureManager</span>
   <span class="type">QSensorGestureManager</span> gestureManager;
   <span class="comment">// Get a list of known recognizers</span>
   <span class="type">QStringList</span> recognizersList <span class="operator">=</span> gestureManager<span class="operator">.</span>gestureIds();
   <span class="comment">// Create a QSensorGeture object for each of those gesture recognizers</span>
   <span class="type">QSensorGesture</span> <span class="operator">*</span>gesture <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QSensorGesture</span>( gestureManager<span class="operator">.</span>gestureIds()<span class="operator">,</span> <span class="keyword">this</span>);
   <span class="comment">// Connect the known signals up.</span>
   connect(gesture<span class="operator">,</span> SIGNAL(detected(<span class="type">QString</span>))<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(gestureDetected(<span class="type">QString</span>)));</pre>

.. raw:: html

   <p>

More information about the sensor gesture recognizers can be found in
QtSensorGestures Plugins.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="main-classes">

Main Classes

.. raw:: html

   </h2>

.. raw:: html

   <p>

The primary classes that make up the QtSensorGestures API:

.. raw:: html

   </p>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSensorGesture

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one or more sensor gesture recognizers

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSensorGestureManager

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Manages sensor gestures, registers and creates sensor gesture plugins

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

The primary classes that make up the QtSensorGesturesRecognizers API:

.. raw:: html

   </p>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSensorGesturePluginInterface

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

The pure virtual interface to sensor gesture plugins

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSensorGestureRecognizer

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

The base class for a sensor gesture recognizer

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

Details of the QSensorGesturePlugins available

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtsensorgestures-cpp.html -->
