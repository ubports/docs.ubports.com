.. _sdk_qtsensors_generic_backend:

QtSensors Generic Backend
=========================


The generic sensor backend provides emulation of some of the sensors that are not supported on the platform. For example, on a platform without a rotation sensor but with an accelerometer, the accelerometer is used to calculate the rotation, thus providing an emulated rotation sensor.

The following generic sensors are supported:

+------------------------+-----------------+
| Emulated Sensor        | Source Sensor   |
+========================+=================+
| Ambient Light Sensor   | Light Sensor    |
+------------------------+-----------------+
| Orientation Sensor     | Accelerometer   |
+------------------------+-----------------+
| Rotation Sensor        | Accelerometer   |
+------------------------+-----------------+
| Tilt Sensor            | Accelerometer   |
+------------------------+-----------------+

If a platform doesn't support the source sensor, then the sensor cannot be emulated.

