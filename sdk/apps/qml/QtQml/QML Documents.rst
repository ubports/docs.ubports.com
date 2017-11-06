.. _sdk_qtqml_qml_documents:

QtQml QML Documents
===================


A QML document is a string which conforms to QML document syntax. A document defines a QML object type. A document is generally loaded from a ``".qml"`` file stored either locally or remotely, but can be constructed manually in code. An instance of the object type defined by a document may be created using a Component in QML code, or a QQmlComponent in C++. Alternatively, if the object type is explicitly exposed to the QML type system with a particular type name, the type may be used directly in object declarations in other documents.

The ability to define re-usable QML object types in documents is an important enabler to allow clients to write modular, highly readable and maintainable code.

Since Qt 5.4, a document can also have the file extension ``".ui.qml"``. The QML engine handles these files like standard .qml files and ignores the ``.ui`` part of the extension. Qt Creator handles those files as UI forms for the Qt Quick Designer. The files can contain only a subset of the QML language that is defined by Qt Creator.

A QML document consists of two sections: the imports section, and the object declaration section. The imports section in a document contains import statements that define which QML object types and JavaScript resources the document is able to use. The object declaration section defines the object tree to be created when instantiating the object type defined by the document.

An example of a simple document is as follows:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 300
        height: 200
        color: "blue"
    }

See the `Structure of a QML Document </sdk/apps/qml/QtQml/qtqml-documents-structure/>`_  for more information on the topic.

The object declaration section of the document must specify a valid object hierarchy with appropriate `QML syntax </sdk/apps/qml/QtQml/qtqml-syntax-basics/>`_ . An object declaration may include the specification of custom `object attributes </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/>`_ . Object method attributes may be specified as JavaScript functions, and object property attributes may be assigned `property binding expressions </sdk/apps/qml/QtQml/qtqml-syntax-propertybinding/>`_ .

Please see the documentation about the `syntax of QML </sdk/apps/qml/QtQml/qtqml-syntax-basics/>`_  for more information about valid syntax, and see the documentation about `integrating QML and JavaScript </sdk/apps/qml/QtQml/qtqml-javascript-topic/>`_  for in-depth information on that topic.

As described briefly in the previous section, a document implicitly defines a QML object type. One of the core principles of QML is the ability to define and then re-use object types. This improves the maintainability of QML code, increases the readability of object hierarchy declarations, and promotes separation between UI definition and logic implementation.

In the following example, the client developer defines a ``Button`` type with a document in a file:

.. code:: qml

    // Button.qml
    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        color: "red"
        MouseArea {
            anchors.fill: parent
            onClicked: console.log("Button clicked!")
        }
    }

The ``Button`` type can then be used in an application:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|     // application.qml                                                                                                                                 |                                                                                                                                                        |
|     import QtQuick 2.0                                                                                                                                 |                                                                                                                                                        |
|     Column {                                                                                                                                           |                                                                                                                                                        |
|         Button { width: 50; height: 50 }                                                                                                               |                                                                                                                                                        |
|         Button { x: 50; width: 100; height: 50; color: "blue" }                                                                                        |                                                                                                                                                        |
|         Button { width: 50; height: 50; radius: 8 }                                                                                                    |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Please see the documentation about `defining object types in documents </sdk/apps/qml/QtQml/qtqml-documents-definetypes/>`_  for in-depth information on the topic.

It is important to note that QML is network-transparent. Applications can import documents from remote paths just as simply as documents from local paths. In fact, any ``url`` property may be assigned a remote or local URL, and the QML engine will handle any network communication involved.

Please see the `Network Transparency </sdk/apps/qml/QtQml/qtqml-documents-networktransparency/>`_  documentation for more information about network transparency in imports.

Expressions in documents usually involve objects or properties of objects, and since multiple objects may be defined and since different objects may have properties with the same name, some predefined symbol resolution semantics must be defined by QML. Please see the page on `scope and symbol resolution </sdk/apps/qml/QtQml/qtqml-documents-scope/>`_  for in-depth information about the topic.

