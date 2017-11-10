.. _sdk_qtqml_import_statements:

QtQml Import Statements
=======================



An import statement allows clients to tell the engine which modules, JavaScript resources and component directories are used within a QML document. The types which may be used within a document depends on which modules, resources and directories are imported by the document.

There are three different types of imports. Each import type has a slightly different syntax, and different semantics apply to different import types.

The most common type of import is a module import. Clients can import `QML modules </sdk/apps/qml/QtQml/qtqml-modules-identifiedmodules/>`_  which register QML object types and JavaScript resources into a given namespace.

The generic form of a module import is as follows:

.. code:: cpp

    import <ModuleIdentifier> <Version.Number> [as <Qualifier>]

-  The ``<ModuleIdentifier>`` is an identifier specified in dotted URI notation, which uniquely identifies the type namespace provided by the module.
-  The ``<Version.Number>`` is a version of the form ``MajorVersion.MinorVersion`` which specifies which definitions of various object types and JavaScript resources will be made available due to the import.
-  The ``<Qualifier>`` is an optional local namespace identifier into which the object types and JavaScript resources provided by the module will be installed, if given. If omitted, the object types and JavaScript resources provided by the module will be installed into the global namespace.

An example of an unqualified module import is as follows:

.. code:: cpp

    import QtQuick 2.0

This import allows the use of all of the types provided by the ``QtQuick`` module without needing to specify a qualifier. For example, the client code to create a rectangle is as follows:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 200
        height: 100
        color: "red"
    }

An example of a qualified module import is as follows:

.. code:: cpp

    import QtQuick 2.0 as Quick

This import allows multiple modules which provide conflicting type names to be imported at the same time, however since each usage of a type provided by a module which was imported into a qualified namespace must be preceded by the qualifier, the conflict is able to be resolved unambiguously by the QML engine.

An example of client code which creates a rectangle after using a qualified module import is as follows:

.. code:: qml

    import QtQuick 2.0 as Quick
    Quick.Rectangle {
        width: 200
        height: 100
        color: "red"
    }

For more information about qualified imports, see the upcoming section on `Importing Into A Qualified Local Namespace </sdk/apps/qml/QtQml/qtqml-syntax-imports/#importing-into-a-qualified-local-namespace>`_ .

Note that if a QML document does not import a module which provides a particular QML object type, but attempts to use that object type anyway, an error will occur. For example, the following QML document does not import ``QtQuick`` and thus attempting to use the ``Rectangle`` type will fail:

.. code:: qml

    Rectangle {
        width: 200
        height: 100
        color: "red"
    }

In this case, the engine will emit an error and refuse to load the file.

Types can also be registered into namespaces directly via the various registration functions in C++ (such as qmlRegisterType()). The types which have been registered into a namespace in this way may be imported by importing the namespace, as if the namespace was a module identifier.

This is most common in client applications which define their own QML object types in C++ and register them with the QML type system manually.

The ``import`` statement may optionally use the ``as`` keyword to specify that the types should be imported into a particular document-local namespace. If a namespace is specified, then any references to the types made available by the import must be prefixed by the local namespace qualifier.

Below, the ``QtQuick`` module is imported into the namespace "CoreItems". Now, any references to types from the ``QtQuick`` module must be prefixed with the ``CoreItems`` name:

.. code:: qml

    import QtQuick 2.0 as CoreItems
    CoreItems.Rectangle {
        width: 100; height: 100
        CoreItems.Text { text: "Hello, world!" }
        // WRONG! No namespace prefix - the Text type won't be found
        Text { text: "Hello, world!" }
    }

A namespace acts as an identifier for a module within the scope of the file. The namespace does not become an attribute of the root object that can be referred to externally as can be done with properties, signals and methods.

The namespaced import is useful if there is a requirement to use two QML types that have the same name but are located in different modules. In this case the two modules can be imported into different namespaces to ensure the code is referring to the correct type:

.. code:: qml

    import QtQuick 2.0 as CoreItems
    import "../textwidgets" as MyModule
    CoreItems.Rectangle {
        width: 100; height: 100
        MyModule.Text { text: "Hello from my custom text item!" }
        CoreItems.Text { text: "Hello from Qt Quick!" }
    }

Note that multiple modules can be imported into the same namespace in the same way that multiple modules can be imported into the global namespace. For example:

