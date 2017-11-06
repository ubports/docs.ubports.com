.. _sdk_qtqml_interacting_with_qml_objects_from_c++:

QtQml Interacting with QML Objects from C++
===========================================


All QML object types are QObject-derived types, whether they are internally implemented by the engine or `defined by third-party sources </sdk/apps/qml/QtQml/qtqml-cppintegration-definetypes/>`_ . This means the QML engine can use the Qt Meta Object System to dynamically instantiate any QML object type and inspect the created objects.

This is useful for creating QML objects from C++ code, whether to display a QML object that can be visually rendered, or to integrate non-visual QML object data into a C++ application. Once a QML object is created, it can be inspected from C++ in order to read and write to properties, invoke methods and receive signal notifications.

A QML document can be loaded with QQmlComponent or QQuickView. QQmlComponent loads a QML document as a C++ object that can then be modified from C++ code. QQuickView also does this, but as QQuickView is a QWindow-derived class, the loaded object will also be rendered into a visual display; QQuickView is generally used to integrate a displayable QML object into an application's user interface.

For example, suppose there is a ``MyItem.qml`` file that looks like this:

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 100; height: 100
    }

This QML document can be loaded with QQmlComponent or QQuickView with the following C++ code. Using a QQmlComponent requires calling QQmlComponent::create() to create a new instance of the component, while a QQuickView automatically creates an instance of the component, which is accessible via QQuickView::rootObject():

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: cpp                                                                                                                                          | .. code:: cpp                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     // Using QQmlComponent                                                                                                                             |     // Using QQuickView                                                                                                                                |
|     QQmlEngine engine;                                                                                                                                 |     QQuickView view;                                                                                                                                   |
|     QQmlComponent component(&engine,                                                                                                                   |     view.setSource(QUrl::fromLocalFile("MyItem.qml"));                                                                                                 |
|             QUrl::fromLocalFile("MyItem.qml"));                                                                                                        |     view.show();                                                                                                                                       |
|     QObject *object = component.create();                                                                                                              |     QObject *object = view.rootObject();                                                                                                               |
|     ...                                                                                                                                                |                                                                                                                                                        |
|     delete object;                                                                                                                                     |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

This ``object`` is the instance of the ``MyItem.qml`` component that has been created. You can now modify the item's properties using QObject::setProperty() or QQmlProperty:

.. code:: cpp

    object->setProperty("width", 500);
    QQmlProperty(object, "width").write(500);

Alternatively, you can cast the object to its actual type and call methods with compile-time safety. In this case the base object of ``MyItem.qml`` is an Item, which is defined by the QQuickItem class:

.. code:: cpp

    QQuickItem *item = qobject_cast<QQuickItem*>(object);
    item->setWidth(500);

You can also connect to any signals or call methods defined in the component using QMetaObject::invokeMethod() and QObject::connect(). See `Invoking QML Methods </sdk/apps/qml/QtQml/qtqml-cppintegration-interactqmlfromcpp/#invoking-qml-methods>`_  and `Connecting to QML Signals </sdk/apps/qml/QtQml/qtqml-cppintegration-interactqmlfromcpp/#connecting-to-qml-signals>`_  below for further details.

QML components are essentially object trees with children that have siblings and their own children. Child objects of QML components can be located using the QObject::objectName property with QObject::findChild(). For example, if the root item in ``MyItem.qml`` had a child Rectangle item:

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 100; height: 100
        Rectangle {
            anchors.fill: parent
            objectName: "rect"
        }
    }

The child could be located like this:

.. code:: cpp

    QObject *rect = object->findChild<QObject*>("rect");
    if (rect)
        rect->setProperty("color", "red");

Note that an object may have multiple children with the same ``objectName``. For example, ListView creates multiple instances of its delegate, so if its delegate is declared with a particular objectName, the ListView will have multiple children with the same ``objectName``. In this case, QObject::findChildren() can be used to find all children with a matching ``objectName``.

