.. _sdk_qtsensors_creating_a_sensor_plugin:

QtSensors Creating a sensor plugin
==================================



Since sensor backends are created on demand, the sensor plugin is loaded and asked to register the sensor backends it handles. The plugin should implement QSensorPluginInterface::registerSensors() and call QSensorManager::registerBackend() to register available backends. Typically the plugin will also inherit from QSensorBackendFactory and implement QSensorBackendFactory::createBackend() in order to instantiate backends it has registered.

The simplest plugin will have just once sensor backend although there is no reason that multiple sensor backends cannot be in a plugin.

An example follows.

.. code:: cpp

    class MyPluginClass : public QObject, public QSensorPluginInterface, public QSensorBackendFactory
    {
        Q_OBJECT
        //Q_PLUGIN_METADATA(IID "com.qt-project.Qt.QSensorPluginInterface/1.0" FILE "plugin.json")
        Q_INTERFACES(QSensorPluginInterface)
    public:
        void registerSensors()
        {
            QSensorManager::registerBackend(QAccelerometer::type, MyBackend::id, this);
        }
        QSensorBackend *createBackend(QSensor *sensor)
        {
            if (sensor->identifier() == MyBackend::id)
                return new MyBackend(sensor);
            return 0;
        }
    };

