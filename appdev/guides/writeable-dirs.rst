Writable directories
====================

App confinement is part of the Ubuntu Touch security concept. Data can be exchanged between apps only according to the AppArmor policies. This being said, apps can only read and write files that are located in one of three app specific directories explained in this guide.

.. Note::
    The app can write debug messages into the app log file located at ``/home/phablet/.cache/upstart/application-click-<fullappname>_<appname>_<version>.log``. To write into the log file, use the Qt debug functions.

Config
^^^^^^
Path: ``/home/phablet/.config/<fullappname>/``

This is the place to store configurations files to. The music app for example stores its configuration to ``/home/phablet/.config/com.ubuntu.music/com.ubuntu.music.conf``.

Cache
^^^^^
Path: ``/home/phablet/.cache/<fullappname>/``

This is the place to cache data for later use. The cache is also used by the Content Hub. Files that have been shared with the music app for example can be found in ``/home/phablet/.cache/com.ubuntu.music/HubIncoming/``.

App data
^^^^^^^^
Path: ``/home/phablet/.local/share/<fullappname>/``

This is where your app stores any data. The music app for example stores its data bases to ``/home/phablet/.local/share/com.ubuntu.music/Databases/``.


StandardPaths in C++
--------------------
The Qt header ``QStandardPaths`` provides the app's writable locations:

.. code-block:: C++

    #include <QStandardPaths>
    ...
    QString configPath = QStandardPaths::writableLocation(QStandardPaths::AppConfigLocation);
    QString cachePath = QStandardPaths::writableLocation(QStandardPaths::CacheLocation);
    QString appDataPath = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    ...

StandardPaths in QML
--------------------
The Qt module `Qt.labs.platform <https://doc.qt.io/archives/qt-5.10/qml-qt-labs-platform-standardpaths.html>`_ provides the QStandardPaths in QML. Unfortunately it is not available on Ubuntu Touch, yet. Probably you don't want to ship that module with your app. Instead, you could simply let your C++ plugin provide the paths to your QML part. Therefore, add these methods to your plugin class:

.. code-block:: C++

    #include <QStandardPaths>
    ...
    Q_INVOKABLE QString configPath()
    {
        return QStandardPaths::writableLocation(QStandardPaths::AppConfigLocation);
    }
    Q_INVOKABLE QString cachePath()
    {
        return QStandardPaths::writableLocation(QStandardPaths::CacheLocation);
    }
    Q_INVOKABLE QString appDataPath()
    {
        return QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    }
    ...

Assuming the name of your plugin is MyPlugin, you can access these paths in QML:

.. code-block:: QML

    Label
    {
        text: MyPlugin.configPath()
    }
    Label
    {
        text: MyPlugin.cachePath()
    }
    Label
    {
        text: MyPlugin.appDataPath()
    }
