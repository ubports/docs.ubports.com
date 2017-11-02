.. _sdk_qtsensors_sensor:
QtSensors Sensor
================

The Sensor element serves as a base type for sensors.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtSensors 5.0                 |
+--------------------------------------+--------------------------------------+
| Since:                               | QtSensors 5.0                        |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | :ref:`Accelerometer <sdk_qtsensors_accele |
|                                      | rometer>`_ ,                         |
|                                      | :ref:`Altimeter <sdk_qtsensors_altimeter> |
|                                      | `_ ,                                 |
|                                      | :ref:`AmbientLightSensor <sdk_qtsensors_a |
|                                      | mbientlightsensor>`_ ,               |
|                                      | :ref:`AmbientTemperatureSensor <sdk_qtsen |
|                                      | sors_ambienttemperaturesensor>`_ ,   |
|                                      | :ref:`Compass <sdk_qtsensors_compass>`, |
|                                      | :ref:`DistanceSensor <sdk_qtsensors_dista |
|                                      | ncesensor>`_ ,                       |
|                                      | :ref:`Gyroscope <sdk_qtsensors_gyroscope> |
|                                      | `_ ,                                 |
|                                      | :ref:`HolsterSensor <sdk_qtsensors_holste |
|                                      | rsensor>`_ ,                         |
|                                      | :ref:`IRProximitySensor <sdk_qtsensors_ir |
|                                      | proximitysensor>`_ ,                 |
|                                      | :ref:`LightSensor <sdk_qtsensors_lightsen |
|                                      | sor>`_ ,                             |
|                                      | :ref:`Magnetometer <sdk_qtsensors_magneto |
|                                      | meter>`_ ,                           |
|                                      | :ref:`OrientationSensor <sdk_qtsensors_or |
|                                      | ientationsensor>`_ ,                 |
|                                      | :ref:`PressureSensor <sdk_qtsensors_press |
|                                      | uresensor>`_ ,                       |
|                                      | :ref:`ProximitySensor <sdk_qtsensors_prox |
|                                      | imitysensor>`_ ,                     |
|                                      | :ref:`RotationSensor <sdk_qtsensors_rotat |
|                                      | ionsensor>`_ ,                       |
|                                      | :ref:`TapSensor <sdk_qtsensors_tapsensor> |
|                                      | `_ ,                                 |
|                                      | and                                  |
|                                      | :ref:`TiltSensor <sdk_qtsensors_tiltsenso |
|                                      | r>`_ .                               |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`active <sdk_qtsensors_sensor_active-prop>` : bool
-  :ref:`alwaysOn <sdk_qtsensors_sensor_alwaysOn-prop>` : bool
-  :ref:`availableDataRates <sdk_qtsensors_sensor_availableDataRates-prop>`
   : list<Range>
-  :ref:`axesOrientationMode <sdk_qtsensors_sensor_axesOrientationMode-prop>`
   : Sensor::AxesOrientationMode
-  :ref:`bufferSize <sdk_qtsensors_sensor_bufferSize-prop>` : int
-  :ref:`busy <sdk_qtsensors_sensor_busy-prop>` : bool
-  :ref:`connectedToBackend <sdk_qtsensors_sensor_connectedToBackend-prop>`
   : bool
-  :ref:`currentOrientation <sdk_qtsensors_sensor_currentOrientation-prop>`
   : int
-  :ref:`dataRate <sdk_qtsensors_sensor_dataRate-prop>` : int
-  :ref:`description <sdk_qtsensors_sensor_description-prop>` :
   string
-  :ref:`efficientBufferSize <sdk_qtsensors_sensor_efficientBufferSize-prop>`
   : int
-  :ref:`error <sdk_qtsensors_sensor_error-prop>` : int
-  :ref:`identifier <sdk_qtsensors_sensor_identifier-prop>` :
   string
-  :ref:`maxBufferSize <sdk_qtsensors_sensor_maxBufferSize-prop>` :
   int
-  :ref:`outputRange <sdk_qtsensors_sensor_outputRange-prop>` : int
-  :ref:`outputRanges <sdk_qtsensors_sensor_outputRanges-prop>` :
   list<OutputRange>
-  :ref:`reading <sdk_qtsensors_sensor_reading-prop>` :
   SensorReading
-  :ref:`skipDuplicates <sdk_qtsensors_sensor_skipDuplicates-prop>`
   : bool
-  :ref:`type <sdk_qtsensors_sensor_type-prop>` : string
-  :ref:`userOrientation <sdk_qtsensors_sensor_userOrientation-prop>`
   : int

Methods
-------

-  bool :ref:`start <sdk_qtsensors_sensor_start-method>`\ ()
-  bool :ref:`stop <sdk_qtsensors_sensor_stop-method>`\ ()

Detailed Description
--------------------

The Sensor element serves as a base type for sensors.

This element wraps the QSensor class. Please see the documentation for
QSensor for details.

This element cannot be directly created. Please use one of the
sub-classes instead.

Property Documentation
----------------------

.. _sdk_qtsensors_sensor_active-prop:

+--------------------------------------------------------------------------+
|        \ active : bool                                                   |
+--------------------------------------------------------------------------+

This property holds a value to indicate if the sensor is active.

Please see QSensor::active for information about this property.

| 

.. _sdk_qtsensors_sensor_alwaysOn-prop:

+--------------------------------------------------------------------------+
|        \ alwaysOn : bool                                                 |
+--------------------------------------------------------------------------+

This property holds a value to indicate if the sensor should remain
running when the screen is off.

Please see QSensor::alwaysOn for information about this property.

| 

.. _sdk_qtsensors_sensor_availableDataRates-prop:

+--------------------------------------------------------------------------+
|        \ availableDataRates : list<Range>                                |
+--------------------------------------------------------------------------+

