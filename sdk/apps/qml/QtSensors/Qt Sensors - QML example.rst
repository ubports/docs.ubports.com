.. _sdk_qtsensors_qt_sensors_-_qml_example:

QtSensors Qt Sensors - QML example
==================================



To write a QML application that will use the QML sensors types in the QtSensors 5 import you need to to the following steps:

Import the QtSensors 5.x declarative plugin:

.. code:: qml

    import QtSensors 5.0

Add the Sensor QML types into your qml file.

In this example we use the :ref:`TiltSensor <sdk_qtsensors_tiltsensor>`:

.. code:: qml

    TiltSensor {
        id: tilt
        active: false
    }

The Tilt-, AmbientLight- and the Proximity QML sensor types have the 'enabled' property in common. To start or stop the sensor set this property to true or false.

.. code:: qml

    tilt.active = (tiltStart.text === "Start");

Reading the data can be done for each sensor type like following:

:ref:`TiltSensor <sdk_qtsensors_tiltsensor>`

.. code:: qml

    text: "X Rotation: " + tilt.xRotation + "��"
    text: "Y Rotation: " + tilt.yRotation +  "��"

:ref:`AmbientLightSensor <sdk_qtsensors_ambientlightsensor>`

.. code:: qml

    onReadingChanged: {
        if (reading.lightLevel == AmbientLightSensor.Unknown)
            ambientlighttext.text = "Ambient light: Unknown";
        else if (reading.lightLevel == AmbientLightSensor.Dark)
            ambientlighttext.text = "Ambient light: Dark";
        else if (reading.lightLevel == AmbientLightSensor.Twilight)
            ambientlighttext.text = "Ambient light: Twilight";
        else if (reading.lightLevel == AmbientLightSensor.Light)
            ambientlighttext.text = "Ambient light: Light";
        else if (reading.lightLevel == AmbientLightSensor.Bright)
            ambientlighttext.text = "Ambient light: Bright";
        else if (reading.lightLevel == AmbientLightSensor.Sunny)
            ambientlighttext.text = "Ambient light: Sunny";
    }

:ref:`ProximitySensor <sdk_qtsensors_proximitysensor>`

.. code:: qml

    text: "Proximity: " +
          (proxi.active ? (proxi.reading.near ? "Near" : "Far") : "Unknown")

Files:

-  qmlqtsensors/qmlqtsensors.qml
-  qmlqtsensors/components/ApplicationWindow.qml
-  qmlqtsensors/components/Button.qml
-  qmlqtsensors/components/Divider.qml
-  qmlqtsensors/main.cpp
-  qmlqtsensors/qmlqtsensors.pro
-  qmlqtsensors/qmlqtsensors.qrc

