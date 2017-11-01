A basic QML type

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  ****`objectName </sdk/apps/qml/QtQml/QtObject#objectName-prop>`__****
   : string

Detailed Description
--------------------

The `QtObject </sdk/apps/qml/QtQml/QtObject/>`__ type is a non-visual
element which contains only the
`objectName </sdk/apps/qml/QtQml/QtObject#objectName-prop>`__ property.

It can be useful to create a
`QtObject </sdk/apps/qml/QtQml/QtObject/>`__ if you need an extremely
lightweight type to enclose a set of custom properties:

.. code:: qml

    import QtQuick 2.0
    Item {
        QtObject {
            id: attributes
            property string name
            property int size
            property variant attributes
        }
        Text { text: attributes.name }
    }

It can also be useful for C++ integration, as it is just a plain
QObject. See the QObject documentation for further details.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ objectName : string                                             |
+--------------------------------------------------------------------------+

This property holds the QObject::objectName for this specific object
instance.

This allows a C++ application to locate an item within a QML component
using the QObject::findChild() method. For example, the following C++
application locates the child Rectangle item and dynamically changes its
``color`` value:

.. code:: qml

    // MyRect.qml
    import QtQuick 2.0
    Item {
        width: 200; height: 200
        Rectangle {
            anchors.fill: parent
            color: "red"
            objectName: "myRect"
        }
    }

.. code:: cpp

    // main.cpp
    QQuickView view;
    view.setSource(QUrl::fromLocalFile("MyRect.qml"));
    view.show();
    QQuickItem *item = view.rootObject()->findChild<QQuickItem*>("myRect");
    if (item)
        item->setProperty("color", QColor(Qt::yellow));

| 
