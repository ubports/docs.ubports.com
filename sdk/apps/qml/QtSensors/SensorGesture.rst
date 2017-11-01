Provides notifications when sensor-based gestures are detected.

+---------------------+------------------------+
| Import Statement:   | import QtSensors 5.0   |
+---------------------+------------------------+
| Since:              | QtSensors 5.0          |
+---------------------+------------------------+

Properties
----------

-  ****`availableGestures </sdk/apps/qml/QtSensors/SensorGesture#availableGestures-prop>`__****
   : stringlist
-  ****`enabled </sdk/apps/qml/QtSensors/SensorGesture#enabled-prop>`__****
   : bool
-  ****`gestures </sdk/apps/qml/QtSensors/SensorGesture#gestures-prop>`__****
   : stringlist
-  ****`invalidGestures </sdk/apps/qml/QtSensors/SensorGesture#invalidGestures-prop>`__****
   : stringlist
-  ****`validGestures </sdk/apps/qml/QtSensors/SensorGesture#validGestures-prop>`__****
   : stringlist

Signals
-------

-  ****`detected </sdk/apps/qml/QtSensors/SensorGesture#detected-signal>`__****\ (string
   *gesture*)

Detailed Description
--------------------

This type provides notification when sensor gestures are triggered.

The following QML code creates a "shake" and "SecondCounter"
`SensorGesture </sdk/apps/qml/QtSensors/SensorGesture/>`__ QML type, and
displays the detected gesture in a text type.

QtSensors.shake gesture is available with the Qt Sensors API, but the
QtSensors.SecondCounter sensor gesture is provided as example code for
the Qt Sensors - SensorGesture QML Type example

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

Qt Sensor Gestures contains a list of currently supported sensor
gestures and their descriptions.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ availableGestures : stringlist                                  |
+--------------------------------------------------------------------------+

This property can be used to determine all available gestures on the
system.

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property can be used to activate or deactivate the sensor gesture.
Default value is false;

**See also**
`SensorGesture::detected </sdk/apps/qml/QtSensors/SensorGesture#detected-signal>`__
and
`detected </sdk/apps/qml/QtSensors/SensorGesture#detected-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ gestures : stringlist                                           |
+--------------------------------------------------------------------------+

Set this property to a list of the gestures that the application is
interested in detecting. This property cannot be changed while the type
is enabled.

The properties
`validGestures </sdk/apps/qml/QtSensors/SensorGesture#validGestures-prop>`__
and
`invalidGestures </sdk/apps/qml/QtSensors/SensorGesture#invalidGestures-prop>`__
will be set as appropriate immediately. To determine all available
getures on the system please use the
`availableGestures </sdk/apps/qml/QtSensors/SensorGesture#availableGestures-prop>`__
property.

**See also** QtSensorGestures Plugins.

| 

+--------------------------------------------------------------------------+
|        \ invalidGestures : stringlist                                    |
+--------------------------------------------------------------------------+

This property holds the requested gestures that were not found on the
system.

| 

+--------------------------------------------------------------------------+
|        \ validGestures : stringlist                                      |
+--------------------------------------------------------------------------+

This property holds the requested gestures that were found on the
system.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ detected(string *gesture*)                                      |
+--------------------------------------------------------------------------+

This signal is emitted whenever a gesture is detected. The gesture
parameter contains the gesture that was detected.

The corresponding handler is ``onDetected``.

| 
