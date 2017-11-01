The AmbientLightReading element holds the most AmbientLightSensor
reading.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtSensors 5.0                 |
+--------------------------------------+--------------------------------------+
| Since:                               | QtSensors 5.0                        |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `SensorReading </sdk/apps/qml/QtSens |
|                                      | ors/SensorReading/>`__               |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`lightLevel </sdk/apps/qml/QtSensors/AmbientLightReading#lightLevel-prop>`__****
   : LightLevel

Detailed Description
--------------------

The
`AmbientLightReading </sdk/apps/qml/QtSensors/AmbientLightReading/>`__
element holds the most
`AmbientLightSensor </sdk/apps/qml/QtSensors/AmbientLightSensor/>`__
reading.

This element wraps the QAmbientLightReading class. Please see the
documentation for QAmbientLightReading for details.

This element cannot be directly created.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ lightLevel : LightLevel                                         |
+--------------------------------------------------------------------------+

This property holds the ambient light level.

Please see QAmbientLightReading::lightLevel for information about this
property.

Note that LightLevel constants are exposed through the
`AmbientLightReading </sdk/apps/qml/QtSensors/AmbientLightReading/>`__
class.

.. code:: cpp

    AmbientLightSensor {
        onReadingChanged: {
            if (reading.lightLevel == AmbientLightReading.Dark)
                // do something
        }
    }

| 
