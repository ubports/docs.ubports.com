.. _sdk_qtqml_qt_qml:

QtQml Qt QML
============


The Qt QML module provides a framework for developing applications and libraries with the QML language. It defines and implements the language and engine infrastructure, and provides an API to enable application developers to extend the QML language with custom types and integrate QML code with JavaScript and C++. The Qt QML module provides both a QML API and a C++ API.

Note that while the Qt QML module provides the language and infrastructure for QML applications, the Qt Quick module provides many visual components, model-view support, an animation framework, and much more for building user interfaces.

For those new to QML and Qt Quick, please see QML Applications for an introduction to writing QML applications.

To include the definitions of the module's classes, use the following directive:

.. code:: cpp

    #include <QtQml>

The QML types in Qt QML are available through the ``QtQML`` import. To use the types, add the following import statement to your .qml file:

.. code:: cpp

    import QtQml 2.0

To link against the module, add this line to your qmake ``.pro`` file:

.. code:: cpp

    QT += qml

The Qt QML module contains the QML framework and important QML types used in applications. The constructs of QML are described in the `The QML Reference </sdk/apps/qml/QtQml/qmlreference/>`_ .

In addition to the `QML Basic Types </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`_ , the module comes with the following QML object types:

-  :ref:`Component <sdk_qtqml_component>`
-  :ref:`QtObject <sdk_qtqml_qtobject>`
-  :ref:`Binding <sdk_qtqml_binding>`
-  :ref:`Connections <sdk_qtqml_connections>`
-  :ref:`Timer <sdk_qtqml_timer>`

The :ref:`Qt <sdk_qtqml_qt>` global object provides useful enums and functions for various QML types.

New in Qt 5.1, the model types are moved to a submodule, ``QtQml.Models``. The Qt QML Models page has more information.

-  :ref:`DelegateModel <sdk_qtqml_delegatemodel>`
-  :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>`
-  :ref:`ListElement <sdk_qtqml_listelement>`
-  :ref:`ListModel <sdk_qtqml_listmodel>`
-  :ref:`ObjectModel <sdk_qtqml_objectmodel>`

JavaScript expressions allow QML code to contain application logic. Qt QML provides the framework for running JavaScript expressions in QML and from C++.

These sections are from `The QML Reference </sdk/apps/qml/QtQml/qmlreference/>`_ . `Integrating QML and JavaScript </sdk/apps/qml/QtQml/qtqml-javascript-topic/>`_ 

-  `Using JavaScript Expressions with QML </sdk/apps/qml/QtQml/qtqml-javascript-expressions/>`_ 
-  `Dynamic QML Object Creation from JavaScript </sdk/apps/qml/QtQml/qtqml-javascript-dynamicobjectcreation/>`_ 
-  `Defining JavaScript Resources In QML </sdk/apps/qml/QtQml/qtqml-javascript-resources/>`_ 
-  `Importing JavaScript Resources In QML </sdk/apps/qml/QtQml/qtqml-javascript-imports/>`_ 
-  `JavaScript Host Environment </sdk/apps/qml/QtQml/qtqml-javascript-hostenvironment/>`_ 

The module also provides the framework for running QML applications. The QML framework allows QML code to contain JavaScript expressions and for the QML code to interact with C++ code.

-  `Important C++ Classes Provided By The Qt QML Module </sdk/apps/qml/QtQml/qtqml-cppclasses-topic/>`_ 
-  `Integrating QML and C++ </sdk/apps/qml/QtQml/qtqml-cppintegration-topic/>`_ 

-  `The Declarative State Machine Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`_ 

Further information for writing QML applications:

-  `The QML Reference </sdk/apps/qml/QtQml/qmlreference/>`_ 
-  QML Applications - essential information for application development with QML and Qt Quick
-  Qt Quick - a module which provides a set of QML types and C++ classes for building user interfaces and applications with QML
-  `Qt QML Release Notes </sdk/apps/qml/QtQml/qtqml-releasenotes/>`_  - list of changes and additions in the Qt QML module

-  C++ Classes
-  QML Types

