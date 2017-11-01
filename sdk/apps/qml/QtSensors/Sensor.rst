The Sensor element serves as a base type for sensors.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtSensors 5.0                 |
+--------------------------------------+--------------------------------------+
| Since:                               | QtSensors 5.0                        |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `Accelerometer </sdk/apps/qml/QtSens |
|                                      | ors/Accelerometer/>`__,              |
|                                      | `Altimeter </sdk/apps/qml/QtSensors/ |
|                                      | Altimeter/>`__,                      |
|                                      | `AmbientLightSensor </sdk/apps/qml/Q |
|                                      | tSensors/AmbientLightSensor/>`__,    |
|                                      | `AmbientTemperatureSensor </sdk/apps |
|                                      | /qml/QtSensors/AmbientTemperatureSen |
|                                      | sor/>`__,                            |
|                                      | `Compass </sdk/apps/qml/QtSensors/Co |
|                                      | mpass/>`__,                          |
|                                      | `DistanceSensor </sdk/apps/qml/QtSen |
|                                      | sors/DistanceSensor/>`__,            |
|                                      | `Gyroscope </sdk/apps/qml/QtSensors/ |
|                                      | Gyroscope/>`__,                      |
|                                      | `HolsterSensor </sdk/apps/qml/QtSens |
|                                      | ors/HolsterSensor/>`__,              |
|                                      | `IRProximitySensor </sdk/apps/qml/Qt |
|                                      | Sensors/IRProximitySensor/>`__,      |
|                                      | `LightSensor </sdk/apps/qml/QtSensor |
|                                      | s/LightSensor/>`__,                  |
|                                      | `Magnetometer </sdk/apps/qml/QtSenso |
|                                      | rs/Magnetometer/>`__,                |
|                                      | `OrientationSensor </sdk/apps/qml/Qt |
|                                      | Sensors/OrientationSensor/>`__,      |
|                                      | `PressureSensor </sdk/apps/qml/QtSen |
|                                      | sors/PressureSensor/>`__,            |
|                                      | `ProximitySensor </sdk/apps/qml/QtSe |
|                                      | nsors/ProximitySensor/>`__,          |
|                                      | `RotationSensor </sdk/apps/qml/QtSen |
|                                      | sors/RotationSensor/>`__,            |
|                                      | `TapSensor </sdk/apps/qml/QtSensors/ |
|                                      | TapSensor/>`__,                      |
|                                      | and                                  |
|                                      | `TiltSensor </sdk/apps/qml/QtSensors |
|                                      | /TiltSensor/>`__.                    |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`active </sdk/apps/qml/QtSensors/Sensor#active-prop>`__**** :
   bool
-  ****`alwaysOn </sdk/apps/qml/QtSensors/Sensor#alwaysOn-prop>`__**** :
   bool
-  ****`availableDataRates </sdk/apps/qml/QtSensors/Sensor#availableDataRates-prop>`__****
   : list<Range>
-  ****`axesOrientationMode </sdk/apps/qml/QtSensors/Sensor#axesOrientationMode-prop>`__****
   : Sensor::AxesOrientationMode
-  ****`bufferSize </sdk/apps/qml/QtSensors/Sensor#bufferSize-prop>`__****
   : int
-  ****`busy </sdk/apps/qml/QtSensors/Sensor#busy-prop>`__**** : bool
-  ****`connectedToBackend </sdk/apps/qml/QtSensors/Sensor#connectedToBackend-prop>`__****
   : bool
-  ****`currentOrientation </sdk/apps/qml/QtSensors/Sensor#currentOrientation-prop>`__****
   : int
-  ****`dataRate </sdk/apps/qml/QtSensors/Sensor#dataRate-prop>`__**** :
   int
-  ****`description </sdk/apps/qml/QtSensors/Sensor#description-prop>`__****
   : string
-  ****`efficientBufferSize </sdk/apps/qml/QtSensors/Sensor#efficientBufferSize-prop>`__****
   : int
-  ****`error </sdk/apps/qml/QtSensors/Sensor#error-prop>`__**** : int
-  ****`identifier </sdk/apps/qml/QtSensors/Sensor#identifier-prop>`__****
   : string
-  ****`maxBufferSize </sdk/apps/qml/QtSensors/Sensor#maxBufferSize-prop>`__****
   : int
-  ****`outputRange </sdk/apps/qml/QtSensors/Sensor#outputRange-prop>`__****
   : int
-  ****`outputRanges </sdk/apps/qml/QtSensors/Sensor#outputRanges-prop>`__****
   : list<OutputRange>
-  ****`reading </sdk/apps/qml/QtSensors/Sensor#reading-prop>`__**** :
   SensorReading
-  ****`skipDuplicates </sdk/apps/qml/QtSensors/Sensor#skipDuplicates-prop>`__****
   : bool
-  ****`type </sdk/apps/qml/QtSensors/Sensor#type-prop>`__**** : string
-  ****`userOrientation </sdk/apps/qml/QtSensors/Sensor#userOrientation-prop>`__****
   : int

