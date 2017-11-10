.. _sdk_qtqml_qml_object_types:

QtQml QML Object Types
======================


A QML object type is a type from which a QML object can be instantiated.

In syntactic terms, a QML object type is one which can be used to declare an object by specifying the *type name* followed by a set of curly braces that encompasses the attributes of that object. This differs from *basic types*, which cannot be used in the same way. For example, Rectangle is a QML object type: it can be used to create ``Rectangle`` type objects. This cannot be done with primitive types such as ``int`` and ``bool``, which are used to hold simple data types rather than objects.

Custom QML object types can be defined by creating a .qml file that defines the type, as discussed in `Documents as QML object type definitions </sdk/apps/qml/QtQml/qtqml-documents-definetypes/>`_ , or by defining a QML type from C++ and registering the type with the QML engine, as discussed in `Defining QML Types from C++ </sdk/apps/qml/QtQml/qtqml-cppintegration-definetypes/>`_ .

Plugin writers and application developers may provide types defined as QML documents. A QML document, when visible to the QML import system, defines a type identified by the name of the file minus the file extensions.

Thus, if a QML document named "MyButton.qml" exists, it provides the definition of the "MyButton" type, which may be used in a QML application.

See the documentation about `QML Documents </sdk/apps/qml/QtQml/qtqml-documents-topic/>`_  for information on how to define a QML document, and the syntax of the QML language. Once you are familiar with the QML language and how to define QML documents, see the documentation which explains how to `define and use your own reusable QML types in QML documents </sdk/apps/qml/QtQml/qtqml-documents-definetypes/>`_ .

See `Defining Object Types through QML Documents </sdk/apps/qml/QtQml/qtqml-documents-definetypes/>`_  for more information.

Another method of creating object types from within QML is to use the :ref:`Component <sdk_qtqml_component>` type. This allows a type to be defined inline within a QML document, instead of using a separate document in a ``.qml`` file.

.. code:: qml

    Item {
        id: root
        width: 500; height: 500
        Component {
            id: myComponent
            Rectangle { width: 100; height: 100; color: "red" }
        }
        Component.onCompleted: {
            myComponent.createObject(root)
            myComponent.createObject(root, {"x": 200})
        }
    }

Here the ``myComponent`` object essentially defines an anonymous type that can be instantiated using :ref:`Component::createObject <sdk_qtqml_component_createObject>` to create objects of this anonymous type.

Inline components share all the characteristics of regular top-level components and use the same ``import`` list as their containing QML document.

Note that each :ref:`Component <sdk_qtqml_component>` object declaration creates its own *component scope*. Any *id* values used and referred to from within a :ref:`Component <sdk_qtqml_component>` object declaration must be unique within that scope, but do not need to be unique within the document within which the inline component is declared. So, the Rectangle declared in the ``myComponent`` object declaration could have an *id* of ``root`` without conflicting with the ``root`` declared for the Item object in the same document, as these two *id* values are declared within different component scopes.

See `Scope and Naming Resolution </sdk/apps/qml/QtQml/qtqml-documents-scope/>`_  for more details.

C++ plugin writers and application developers may register types defined in C++ through API provided by the Qt QML module. There are various registration functions which each allow different use-cases to be fulfilled. For more information about those registration functions, and the specifics of exposing custom C++ types to QML, see the documentation regarding `Defining QML Types from C++ </sdk/apps/qml/QtQml/qtqml-cppintegration-definetypes/>`_ .

The QML type-system relies on imports, plugins and extensions being installed into a known import path. Plugins may be provided by third-party developers and reused by client application developers. Please see the documentation about `QML modules </sdk/apps/qml/QtQml/qtqml-modules-topic/>`_  for more information about how to create and deploy a QML extension module.

