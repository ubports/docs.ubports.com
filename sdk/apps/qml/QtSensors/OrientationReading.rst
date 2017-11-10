.. _sdk_qtsensors_orientationreading:

QtSensors OrientationReading
============================

The OrientationReading element holds the most recent OrientationSensor reading.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtSensors 5.0                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | QtSensors 5.0                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`SensorReading <sdk_qtsensors_sensorreading>`                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`orientation <sdk_qtsensors_orientationreading_orientation>` : Orientation

Detailed Description
--------------------

The :ref:`OrientationReading <sdk_qtsensors_orientationreading>` element holds the most recent :ref:`OrientationSensor <sdk_qtsensors_orientationsensor>` reading.

This element wraps the QOrientationReading class. Please see the documentation for QOrientationReading for details.

This element cannot be directly created.

Property Documentation
----------------------

.. _sdk_qtsensors_orientationreading_orientation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orientation : Orientation                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the orientation of the device.

Please see QOrientationReading::orientation for information about this property.

Note that Orientation constants are exposed through the :ref:`OrientationReading <sdk_qtsensors_orientationreading>` class.

.. code:: cpp

    OrientationSensor {
        onReadingChanged: {
            if (reading.orientation == OrientationReading.TopUp)
                // do something
        }
    }