**Warning:** While it is possible to use C++ to access and manipulate QML objects deep into the object tree, we recommend that you do not take this approach outside of application testing and prototyping. One strength of QML and C++ integration is the ability to implement the QML user interface separately from the C++ logic and dataset backend, and this strategy breaks if the C++ side reaches deep into the QML components to manipulate them directly. This would make it difficult to, for example, swap a QML view component for another view, if the new component was missing a required ``objectName``. It is better for the C++ implementation to know as little as possible about the QML user interface implementation and the composition of the QML object tree.

Any properties declared in a QML object are automatically accessible from C++. Given a QML item like this:

.. code:: qml

    // MyItem.qml
    import QtQuick 2.0
    Item {
        property int someNumber: 100
    }

The value of the ``someNumber`` property can be set and read using QQmlProperty, or QObject::setProperty() and QObject::property():

.. code:: cpp

    QQmlEngine engine;
    QQmlComponent component(&engine, "MyItem.qml");
    QObject *object = component.create();
    qDebug() << "Property value:" << QQmlProperty::read(object, "someNumber").toInt();
    QQmlProperty::write(object, "someNumber", 5000);
    qDebug() << "Property value:" << object->property("someNumber").toInt();
    object->setProperty("someNumber", 100);

You should always use QObject::setProperty(), QQmlProperty or QMetaProperty::write() to change a QML property value, to ensure the QML engine is made aware of the property change. For example, say you have a custom type ``PushButton`` with a ``buttonText`` property that internally reflects the value of a ``m_buttonText`` member variable. Modifying the member variable directly like this is not a good idea:

.. code:: cpp

    //bad code
    QQmlComponent component(engine, "MyButton.qml");
    PushButton *button = qobject_cast<PushButton*>(component.create());
    button->m_buttonText = "Click me";

Since the value is changed directly, this bypasses Qt's meta-object system and the QML engine is not made aware of the property change. This means property bindings to ``buttonText`` would not be updated, and any ``onButtonTextChanged`` handlers would not be called.

All QML methods are exposed to the meta-object system and can be called from C++ using QMetaObject::invokeMethod(). Method parameters and return values passed from QML are always translated into QVariant values in C++.

Here is a C++ application that calls a QML method using QMetaObject::invokeMethod():

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: cpp                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     // MyItem.qml                                                                                                                                      |     // main.cpp                                                                                                                                        |
|     import QtQuick 2.0                                                                                                                                 |     QQmlEngine engine;                                                                                                                                 |
|     Item {                                                                                                                                             |     QQmlComponent component(&engine, "MyItem.qml");                                                                                                    |
|         function myQmlFunction(msg) {                                                                                                                  |     QObject *object = component.create();                                                                                                              |
|             console.log("Got message:", msg)                                                                                                           |     QVariant returnedValue;                                                                                                                            |
|             return "some return value"                                                                                                                 |     QVariant msg = "Hello from C++";                                                                                                                   |
|         }                                                                                                                                              |     QMetaObject::invokeMethod(object, "myQmlFunction",                                                                                                 |
|     }                                                                                                                                                  |             Q_RETURN_ARG(QVariant, returnedValue),                                                                                                     |
|                                                                                                                                                        |             Q_ARG(QVariant, msg));                                                                                                                     |
|                                                                                                                                                        |     qDebug() << "QML function returned:" << returnedValue.toString();                                                                                  |
|                                                                                                                                                        |     delete object;                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Notice the Q\_RETURN\_ARG() and Q\_ARG() arguments for QMetaObject::invokeMethod() must be specified as QVariant types, as this is the generic data type used for QML method parameters and return values.

All QML signals are automatically available to C++, and can be connected to using QObject::connect() like any ordinary Qt C++ signal. In return, any C++ signal can be received by a QML object using `signal handlers </sdk/apps/qml/QtQml/qtqml-syntax-signals/>`_ .