.. code:: qml

    import QtQuick 2.0 as Project
    import QtMultimedia 5.0 as Project
    Project.Rectangle {
        width: 100; height: 50
        Project.Audio {
            source: "music.wav"
            autoPlay: true
        }
    }

A directory which contains QML documents may also be imported directly in a QML document. This provides a simple way for QML types to be segmented into reusable groupings: directories on the filesystem.

The generic form of a directory import is as follows:

.. code:: qml

    import "<DirectoryPath>" [as <Qualifier>]

**Note:** Import paths are network transparent: applications can import documents from remote paths just as simply as documents from local paths. See the general URL resolution rules for `Network Transparency </sdk/apps/qml/QtQml/qtqml-documents-networktransparency/>`_  in QML documents. If the directory is remote, it must contain a `directory import listing qmldir file </sdk/apps/qml/QtQml/qtqml-syntax-directoryimports/#directory-listing-qmldir-files>`_  as the QML engine cannot determine the contents of a remote directory if that ``qmldir`` file does not exist.

Similar semantics for the ``<Qualifier>`` apply to directory imports as for module imports; for more information on the topic, please see the previous section about `Importing into a Qualified Local Namespace </sdk/apps/qml/QtQml/qtqml-syntax-imports/#importing-into-a-qualified-local-namespace>`_ .

For more information about directory imports, please see the in-depth documentation about `directory imports </sdk/apps/qml/QtQml/qtqml-syntax-directoryimports/>`_ .

JavaScript resources may be imported directly in a QML document. Every JavaScript resource must have an identifier by which it is accessed.

The generic form of a JavaScript resource import is as follows:

.. code:: cpp

    import "<JavaScriptFile>" as <Identifier>

Note that the ``<Identifier>`` must be unique within a QML document, unlike the local namespace qualifier which can be applied to module imports.

Javascript files can be provided by modules, by adding identifier definitions to the ``qmldir`` file which specifies the module.

For example, if the ``projects.MyQMLProject.MyFunctions`` module is specified with the following ``qmldir`` file, and installed into the QML import path:

.. code:: cpp

    module projects.MyQMLProject.MyFunctions
    SystemFunctions 1.0 SystemFunctions.js
    UserFunctions 1.0 UserFunctions.js

a client application is able to import the JavaScript resources declared in the module by importing the module and using the identifier associated with a declared resource:

.. code:: qml

    import QtQuick 2.0
    import projects.MyQMLProject.MyFunctions 1.0
    Item {
        Component.onCompleted: { SystemFunctions.cleanUp(); }
    }

If the module was imported into a document-local namespace, the JavaScript resource identifiers must be prefixed with the namespace qualifier in order to be used:

.. code:: qml

    import QtQuick 2.0
    import projects.MyQMLProject.MyFunctions 1.0 as MyFuncs
    import org.example.Functions 1.0 as TheirFuncs
    Item {
        Component.onCompleted: {
            MyFuncs.SystemFunctions.cleanUp();
            TheirFuncs.SystemFunctions.shutdown();
        }
    }

For more information about JavaScript resources, please see the documentation about `defining JavaScript resources in QML </sdk/apps/qml/QtQml/qtqml-javascript-resources/>`_ , and for more information about how to import JavaScript resources, and how imports can be used from within JavaScript resources, please see the in-depth documentation about `importing JavaScript resources in QML </sdk/apps/qml/QtQml/qtqml-javascript-imports/>`_ .

When an `identified module </sdk/apps/qml/QtQml/qtqml-modules-identifiedmodules/>`_  is imported, the QML engine searches the *import path* for a matching module.

This import path, as returned by QQmlEngine::importPathList(), defines the default locations to be searched by the engine. By default, this list contains:

-  The directory of the current file
-  The location specified by QLibraryInfo::Qml2ImportsPath
-  Paths specified by the ``QML2_IMPORT_PATH`` environment variable

Additional import paths can be added through QQmlEngine::addImportPath() or the ``QML2_IMPORT_PATH`` environment variable. When running the qmlscene tool, you can also use the ``-I`` option to add an import path.

The ``QML_IMPORT_TRACE`` environment variable can be useful for debugging when there are problems with finding and loading modules. See Debugging module imports for more information.

