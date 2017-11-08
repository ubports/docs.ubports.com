.. _sdk_qtsensors_qt_sensors_-_accel_bubble:

QtSensors Qt Sensors - Accel Bubble
===================================



Writing a QML application that uses the Accelerometer QML sensors type requires the following steps:

Import the Sensors Declarative module.

.. code:: qml

    import QtSensors 5.0

Add an Accelerometer QML type.

.. code:: qml

        Accelerometer {
            id: accel
            dataRate: 100

Use the 'active' property to start the sensor

.. code:: qml

            active:true

Move the bubble according to a factor of the accelerator sensor

.. code:: qml

            onReadingChanged: {
                var newX = (bubble.x + calcRoll(accel.reading.x, accel.reading.y, accel.reading.z) * .1)
                var newY = (bubble.y - calcPitch(accel.reading.x, accel.reading.y, accel.reading.z) * .1)
                if (isNaN(newX) || isNaN(newY))
                    return;
                if (newX < 0)
                    newX = 0
                if (newX > mainWindow.width - bubble.width)
                    newX = mainWindow.width - bubble.width
                if (newY < 18)
                    newY = 18
                if (newY > mainWindow.height - bubble.height)
                    newY = mainWindow.height - bubble.height
                    bubble.x = newX
                    bubble.y = newY
            }

Files:

-  accelbubble/accelbubble.qml
-  accelbubble/android/AndroidManifest.xml
-  accelbubble/content/Bluebubble.svg
-  accelbubble/main.cpp
-  accelbubble/accelbubble.pro
-  accelbubble/accelbubble.qrc

