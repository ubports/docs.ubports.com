.. _sdk_qtqml_creating_c++_plugins_for_qml:

QtQml Creating C++ Plugins for QML
==================================



The QML engine load C++ plugins for QML. Such plugins are usually provided in a QML extension module, and can provide types for use by clients in QML documents which import the module. A module requires at least one type registered in order to be considered valid.

QQmlExtensionPlugin is a plugin interface that makes it possible to create QML extensions that can be loaded dynamically into QML applications. These extensions allow custom QML types to be made available to the QML engine.

To write a QML extension plugin:

#. Subclass QQmlExtensionPlugin

   -  Use the Q\_PLUGIN\_METADATA() macro to register the plugin with the Qt meta object system
   -  Override the registerTypes() method and call qmlRegisterType() to register the types to be exported by the plugin

#. Write a project file for the plugin
#. Create a `qmldir file </sdk/apps/qml/QtQml/qtqml-modules-qmldir/>`_  to describe the plugin

QML extension plugins are for either application-specific or library-like plugins. Library plugins should limit themselves to registering types, as any manipulation of the engine's root context may cause conflicts or other issues in the library user's code.

Suppose there is a new ``TimeModel`` C++ class that should be made available as a new QML type. It provides the current time through ``hour`` and ``minute`` properties.

.. code:: cpp

    class TimeModel : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(int hour READ hour NOTIFY timeChanged)
        Q_PROPERTY(int minute READ minute NOTIFY timeChanged)
        ...

To make this type available, we create a plugin class named ``QExampleQmlPlugin`` which is a subclass of QQmlExtensionPlugin. It overrides the registerTypes() method in order to register the ``TimeModel`` type using qmlRegisterType(). It also uses the Q\_PLUGIN\_METADATA() macro in the class definition to register the plugin with the Qt meta object system using a unique identifier for the plugin.

.. code:: cpp

    class QExampleQmlPlugin : public QQmlExtensionPlugin
    {
        Q_OBJECT
        Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")
    public:
        void registerTypes(const char *uri)
        {
            Q_ASSERT(uri == QLatin1String("TimeExample"));
            qmlRegisterType<TimeModel>(uri, 1, 0, "Time");
        }
    };

The ``TimeModel`` class receives a ``1.0`` version of this plugin library, as a QML type called ``Time``. The Q\_ASSERT() macro can ensure the type namespace is imported correctly by any QML components that use this plugin. The `Defining QML Types from C++ </sdk/apps/qml/QtQml/qtqml-cppintegration-definetypes/>`_  article has more information about registering C++ types into the runtime.

For this example, the TimeExample source directory is in ``imports/TimeExample``. The plugin's type namespace will mirror this structure, so the types are registered into the namespace "TimeExample".

Additionally, the project file, in a ``.pro`` file, defines the project as a plugin library, specifies it should be built into the ``imports/TimeExample`` directory, and registers the plugin target name and various other details:

.. code:: cpp

    TEMPLATE = lib
    CONFIG += qt plugin
    QT += qml
    DESTDIR = imports/TimeExample
    TARGET = qmlqtimeexampleplugin
    SOURCES += qexampleqmlplugin.cpp

Finally, a `qmldir file </sdk/apps/qml/QtQml/qtqml-modules-qmldir/>`_  is required in the ``imports/TimeExample`` directory to describe the plugin and the types that it exports. The plugin includes a ``Clock.qml`` file along with the ``qmlqtimeexampleplugin`` that is built by the project (as shown above in the ``.pro`` file) so both of these need to be specified in the ``qmldir`` file:

.. code:: cpp

    module TimeExample
    Clock 1.0 Clock.qml
    plugin qmlqtimeexampleplugin

Once the project is built and installed, the new ``Time`` component is accessible by any QML component that imports the ``TimeExample`` module

.. code:: qml

    import TimeExample 1.0 // import types from the plugin
    Clock { // this class is defined in QML (imports/TimeExample/Clock.qml)
        Time { // this class is defined in C++ (plugin.cpp)
            id: time
        }
        hours: time.hour
        minutes: time.minute
    }

The full source code is available in the `plugins example </sdk/apps/qml/QtQml/qmlextensionplugins/>`_ .

-  `Writing QML Extensions with C++ </sdk/apps/qml/QtQml/tutorials-extending-qml/>`_  - contains a chapter on creating QML plugins.
-  `Defining QML Types from C++ </sdk/apps/qml/QtQml/qtqml-cppintegration-definetypes/>`_  - information about registering C++ types into the runtime.
-  How to Create Qt Plugins - information about Qt plugins

