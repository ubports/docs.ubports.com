.. _sdk_qtsensors_qt_sensors_-_sensorgesture_qml_type_example:

QtSensors Qt Sensors - SensorGesture QML Type example
=====================================================



To write a QML application that will use the gesture plugin, following steps are needed:

Import the QtSensors 5.x module:

.. code:: qml

    import QtSensors 5.0

Add the :ref:`SensorGesture <sdk_qtsensors_sensorgesture>` QML type into your qml file.

.. code:: qml

        SensorGesture {
            id: sensorGesture
            enabled: false
            onDetected: {
                if (gesture !== oldGesture)
                    count = 0;
                valueText.text = gesture + " " + count;
                oldGesture = gesture;
                count++;
            }
            onEnabledChanged: {
                valueText.text = ""
            }
        }

Each :ref:`SensorGesture <sdk_qtsensors_sensorgesture>` QML type contains a property called gestures. This example uses an alias ``gestureId`` for this property.

.. code:: qml

        property alias gestureId: sensorGesture.gestures

Then, the gesture or gestures to use can be specified using the alias:

.. code:: qml

            onSelectedGestureChanged: {
                gesture.enabled = false;
                gesture.gestureId = gestureList.selectedGesture;
                ...
            }

A list of all available gestures is accessible through the ``availableGestures`` property:

.. code:: qml

            ListView {
                id: gestureList
                model: gesture.availableGestures
                ...
            }

Files:

-  qmlsensorgestures/Button.qml
-  qmlsensorgestures/GestureList.qml
-  qmlsensorgestures/GestureView.qml
-  qmlsensorgestures/GesturesView.qml
-  qmlsensorgestures/Makefile.qml
-  qmlsensorgestures/qmlsensorgestures.qml
-  qmlsensorgestures/plugin/qcountergestureplugin.cpp
-  qmlsensorgestures/plugin/qcountergestureplugin.h
-  qmlsensorgestures/plugin/qcounterrecognizer.cpp
-  qmlsensorgestures/plugin/qcounterrecognizer.h
-  qmlsensorgestures/main.cpp
-  qmlsensorgestures/qml.pro
-  qmlsensorgestures/qml.qrc
-  qmlsensorgestures/qmlsensorgestures.pro
-  qmlsensorgestures/plugin/plugin.pro

**See also** Qt Sensors - ShakeIt QML Example and Qt Sensor Gestures.
