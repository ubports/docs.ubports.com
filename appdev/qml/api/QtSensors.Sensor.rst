QtSensors.Sensor
================

.. raw:: html

   <p>

The Sensor element serves as a base type for sensors. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Sensor -->

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

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Accelerometer, Altimeter, AmbientLightSensor, AmbientTemperatureSensor,
Compass, DistanceSensor, Gyroscope, HolsterSensor, IRProximitySensor,
LightSensor, Magnetometer, OrientationSensor, PressureSensor,
ProximitySensor, RotationSensor, TapSensor, and TiltSensor.

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

active : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

alwaysOn : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

availableDataRates : list<Range>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

axesOrientationMode : Sensor::AxesOrientationMode

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bufferSize : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

busy : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

connectedToBackend : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

currentOrientation : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dataRate : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

description : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

efficientBufferSize : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

identifier : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maxBufferSize : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

outputRange : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

outputRanges : list<OutputRange>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reading : SensorReading

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

skipDuplicates : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

type : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

userOrientation : int

.. raw:: html

   </li>

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

bool start()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool stop()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Sensor-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Sensor element serves as a base type for sensors.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element wraps the QSensor class. Please see the documentation for
QSensor for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

This element cannot be directly created. Please use one of the
sub-classes instead.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Sensor -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="active-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

active : bool

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

This property holds a value to indicate if the sensor is active.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::active for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="alwaysOn-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

alwaysOn : bool

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

This property holds a value to indicate if the sensor should remain
running when the screen is off.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::alwaysOn for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alwaysOn -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="availableDataRates-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

availableDataRates : list<Range>

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

This property holds the data rates that the sensor supports.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::availableDataRates for information about this
property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@availableDataRates -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="axesOrientationMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

axesOrientationMode : Sensor::AxesOrientationMode

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

This property holds the mode that affects how the screen orientation
changes reading values.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::axesOrientationMode for information about this
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtSensors 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@axesOrientationMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="bufferSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

bufferSize : int

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

This property holds the size of the buffer.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::bufferSize for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtSensors 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@bufferSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="busy-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

busy : bool

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

This property holds a value to indicate if the sensor is busy.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::busy for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@busy -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="connectedToBackend-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

connectedToBackend : bool

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

This property holds a value indicating if the sensor has connected to a
backend.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::connectedToBackend for information about this
property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@connectedToBackend -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentOrientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentOrientation : int

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

This property holds the current orientation that is used for rotating
the reading values.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::currentOrientation for information about this
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtSensors 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentOrientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dataRate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dataRate : int

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

This property holds the data rate that the sensor should be run at.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::dataRate for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dataRate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="description-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

description : string

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

This property holds a descriptive string for the sensor.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@description -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="efficientBufferSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

efficientBufferSize : int

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

The property holds the most efficient buffer size.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::efficientBufferSize for information about this
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtSensors 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@efficientBufferSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

error : int

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

This property holds the last error code set on the sensor.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="identifier-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

identifier : string

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

This property holds the backend identifier for the sensor.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::identifier for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@identifier -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maxBufferSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maxBufferSize : int

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

This property holds the maximum buffer size.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::maxBufferSize for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtSensors 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maxBufferSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="outputRange-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

outputRange : int

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

This property holds the output range in use by the sensor.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::outputRange for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@outputRange -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="outputRanges-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

outputRanges : list<OutputRange>

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

This property holds a list of output ranges the sensor supports.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::outputRanges for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@outputRanges -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reading-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

reading : SensorReading

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

This property holds the reading class.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::reading for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QML Reading types.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reading -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="skipDuplicates-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

skipDuplicates : bool

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

This property indicates whether duplicate reading values should be
omitted.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::skipDuplicates for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtSensors 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@skipDuplicates -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="type-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

type : string

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

This property holds the type of the sensor.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@type -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="userOrientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

userOrientation : int

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

This property holds the angle used for rotating the reading values in
the UserOrientation mode.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::userOrientation for information about this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtSensors 5.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@userOrientation -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$start -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="start-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool start()

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

Start retrieving values from the sensor. Returns true if the sensor was
started, false otherwise.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::start() for information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@start -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool stop()

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

Stop retrieving values from the sensor.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see QSensor::stop() for information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->


