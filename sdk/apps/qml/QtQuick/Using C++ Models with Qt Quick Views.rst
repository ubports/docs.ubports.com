.. _sdk_qtquick_using_c++_models_with_qt_quick_views:

QtQuick Using C++ Models with Qt Quick Views
============================================



Models can be defined in C++ and then made available to QML. This is useful for exposing existing C++ data models or otherwise complex datasets to QML.

A C++ model class can be defined as a QStringList, a QObjectList or a `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_ . The first two are useful for exposing simpler datasets, while `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_  provides a more flexible solution for more complex models.

A model may be a simple QStringList, which provides the contents of the list via the *modelData* role.

Here is a :ref:`ListView <sdk_qtquick_listview>` with a delegate that references its model item's value using the ``modelData`` role:

.. code:: qml

    ListView {
        width: 100; height: 100
        model: myModel
        delegate: Rectangle {
            height: 25
            width: 100
            Text { text: modelData }
        }
    }

A Qt application can load this QML document and set the value of ``myModel`` to a QStringList:

.. code:: cpp

        QStringList dataList;
        dataList.append("Item 1");
        dataList.append("Item 2");
        dataList.append("Item 3");
        dataList.append("Item 4");
        QQuickView view;
        QQmlContext *ctxt = view.rootContext();
        ctxt->setContextProperty("myModel", QVariant::fromValue(dataList));

The complete source code for this example is available in `examples/quick/models/stringlistmodel </sdk/apps/qml/QtQuick/models-stringlistmodel/>`_  within the Qt install directory.

**Note:** There is no way for the view to know that the contents of a QStringList have changed. If the QStringList changes, it will be necessary to reset the model by calling QQmlContext::setContextProperty() again.

A list of QObject\* values can also be used as a model. A QList<QObject\*> provides the properties of the objects in the list as roles.

The following application creates a ``DataObject`` class with Q\_PROPERTY values that will be accessible as named roles when a QList<DataObject\*> is exposed to QML:

