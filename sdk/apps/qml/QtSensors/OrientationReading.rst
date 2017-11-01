The OrientationReading element holds the most recent OrientationSensor
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

-  ****`orientation </sdk/apps/qml/QtSensors/OrientationReading#orientation-prop>`__****
   : Orientation

Detailed Description
--------------------

The `OrientationReading </sdk/apps/qml/QtSensors/OrientationReading/>`__
element holds the most recent
`OrientationSensor </sdk/apps/qml/QtSensors/OrientationSensor/>`__
reading.

This element wraps the QOrientationReading class. Please see the
documentation for QOrientationReading for details.

This element cannot be directly created.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ orientation : Orientation                                       |
+--------------------------------------------------------------------------+

This property holds the orientation of the device.

Please see QOrientationReading::orientation for information about this
property.

Note that Orientation constants are exposed through the
`OrientationReading </sdk/apps/qml/QtSensors/OrientationReading/>`__
class.

.. code:: cpp

    OrientationSensor {
        onReadingChanged: {
            if (reading.orientation == OrientationReading.TopUp)
                // do something
        }
    }

| 
