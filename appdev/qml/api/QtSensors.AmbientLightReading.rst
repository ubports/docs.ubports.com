QtSensors.AmbientLightReading
=============================

.. raw:: html

   <p>

The AmbientLightReading element holds the most AmbientLightSensor
reading. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AmbientLightReading -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

SensorReading

.. raw:: html

   </p>

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

lightLevel : LightLevel

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AmbientLightReading-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The AmbientLightReading element holds the most AmbientLightSensor
reading.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element wraps the QAmbientLightReading class. Please see the
documentation for QAmbientLightReading for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element cannot be directly created.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AmbientLightReading -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$lightLevel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="lightLevel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

lightLevel : LightLevel

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

This property holds the ambient light level.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QAmbientLightReading::lightLevel for information about this
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that LightLevel constants are exposed through the
AmbientLightReading class.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">AmbientLightSensor {
   onReadingChanged: {
   <span class="keyword">if</span> (reading<span class="operator">.</span>lightLevel <span class="operator">=</span><span class="operator">=</span> AmbientLightReading<span class="operator">.</span>Dark)
   <span class="comment">// do something</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@lightLevel -->


