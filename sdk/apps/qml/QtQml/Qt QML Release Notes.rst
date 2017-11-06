.. _sdk_qtqml_qt_qml_release_notes:

QtQml Qt QML Release Notes
==========================



Qt 5.1 introduces several bug fixes and new functionalities to Qt QML. This is a summary of the new changes:

-  New QQmlApplicationEngine convenience class for QML applications.
-  New Instantiatior type for generic, dynamic object creation.
-  New properties for :ref:`Qt.application <sdk_qtqml_qt_application>`: arguments, name, and version.
-  The 'with' statement has been deprecated and is slated for removal in a future version of the language.
-  New :ref:`Qt.platform <sdk_qtqml_qt_platform>` object with an ``os`` property
-  New qmlClearTypeRegistrations() function drops all data from qmlRegisterType() calls
-  New qmlRegisterType() function for registering composite types.

The Qt QML Models is a new submodule in Qt 5.1 and provides several QML types for handling data with models and lists. These types replace types such as VisualItemModel, VisualDataModel, and VisualDataGroup.

-  Models

The What's New in Qt 5.1 has more information about the Qt 5.1 release.

The `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_  module is new in Qt 5.0. It provides the QML engine and implements the QML language supporting infrastructure.

(Prior to Qt 5, this functionality was provided by the QtDeclarative module, which has now been replaced by the new `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_  and Qt Quick modules. See the Porting QML Applications to Qt 5 page for more information.)

-  JavaScript engine has changed to V8.
-  Various parser and compiler optimizations have been implemented, as well as a new bindings optimizer.
-  New QQmlEngine::trimComponentCache() method safely discards unused data in the engine's component cache to free memory.

-  QML objects can now be created asynchronously to improve application performance.

   -  New QQmlIncubator and QQmlIncubationController C++ classes can be used to create objects asynchronously.
   -  From QML code, this behavior can enabled by:

      -  Calling the new Component :ref:`Component::incubateObject <sdk_qtqml_component_incubateObject>` method
      -  Passing the ``Component.Asynchronous`` parameter to ``Qt.createComponent()``
      -  Loading a Loader object asynchronously using the asynchronous property

-  The component returned by ``Qt.createComponent()`` is no longer parented to the engine. Be sure to hold a reference, or provide a parent.

-  New var property type. This is a general-purpose property type which obsoletes the variant type. Properties of the var type may hold JavaScript references.
-  QML properties of type var and variant can now hold pixmaps. See Scarce Resources in JavaScript for more information.
-  Value type improvements:

   -  QML now supports defining properties of value type basic types within QML documents. Supported types include QSizeF, QPointF and QRectF as ``size``, ``point`` and ``rect`` respectively.
   -  QColor is now a value type provided by the ``QtQuick`` module. The red, green, blue and alpha channels of a color property can be accessed via ``r``, ``g``, ``b`` and ``a`` properties.
   -  Factory functions for various value types have been added to the ``Qt`` object exposed to QML. Some of those functions require the ``QtQuick`` module to be imported in order to return valid values. See the Qt Quick Release Notes for more information about these functions.

-  Support for sequence types QList<int>, QList<qreal>, QList<bool>, QList<QUrl>, QList<QString> and QStringList has been improved. QObjects can define Q\_PROPERTYs of these types which can be accessed transparently from JavaScript.

-  Arbitrary functionality may be provided in a namespace through a singleton type. See qmlRegisterSingletonType() for more information.
-  JavaScript (.js) files may now import QML modules and other JavaScript files using the ".import" syntax.
-  Plugins may now use QQmlExtensionPlugin::baseUrl to get the directory from which the plugin is loaded. This will be useful if the plugin needs to load QML or other assets from the same directory.

-  QQmlExpression can now be constructed directly (and more efficiently) from a QQmlScriptString.
-  The :ref:`Qt <sdk_qtqml_qt>` global object now provides an :ref:`inputMethod <sdk_qtqml_qt_inputMethod>` property to access the active text input method for an application.

