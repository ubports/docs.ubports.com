Writable directories
====================

App confinement is part of the Ubuntu Touch security concept. Data can be exchanged between apps only according to the AppArmor policies, mainly using the :ref:`ContentHub <contenthub>`. This being said, apps can only read and write files that are located in one of three app specific directories explained in this guide.

Standard Paths
--------------
Besides the write access to the app directories explained below, the app can write debug messages into the app log file located at ``/home/phablet/.cache/upstart/application-click-<fullappname>_<appname>_<version>.log``. To append messages to the log file, use the `Qt debug <https://doc.qt.io/qt-5/qdebug.html>`_ functions.

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


Using Standard Paths in C++
---------------------------
The Qt header ``QStandardPaths`` provides the app's writable locations in C++:

.. code-block:: C++

    #include <QStandardPaths>
    ...
    QString configPath = QStandardPaths::writableLocation(QStandardPaths::AppConfigLocation);
    QString cachePath = QStandardPaths::writableLocation(QStandardPaths::CacheLocation);
    QString appDataPath = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    ...

Since the value of the QStandardPaths strings are decided by the `Qt application name <https://doc.qt.io/qt-5/qcoreapplication.html#applicationName-prop>`_, this needs to be the same as the clickable application name.

.. warning::
    Setting the `organizationName <https://doc.qt.io/qt-5/qcoreapplication.html#organizationName-prop>`_ will change the paths returned by these functions too - if you need to do this, set it to the clickable application name as well, otherwise the paths won't work on the device.

Using Standard Paths in QML
---------------------------
The Qt module `Qt.labs.platform <https://doc.qt.io/archives/qt-5.10/qml-qt-labs-platform-standardpaths.html>`_ provides the app's writable locations in QML:

.. code-block:: QML

    import Qt.labs.platform 1.0
    ...
    Label
    {
        text: StandardPaths.writableLocation(StandardPaths.AppConfigLocation)
    }
    Label
    {
        text: StandardPaths.writableLocation(StandardPaths.CacheLocation)
    }
    Label
    {
        text: StandardPaths.writableLocation(StandardPaths.AppDataLocation)
    }
    ...

Notice that ``QStandardPaths`` returns paths (``'/phablet/home/...'``), and QML ``StandardPaths`` returns urls (``'file:///phablet/home/...'``). This must be considered specially if the app is sharing location strings between QML and C++.
