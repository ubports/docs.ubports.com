.. _sdk_qtsensors_sensor_gestures_c++_overview:

QtSensors Sensor Gestures C++ Overview
======================================



With the Sensor Gestures classes, you are able to easily utilize device gesturing using sensors, such as the accelerometer and proximity.

A list of currently supported sensor gestures and their descriptions can be found here: Qt Sensor Gestures

Using ``QtSensorGestures`` is easy. There are two main classes you will need to use:

-  QSensorGestureManager: can be used for determining which sensor gestures are available.
-  QSensorGesture : for connecting the sensor gesture signals.

.. code:: cpp

    // Create a QSensorGestureManager
        QSensorGestureManager gestureManager;
    // Get a list of known recognizers
        QStringList recognizersList = gestureManager.gestureIds();
    // Create a QSensorGeture object for each of those gesture recognizers
            QSensorGesture *gesture = new QSensorGesture( gestureManager.gestureIds(), this);
    // Connect the known signals up.
            connect(gesture, SIGNAL(detected(QString)), this, SLOT(gestureDetected(QString)));

More information about the sensor gesture recognizers can be found in QtSensorGestures Plugins.

The primary classes that make up the QtSensorGestures API:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QSensorGesture                                                                                                                                         | Represents one or more sensor gesture recognizers                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QSensorGestureManager                                                                                                                                  | Manages sensor gestures, registers and creates sensor gesture plugins                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

The primary classes that make up the ``QtSensorGesturesRecognizers`` API:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QSensorGesturePluginInterface                                                                                                                          | The pure virtual interface to sensor gesture plugins                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| QSensorGestureRecognizer                                                                                                                               | The base class for a sensor gesture recognizer                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Details of the ``QSensorGesturePlugins`` available

