QtMir and QtUbuntu
==================

`QtMir`_ and `QtUbuntu`_ are `Qt Platform Abstractions`_ (QPAs) for the Ubuntu Touch platform. QtMir can be thought of as a server for Unity8 while QtUbuntu is used for client applications. Each of them allows their respective domains to use Qt's high-level abstractions of surfaces, windows, controls, and more, without worrying about the underlying operating system.

QtMir
-----

The `QtMir`_ QPA allows Unity8, the shell of Ubuntu Touch, to be written in QML and Qt C++ while operating on Mir Surfaces and Windows. It also allows the desktop to be represented and reasoned about as a `Qt Scene Graph`_.

You'll find most of QtMir's logging in Unity8's logs, normally stored at ``/home/phablet/.cache/upstart/unity8`` on Ubuntu Touch. Different logging categories, like ``qtmir.sessions`` and ``qtmir.surfaces``, relate directly to different modules within QtMir's codebase.

While Unity8 shows almost all QtMir logging by default, you can enable even more verbose logging by placing the following content in the file ``/usr/share/upstart/sessions/unity8.override``:

.. code-block:: sh

    env QT_LOGGING_RULES='qtmir.*=true'

Then restart Unity8:

.. code-block:: sh

    restart unity8

QtUbuntu
--------

The `QtUbuntu`_ QPA uses the `Mir client API`_ and `Ubuntu Platform API`_ to provide Ubuntu Touch apps with a stable hardware compatibility API.

Since QtUbuntu is used directly by apps, any logging output from it will be located in an app's log file. Most of the time, QtUbuntu gives no logging output. However, if you would like to receive more output, you can set the ``QT_LOGGING_RULES`` environment variable appropriately. Since apps on Ubuntu Touch are started using Upstart's user session, you can set this for all apps until you restart your device with the following command:

.. code-block:: sh

    initctl set-env QT_LOGGING_RULES='qt.qpa.mirclient.*=true'

We plan to replace QtUbuntu with QtWayland in the future.

Components
^^^^^^^^^^

QtUbuntu has a number of sub-components to provide other features in the Ubuntu Touch platform. In theory, these could be used on other platforms to provide similar features. In practice, this has never happened.

`QtUbuntu-Camera`_ provides the ``aalCamera`` (Android Abstraction Layer Camera) plugin to `QtMultimedia`_. This plugin allows apps to access Android device cameras through the QtMultimedia standard API. We are trying to replace this component with the `gst-droid`_ plugin for GStreamer for all new Android device ports.

`QtUbuntu-Sensors`_ provides Android haptic feedback, GPS, orientation, and accelerometer sensors to `QtSensors`_. We are trying to replace this component with `sensorfw`_, a single daemon capable of providing these functions using Android or standard Linux kernel drivers.

`QtUbuntu-Media`_ provides hardware encoding and decoding of audio/video content on Android devices to `QtMultimedia`_. It is tightly integrated with `media-hub`_.

.. _QtMir: https://github.com/ubports/qtmir
.. _Mir client API: https://mir-server.io/doc/namespacemir_1_1client.html
.. _QtUbuntu: https://github.com/ubports/qtubuntu
.. _Qt Platform Abstractions: https://doc.qt.io/qt-5/qpa.html
.. _Qt Scene Graph: https://doc.qt.io/qt-5/qtquick-visualcanvas-scenegraph.html
.. _Ubuntu Platform API: https://github.com/ubports/platform-api
.. _QtUbuntu-Camera: https://github.com/ubports/qtubuntu-camera
.. _QtMultimedia: https://doc.qt.io/qt-5/qtmultimedia-index.html
.. _gst-droid: https://github.com/sailfishos/gst-droid
.. _QtUbuntu-Sensors: https://github.com/ubports/qtubuntu-sensors
.. _QtSensors: https://doc.qt.io/qt-5/qtsensors-index.html
.. _sensorfw: https://git.sailfishos.org/mer-core/sensorfw
.. _QtUbuntu-Media: https://github.com/ubports/qtubuntu-media
.. _media-hub: https://github.com/ubports/media-hub
