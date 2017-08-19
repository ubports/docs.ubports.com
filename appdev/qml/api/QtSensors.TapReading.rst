QtSensors.TapReading
====================

.. raw:: html

   <p>

The TapReading element holds the most recent TapSensor reading. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TapReading -->

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

doubleTap : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tapDirection : TapDirection

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$TapReading-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The TapReading element holds the most recent TapSensor reading.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element wraps the QTapReading class. Please see the documentation
for QTapReading for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element cannot be directly created.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@TapReading -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$doubleTap -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="doubleTap-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

doubleTap : bool

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

This property holds a value indicating if there was a single or double
tap.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QTapReading::doubleTap for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@doubleTap -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tapDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

tapDirection : TapDirection

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

This property holds the direction of the tap.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QTapReading::tapDirection for information about this
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that TapDirection constants are exposed through the TapReading
class.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">TapSensor {
   onReadingChanged: {
   <span class="keyword">if</span> ((reading<span class="operator">.</span>tapDirection <span class="operator">&amp;</span> TapReading<span class="operator">.</span>X_Both))
   <span class="comment">// do something</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@tapDirection -->


