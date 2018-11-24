.. _nativeapp:

Reading and writing files
=========================

App confinement is part of the Ubuntu Touch security concept. Data can be
exchanged between apps only according to the AppArmor policies. This being said,
apps can only read and write files that are located in one of three app 
specific directories: 

- App Data: ``/home/phablet/.local/share/<appname>``
- Config: ``/home/phablet/.config/<appname>``
- Cache: ``/home/phablet/.cache/<appname>``

Replace ``<appname>`` with the full app name (e.g. ``openstore.openstore-team``).

.. Note::
    When recieving files via content hub, the file is copied to the app's cache.

StandardPaths in C++
--------------------
The Qt header ``QStandardPaths`` provides the app's writable locations:

.. code-block:: C++

        #include <QStandardPaths>
        ...
        QString appDataPath = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
        QString configPath = QStandardPaths::writableLocation(QStandardPaths::AppConfigLocation);
        QString cachePath = QStandardPaths::writableLocation(QStandardPaths::CacheLocation);
