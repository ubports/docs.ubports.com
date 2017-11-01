The SensorGlobal element provides the module API.

+---------------------+------------------------+
| Import Statement:   | import QtSensors 5.0   |
+---------------------+------------------------+
| Since:              | QtSensors 5.0          |
+---------------------+------------------------+

Methods
-------

-  string
   ****`defaultSensorForType </sdk/apps/qml/QtSensors/SensorGlobal#defaultSensorForType-method>`__****\ (type)
-  list<string>
   ****`sensorTypes </sdk/apps/qml/QtSensors/SensorGlobal#sensorTypes-method>`__****\ ()
-  list<string>
   ****`sensorsForType </sdk/apps/qml/QtSensors/SensorGlobal#sensorsForType-method>`__****\ (type)

Detailed Description
--------------------

The `SensorGlobal </sdk/apps/qml/QtSensors/SensorGlobal/>`__ element
provides the module API.

This element cannot be directly created. It can only be accessed via a
namespace import.

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

+--------------------------------------------------------------------------+
|        \ string defaultSensorForType(type)                               |
+--------------------------------------------------------------------------+

Returns the default sensor identifier that has been registered for
*type*.

Please see QSensor::defaultSensorForType() for information.

| 

+--------------------------------------------------------------------------+
|        \ list<string> sensorTypes()                                      |
+--------------------------------------------------------------------------+

Returns a list of the sensor types that have been registered.

Please see QSensor::sensorTypes() for information.

| 

+--------------------------------------------------------------------------+
|        \ list<string> sensorsForType(type)                               |
+--------------------------------------------------------------------------+

Returns a list of the sensor identifiers that have been registered for
*type*.

Please see QSensor::sensorsForType() for information.

| 
