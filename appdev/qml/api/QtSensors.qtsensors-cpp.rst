QtSensors.qtsensors-cpp
=======================

.. raw:: html

   <h2 id="sensor-types">

Sensor Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

On a device there can be many types of sensors. Not all of the types
that the Qt Sensors API supports may be available. There may also be
types available that are not defined in the Qt Sensors API. The types of
sensors available on a device is found using the QSensor::sensorTypes()
function.

.. raw:: html

   </p>

.. raw:: html

   <p>

For a list of built-in sensor types, see the Sensor Classes section
below.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="common-conventions">

Common Conventions

.. raw:: html

   </h2>

.. raw:: html

   <p>

Unless specified otherwise, Qt Sensors uses the Right Hand Cartesian
coordinate system.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

To allow for measurements in all 6 directions, negative values are used.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Where rotation around an axis is used, the rotation shall be expressed
as a Right Hand rotation.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

In general, sensor data is oriented relative to
QPlatformScreen::nativeOrientation, that is to the top of the device
when the device is held in its natural orientation (normally when the
device logo appears the right side up). If values are to be displayed on
the screen, the values may need to be transformed so that they match the
user interface orientation. A sensor may define its data as being
oriented to the UI. This will be noted in the documentation for the
sensor.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h2 id="using-a-sensor">

Using a Sensor

.. raw:: html

   </h2>

.. raw:: html

   <p>

The life cycle of a QSensor is typically:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Create an instance of QSensor or one of its sub-classes on the stack or
heap.

.. raw:: html

   </li>

.. raw:: html

   <li>

Setup as required by the application.

.. raw:: html

   </li>

.. raw:: html

   <li>

Start receiving values.

.. raw:: html

   </li>

.. raw:: html

   <li>

Sensor data is used by the application.

.. raw:: html

   </li>

.. raw:: html

   <li>

Stop receiving values.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Here is an example of creating a sensor on the heap and on the stack.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// On the heap (deleted when this object is deleted)</span>
   <span class="type">QAccelerometer</span> <span class="operator">*</span>sensor <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAccelerometer</span>(<span class="keyword">this</span>);
   <span class="comment">// On the stack (deleted when the current scope ends)</span>
   <span class="type">QOrientationSensor</span> orient_sensor;</pre>

.. raw:: html

   <h2 id="accessing-sensor-data-in-a-generic-fashion">

Accessing Sensor Data in a Generic Fashion

.. raw:: html

   </h2>

.. raw:: html

   <p>

The preferred way to deal with sensor data is via the Reading Classes.
However, sometimes this may not be possible. For example, you may be
deploying an application to a device that has a new sensor type but no
C++ header describing the reading class is available.

.. raw:: html

   </p>

.. raw:: html

   <p>

Thanks to Qt's property system you can still access the sensor data. You
need to know 3 pieces of information in order to do this:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The sensor type.

.. raw:: html

   </li>

.. raw:: html

   <li>

The property name or index.

.. raw:: html

   </li>

.. raw:: html

   <li>

The property type or a comparable type.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For example, here is an example of how you can access a property of the
accelerometer. This code does not require any compile-time links to
QAccelerometer or QAccelerometerReading.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// start the sensor</span>
   <span class="type">QSensor</span> sensor(<span class="string">&quot;QAccelerometer&quot;</span>);
   sensor<span class="operator">.</span>start();
   <span class="comment">// later</span>
   <span class="type">QSensorReading</span> <span class="operator">*</span>reading <span class="operator">=</span> sensor<span class="operator">.</span>reading();
   <span class="type">qreal</span> x <span class="operator">=</span> reading<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;x&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">qreal</span><span class="operator">&gt;</span>();
   <span class="type">qreal</span> y <span class="operator">=</span> reading<span class="operator">-</span><span class="operator">&gt;</span>value(<span class="number">1</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">qreal</span><span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

You can discover all of this information at runtime too. The
sensor\_explorer example shows you information about available sensors.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="front-end-back-end">

Front End, Back End

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Qt Sensors API has a front end, for application developers to use
and a back end, where device implementors write code to access their
hardware. As an application developer you do not need to access the back
end though it may be useful to understand how it works.

.. raw:: html

   </p>

.. raw:: html

   <p>

Commands from the application are delivered through QSensor and then
down to the device plugin. Data comes back through the QSensorReading
class.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

More information about the back end can be found in Qt Sensors Backend.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="main-classes">

Main Classes

.. raw:: html

   </h2>

.. raw:: html

   <p>

The primary classes that make up the Qt Sensors API.

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

QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents a single hardware sensor

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

QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Efficient callback facility for asynchronous notifications of sensor
changes

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QSensorReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds the readings from the sensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="reading-classes">

Reading Classes

.. raw:: html

   </h2>

.. raw:: html

   <p>

The best way to access sensor data is via one of these classes.

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

QAccelerometerReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Reports on linear acceleration along the X, Y and Z axes

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

QAltimeterReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds readings from the altimeter sensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAmbientLightReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one reading from the ambient light sensor

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

QAmbientTemperatureReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds readings of the ambient temperature

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCompassReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one reading from a compass

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

QDistanceReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds distance reading in cm from the proximity sensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QGyroscopeReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one reading from the gyroscope sensor

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

QHolsterReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds readings from the holster sensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QIRProximityReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds readings from the IR proximity sensor

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

QLightReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one reading from the light sensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QMagnetometerReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one reading from the magnetometer

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

QOrientationReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one reading from the orientation sensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPressureReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds readings from the pressure sensor

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

QProximityReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one reading from the proximity sensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QRotationReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one reading from the rotation sensor

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

QTapReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Represents one reading from the tap sensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QTiltReading

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Holds readings from the tilt sensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="sensor-classes">

Sensor Classes

.. raw:: html

   </h2>

.. raw:: html

   <p>

These classes provide convenience wrappers that reduce the need for
casting. Each of these classes represents a sensor type that the Qt
Sensors API knows about. Note that additional types may be made
available at run-time. See Sensor Types for more information.

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

QAccelerometer

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

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

QAltimeter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAmbientLightSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

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

QAmbientTemperatureSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCompass

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

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

QDistanceSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QGyroscope

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

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

QHolsterSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QIRProximitySensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

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

QLightSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QMagnetometer

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

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

QOrientationSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPressureSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

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

QProximitySensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QRotationSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

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

QTapSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QTiltSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensor

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="filter-classes">

Filter Classes

.. raw:: html

   </h2>

.. raw:: html

   <p>

As with the sensor classes, these provide convenience wrappers that
reduce the need for casting.

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

QAccelerometerFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

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

QAltimeterFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QAmbientLightFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

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

QAmbientTemperatureFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QCompassFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

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

QDistanceFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QGyroscopeFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

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

QHolsterFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QIRProximityFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

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

QLightFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QMagnetometerFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

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

QOrientationFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QPressureFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

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

QProximityFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QRotationFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

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

QTapFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QTiltFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Convenience wrapper around QSensorFilter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@qtsensors-cpp.html -->