Here is a QML component with a signal named ``qmlSignal`` that is emitted with a string-type parameter. This signal is connected to a C++ object's slot using QObject::connect(), so that the ``cppSlot()`` method is called whenever the ``qmlSignal`` is emitted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: cpp                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     // MyItem.qml                                                                                                                                      |     class MyClass : public QObject                                                                                                                     |
|     import QtQuick 2.0                                                                                                                                 |     {                                                                                                                                                  |
|     Item {                                                                                                                                             |         Q_OBJECT                                                                                                                                       |
|         id: item                                                                                                                                       |     public slots:                                                                                                                                      |
|         width: 100; height: 100                                                                                                                        |         void cppSlot(const QString &msg) {                                                                                                             |
|         signal qmlSignal(string msg)                                                                                                                   |             qDebug() << "Called the C++ slot with message:" << msg;                                                                                    |
|         MouseArea {                                                                                                                                    |         }                                                                                                                                              |
|             anchors.fill: parent                                                                                                                       |     };                                                                                                                                                 |
|             onClicked: item.qmlSignal("Hello from QML")                                                                                                |     int main(int argc, char *argv[]) {                                                                                                                 |
|         }                                                                                                                                              |         QGuiApplication app(argc, argv);                                                                                                               |
|     }                                                                                                                                                  |         QQuickView view(QUrl::fromLocalFile("MyItem.qml"));                                                                                            |
|                                                                                                                                                        |         QObject *item = view.rootObject();                                                                                                             |
|                                                                                                                                                        |         MyClass myClass;                                                                                                                               |
|                                                                                                                                                        |         QObject::connect(item, SIGNAL(qmlSignal(QString)),                                                                                             |
|                                                                                                                                                        |                          &myClass, SLOT(cppSlot(QString)));                                                                                            |
|                                                                                                                                                        |         view.show();                                                                                                                                   |
|                                                                                                                                                        |         return app.exec();                                                                                                                             |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

When a QML object type is used as a signal parameter, the parameter should use var as the type, and the value should be received in C++ using the QVariant type:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          | .. code:: cpp                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|      // MyItem.qml                                                                                                                                     |      class MyClass : public QObject                                                                                                                    |
|      import QtQuick 2.0                                                                                                                                |      {                                                                                                                                                 |
|      Item {                                                                                                                                            |          Q_OBJECT                                                                                                                                      |
|          id: item                                                                                                                                      |      public slots:                                                                                                                                     |
|          width: 100; height: 100                                                                                                                       |          void cppSlot(const QVariant &v) {                                                                                                             |
|          signal qmlSignal(var anObject)                                                                                                                |             qDebug() << "Called the C++ slot with value:" << v;                                                                                        |
|          MouseArea {                                                                                                                                   |             QQuickItem *item = qobject_cast<QQuickItem*>(v.value<QObject*>());                                                                         |
|              anchors.fill: parent                                                                                                                      |             qDebug() << "Item dimensions:" << item->width() << item->height();                                                                         |
|              onClicked: item.qmlSignal(item)                                                                                                           |          }                                                                                                                                             |
|          }                                                                                                                                             |      };                                                                                                                                                |
|      }                                                                                                                                                 |      int main(int argc, char *argv[]) {                                                                                                                |
|                                                                                                                                                        |          QApplication app(argc, argv);                                                                                                                 |
|                                                                                                                                                        |          QQuickView view(QUrl::fromLocalFile("MyItem.qml"));                                                                                           |
|                                                                                                                                                        |          QObject *item = view.rootObject();                                                                                                            |
|                                                                                                                                                        |          MyClass myClass;                                                                                                                              |
|                                                                                                                                                        |          QObject::connect(item, SIGNAL(qmlSignal(QVariant)),                                                                                           |
|                                                                                                                                                        |                           &myClass, SLOT(cppSlot(QVariant)));                                                                                          |
|                                                                                                                                                        |          view.show();                                                                                                                                  |
|                                                                                                                                                        |          return app.exec();                                                                                                                            |
|                                                                                                                                                        |      }                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

