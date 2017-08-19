QtQml.qtqml-releasenotes
========================

.. raw:: html

   <h2 id="qt-qml-in-qt-5-1">

Qt QML in Qt 5.1

.. raw:: html

   </h2>

.. raw:: html

   <p>

Qt 5.1 introduces several bug fixes and new functionalities to Qt QML.
This is a summary of the new changes:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

New QQmlApplicationEngine convenience class for QML applications.

.. raw:: html

   </li>

.. raw:: html

   <li>

New Instantiatior type for generic, dynamic object creation.

.. raw:: html

   </li>

.. raw:: html

   <li>

New properties for Qt.application: arguments, name, and version.

.. raw:: html

   </li>

.. raw:: html

   <li>

The 'with' statement has been deprecated and is slated for removal in a
future version of the language.

.. raw:: html

   </li>

.. raw:: html

   <li>

New Qt.platform object with an os property

.. raw:: html

   </li>

.. raw:: html

   <li>

New qmlClearTypeRegistrations() function drops all data from
qmlRegisterType() calls

.. raw:: html

   </li>

.. raw:: html

   <li>

New qmlRegisterType() function for registering composite types.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

New Submodule

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Qt QML Models is a new submodule in Qt 5.1 and provides several QML
types for handling data with models and lists. These types replace types
such as VisualItemModel, VisualDataModel, and VisualDataGroup.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Models

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The What's New in Qt 5.1 has more information about the Qt 5.1 release.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qt-qml-in-qt-5-0">

Qt QML in Qt 5.0

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Qt QML module is new in Qt 5.0. It provides the QML engine and
implements the QML language supporting infrastructure.

.. raw:: html

   </p>

.. raw:: html

   <p>

(Prior to Qt 5, this functionality was provided by the QtDeclarative
module, which has now been replaced by the new Qt QML and Qt Quick
modules. See the Porting QML Applications to Qt 5 page for more
information.)

.. raw:: html

   </p>

.. raw:: html

   <h3>

QML Engine

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

JavaScript engine has changed to V8.

.. raw:: html

   </li>

.. raw:: html

   <li>

Various parser and compiler optimizations have been implemented, as well
as a new bindings optimizer.

.. raw:: html

   </li>

.. raw:: html

   <li>

New QQmlEngine::trimComponentCache() method safely discards unused data
in the engine's component cache to free memory.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Component and Object Creation

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QML objects can now be created asynchronously to improve application
performance.

.. raw:: html

   <ul>

.. raw:: html

   <li>

New QQmlIncubator and QQmlIncubationController C++ classes can be used
to create objects asynchronously.

.. raw:: html

   </li>

.. raw:: html

   <li>

From QML code, this behavior can enabled by:

.. raw:: html

   <ul>

.. raw:: html

   <li>

Calling the new Component Component::incubateObject method

.. raw:: html

   </li>

.. raw:: html

   <li>

Passing the Component.Asynchronous parameter to Qt.createComponent()

.. raw:: html

   </li>

.. raw:: html

   <li>

Loading a Loader object asynchronously using the asynchronous property

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

The component returned by Qt.createComponent() is no longer parented to
the engine. Be sure to hold a reference, or provide a parent.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Type System

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

New var property type. This is a general-purpose property type which
obsoletes the variant type. Properties of the var type may hold
JavaScript references.

.. raw:: html

   </li>

.. raw:: html

   <li>

QML properties of type var and variant can now hold pixmaps. See Scarce
Resources in JavaScript for more information.

.. raw:: html

   </li>

.. raw:: html

   <li>

Value type improvements:

.. raw:: html

   <ul>

.. raw:: html

   <li>

QML now supports defining properties of value type basic types within
QML documents. Supported types include QSizeF, QPointF and QRectF as
size, point and rect respectively.

.. raw:: html

   </li>

.. raw:: html

   <li>

QColor is now a value type provided by the QtQuick module. The red,
green, blue and alpha channels of a color property can be accessed via
r, g, b and a properties.

.. raw:: html

   </li>

.. raw:: html

   <li>

Factory functions for various value types have been added to the Qt
object exposed to QML. Some of those functions require the QtQuick
module to be imported in order to return valid values. See the Qt Quick
Release Notes for more information about these functions.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Support for sequence types QList<int>, QList<qreal>, QList<bool>,
QList<QUrl>, QList<QString> and QStringList has been improved. QObjects
can define Q\_PROPERTYs of these types which can be accessed
transparently from JavaScript.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Modules and Imports

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Arbitrary functionality may be provided in a namespace through a
singleton type. See qmlRegisterSingletonType() for more information.

.. raw:: html

   </li>

.. raw:: html

   <li>

JavaScript (.js) files may now import QML modules and other JavaScript
files using the ".import" syntax.

.. raw:: html

   </li>

.. raw:: html

   <li>

Plugins may now use QQmlExtensionPlugin::baseUrl to get the directory
from which the plugin is loaded. This will be useful if the plugin needs
to load QML or other assets from the same directory.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Other

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QQmlExpression can now be constructed directly (and more efficiently)
from a QQmlScriptString.

.. raw:: html

   </li>

.. raw:: html

   <li>

The Qt global object now provides an inputMethod property to access the
active text input method for an application.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@qtqml-releasenotes.html -->
