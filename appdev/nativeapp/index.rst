.. _nativeapp:

Native apps
===========

The recommended way to build a native application on Ubuntu Touch is to use the `Qt <https://doc.qt.io/>`__ framework
(current version since OTA-16 is Qt 5.12.9).
You do not have to stick with the traditional C++<->QML Qt model, you can use also Python, Go, Rust or even Javascript for your backend.

Ubuntu Touch provides a subset of Qt QML components to ease the development of your app : `QML API <https://api-docs.ubports.com/sdk/apps/qml/index.html>`__
and Icons: `Suru Icons <http://docs.ubports.com/projects/icons/en/latest/>`__, but you can also ship your cross platform app using standard Qt QML QtQuick2 components.

You can use `Clickable <http://clickable.bhdouglass.com/en/latest/>`_ to facilitate Packaging, deploying, publishing and tests .

Check out informations about the platform and confinement model in :ref:`Platform <platform>` section
