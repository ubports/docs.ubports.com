.. _sdk_qtsensors_porting_applications_from_qtmobility_sensors_to_qt_sensors:

QtSensors Porting Applications from QtMobility Sensors to Qt Sensors
====================================================================



The initial release of Qt Sensors (5.0) is generally expected to be source compatible with QtMobility Sensors 1.2. This document attempts to explain where things need to be changed in order to port applications to Qt Sensors.

In ``QtMobility``, the C++ classes like ``QAccelerometer`` were directly used as QML types. In Qt Sensors, there are now separate classes for the QML types, which have no public C++ API.

The new QML types in Qt Sensors fix some issues the former QtMobility QML types had, for example:

-  The reading types now have proper change notifications.
-  ``availableDataRates`` and ``outputRanges`` of the ``Sensor`` type are now proper list types.
-  The ``identifier`` and ``type`` properties of ``Sensor`` can now be used.
-  The ``lux`` property of ``LightSensorReading`` has been renamed to ``illuminance``.
-  The ``QmlSensors`` singleton now allows to query for sensor types.

For more information, see the QML API documentation.

The C++ API mainly remained the same as in QtMobility.

QtMobility Sensors installed headers into a ``Qt`` Sensors directory. This is also the directory that Qt Sensors uses. It is therefore expected that includes that worked with QtMobility Sensors should continue to work.

For example:

.. code:: cpp

    #include <QAccelerometer>
    #include <qaccelerometer.h>
    #include <QtSensors/QAccelerometer>
    #include <QtSensors/qaccelerometer.h>

QtMobility Sensors was built in a ``QtMobility`` namespace. This was enabled by the use of various macros. Qt Sensors does not normally build into a namespace and the macros from QtMobility no longer exist.

-  QTM\_BEGIN\_NAMESPACE
-  QTM\_END\_NAMESPACE
-  QTM\_USE\_NAMESPACE
-  QTM\_PREPEND\_NAMESPACE(x)

Note that Qt can be configured to build into a namespace. If Qt is built in this way then Qt Sensors is also built into the nominated namespace. However, as this is optional, the macros for this are typically defined to do nothing.

-  QT\_BEGIN\_NAMESPACE
-  QT\_END\_NAMESPACE
-  QT\_USE\_NAMESPACE
-  QT\_PREPEND\_NAMESPACE(x)

qtimestamp was previously defined as an opaque type equivalent to a quint64. It existed as a class due to an implementation detail.

In Qt Sensors, the API uses quint64 instead of qtimestamp. qtimestamp still exists as a typedef so that applications that refer to qtimestamp can be compiled.

QtMobility Sensors applications used this in their project files to enable the Sensors API.

.. code:: cpp

    CONFIG += mobility
    MOBILITY += sensors

Applications should remove these lines and instead use the following statement to enable the Qt Sensors API:

.. code:: cpp

    QT += sensors

