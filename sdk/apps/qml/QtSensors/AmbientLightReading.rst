.. _sdk_qtsensors_ambientlightreading:

QtSensors AmbientLightReading
=============================

The AmbientLightReading element holds the most AmbientLightSensor reading.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtSensors 5.0                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | QtSensors 5.0                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`SensorReading <sdk_qtsensors_sensorreading>`                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`lightLevel <sdk_qtsensors_ambientlightreading_lightLevel>` : LightLevel

Detailed Description
--------------------

The :ref:`AmbientLightReading <sdk_qtsensors_ambientlightreading>` element holds the most :ref:`AmbientLightSensor <sdk_qtsensors_ambientlightsensor>` reading.

This element wraps the QAmbientLightReading class. Please see the documentation for QAmbientLightReading for details.

This element cannot be directly created.

Property Documentation
----------------------

.. _sdk_qtsensors_ambientlightreading_lightLevel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| lightLevel : LightLevel                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the ambient light level.

Please see QAmbientLightReading::lightLevel for information about this property.

Note that LightLevel constants are exposed through the :ref:`AmbientLightReading <sdk_qtsensors_ambientlightreading>` class.

.. code:: cpp

    AmbientLightSensor {
        onReadingChanged: {
            if (reading.lightLevel == AmbientLightReading.Dark)
                // do something
        }
    }