Methods
-------

-  bool
   ****`start </sdk/apps/qml/QtSensors/Sensor#start-method>`__****\ ()
-  bool
   ****`stop </sdk/apps/qml/QtSensors/Sensor#stop-method>`__****\ ()

Detailed Description
--------------------

The Sensor element serves as a base type for sensors.

This element wraps the QSensor class. Please see the documentation for
QSensor for details.

This element cannot be directly created. Please use one of the
sub-classes instead.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ active : bool                                                   |
+--------------------------------------------------------------------------+

This property holds a value to indicate if the sensor is active.

Please see QSensor::active for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ alwaysOn : bool                                                 |
+--------------------------------------------------------------------------+

This property holds a value to indicate if the sensor should remain
running when the screen is off.

Please see QSensor::alwaysOn for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ availableDataRates : list<Range>                                |
+--------------------------------------------------------------------------+

This property holds the data rates that the sensor supports.

Please see QSensor::availableDataRates for information about this
property.

| 

+--------------------------------------------------------------------------+
|        \ axesOrientationMode : Sensor::AxesOrientationMode               |
+--------------------------------------------------------------------------+

This property holds the mode that affects how the screen orientation
changes reading values.

Please see QSensor::axesOrientationMode for information about this
property.

This QML property was introduced in QtSensors 5.1.

| 

+--------------------------------------------------------------------------+
|        \ bufferSize : int                                                |
+--------------------------------------------------------------------------+

This property holds the size of the buffer.

Please see QSensor::bufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

| 

+--------------------------------------------------------------------------+
|        \ busy : bool                                                     |
+--------------------------------------------------------------------------+

This property holds a value to indicate if the sensor is busy.

Please see QSensor::busy for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ connectedToBackend : bool                                       |
+--------------------------------------------------------------------------+

This property holds a value indicating if the sensor has connected to a
backend.

Please see QSensor::connectedToBackend for information about this
property.

| 

+--------------------------------------------------------------------------+
|        \ currentOrientation : int                                        |
+--------------------------------------------------------------------------+

This property holds the current orientation that is used for rotating
the reading values.

Please see QSensor::currentOrientation for information about this
property.

This QML property was introduced in QtSensors 5.1.

| 

+--------------------------------------------------------------------------+
|        \ dataRate : int                                                  |
+--------------------------------------------------------------------------+

This property holds the data rate that the sensor should be run at.

Please see QSensor::dataRate for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

This property holds a descriptive string for the sensor.

| 

+--------------------------------------------------------------------------+
|        \ efficientBufferSize : int                                       |
+--------------------------------------------------------------------------+

The property holds the most efficient buffer size.

Please see QSensor::efficientBufferSize for information about this
property.

This QML property was introduced in QtSensors 5.1.

| 

+--------------------------------------------------------------------------+
|        \ error : int                                                     |
+--------------------------------------------------------------------------+

This property holds the last error code set on the sensor.

| 

+--------------------------------------------------------------------------+
|        \ identifier : string                                             |
+--------------------------------------------------------------------------+

This property holds the backend identifier for the sensor.

Please see QSensor::identifier for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ maxBufferSize : int                                             |
+--------------------------------------------------------------------------+

This property holds the maximum buffer size.

Please see QSensor::maxBufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

| 

+--------------------------------------------------------------------------+
|        \ outputRange : int                                               |
+--------------------------------------------------------------------------+

This property holds the output range in use by the sensor.

Please see QSensor::outputRange for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ outputRanges : list<OutputRange>                                |
+--------------------------------------------------------------------------+

This property holds a list of output ranges the sensor supports.

Please see QSensor::outputRanges for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ reading :                                                       |
| `SensorReading </sdk/apps/qml/QtSensors/SensorReading/>`__               |
+--------------------------------------------------------------------------+

This property holds the reading class.

Please see QSensor::reading for information about this property.

**See also** QML Reading types.

| 

+--------------------------------------------------------------------------+
|        \ skipDuplicates : bool                                           |
+--------------------------------------------------------------------------+

This property indicates whether duplicate reading values should be
omitted.

Please see QSensor::skipDuplicates for information about this property.

This QML property was introduced in QtSensors 5.1.

| 

+--------------------------------------------------------------------------+
|        \ type : string                                                   |
+--------------------------------------------------------------------------+

This property holds the type of the sensor.

| 

+--------------------------------------------------------------------------+
|        \ userOrientation : int                                           |
+--------------------------------------------------------------------------+

This property holds the angle used for rotating the reading values in
the UserOrientation mode.

Please see QSensor::userOrientation for information about this property.

This QML property was introduced in QtSensors 5.1.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool start()                                                    |
+--------------------------------------------------------------------------+

Start retrieving values from the sensor. Returns true if the sensor was
started, false otherwise.

Please see QSensor::start() for information.

| 

+--------------------------------------------------------------------------+
|        \ bool stop()                                                     |
+--------------------------------------------------------------------------+

Stop retrieving values from the sensor.

Please see QSensor::stop() for information.

| 
