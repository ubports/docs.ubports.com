.. _sdk_qtsensors_qt_sensors_-_grue_sensor_example:

QtSensors Qt Sensors - Grue Sensor Example
==========================================



The Qt Sensors - Grue sensor example demonstrates all the steps from creating a new sensor to using it.

The sensor definition is placed in a library where client apps can access it. The actual implementation lives in a plugin.

-  `Grue Sensor Definition </sdk/apps/qml/QtSensors/grue/#grue-sensor-definition>`_ 
-  `Grue Sensor Implementation </sdk/apps/qml/QtSensors/grue/#grue-sensor-implementation>`_ 

The sensor can now be used by a C++ application, even if the application does not have access to the definition.

-  `Grue Sensor Console Application </sdk/apps/qml/QtSensors/grue/#grue-sensor-console-application>`_ 

To make the sensor available to a QML application an import must be created.

-  `Grue Sensor QML Import </sdk/apps/qml/QtSensors/grue/#grue-sensor-qml-import>`_ 
-  `Grue Sensor QML Application </sdk/apps/qml/QtSensors/grue/#grue-sensor-qml-application>`_ 

The Grue sensor is defined in a library so that applications can use it. The source code is available in the ``grue/lib`` subdirectory.

First up is the sensor type. This is the interface for sensors that report on your likelihood of being eaten by a Grue. Such sensors are very important to adventurers, particularly if they are going into dark places as this is where Grues live.

The interface is a simple one. It provides only 1 piece of information, your chance of being eaten. For the details on how this is property should be interpreted please see the documentation in gruesensor.cpp.

This example was created using the make\_sensor.pl script which can be found in src/sensors. As such, it contains some generated code that defines the convenience classes GrueFilter and GrueSensor.

The Grue sensor implementation lives in a plugin that is loaded by the Qt Sensors library. The source code is available in the ``grue/plugin`` subdirectory.

The Grue sensor needs a backend before it can be used. The backend provided is rather basic and it relies on some kind of light sensor to work but it gets the job done. If new hardware that can detect the actual presence of Grues becomes available a backend could be created that supports this hardware and applications using the Grue sensor would be able to use it without any changes.

There are a few mandatory parts to a backend. They are the start and stop methods and the setReading call. The start and stop methods are used to start and stop any underlying hardware. In the case of this backend they start and stop a light sensor. In the start method, the backend should be sure to call the sensorStopped() or sensorBusy() methods if it cannot start.

.. code:: cpp

        lightSensor->setDataRate(sensor()->dataRate());
        lightSensor->start();
        // If the light sensor doesn't work we don't work either
        if (!lightSensor->isActive())
            sensorStopped();
        if (lightSensor->isBusy())
            sensorBusy();

The setReading method is needed so that the sensors library knows where the readings are coming from. This backend has a local copy of the reading so it passes a pointer to the function.

.. code:: cpp

        // Register our reading instance
        setReading<GrueSensorReading>(&m_reading);

However it is also possible to pass null to the setReading method in which case the sensors library will create an instance and return a pointer.

.. code:: cpp

    // Create a reading instance for us to use
    m_reading = setReading<GrueSensorReading>(0);

The Grue sensor backend also supplies some metadata.

The backend checks 2 things, how dark it is and how long you have been in the dark. It uses the readingChanged() signal to know when to check the light sensor's value. Once it is dark, it uses a timer to increase your chance of being eaten.

The Grue sensor backend is delivered as a plugin. The plugin has a factory object that registers the types available and does the actual instantiation of the backend.

The Grue sensor console application demonstrates use of the Grue sensor. The source code is available in the ``grue/console_app`` subdirectory.

This is a simple commandline application. It demonstrates how to use the generic access feature of Qt Sensors to avoid a link-time dependency on the Grue Sensor library.

The Grue sensor QML import exports the GrueSensor class as a QML type. The source code is available in the ``grue/import`` subdirectory.

This creates the *Grue 1.0* import.

The Grue sensor QML application demonstrates the use of GrueSensor QML type.

The application consists of a single QML file and an image. It is built as an exucutable with C++ code that runs the QML, but it can also be launched directly using the ``qmlscene`` tool.

You should build the top-level 'grue' project before trying to run this example or it will not be able to find its dependencies.

.. code:: cpp

    qmlscene -I . grue.qml

Above, the ``-I .`` parameter adds the current directory as a module import path to locate the Grue QML module.

Files:

-  grue/Makefile.qml
-  grue/grue.qml
-  grue/lib/gruesensor.cpp
-  grue/lib/gruesensor.h
-  grue/lib/gruesensor\_p.h
-  grue/plugin/gruesensorimpl.cpp
-  grue/plugin/gruesensorimpl.h
-  grue/main.cpp
-  grue/grue.pro
-  grue/qml.pro
-  grue/qml.qrc
-  grue/console\_app/console\_app.pro
-  grue/import/import.pro
-  grue/import/qmldir
-  grue/lib/lib.pro
-  grue/plugin/plugin.pro

