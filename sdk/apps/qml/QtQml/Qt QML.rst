

The Qt QML module provides a framework for developing applications and
libraries with the QML language. It defines and implements the language
and engine infrastructure, and provides an API to enable application
developers to extend the QML language with custom types and integrate
QML code with JavaScript and C++. The Qt QML module provides both a QML
API and a C++ API.

Note that while the Qt QML module provides the language and
infrastructure for QML applications, the Qt Quick module provides many
visual components, model-view support, an animation framework, and much
more for building user interfaces.

For those new to QML and Qt Quick, please see QML Applications for an
introduction to writing QML applications.

.. rubric:: Getting Started
   :name: getting-started

To include the definitions of the module's classes, use the following
directive:

.. code:: cpp

    #include <QtQml>

The QML types in Qt QML are available through the ``QtQML`` import. To
use the types, add the following import statement to your .qml file:

.. code:: cpp

    import QtQml 2.0

To link against the module, add this line to your qmake ``.pro`` file:

.. code:: cpp

    QT += qml

.. rubric:: QML and QML Types
   :name: qml-and-qml-types

The Qt QML module contains the QML framework and important QML types
used in applications. The constructs of QML are described in the `The
QML Reference </sdk/apps/qml/QtQml/qmlreference/>`__.

In addition to the `QML Basic
Types </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`__, the module
comes with the following QML object types:

-  `Component </sdk/apps/qml/QtQml/Component/>`__
-  `QtObject </sdk/apps/qml/QtQml/QtObject/>`__
-  `Binding </sdk/apps/qml/QtQml/Binding/>`__
-  `Connections </sdk/apps/qml/QtQml/Connections/>`__
-  `Timer </sdk/apps/qml/QtQml/Timer/>`__

The `Qt </sdk/apps/qml/QtQml/Qt/>`__ global object provides useful enums
and functions for various QML types.

.. rubric:: Lists and Models
   :name: lists-and-models

New in Qt 5.1, the model types are moved to a submodule,
``QtQml.Models``. The Qt QML Models page has more information.

-  `DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__
-  `DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__
-  `ListElement </sdk/apps/qml/QtQml/ListElement/>`__
-  `ListModel </sdk/apps/qml/QtQml/ListModel/>`__
-  `ObjectModel </sdk/apps/qml/QtQml/ObjectModel/>`__

.. rubric:: JavaScript Environment for QML Applications
   :name: javascript-environment-for-qml-applications

JavaScript expressions allow QML code to contain application logic. Qt
QML provides the framework for running JavaScript expressions in QML and
from C++.

These sections are from `The QML
Reference </sdk/apps/qml/QtQml/qmlreference/>`__. `Integrating QML and
JavaScript </sdk/apps/qml/QtQml/qtqml-javascript-topic/>`__

-  `Using JavaScript Expressions with
   QML </sdk/apps/qml/QtQml/qtqml-javascript-expressions/>`__
-  `Dynamic QML Object Creation from
   JavaScript </sdk/apps/qml/QtQml/qtqml-javascript-dynamicobjectcreation/>`__
-  `Defining JavaScript Resources In
   QML </sdk/apps/qml/QtQml/qtqml-javascript-resources/>`__
-  `Importing JavaScript Resources In
   QML </sdk/apps/qml/QtQml/qtqml-javascript-imports/>`__
-  `JavaScript Host
   Environment </sdk/apps/qml/QtQml/qtqml-javascript-hostenvironment/>`__

.. rubric:: Integrating QML with C++ Applications
   :name: integrating-qml-with-c-applications

The module also provides the framework for running QML applications. The
QML framework allows QML code to contain JavaScript expressions and for
the QML code to interact with C++ code.

-  `Important C++ Classes Provided By The Qt QML
   Module </sdk/apps/qml/QtQml/qtqml-cppclasses-topic/>`__
-  `Integrating QML and
   C++ </sdk/apps/qml/QtQml/qtqml-cppintegration-topic/>`__

.. rubric:: Additional Frameworks
   :name: additional-frameworks

-  `The Declarative State Machine
   Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`__

.. rubric:: Guides and Other Information
   :name: guides-and-other-information

Further information for writing QML applications:

-  `The QML Reference </sdk/apps/qml/QtQml/qmlreference/>`__
-  QML Applications - essential information for application development
   with QML and Qt Quick
-  Qt Quick - a module which provides a set of QML types and C++ classes
   for building user interfaces and applications with QML
-  `Qt QML Release Notes </sdk/apps/qml/QtQml/qtqml-releasenotes/>`__ -
   list of changes and additions in the Qt QML module

.. rubric:: Reference
   :name: reference

-  C++ Classes
-  QML Types

