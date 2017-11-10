.. _sdk_qtsensors_determining_the_default_sensor_for_a_type:

QtSensors Determining the default sensor for a type
===================================================



Sensors was designed so that multiple sensors could exist for a given type. Why? Consider this example.

The N900 has an accelerometer built-in. It also features bluetooth and can pair with a gaming controller that features an accelerometer. To a developer writing a game these two devices are conceptually the same type.

To avoid the need to know (or check) what the default sensor for a type is, the system will use the default sensor for a type. Most of the time this is what the app developer wants to do. If the app developer wants to select a specific sensor, he needs to call the QSensor::setIdentifier() method before starting the sensor so that the appropriate backend is used.

From a system perspective though, selecting which sensor should be the default gets tricky. The sensors library uses the first registered identifier as the default. This means that the order in which the sensor backends are registered, is important so the system will allow a config file to determine the default instead.

The config file that determines the default sensor for a type is called Sensors.conf. If present, it is located in /etc/xdg/QtProject. It has the standard formatting of an ini file.

The settings live in the Default group and the general format is:

.. code:: cpp

    type = identifier

An example: Sensors.conf ensures that the N900 accelerometer is used by default, not considering the order in which backends were registered.

.. code:: cpp

    [Default]
    QAccelerometer = n900.accelerometer

If Sensors.conf specifies an identifier that is not registered, the system will fall back to the first registered identifier as the default.

Note that there is a special case logic to prevent the generic plugin's backends from becoming the default when another backend is registered for the same type. This logic means that a backend identifier starting with ``generic.`` will only be the default if no other backends have been registered for that type, or if it is specified in ``Sensors.conf``.

