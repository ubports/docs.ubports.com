.. _sdk_qtsensors_sensorgesture:

QtSensors SensorGesture
=======================

Provides notifications when sensor-based gestures are detected.

+---------------------+------------------------+
| Import Statement:   | import QtSensors 5.0   |
+---------------------+------------------------+
| Since:              | QtSensors 5.0          |
+---------------------+------------------------+

Properties
----------

-  :ref:`availableGestures <sdk_qtsensors_sensorgesture_availableGestures>` : stringlist
-  :ref:`enabled <sdk_qtsensors_sensorgesture_enabled>` : bool
-  :ref:`gestures <sdk_qtsensors_sensorgesture_gestures>` : stringlist
-  :ref:`invalidGestures <sdk_qtsensors_sensorgesture_invalidGestures>` : stringlist
-  :ref:`validGestures <sdk_qtsensors_sensorgesture_validGestures>` : stringlist

Signals
-------

-  :ref:`detected <sdk_qtsensors_sensorgesture_detected>`\ (string *gesture*)

Detailed Description
--------------------

This type provides notification when sensor gestures are triggered.

The following QML code creates a "shake" and "SecondCounter" :ref:`SensorGesture <sdk_qtsensors_sensorgesture>` QML type, and displays the detected gesture in a text type.

QtSensors.shake gesture is available with the Qt Sensors API, but the QtSensors.SecondCounter sensor gesture is provided as example code for the Qt Sensors - SensorGesture QML Type example

.. code:: qml

    Item {
       SensorGesture {
           id: sensorGesture
           enabled: false
           gestures : ["QtSensors.shake", "QtSensors.SecondCounter"]
           onDetected:{
               detectedText.text = gesture
           }
       }
       Text {
           id: detectedText
           x:5
           y:160
       }
    }

Qt Sensor Gestures contains a list of currently supported sensor gestures and their descriptions.

Property Documentation
----------------------

.. _sdk_qtsensors_sensorgesture_availableGestures:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| availableGestures : stringlist                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property can be used to determine all available gestures on the system.

.. _sdk_qtsensors_sensorgesture_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property can be used to activate or deactivate the sensor gesture. Default value is false;

**See also** :ref:`SensorGesture::detected <sdk_qtsensors_sensorgesture_detected>` and :ref:`detected <sdk_qtsensors_sensorgesture_detected>`.

.. _sdk_qtsensors_sensorgesture_gestures:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| gestures : stringlist                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Set this property to a list of the gestures that the application is interested in detecting. This property cannot be changed while the type is enabled.

The properties :ref:`validGestures <sdk_qtsensors_sensorgesture_validGestures>` and :ref:`invalidGestures <sdk_qtsensors_sensorgesture_invalidGestures>` will be set as appropriate immediately. To determine all available getures on the system please use the :ref:`availableGestures <sdk_qtsensors_sensorgesture_availableGestures>` property.

**See also** QtSensorGestures Plugins.

.. _sdk_qtsensors_sensorgesture_invalidGestures:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| invalidGestures : stringlist                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the requested gestures that were not found on the system.

.. _sdk_qtsensors_sensorgesture_validGestures:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| validGestures : stringlist                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the requested gestures that were found on the system.

Signal Documentation
--------------------

.. _sdk_qtsensors_sensorgesture_detected:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detected(string *gesture*)                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted whenever a gesture is detected. The gesture parameter contains the gesture that was detected.

The corresponding handler is ``onDetected``.

