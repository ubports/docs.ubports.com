The TapReading element holds the most recent TapSensor reading.

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

-  ****`doubleTap </sdk/apps/qml/QtSensors/TapReading#doubleTap-prop>`__****
   : bool
-  ****`tapDirection </sdk/apps/qml/QtSensors/TapReading#tapDirection-prop>`__****
   : TapDirection

Detailed Description
--------------------

The `TapReading </sdk/apps/qml/QtSensors/TapReading/>`__ element holds
the most recent `TapSensor </sdk/apps/qml/QtSensors/TapSensor/>`__
reading.

This element wraps the QTapReading class. Please see the documentation
for QTapReading for details.

This element cannot be directly created.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ doubleTap : bool                                                |
+--------------------------------------------------------------------------+

This property holds a value indicating if there was a single or double
tap.

Please see QTapReading::doubleTap for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ tapDirection : TapDirection                                     |
+--------------------------------------------------------------------------+

This property holds the direction of the tap.

Please see QTapReading::tapDirection for information about this
property.

Note that TapDirection constants are exposed through the
`TapReading </sdk/apps/qml/QtSensors/TapReading/>`__ class.

.. code:: cpp

    TapSensor {
        onReadingChanged: {
            if ((reading.tapDirection & TapReading.X_Both))
                // do something
        }
    }

| 
