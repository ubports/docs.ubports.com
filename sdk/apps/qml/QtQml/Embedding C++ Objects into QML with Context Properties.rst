.. _sdk_qtqml_embedding_c++_objects_into_qml_with_context_properties:

QtQml Embedding C++ Objects into QML with Context Properties
============================================================


When loading a QML object into a C++ application, it can be useful to directly embed some C++ data that can be used from within the QML code. This makes it possible, for example, to invoke a C++ method on the embedded object, or use a C++ object instance as a data model for a QML view.

The ability to inject C++ data into a QML object is made possible by the QQmlContext class. This class exposes data to the context of a QML object so that the data can be referred to directly from within the scope of the QML code.

For example, here is a QML item that refers to a ``currentDateTime`` value that does not exist in the current scope:

.. code:: qml

    // MyItem.qml
    import QtQuick 2.0
    Text { text: currentDateTime }

This ``currentDateTime`` value can be set directly by the C++ application that loads the QML component, using QQmlContext::setContextProperty():

.. code:: cpp

    QQuickView view;
    view.rootContext()->setContextProperty("currentDateTime", QDateTime::currentDateTime());
    view.setSource(QUrl::fromLocalFile("MyItem.qml"));
    view.show();

**Note:** Since all expressions evaluated in QML are evaluated in a particular context, if the context is modified, all bindings in that context will be re-evaluated. Thus, context properties should be used with care outside of application initialization, as this may lead to decreased application performance.

Context properties can hold either QVariant or QObject\* values. This means custom C++ objects can also be injected using this approach, and these objects can be modified and read directly in QML. Here, we modify the above example to embed a QObject instance instead of a QDateTime value, and the QML code invokes a method on the object instance:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: cpp                                                                                                                                          | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     class ApplicationData : public QObject                                                                                                             |     // MyItem.qml                                                                                                                                      |
|     {                                                                                                                                                  |     import QtQuick 2.0                                                                                                                                 |
|         Q_OBJECT                                                                                                                                       |     Text { text: applicationData.getCurrentDateTime() }                                                                                                |
|     public:                                                                                                                                            |                                                                                                                                                        |
|         Q_INVOKABLE QDateTime getCurrentDateTime() const {                                                                                             |                                                                                                                                                        |
|             return QDateTime::currentDateTime();                                                                                                       |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|     };                                                                                                                                                 |                                                                                                                                                        |
|     int main(int argc, char *argv[]) {                                                                                                                 |                                                                                                                                                        |
|         QGuiApplication app(argc, argv);                                                                                                               |                                                                                                                                                        |
|         QQuickView view;                                                                                                                               |                                                                                                                                                        |
|         ApplicationData data;                                                                                                                          |                                                                                                                                                        |
|         view.rootContext()->setContextProperty("applicationData", &data);                                                                              |                                                                                                                                                        |
|         view.setSource(QUrl::fromLocalFile("MyItem.qml"));                                                                                             |                                                                                                                                                        |
|         view.show();                                                                                                                                   |                                                                                                                                                        |
|         return app.exec();                                                                                                                             |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

(Note that date/time values returned from C++ to QML can be formatted through :ref:`Qt.formatDateTime() <sdk_qtqml_qt_formatDateTime>` and associated functions.)

If the QML item needs to receive signals from the context property, it can connect to them using the :ref:`Connections <sdk_qtqml_connections>` type. For example, if ``ApplicationData`` has a signal named ``dataChanged()``, this signal can be connected to using an ``onDataChanged`` handler within a :ref:`Connections <sdk_qtqml_connections>` object:

.. code:: qml

    Text {
        text: applicationData.getCurrentDateTime()
        Connections {
            target: applicationData
            onDataChanged: console.log("The application data changed!")
        }
    }

Context properties can be useful for using C++ based data models in a QML view. See the following examples:

-  String ListModel
-  Object ListModel
-  AbstractItemModel

demonstrating the use of QStringList, QList<QObject\*>-based models and QAbstractItemModel in QML views.

Also see the QQmlContext documentation for more information.

