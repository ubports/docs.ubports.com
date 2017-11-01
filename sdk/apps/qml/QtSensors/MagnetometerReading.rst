The MagnetometerReading element holds the most recent Magnetometer
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

-  ****`calibrationLevel </sdk/apps/qml/QtSensors/MagnetometerReading#calibrationLevel-prop>`__****
   : qreal
-  ****`x </sdk/apps/qml/QtSensors/MagnetometerReading#x-prop>`__**** :
   qreal
-  ****`y </sdk/apps/qml/QtSensors/MagnetometerReading#y-prop>`__**** :
   qreal
-  ****`z </sdk/apps/qml/QtSensors/MagnetometerReading#z-prop>`__**** :
   qreal

Detailed Description
--------------------

The
`MagnetometerReading </sdk/apps/qml/QtSensors/MagnetometerReading/>`__
element holds the most recent Magnetometer reading.

This element wraps the QMagnetometerReading class. Please see the
documentation for QMagnetometerReading for details.

This element cannot be directly created.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ calibrationLevel : qreal                                        |
+--------------------------------------------------------------------------+

This property holds the accuracy of the reading.

Please see QMagnetometerReading::calibrationLevel for information about
this property.

| 

+--------------------------------------------------------------------------+
|        \ x : qreal                                                       |
+--------------------------------------------------------------------------+

This property holds the raw magnetic flux density on the X axis.

Please see QMagnetometerReading::x for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ y : qreal                                                       |
+--------------------------------------------------------------------------+

This property holds the raw magnetic flux density on the Y axis.

Please see QMagnetometerReading::y for information about this property.

| 

+--------------------------------------------------------------------------+
|        \ z : qreal                                                       |
+--------------------------------------------------------------------------+

This property holds the raw magnetic flux density on the Z axis.

Please see QMagnetometerReading::z for information about this property.

| 