.. code:: cpp

    class DataObject : public QObject
    {
        Q_OBJECT
        Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
        Q_PROPERTY(QString color READ color WRITE setColor NOTIFY colorChanged)
        ...
    };
    int main(int argc, char ** argv)
    {
        QGuiApplication app(argc, argv);
        QList<QObject*> dataList;
        dataList.append(new DataObject("Item 1", "red"));
        dataList.append(new DataObject("Item 2", "green"));
        dataList.append(new DataObject("Item 3", "blue"));
        dataList.append(new DataObject("Item 4", "yellow"));
        QQuickView view;
        view.setResizeMode(QQuickView::SizeRootObjectToView);
        QQmlContext *ctxt = view.rootContext();
        ctxt->setContextProperty("myModel", QVariant::fromValue(dataList));
        ...

The QObject\* is available as the ``modelData`` property. As a convenience, the properties of the object are also made available directly in the delegate's context. Here, ``view.qml`` references the ``DataModel`` properties in the :ref:`ListView <sdk_qtquick_listview>` delegate:

.. code:: qml

    ListView {
        width: 100; height: 100
        model: myModel
        delegate: Rectangle {
            height: 25
            width: 100
            color: model.modelData.color
            Text { text: name }
        }
    }

Note the use of ``color`` property with qualifier. The properties of the object are not replicated in the ``model`` object, as they are easily available via the ``modelData`` object.

The complete source code for this example is available in `examples/quick/models/objectlistmodel </sdk/apps/qml/QtQuick/models-objectlistmodel/>`_  within the Qt install directory.

Note: There is no way for the view to know that the contents of a QList has changed. If the QList changes, it is necessary to reset the model by calling QQmlContext::setContextProperty() again.

A model can be defined by subclassing `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_ . This is the best approach if you have a more complex model that cannot be supported by the other approaches. A `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_  can also automatically notify a QML view when the model data changes.

The roles of a `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_  subclass can be exposed to QML by reimplementing QAbstractItemModel::roleNames().

Here is an application with a QAbstractListModel subclass named ``AnimalModel``, which exposes the *type* and *sizes* roles. It reimplements QAbstractItemModel::roleNames() to expose the role names, so that they can be accessed via QML:

.. code:: cpp

    class Animal
    {
    public:
        Animal(const QString &type, const QString &size);
        ...
    };
    class AnimalModel : public QAbstractListModel
    {
        Q_OBJECT
    public:
        enum AnimalRoles {
            TypeRole = Qt::UserRole + 1,
            SizeRole
        };
        AnimalModel(QObject *parent = 0);
        ...
    };
    QHash<int, QByteArray> AnimalModel::roleNames() const {
        QHash<int, QByteArray> roles;
        roles[TypeRole] = "type";
        roles[SizeRole] = "size";
        return roles;
    }
    int main(int argc, char ** argv)
    {
        QGuiApplication app(argc, argv);
        AnimalModel model;
        model.addAnimal(Animal("Wolf", "Medium"));
        model.addAnimal(Animal("Polar bear", "Large"));
        model.addAnimal(Animal("Quoll", "Small"));
        QQuickView view;
        view.setResizeMode(QQuickView::SizeRootObjectToView);
        QQmlContext *ctxt = view.rootContext();
        ctxt->setContextProperty("myModel", &model);
        ...

This model is displayed by a :ref:`ListView <sdk_qtquick_listview>` delegate that accesses the *type* and *size* roles:

.. code:: qml

    ListView {
        width: 200; height: 250
        model: myModel
        delegate: Text { text: "Animal: " + type + ", " + size }
    }

QML views are automatically updated when the model changes. Remember the model must follow the standard rules for model changes and notify the view when the model has changed by using QAbstractItemModel::dataChanged(), QAbstractItemModel::beginInsertRows(), and so on. See the Model subclassing reference for more information.

The complete source code for this example is available in `examples/quick/models/abstractitemmodel </sdk/apps/qml/QtQuick/models-abstractitemmodel/>`_  within the Qt install directory.

`QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_  presents a hierarchy of tables, but the views currently provided by QML can only display list data. In order to display the child lists of a hierarchical model, use the DelegateModel QML type, which provides the following properties and functions to be used with list models of `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_  type:

-  *hasModelChildren* role property to determine whether a node has child nodes.
-  DelegateModel::rootIndex allows the root node to be specified
-  DelegateModel::modelIndex() returns a QModelIndex which can be assigned to DelegateModel::rootIndex
-  DelegateModel::parentModelIndex() returns a QModelIndex which can be assigned to DelegateModel::rootIndex

The above examples use QQmlContext::setContextProperty() to set model values directly in QML components. An alternative to this is to register the C++ model class as a QML type (either directly from a C++ entry-point, or within the initialization function of a QML C++ plugin, as shown below). This would allow the model classes to be created directly as types within QML:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: cpp                                                                                                                                          | .. code:: qml                                                                                                                                          |
|                                                                                                                                                        |                                                                                                                                                        |
|     class MyModelPlugin : public QQmlExtensionPlugin                                                                                                   |     MyModel {                                                                                                                                          |
|     {                                                                                                                                                  |         id: myModel                                                                                                                                    |
|         Q_OBJECT                                                                                                                                       |         ListElement { someProperty: "some value" }                                                                                                     |
|         Q_PLUGIN_METADATA(IID "org.qt-project.QmlExtension.MyModel" FILE "mymodel.json")                                                               |     }                                                                                                                                                  |
|     public:                                                                                                                                            |                                                                                                                                                        |
|         void registerTypes(const char *uri)                                                                                                            | .. code:: qml                                                                                                                                          |
|         {                                                                                                                                              |                                                                                                                                                        |
|             qmlRegisterType<MyModel>(uri, 1, 0,                                                                                                        |     ListView {                                                                                                                                         |
|                     "MyModel");                                                                                                                        |         width: 200; height: 250                                                                                                                        |
|         }                                                                                                                                              |         model: myModel                                                                                                                                 |
|     }                                                                                                                                                  |         delegate: Text { text: someProperty }                                                                                                          |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

See Writing QML Extensions with C++ for details on writing QML C++ plugins.