This property holds the data rates that the sensor supports.

Please see QSensor::availableDataRates for information about this
property.

| 

.. _sdk_qtsensors_sensor_axesOrientationMode-prop:

+--------------------------------------------------------------------------+
|        \ axesOrientationMode : Sensor::AxesOrientationMode               |
+--------------------------------------------------------------------------+

This property holds the mode that affects how the screen orientation
changes reading values.

Please see QSensor::axesOrientationMode for information about this
property.

This QML property was introduced in QtSensors 5.1.

| 

.. _sdk_qtsensors_sensor_bufferSize-prop:

+--------------------------------------------------------------------------+
|        \ bufferSize : int                                                |
+--------------------------------------------------------------------------+

This property holds the size of the buffer.

Please see QSensor::bufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

| 

.. _sdk_qtsensors_sensor_busy-prop:

+--------------------------------------------------------------------------+
|        \ busy : bool                                                     |
+--------------------------------------------------------------------------+

This property holds a value to indicate if the sensor is busy.

Please see QSensor::busy for information about this property.

| 

.. _sdk_qtsensors_sensor_connectedToBackend-prop:

+--------------------------------------------------------------------------+
|        \ connectedToBackend : bool                                       |
+--------------------------------------------------------------------------+

This property holds a value indicating if the sensor has connected to a
backend.

Please see QSensor::connectedToBackend for information about this
property.

| 

.. _sdk_qtsensors_sensor_currentOrientation-prop:

+--------------------------------------------------------------------------+
|        \ currentOrientation : int                                        |
+--------------------------------------------------------------------------+

This property holds the current orientation that is used for rotating
the reading values.

Please see QSensor::currentOrientation for information about this
property.

This QML property was introduced in QtSensors 5.1.

| 

.. _sdk_qtsensors_sensor_dataRate-prop:

+--------------------------------------------------------------------------+
|        \ dataRate : int                                                  |
+--------------------------------------------------------------------------+

This property holds the data rate that the sensor should be run at.

Please see QSensor::dataRate for information about this property.

| 

.. _sdk_qtsensors_sensor_description-prop:

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

This property holds a descriptive string for the sensor.

| 

.. _sdk_qtsensors_sensor_efficientBufferSize-prop:

+--------------------------------------------------------------------------+
|        \ efficientBufferSize : int                                       |
+--------------------------------------------------------------------------+

The property holds the most efficient buffer size.

Please see QSensor::efficientBufferSize for information about this
property.

This QML property was introduced in QtSensors 5.1.

| 

.. _sdk_qtsensors_sensor_error-prop:

+--------------------------------------------------------------------------+
|        \ error : int                                                     |
+--------------------------------------------------------------------------+

This property holds the last error code set on the sensor.

| 

.. _sdk_qtsensors_sensor_identifier-prop:

+--------------------------------------------------------------------------+
|        \ identifier : string                                             |
+--------------------------------------------------------------------------+

This property holds the backend identifier for the sensor.

Please see QSensor::identifier for information about this property.

| 

.. _sdk_qtsensors_sensor_maxBufferSize-prop:

+--------------------------------------------------------------------------+
|        \ maxBufferSize : int                                             |
+--------------------------------------------------------------------------+

This property holds the maximum buffer size.

Please see QSensor::maxBufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

| 

.. _sdk_qtsensors_sensor_outputRange-prop:

+--------------------------------------------------------------------------+
|        \ outputRange : int                                               |
+--------------------------------------------------------------------------+

This property holds the output range in use by the sensor.

Please see QSensor::outputRange for information about this property.

| 

.. _sdk_qtsensors_sensor_outputRanges-prop:

+--------------------------------------------------------------------------+
|        \ outputRanges : list<OutputRange>                                |
+--------------------------------------------------------------------------+

This property holds a list of output ranges the sensor supports.

Please see QSensor::outputRanges for information about this property.

| 

.. _sdk_qtsensors_sensor_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ reading : `SensorReading <sdk_qtsensors_sensorreading>`    |
+--------------------------------------------------------------------------+

This property holds the reading class.

Please see QSensor::reading for information about this property.

**See also** QML Reading types.

| 

.. _sdk_qtsensors_sensor_skipDuplicates-prop:

+--------------------------------------------------------------------------+
|        \ skipDuplicates : bool                                           |
+--------------------------------------------------------------------------+

This property indicates whether duplicate reading values should be
omitted.

Please see QSensor::skipDuplicates for information about this property.

This QML property was introduced in QtSensors 5.1.

| 

.. _sdk_qtsensors_sensor_type-prop:

+--------------------------------------------------------------------------+
|        \ type : string                                                   |
+--------------------------------------------------------------------------+

This property holds the type of the sensor.

| 

.. _sdk_qtsensors_sensor_userOrientation-method:

+--------------------------------------------------------------------------+
|        \ userOrientation : int                                           |
+--------------------------------------------------------------------------+

This property holds the angle used for rotating the reading values in
the UserOrientation mode.

Please see QSensor::userOrientation for information about this property.

This QML property was introduced in QtSensors 5.1.

| 

Method Documentation
--------------------

.. _sdk_qtsensors_sensor_bool start-method:

+--------------------------------------------------------------------------+
|        \ bool start()                                                    |
+--------------------------------------------------------------------------+

Start retrieving values from the sensor. Returns true if the sensor was
started, false otherwise.

Please see QSensor::start() for information.

| 

.. _sdk_qtsensors_sensor_bool stop-method:

+--------------------------------------------------------------------------+
|        \ bool stop()                                                     |
+--------------------------------------------------------------------------+

Stop retrieving values from the sensor.

Please see QSensor::stop() for information.

| 
