.. _sdk_qtsensors_sensorreading:
QtSensors SensorReading
=======================

The SensorReading element serves as a base type for sensor readings.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtSensors 5.0                 |
+--------------------------------------+--------------------------------------+
| Since:                               | QtSensors 5.0                        |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | :ref:`AccelerometerReading <sdk_qtsensors |
|                                      | _accelerometerreading>`_ ,           |
|                                      | :ref:`AltimeterReading <sdk_qtsensors_alt |
|                                      | imeterreading>`_ ,                   |
|                                      | :ref:`AmbientLightReading <sdk_qtsensors_ |
|                                      | ambientlightreading>`_ ,             |
|                                      | :ref:`AmbientTemperatureReading <sdk_qtse |
|                                      | nsors_ambienttemperaturereading>`_ , |
|                                      | :ref:`CompassReading <sdk_qtsensors_compa |
|                                      | ssreading>`_ ,                       |
|                                      | :ref:`DistanceReading <sdk_qtsensors_dist |
|                                      | ancereading>`_ ,                     |
|                                      | :ref:`GyroscopeReading <sdk_qtsensors_gyr |
|                                      | oscopereading>`_ ,                   |
|                                      | :ref:`HolsterReading <sdk_qtsensors_holst |
|                                      | erreading>`_ ,                       |
|                                      | :ref:`IRProximityReading <sdk_qtsensors_i |
|                                      | rproximityreading>`_ ,               |
|                                      | :ref:`LightReading <sdk_qtsensors_lightre |
|                                      | ading>`_ ,                           |
|                                      | :ref:`MagnetometerReading <sdk_qtsensors_ |
|                                      | magnetometerreading>`_ ,             |
|                                      | :ref:`OrientationReading <sdk_qtsensors_o |
|                                      | rientationreading>`_ ,               |
|                                      | :ref:`PressureReading <sdk_qtsensors_pres |
|                                      | surereading>`_ ,                     |
|                                      | :ref:`ProximityReading <sdk_qtsensors_pro |
|                                      | ximityreading>`_ ,                   |
|                                      | :ref:`RotationReading <sdk_qtsensors_rota |
|                                      | tionreading>`_ ,                     |
|                                      | :ref:`TapReading <sdk_qtsensors_tapreadin |
|                                      | g>`_ ,                               |
|                                      | and                                  |
|                                      | :ref:`TiltReading <sdk_qtsensors_tiltread |
|                                      | ing>`_ .                             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`timestamp <sdk_qtsensors_sensorreading_timestamp-prop>` :
   quint64

Detailed Description
--------------------

The :ref:`SensorReading <sdk_qtsensors_sensorreading>` element serves as a
base type for sensor readings.

This element wraps the QSensorReading class. Please see the
documentation for QSensorReading for details.

This element cannot be directly created.

Property Documentation
----------------------

.. _sdk_qtsensors_sensorreading_timestamp-prop:

+--------------------------------------------------------------------------+
|        \ timestamp : quint64                                             |
+--------------------------------------------------------------------------+

A timestamp for the reading.

Please see QSensorReading::timestamp for information about this
property.

| 
