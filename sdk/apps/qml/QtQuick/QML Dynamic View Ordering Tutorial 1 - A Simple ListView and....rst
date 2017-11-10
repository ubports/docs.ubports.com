.. _sdk_qtquick_qml_dynamic_view_ordering_tutorial_1_-_a_simple_listview_and___:

QtQuick QML Dynamic View Ordering Tutorial 1 - A Simple ListView and...
=======================================================================


We begin our application by defining a :ref:`ListView <sdk_qtquick_listview>`, a model which will provide data to the view, and a delegate which provides a template for constructing items in the view.

The code for the :ref:`ListView <sdk_qtquick_listview>` and delegate looks like this:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: root
        width: 300; height: 400
        Component {
            id: dragDelegate
            Rectangle {
                id: content
                anchors { left: parent.left; right: parent.right }
                height: column.implicitHeight + 4
                border.width: 1
                border.color: "lightsteelblue"
                radius: 2
                Column {
                    id: column
                    anchors { fill: parent; margins: 2 }
                    Text { text: 'Name: ' + name }
                    Text { text: 'Type: ' + type }
                    Text { text: 'Age: ' + age }
                    Text { text: 'Size: ' + size }
                }
            }
        }
        ListView {
            id: view
            anchors { fill: parent; margins: 2 }
            model: PetsModel {}
            delegate: dragDelegate
            spacing: 4
            cacheBuffer: 50
        }
    }

The model is defined in a separate QML file which looks like this:

.. code:: qml

    import QtQuick 2.0
    ListModel {
        ListElement {
            name: "Polly"
            type: "Parrot"
            age: 12
            size: "Small"
        }
        ListElement {
            name: "Penny"
            type: "Turtle"
            age: 4
            size: "Small"
        }
    }

The first item defined within the application's root Rectangle is the delegate Component. This is the template from which each item in the :ref:`ListView <sdk_qtquick_listview>` is constructed.

The ``name``, ``age``, ``type``, and ``size`` variables referenced in the delegate are sourced from the model data. The names correspond to roles defined in the model.

.. code:: qml

        Component {
            id: dragDelegate
            Rectangle {
                id: content
                anchors { left: parent.left; right: parent.right }
                height: column.implicitHeight + 4
                border.width: 1
                border.color: "lightsteelblue"
                radius: 2
                Column {
                    id: column
                    anchors { fill: parent; margins: 2 }
                    Text { text: 'Name: ' + name }
                    Text { text: 'Type: ' + type }
                    Text { text: 'Age: ' + age }
                    Text { text: 'Size: ' + size }
                }
            }
        }

The second part of the application is the :ref:`ListView <sdk_qtquick_listview>` itself to which we bind the model and delegate.

.. code:: qml

        ListView {
            id: view
            anchors { fill: parent; margins: 2 }
            model: PetsModel {}
            delegate: dragDelegate
            spacing: 4
            cacheBuffer: 50
        }

Files:

-  tutorials/dynamicview/dynamicview1/PetsModel.qml
-  tutorials/dynamicview/dynamicview1/dynamicview.qml
-  tutorials/dynamicview/dynamicview1/dynamicview1.qmlproject

`QML Dynamic View Ordering Tutorial </sdk/apps/qml/QtQuick/qml-dynamicview-tutorial/>`_  `QML Dynamic View Ordering Tutorial 2 - Dragging View Items </sdk/apps/qml/QtQuick/tutorials-dynamicview-dynamicview2/>`_ 
