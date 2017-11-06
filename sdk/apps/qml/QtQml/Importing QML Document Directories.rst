.. _sdk_qtqml_importing_qml_document_directories:

QtQml Importing QML Document Directories
========================================


A local directory of QML files can be imported without any additional setup or configuration. A remote directory of QML files can also be imported, but requires a directory listing ``qmldir`` file to exist. A local directory may optionally contain a directory listing ``qmldir`` file in order to define the type names which should be provided to clients which import the directory, and to specify JavaScript resources which should be made available to importers.

Any QML file on the local file system can import a local directory as using an import statement that refers to the directory's absolute or relative file system path, enabling the file to use the `object types </sdk/apps/qml/QtQml/qtqml-typesystem-objecttypes/>`_  defined within that directory.

If the local directory contains a directory listing ``qmldir`` file, the types will be made available with the type names specified in the ``qmldir`` file; otherwise, they will be made available with type names derived from the filenames of the QML documents. Only filenames beginning with an uppercase letter and ending with ".qml" will be exposed as types if no ``qmldir`` file is specified in the directory.

Consider the following QML project directory structure. Under the top level directory ``myapp``, there are a set of common UI components in a sub-directory named ``mycomponents``, and the main application code in a sub-directory named ``main``, like this:

.. code:: cpp

    myapp
        |- mycomponents
            |- CheckBox.qml
            |- DialogBox.qml
            |- Slider.qml
        |- main
            |- application.qml

The ``main/application.qml`` file can import the ``mycomponents`` directory using the relative path to that directory, allowing it to use the QML object types defined within that directory:

.. code:: qml

    import "../mycomponents"
    DialogBox {
        CheckBox {
            // ...
        }
        Slider {
            // ...
        }
    }

The directory may be imported into a qualified local namespace, in which case uses of any types provided in the directory must be qualified:

.. code:: qml

    import "../mycomponents" as MyComponents
    MyComponents.DialogBox {
        // ...
    }

The ability to import a local directory is convenient for cases such as in-application component sets and application prototyping, although any code that imports such modules must update their relevant ``import`` statements if the module directory moves to another location. This can be avoided if `QML modules </sdk/apps/qml/QtQml/qtqml-modules-identifiedmodules/>`_  are used instead, as an installed module is imported with a unique identifier string rather than a file system path.

A directory of QML files can also be imported from a remote location if the directory contains a directory listing ``qmldir`` file.

For example, if the ``myapp`` directory in the previous example was hosted at "http://www.my-example-server.com", and the ``mycomponents`` directory contained a ``qmldir`` file defined as follows:

.. code:: cpp

    CheckBox CheckBox.qml
    DialogBox DialogBox.qml
    Slider Slider.qml

Then, the directory could be imported using the URL to the remote ``mycomponents`` directory:

.. code:: qml

    import "http://www.my-example-server.com/myapp/mycomponents"
    DialogBox {
        CheckBox {
            // ...
        }
        Slider {
            // ...
        }
    }

Note that when a file imports a directory over a network, it can only access QML and JavaScript files specified in the ``qmldir`` file located in the directory.

**Warning:** When importing directories from a remote server, developers should always be careful to only load directories from trusted sources to avoid loading malicious code.

A directory listing ``qmldir`` file distinctly different from a `module definition qmldir file </sdk/apps/qml/QtQml/qtqml-modules-qmldir/>`_ . A directory listing ``qmldir`` file allows a group of QML documents to be quickly and easily shared, but it does not define a type namespace into which the QML object types defined by the documents are registered, nor does it support versioning of those QML object types.

The syntax of a directory listing ``qmldir`` file is as follows:

+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Command                                                                                              | Syntax                                                                                               | Description                                                                                          |
+======================================================================================================+======================================================================================================+======================================================================================================+
| Object Type Declaration                                                                              | <TypeName> <FileName>                                                                                | An object type declaration allows a QML document to be exposed with the given ``<TypeName>``.        |
|                                                                                                      |                                                                                                      | Example:                                                                                             |
|                                                                                                      |                                                                                                      |                                                                                                      |
|                                                                                                      |                                                                                                      | .. code:: cpp                                                                                        |
|                                                                                                      |                                                                                                      |                                                                                                      |
|                                                                                                      |                                                                                                      |     RoundedButton RoundedBtn.qml                                                                     |
+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Internal Object Type Declaration                                                                     | internal <TypeName> <FileName>                                                                       | An internal object type declaration allows a QML document to be registered as a type which becomes   |
|                                                                                                      |                                                                                                      | available only to the other QML documents contained in the directory import. The internal type will  |
|                                                                                                      |                                                                                                      | not be made available to clients who import the directory.                                           |
|                                                                                                      |                                                                                                      | Example:                                                                                             |
|                                                                                                      |                                                                                                      |                                                                                                      |
|                                                                                                      |                                                                                                      | .. code:: cpp                                                                                        |
|                                                                                                      |                                                                                                      |                                                                                                      |
|                                                                                                      |                                                                                                      |     internal HighlightedButton HighlightedBtn.qml                                                    |
+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| JavaScript Resource Declaration                                                                      | <Identifier> <FileName>                                                                              | A JavaScript resource declaration allows a JavaScript file to be exposed via the given identifier.   |
|                                                                                                      |                                                                                                      | Example:                                                                                             |
|                                                                                                      |                                                                                                      |                                                                                                      |
|                                                                                                      |                                                                                                      | .. code:: cpp                                                                                        |
|                                                                                                      |                                                                                                      |                                                                                                      |
|                                                                                                      |                                                                                                      |     MathFunctions mathfuncs.js                                                                       |
+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+

A local file system directory may optionally include a ``qmldir`` file. This allows the engine to only expose certain QML types to clients who import the directory. Additionally, JavaScript resources in the directory are not exposed to clients unless they are declared in a ``qmldir`` file.

