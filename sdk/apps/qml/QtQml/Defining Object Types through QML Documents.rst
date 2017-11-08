.. _sdk_qtqml_defining_object_types_through_qml_documents:

QtQml Defining Object Types through QML Documents
=================================================


One of the core features of QML is that it enables QML object types to be easily defined in a lightweight manner through QML documents to suit the needs of individual QML applications. The standard Qt Quick module provides various types like Rectangle, Text and Image for building a QML application; beyond these, you can easily define your own QML types to be reused within your application. This ability to create your own types forms the building blocks of any QML application.

To create an object type, a QML document should be placed into a text file named as *<TypeName>.qml* where *<TypeName>* is the desired name of the type, which must be comprised of alphanumeric characters or underscores and beginning with an uppercase letter. This document is then automatically recognized by the engine as a definition of a QML type. Additionally, a type defined in this manner is automatically made available to other QML files within the same directory as the engine searches within the immediate directory when resolving QML type names.

For example, below is a document that declares a Rectangle with a child MouseArea. The document has been saved to file named ``SquareButton.qml``:

.. code:: qml

    // SquareButton.qml
    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        color: "red"
        MouseArea {
            anchors.fill: parent
            onClicked: console.log("Button clicked!")
        }
    }

Since the file is named ``SquareButton.qml``, **this can now be used as a type named ``SquareButton`` by any other QML file within the same directory**. For example, if there was a ``myapplication.qml`` file in the same directory, it could refer to the ``SquareButton`` type:

.. code:: qml

    // myapplication.qml
    import QtQuick 2.0
    SquareButton {}

This creates a 100 x 100 red Rectangle with an inner MouseArea, as defined in ``SquareButton.qml``. When this ``myapplication.qml`` document is loaded by the engine, it loads the SquareButton.qml document as a component and instantiates it to create a ``SquareButton`` object.

The ``SquareButton`` type encapsulates the tree of QML objects declared in ``SquareButton.qml``. When the QML engine instantiates a ``SquareButton`` object from this type, it is instantiating an object from the Rectangle tree declared in ``SquareButton.qml``.

**Note:** the letter case of the file name is significant on some (notably UNIX) filesystems. It is recommended the file name case matches the case of the desired QML type name exactly - for example, ``Box.qml`` and not ``BoX.qml`` - regardless of the platform to which the QML type will be deployed.

If ``SquareButton.qml`` was not in the same directory as ``myapplication.qml``, the ``SquareButton`` type would need to be specifically made available through an *import* statement in ``myapplication.qml``. It could be imported from a relative path on the file system, or as an installed module; see `module </sdk/apps/qml/QtQml/qtqml-modules-topic/>`_  for more details.

The **root object** definition in a .qml file **defines the attributes that are available for a QML type**. All properties, signals and methods that belong to this root object - whether they are custom declared, or come from the QML type of the root object - are externally accessible and can be read and modified for objects of this type.

For example, the root object type in the ``SquareButton.qml`` file above is Rectangle. This means any properties defined by the Rectangle type can be modified for a ``SquareButton`` object. The code below defines three ``SquareButton`` objects with customized values for some of the properties of the root Rectangle object of the ``SquareButton`` type:

.. code:: qml

    // application.qml
    import QtQuick 2.0
    Column {
        SquareButton { width: 50; height: 50 }
        SquareButton { x: 50; color: "blue" }
        SquareButton { radius: 10 }
    }

The attributes that are accessible to objects of the custom QML type include any `custom properties </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#defining-property-attributes>`_ , `methods </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#defining-method-attributes>`_  and `signals </sdk/apps/qml/QtQml/qtqml-syntax-objectattributes/#defining-signal-attributes>`_  that have additionally been defined for an object. For example, suppose the Rectangle in ``SquareButton.qml`` had been defined as follows, with additional properties, methods and signals:

.. code:: qml

    // SquareButton.qml
    import QtQuick 2.0
    Rectangle {
        id: root
        property bool pressed: mouseArea.pressed
        signal buttonClicked(real xPos, real yPos)
        function randomizeColor() {
            root.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
        }
        width: 100; height: 100
        color: "red"
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: root.buttonClicked(mouse.x, mouse.y)
        }
    }

Any ``SquareButton`` object could make use of the ``pressed`` property, ``buttonClicked`` signal and ``randomizeColor()`` method that have been added to the root Rectangle:

.. code:: qml

    // application.qml
    import QtQuick 2.0
    SquareButton {
        id: squareButton
        onButtonClicked: {
            console.log("Clicked", xPos, yPos)
            randomizeColor()
        }
        Text { text: squareButton.pressed ? "Down" : "Up" }
    }

Note that any of the ``id`` values defined in ``SquareButton.qml`` are not accessible to ``SquareButton`` objects, as id values are only accessible from within the component scope in which a component is declared. The ``SquareButton`` object definition above cannot refer to ``mouseArea`` in order to refer to the MouseArea child, and if it had an ``id`` of ``root`` rather than ``squareButton``, this would not conflict with the ``id`` of the same value for the root object defined in ``SquareButton.qml`` as the two would be declared within separate scopes.

