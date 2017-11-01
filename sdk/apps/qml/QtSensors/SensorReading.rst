The SensorReading element serves as a base type for sensor readings.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtSensors 5.0                 |
+--------------------------------------+--------------------------------------+
| Since:                               | QtSensors 5.0                        |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `AccelerometerReading </sdk/apps/qml |
|                                      | /QtSensors/AccelerometerReading/>`__ |
|                                      | ,                                    |
|                                      | `AltimeterReading </sdk/apps/qml/QtS |
|                                      | ensors/AltimeterReading/>`__,        |
|                                      | `AmbientLightReading </sdk/apps/qml/ |
|                                      | QtSensors/AmbientLightReading/>`__,  |
|                                      | `AmbientTemperatureReading </sdk/app |
|                                      | s/qml/QtSensors/AmbientTemperatureRe |
|                                      | ading/>`__,                          |
|                                      | `CompassReading </sdk/apps/qml/QtSen |
|                                      | sors/CompassReading/>`__,            |
|                                      | `DistanceReading </sdk/apps/qml/QtSe |
|                                      | nsors/DistanceReading/>`__,          |
|                                      | `GyroscopeReading </sdk/apps/qml/QtS |
|                                      | ensors/GyroscopeReading/>`__,        |
|                                      | `HolsterReading </sdk/apps/qml/QtSen |
|                                      | sors/HolsterReading/>`__,            |
|                                      | `IRProximityReading </sdk/apps/qml/Q |
|                                      | tSensors/IRProximityReading/>`__,    |
|                                      | `LightReading </sdk/apps/qml/QtSenso |
|                                      | rs/LightReading/>`__,                |
|                                      | `MagnetometerReading </sdk/apps/qml/ |
|                                      | QtSensors/MagnetometerReading/>`__,  |
|                                      | `OrientationReading </sdk/apps/qml/Q |
|                                      | tSensors/OrientationReading/>`__,    |
|                                      | `PressureReading </sdk/apps/qml/QtSe |
|                                      | nsors/PressureReading/>`__,          |
|                                      | `ProximityReading </sdk/apps/qml/QtS |
|                                      | ensors/ProximityReading/>`__,        |
|                                      | `RotationReading </sdk/apps/qml/QtSe |
|                                      | nsors/RotationReading/>`__,          |
|                                      | `TapReading </sdk/apps/qml/QtSensors |
|                                      | /TapReading/>`__,                    |
|                                      | and                                  |
|                                      | `TiltReading </sdk/apps/qml/QtSensor |
|                                      | s/TiltReading/>`__.                  |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`timestamp </sdk/apps/qml/QtSensors/SensorReading#timestamp-prop>`__****
   : quint64

Detailed Description
--------------------

The `SensorReading </sdk/apps/qml/QtSensors/SensorReading/>`__ element
serves as a base type for sensor readings.

This element wraps the QSensorReading class. Please see the
documentation for QSensorReading for details.

This element cannot be directly created.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ timestamp : quint64                                             |
+--------------------------------------------------------------------------+

A timestamp for the reading.

Please see QSensorReading::timestamp for information about this
property.

| 
