.. _sdk_qtqml_structure_of_a_qml_document:

QtQml Structure of a QML Document
=================================


A QML document is a self contained piece of QML source code that consists of two parts:

-  Its *import* statements
-  A single root object declaration

By convention, a single empty line separates the imports from the object hierarchy definition.

QML documents are always encoded in UTF-8 format.

A document must import the necessary modules or type namespaces to enable the engine to load the QML object types referenced within the document. By default, a document can access any QML object types that have been defined through ``.qml`` files in the same directory; if a document needs to refer to any other object types, it must import the type namespace into which those types have been registered.

QML does *not* have a preprocessor that modifies the document prior to presentation to the QML engine, unlike C or C++. The ``import`` statements do not copy and prepend the code in the document, but instead instruct the QML engine on how to resolve type references found in the document. Any type reference present in a QML document - such as ``Rectangle`` and ``ListView`` - including those made within a JavaScript block or property bindings, are *resolved* based exclusively on the import statements. At least one ``import`` statement must be present such as ``import QtQuick 2.0``.

Please see the `QML Syntax - Import Statements </sdk/apps/qml/QtQml/qtqml-syntax-imports/>`_  documentation for in-depth information about QML imports.

A QML document describes a hierarchy of objects which can be instantiated. Each object definition has a certain structure; it has a type, it can have an id and an object name, it can have properties, it can have methods, it can have signals and it can have signal handlers.

A QML file must only contain **a single root object definition**. The following is invalid and will generate an error:

.. code:: cpp

    // MyQmlFile.qml
    import QtQuick 2.0
    Rectangle { width: 200; height: 200; color: "red" }
    Rectangle { width: 200; height: 200; color: "blue" }    // invalid!

This is because a .qml file automatically defines a QML type, which encapsulates a *single* QML object definition. This is discussed further in `Documents as QML object type definitions </sdk/apps/qml/QtQml/qtqml-documents-definetypes/>`_ .

