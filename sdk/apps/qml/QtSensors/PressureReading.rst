The PressureReading element holds the most recent PressureSensor
reading.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtSensors 5.0                 |
+--------------------------------------+--------------------------------------+
| Since:                               | QtSensors 5.1                        |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `SensorReading </sdk/apps/qml/QtSens |
|                                      | ors/SensorReading/>`__               |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`pressure </sdk/apps/qml/QtSensors/PressureReading#pressure-prop>`__****
   : qreal
-  ****`temperature </sdk/apps/qml/QtSensors/PressureReading#temperature-prop>`__****
   : qreal

Detailed Description
--------------------

The `PressureReading </sdk/apps/qml/QtSensors/PressureReading/>`__
element holds the most recent
`PressureSensor </sdk/apps/qml/QtSensors/PressureSensor/>`__ reading.

This element wraps the QPressureReading class. Please see the
documentation for QPressureReading for details.

This element cannot be directly created.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ pressure : qreal                                                |
+--------------------------------------------------------------------------+

This property holds the atmospheric pressure value in Pascals.

Please see QPressureReading::pressure for information about this
property.

| 

+--------------------------------------------------------------------------+
|        \ temperature : qreal                                             |
+--------------------------------------------------------------------------+

This property holds the pressure sensor's temperature value in degrees
Celsius.

Please see QPressureReading::temperature for information about this
property.

This QML property was introduced in QtSensors 5.2.

| 
