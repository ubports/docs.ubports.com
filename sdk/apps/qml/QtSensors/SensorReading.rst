.. _sdk_qtsensors_sensorreading:

QtSensors SensorReading
=======================

The SensorReading element serves as a base type for sensor readings.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtSensors 5.0                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | QtSensors 5.0                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`AccelerometerReading <sdk_qtsensors_accelerometerreading>`, :ref:`AltimeterReading <sdk_qtsensors_altimeterreading>`,                                     |
|                                                                                                                                                        | :ref:`AmbientLightReading <sdk_qtsensors_ambientlightreading>`, :ref:`AmbientTemperatureReading <sdk_qtsensors_ambienttemperaturereading>`,                     |
|                                                                                                                                                        | :ref:`CompassReading <sdk_qtsensors_compassreading>`, :ref:`DistanceReading <sdk_qtsensors_distancereading>`,                                                   |
|                                                                                                                                                        | :ref:`GyroscopeReading <sdk_qtsensors_gyroscopereading>`, :ref:`HolsterReading <sdk_qtsensors_holsterreading>`,                                                 |
|                                                                                                                                                        | :ref:`IRProximityReading <sdk_qtsensors_irproximityreading>`, :ref:`LightReading <sdk_qtsensors_lightreading>`,                                                 |
|                                                                                                                                                        | :ref:`MagnetometerReading <sdk_qtsensors_magnetometerreading>`, :ref:`OrientationReading <sdk_qtsensors_orientationreading>`,                                   |
|                                                                                                                                                        | :ref:`PressureReading <sdk_qtsensors_pressurereading>`, :ref:`ProximityReading <sdk_qtsensors_proximityreading>`,                                               |
|                                                                                                                                                        | :ref:`RotationReading <sdk_qtsensors_rotationreading>`, :ref:`TapReading <sdk_qtsensors_tapreading>`, and :ref:`TiltReading <sdk_qtsensors_tiltreading>`.       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`timestamp <sdk_qtsensors_sensorreading_timestamp>` : quint64

Detailed Description
--------------------

The :ref:`SensorReading <sdk_qtsensors_sensorreading>` element serves as a base type for sensor readings.

This element wraps the QSensorReading class. Please see the documentation for QSensorReading for details.

This element cannot be directly created.

Property Documentation
----------------------

.. _sdk_qtsensors_sensorreading_timestamp:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| timestamp : quint64                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

A timestamp for the reading.

Please see QSensorReading::timestamp for information about this property.

