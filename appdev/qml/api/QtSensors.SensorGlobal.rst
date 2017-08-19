QtSensors.SensorGlobal
======================

.. raw:: html

   <p>

The SensorGlobal element provides the module API. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@SensorGlobal -->

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

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

string defaultSensorForType(type)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

list<string> sensorTypes()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

list<string> sensorsForType(type)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$SensorGlobal-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The SensorGlobal element provides the module API.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element cannot be directly created. It can only be accessed via a
namespace import.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtSensors</span> <span class="number">5.0</span>
   import <span class="type">QtSensors</span> <span class="number">5.0</span> as Sensors
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   Component<span class="operator">.</span>onCompleted: {
   var types <span class="operator">=</span> Sensors<span class="operator">.</span>QmlSensors<span class="operator">.</span>sensorTypes();
   console<span class="operator">.</span>log(types<span class="operator">.</span>join(<span class="string">&quot;, &quot;</span>));
   }</pre>

.. raw:: html

   <!-- @@@SensorGlobal -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$defaultSensorForType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultSensorForType-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string defaultSensorForType(type)

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

Returns the default sensor identifier that has been registered for type.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::defaultSensorForType() for information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultSensorForType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sensorTypes-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

list<string> sensorTypes()

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

Returns a list of the sensor types that have been registered.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::sensorTypes() for information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sensorTypes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sensorsForType-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

list<string> sensorsForType(type)

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

Returns a list of the sensor identifiers that have been registered for
type.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::sensorsForType() for information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sensorsForType -->


