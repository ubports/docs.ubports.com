QtSensors.OrientationReading
============================

.. raw:: html

   <p>

The OrientationReading element holds the most recent OrientationSensor
reading. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OrientationReading -->

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

orientation : Orientation

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$OrientationReading-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The OrientationReading element holds the most recent OrientationSensor
reading.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element wraps the QOrientationReading class. Please see the
documentation for QOrientationReading for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element cannot be directly created.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@OrientationReading -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$orientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

orientation : Orientation

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

This property holds the orientation of the device.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QOrientationReading::orientation for information about this
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that Orientation constants are exposed through the
OrientationReading class.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">OrientationSensor {
   onReadingChanged: {
   <span class="keyword">if</span> (reading<span class="operator">.</span>orientation <span class="operator">=</span><span class="operator">=</span> OrientationReading<span class="operator">.</span>TopUp)
   <span class="comment">// do something</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@orientation -->


