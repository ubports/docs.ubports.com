.. _sdk_qtsensors_sensorglobal:

QtSensors SensorGlobal
======================

The SensorGlobal element provides the module API.

+---------------------+------------------------+
| Import Statement:   | import QtSensors 5.0   |
+---------------------+------------------------+
| Since:              | QtSensors 5.0          |
+---------------------+------------------------+

Methods
-------

-  string :ref:`defaultSensorForType <sdk_qtsensors_sensorglobal_defaultSensorForType>`\ (type)
-  list<string> :ref:`sensorTypes <sdk_qtsensors_sensorglobal_sensorTypes>`\ ()
-  list<string> :ref:`sensorsForType <sdk_qtsensors_sensorglobal_sensorsForType>`\ (type)

Detailed Description
--------------------

The :ref:`SensorGlobal <sdk_qtsensors_sensorglobal>` element provides the module API.

This element cannot be directly created. It can only be accessed via a namespace import.

.. code:: cpp

    import QtSensors 5.0
    import QtSensors 5.0 as Sensors
    ...
        Component.onCompleted: {
            var types = Sensors.QmlSensors.sensorTypes();
            console.log(types.join(", "));
        }

Method Documentation
--------------------

.. _sdk_qtsensors_sensorglobal_defaultSensorForType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string defaultSensorForType(type)                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the default sensor identifier that has been registered for *type*.

Please see QSensor::defaultSensorForType() for information.

.. _sdk_qtsensors_sensorglobal_sensorTypes:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| list<string> sensorTypes()                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a list of the sensor types that have been registered.

Please see QSensor::sensorTypes() for information.

.. _sdk_qtsensors_sensorglobal_sensorsForType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| list<string> sensorsForType(type)                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a list of the sensor identifiers that have been registered for *type*.

Please see QSensor::sensorsForType() for information.

