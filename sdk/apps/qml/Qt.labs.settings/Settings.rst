.. _sdk_qt_labs_settings_settings:

Qt.labs.settings Settings
=========================

Provides persistent platform-independent application settings.

+---------------------+-------------------------------+
| Import Statement:   | import Qt.labs.settings 1.0   |
+---------------------+-------------------------------+

Properties
----------

-  :ref:`category <sdk_qt_labs_settings_settings_category>` : string

Detailed Description
--------------------

The Settings type provides persistent platform-independent application settings.

**Note:** This type is made available by importing the **Qt.labs.settings** module. *Types in the Qt.labs module are not guaranteed to remain compatible in future versions.*

Users normally expect an application to remember its settings (window sizes and positions, options, etc.) across sessions. The Settings type enables you to save and restore such application settings with the minimum of effort.

Individual setting values are specified by declaring properties within a Settings element. All basic type properties are supported. The recommended approach is to use property aliases in order to get automatic property updates both ways. The following example shows how to use Settings to store and restore the geometry of a window.

.. code:: qml

    import QtQuick.Window 2.1
    import Qt.labs.settings 1.0
    Window {
        id: window
        width: 800
        height: 600
        Settings {
            property alias x: window.x
            property alias y: window.y
            property alias width: window.width
            property alias height: window.height
        }
    }

At first application startup, the window gets default dimensions specified as 800x600. Notice that no default position is specified - we let the window manager handle that. Later when the window geometry changes, new values will be automatically stored to the persistent settings. The second application run will get initial values from the persistent settings, bringing the window back to the previous position and size.

A fully declarative syntax, achieved by using property aliases, comes at the cost of storing persistent settings whenever the values of aliased properties change. Normal properties can be used to gain more fine-grained control over storing the persistent settings. The following example illustrates how to save a setting on component destruction.

.. code:: qml

    import QtQuick 2.1
    import Qt.labs.settings 1.0
    Item {
        id: page
        state: settings.state
        states: [
            State {
                name: "active"
                // ...
            },
            State {
                name: "inactive"
                // ...
            }
        ]
        Settings {
            id: settings
            property string state: "active"
        }
        Component.onDestruction: {
            settings.state = page.state
        }
    }

Notice how the default value is now specified in the persistent setting property, and the actual property is bound to the setting in order to get the initial value from the persistent settings.

Application Identifiers
-----------------------

Application specific settings are identified by providing application name, organization and domain.

.. code:: cpp

    #include <QGuiApplication>
    #include <QQmlApplicationEngine>
    int main(int argc, char *argv[])
    {
        QGuiApplication app(argc, argv);
        app.setOrganizationName("Some Company");
        app.setOrganizationDomain("somecompany.com");
        app.setApplicationName("Amazing Application");
        QQmlApplicationEngine engine("main.qml");
        return app.exec();
    }

These are typically specified in C++ in the beginning of ``main()``, but can also be controlled in QML via the following properties:

-  Qt.application.name,
-  Qt.application.organization and
-  Qt.application.domain.

Categories
----------

Application settings may be divided into logical categories by specifying a category name via the :ref:`category <sdk_qt_labs_settings_settings_category>` property. Using logical categories not only provides a cleaner settings structure, but also prevents possible conflicts between setting keys.

.. code:: qml

    Item {
        id: panel
        visible: true
        Settings {
            category: "OutputPanel"
            property alias visible: panel.visible
            // ...
        }
    }

Instead of ensuring that all settings in the application have unique names, the settings can be divided into unique categories that may then contain settings using the same names that are used in other categories - without a conflict.

Notes
-----

The current implementation is based on QSettings. This imposes certain limitations, such as missing change notifications. Writing a setting value using one instance of Settings does not update the value in another Settings instance, even if they are referring to the same setting in the same category.

The information is stored in the system registry on Windows, and in XML preferences files on OS X. On other Unix systems, in the absence of a standard, INI text files are used. See QSettings documentation for more details.

**See also** QSettings.

Property Documentation
----------------------

.. _sdk_qt_labs_settings_settings_category:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| category : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the settings category.

Categories can be used to group related settings together.

