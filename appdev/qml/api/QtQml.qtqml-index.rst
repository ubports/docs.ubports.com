QtQml.qtqml-index
=================

.. raw:: html

   <p>

The Qt QML module provides a framework for developing applications and
libraries with the QML language. It defines and implements the language
and engine infrastructure, and provides an API to enable application
developers to extend the QML language with custom types and integrate
QML code with JavaScript and C++. The Qt QML module provides both a QML
API and a C++ API.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that while the Qt QML module provides the language and
infrastructure for QML applications, the Qt Quick module provides many
visual components, model-view support, an animation framework, and much
more for building user interfaces.

.. raw:: html

   </p>

.. raw:: html

   <p>

For those new to QML and Qt Quick, please see QML Applications for an
introduction to writing QML applications.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="getting-started">

Getting Started

.. raw:: html

   </h2>

.. raw:: html

   <p>

To include the definitions of the module's classes, use the following
directive:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="preprocessor">#include &lt;QtQml&gt;</span></pre>

.. raw:: html

   <p>

The QML types in Qt QML are available through the QtQML import. To use
the types, add the following import statement to your .qml file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQml</span> <span class="number">2.0</span></pre>

.. raw:: html

   <p>

To link against the module, add this line to your qmake .pro file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> qml</pre>

.. raw:: html

   <h2 id="qml-and-qml-types">

QML and QML Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Qt QML module contains the QML framework and important QML types
used in applications. The constructs of QML are described in the The QML
Reference.

.. raw:: html

   </p>

.. raw:: html

   <p>

In addition to the QML Basic Types, the module comes with the following
QML object types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Component

.. raw:: html

   </li>

.. raw:: html

   <li>

QtObject

.. raw:: html

   </li>

.. raw:: html

   <li>

Binding

.. raw:: html

   </li>

.. raw:: html

   <li>

Connections

.. raw:: html

   </li>

.. raw:: html

   <li>

Timer

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The Qt global object provides useful enums and functions for various QML
types.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Lists and Models

.. raw:: html

   </h3>

.. raw:: html

   <p>

New in Qt 5.1, the model types are moved to a submodule, QtQml.Models.
The Qt QML Models page has more information.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

DelegateModel

.. raw:: html

   </li>

.. raw:: html

   <li>

DelegateModelGroup

.. raw:: html

   </li>

.. raw:: html

   <li>

ListElement

.. raw:: html

   </li>

.. raw:: html

   <li>

ListModel

.. raw:: html

   </li>

.. raw:: html

   <li>

ObjectModel

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="javascript-environment-for-qml-applications">

JavaScript Environment for QML Applications

.. raw:: html

   </h2>

.. raw:: html

   <p>

JavaScript expressions allow QML code to contain application logic. Qt
QML provides the framework for running JavaScript expressions in QML and
from C++.

.. raw:: html

   </p>

.. raw:: html

   <p>

These sections are from The QML Reference. Integrating QML and
JavaScript

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Using JavaScript Expressions with QML

.. raw:: html

   </li>

.. raw:: html

   <li>

Dynamic QML Object Creation from JavaScript

.. raw:: html

   </li>

.. raw:: html

   <li>

Defining JavaScript Resources In QML

.. raw:: html

   </li>

.. raw:: html

   <li>

Importing JavaScript Resources In QML

.. raw:: html

   </li>

.. raw:: html

   <li>

JavaScript Host Environment

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="integrating-qml-with-c-applications">

Integrating QML with C++ Applications

.. raw:: html

   </h2>

.. raw:: html

   <p>

The module also provides the framework for running QML applications. The
QML framework allows QML code to contain JavaScript expressions and for
the QML code to interact with C++ code.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Important C++ Classes Provided By The Qt QML Module

.. raw:: html

   </li>

.. raw:: html

   <li>

Integrating QML and C++

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="additional-frameworks">

Additional Frameworks

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The Declarative State Machine Framework

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="guides-and-other-information">

Guides and Other Information

.. raw:: html

   </h2>

.. raw:: html

   <p>

Further information for writing QML applications:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The QML Reference

.. raw:: html

   </li>

.. raw:: html

   <li>

QML Applications - essential information for application development
with QML and Qt Quick

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt Quick - a module which provides a set of QML types and C++ classes
for building user interfaces and applications with QML

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt QML Release Notes - list of changes and additions in the Qt QML
module

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Reference

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

C++ Classes

.. raw:: html

   </li>

.. raw:: html

   <li>

QML Types

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@qtqml-index.html -->
