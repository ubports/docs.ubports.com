QtSensors.SensorGesture
=======================

.. raw:: html

   <p>

Provides notifications when sensor-based gestures are detected. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SensorGesture -->

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

import QtSensors 5.0

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

QtSensors 5.0

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

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

availableGestures : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

gestures : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

invalidGestures : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

validGestures : stringlist

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

detected(string gesture)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SensorGesture-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This type provides notification when sensor gestures are triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following QML code creates a "shake" and "SecondCounter"
SensorGesture QML type, and displays the detected gesture in a text
type.

.. raw:: html

   </p>

.. raw:: html

   <p>

QtSensors.shake gesture is available with the Qt Sensors API, but the
QtSensors.SecondCounter sensor gesture is provided as example code for
the Qt Sensors - SensorGesture QML Type example

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="type"><a href="index.html">SensorGesture</a></span> {
   <span class="name">id</span>: <span class="name">sensorGesture</span>
   <span class="name">enabled</span>: <span class="number">false</span>
   <span class="name">gestures</span> : [<span class="string">&quot;QtSensors.shake&quot;</span>, <span class="string">&quot;QtSensors.SecondCounter&quot;</span>]
   <span class="name">onDetected</span>:{
   <span class="name">detectedText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">gesture</span>
   }
   }
   <span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">detectedText</span>
   <span class="name">x</span>:<span class="number">5</span>
   <span class="name">y</span>:<span class="number">160</span>
   }
   }</pre>

.. raw:: html

   <p>

Qt Sensor Gestures contains a list of currently supported sensor
gestures and their descriptions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SensorGesture -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$availableGestures -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="availableGestures-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

availableGestures : stringlist

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

This property can be used to determine all available gestures on the
system.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@availableGestures -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

This property can be used to activate or deactivate the sensor gesture.
Default value is false;

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SensorGesture::detected and detected.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="gestures-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

gestures : stringlist

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

Set this property to a list of the gestures that the application is
interested in detecting. This property cannot be changed while the type
is enabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

The properties validGestures and invalidGestures will be set as
appropriate immediately. To determine all available getures on the
system please use the availableGestures property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QtSensorGestures Plugins.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gestures -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="invalidGestures-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

invalidGestures : stringlist

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

This property holds the requested gestures that were not found on the
system.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@invalidGestures -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="validGestures-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

validGestures : stringlist

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

This property holds the requested gestures that were found on the
system.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@validGestures -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$detected -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="detected-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

detected(string gesture)

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

This signal is emitted whenever a gesture is detected. The gesture
parameter contains the gesture that was detected.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDetected.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detected -->


