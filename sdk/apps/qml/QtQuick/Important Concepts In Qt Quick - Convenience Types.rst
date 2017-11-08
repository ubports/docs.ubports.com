.. _sdk_qtquick_important_concepts_in_qt_quick_-_convenience_types:

QtQuick Important Concepts In Qt Quick - Convenience Types
==========================================================


In a highly dynamic user interface, the application developer will often wish to react to events and trigger various response logic. QML has built-in support for these concepts through bindings, signals and signal handlers, and dynamic object instantiation, but Qt Quick expands upon the support provided by the language with various convenience types.

QML provides a number of ways to dynamically create and manage QML objects.

Objects can be created dynamically from within imperative JavaScript code in various ways. See Dynamic QML object creation from JavaScript for more details.

Qt Quick provides the :ref:`Loader <sdk_qtquick_loader>`, :ref:`Repeater <sdk_qtquick_repeater>`, :ref:`ListView <sdk_qtquick_listview>`, `GridView </sdk/apps/qml/QtQuick/draganddrop/#gridview>`_  and :ref:`PathView <sdk_qtquick_pathview>` types which also support dynamic object management, and provide a declarative API.

Please see the performance guide for more information on using dynamic instantiation and lazy initialization to improve application performance.

Property bindings are a fundamental feature of QML. Typically, a property is initialized with its binding. However, the Binding type and Qt.binding() function allows the client to dynamically bind properties from any object at run-time, and modify the binding target when required (or when it becomes available).

QML supports dynamic signal connections through a signal's ``connect()`` method. The `Qt Quick </sdk/apps/qml/QtQuick/qtquick-index/>`_  module provides the convenience Connections type which allows setting up a signal connection involving an object which isn't part of the static object hierarchy. It also allows the connection to be dynamically retargeted at runtime, which allows an application to process different signal notifications with different functions depending on the program state.

By declaring a Connections instance, the client can dynamically cause signals emitted by one object to trigger methods of another object, and can modify the connection target when required (or when it becomes available).

Another common use-case is to trigger functionality some specified period of time after a particular event occurs. These sort of timer-based triggers are supported in Qt Quick through the Timer type. Both single-shot and recurring timers are supported.

