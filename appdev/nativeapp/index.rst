.. _nativeapp:

Native applications
===================



The recommended way to build a native application on Ubuntu Touch is to use the `Qt <https://doc.qt.io/>`_ framework ( currently version 5.9.5 ).

Ubuntu Touch provide a subset of Qt QML components to ease you build your app : `QML API <https://api-docs.ubports.com/sdk/apps/qml/index.html>`__ 
and Icons: `Suru Icons <http://docs.ubports.com/projects/icons/en/latest/>`__, but you can also ship your cross platform app using standard Qt QML QtQuick2 components.

Use `Clickable <http://clickable.bhdouglass.com/en/latest/>`_ to facilitate Packaging, deploying, publishing and tests .

You can get informations about the platform and confinement model in :ref:`Platform <platform>` section 