

There are two distinct types of ``qmldir`` files:

-  QML document directory listing files
-  QML module definition files

This documentation covers only the second form of ``qmldir`` file. For
more information about the first form of ``qmldir`` file, please see the
documentation about `directory listing qmldir
files </sdk/apps/qml/QtQml/qtqml-syntax-directoryimports#directory-listing-qmldir-files>`__.

.. rubric:: Contents of a Module Definition qmldir File
   :name: contents-of-a-module-definition-qmldir-file

A ``qmldir`` file which defines a module is a plain-text file which
consists of the following commands:

+--------------------------+--------------------------+--------------------------+
| Command                  | Syntax                   | Usage                    |
+==========================+==========================+==========================+
| Module Identifier        | .. code:: cpp            | Declares the module      |
| Directive                |                          | identifier of the        |
|                          |     module <ModuleIdenti | module. The              |
|                          | fier>                    | <ModuleIdentifier> is    |
|                          |                          | the (dotted URI          |
|                          |                          | notation) identifier for |
|                          |                          | the module, which must   |
|                          |                          | match the module's       |
|                          |                          | install path.            |
|                          |                          | The `module identifier   |
|                          |                          | directive </sdk/apps/qml |
|                          |                          | /QtQml/qtqml-modules-ide |
|                          |                          | ntifiedmodules#semantics |
|                          |                          | -of-identified-modules>` |
|                          |                          | __                       |
|                          |                          | must be the first line   |
|                          |                          | of the file. Exactly one |
|                          |                          | module identifier        |
|                          |                          | directive may exist in   |
|                          |                          | the ``qmldir`` file.     |
|                          |                          |                          |
|                          |                          | Example:                 |
|                          |                          |                          |
|                          |                          | .. code:: cpp            |
|                          |                          |                          |
|                          |                          |     module ExampleModule |
+--------------------------+--------------------------+--------------------------+
| Object Type Declaration  | .. code:: cpp            | Declares a `QML object   |
|                          |                          | type </sdk/apps/qml/QtQm |
|                          |     <TypeName> <InitialV | l/qtqml-typesystem-objec |
|                          | ersion> <File>           | ttypes/>`__              |
|                          |                          | to be made available by  |
|                          |                          | the module.              |
|                          |                          |                          |
|                          |                          | -  ``<TypeName>`` is the |
|                          |                          |    type being made       |
|                          |                          |    available             |
|                          |                          | -  ``<InitialVersion>``  |
|                          |                          |    is the module version |
|                          |                          |    for which the type is |
|                          |                          |    to be made available  |
|                          |                          | -  ``<File>`` is the     |
|                          |                          |    (relative) file name  |
|                          |                          |    of the QML file that  |
|                          |                          |    defines the type      |
|                          |                          |                          |
|                          |                          | Zero or more object type |
|                          |                          | declarations may exist   |
|                          |                          | in the ``qmldir`` file,  |
|                          |                          | however each object type |
|                          |                          | must have a unique type  |
|                          |                          | name within any          |
|                          |                          | particular version of    |
|                          |                          | the module.              |
|                          |                          |                          |
|                          |                          | Example:                 |
|                          |                          |                          |
|                          |                          | .. code:: cpp            |
|                          |                          |                          |
|                          |                          |     MyCustomType 1.0 MyC |
|                          |                          | ustomType.qml            |
+--------------------------+--------------------------+--------------------------+
| Internal Object Type     | .. code:: cpp            | Declares an object type  |
| Declaration              |                          | that is in the module    |
|                          |     internal <TypeName>  | but should not be made   |
|                          | <File>                   | available to users of    |
|                          |                          | the module.              |
|                          |                          | Zero or more internal    |
|                          |                          | object type declarations |
|                          |                          | may exist in the         |
|                          |                          | ``qmldir`` file.         |
|                          |                          |                          |
|                          |                          | Example:                 |
|                          |                          |                          |
|                          |                          | .. code:: cpp            |
|                          |                          |                          |
|                          |                          |     internal MyPrivateTy |
|                          |                          | pe MyPrivateType.qml     |
|                          |                          |                          |
|                          |                          | This is necessary if the |
|                          |                          | module may be imported   |
|                          |                          | remotely (see `Remotely  |
|                          |                          | Installed Identified     |
|                          |                          | Modules </sdk/apps/qml/Q |
|                          |                          | tQml/qtqml-modules-ident |
|                          |                          | ifiedmodules#remotely-in |
|                          |                          | stalled-identified-modul |
|                          |                          | es>`__)                  |
|                          |                          | because if an exported   |
|                          |                          | type depends on an       |
|                          |                          | non-exported type within |
|                          |                          | the module, the engine   |
|                          |                          | must also load the       |
|                          |                          | non-exported type.       |
+--------------------------+--------------------------+--------------------------+
| JavaScript Resource      | .. code:: cpp            | Declares a JavaScript    |
| Declaration              |                          | file to be made          |
|                          |     <ResourceIdentifier> | available by the module. |
|                          |  <InitialVersion> <File> | The resource will be     |
|                          |                          | made available via the   |
|                          |                          | specified identifier     |
|                          |                          | with the specified       |
|                          |                          | version number.          |
|                          |                          | Zero or more JavaScript  |
|                          |                          | resource declarations    |
|                          |                          | may exist in the         |
|                          |                          | ``qmldir`` file, however |
|                          |                          | each JavaScript resource |
|                          |                          | must have a unique       |
|                          |                          | identifier within any    |
|                          |                          | particular version of    |
|                          |                          | the module.              |
|                          |                          |                          |
|                          |                          | Example:                 |
|                          |                          |                          |
|                          |                          | .. code:: cpp            |
|                          |                          |                          |
|                          |                          |     MyScript 1.0 MyScrip |
|                          |                          | t.js                     |
|                          |                          |                          |
|                          |                          | See the documentation    |
|                          |                          | about `defining          |
|                          |                          | JavaScript               |
|                          |                          | resources </sdk/apps/qml |
|                          |                          | /QtQml/qtqml-javascript- |
|                          |                          | resources/>`__           |
|                          |                          | and `Importing           |
|                          |                          | JavaScript Resources In  |
|                          |                          | QML </sdk/apps/qml/QtQml |
|                          |                          | /qtqml-javascript-import |
|                          |                          | s/>`__                   |
|                          |                          | for more information.    |
+--------------------------+--------------------------+--------------------------+
| C++ Plugin Declaration   | .. code:: cpp            | Declares a plugin to be  |
|                          |                          | made available by the    |
|                          |     plugin <Name> [<Path | module.                  |
|                          | >]                       |                          |
|                          |                          | -  ``<Name>`` is the     |
|                          |                          |    plugin library name.  |
|                          |                          |    This is usually not   |
|                          |                          |    the same as the file  |
|                          |                          |    name of the plugin    |
|                          |                          |    binary, which is      |
|                          |                          |    platform dependent;   |
|                          |                          |    e.g. the library      |
|                          |                          |    ``MyAppTypes`` would  |
|                          |                          |    produce               |
|                          |                          |    ``libMyAppTypes.so``  |
|                          |                          |    on Linux and          |
|                          |                          |    ``MyAppTypes.dll`` on |
|                          |                          |    Windows.              |
|                          |                          | -  ``<Path>`` (optional) |
|                          |                          |    specifies either:     |
|                          |                          |                          |
|                          |                          |    -  an absolute path   |
|                          |                          |       to the directory   |
|                          |                          |       containing the     |
|                          |                          |       plugin file, or    |
|                          |                          |    -  a relative path    |
|                          |                          |       from the directory |
|                          |                          |       containing the     |
|                          |                          |       ``qmldir`` file to |
|                          |                          |       the directory      |
|                          |                          |       containing the     |
|                          |                          |       plugin file.       |
|                          |                          |                          |
|                          |                          |    By default the engine |
|                          |                          |    searches for the      |
|                          |                          |    plugin library in the |
|                          |                          |    directory that        |
|                          |                          |    contains the          |
|                          |                          |    ``qmldir`` file. (The |
|                          |                          |    plugin search path    |
|                          |                          |    can be queried with   |
|                          |                          |    QQmlEngine::pluginPat |
|                          |                          | hList()                  |
|                          |                          |    and modified using    |
|                          |                          |    QQmlEngine::addPlugin |
|                          |                          | Path().)                 |
|                          |                          |                          |
|                          |                          | Zero or more C++ plugin  |
|                          |                          | declarations may exist   |
|                          |                          | in the ``qmldir`` file,  |
|                          |                          | however since plugin     |
|                          |                          | loading is a relatively  |
|                          |                          | expensive operation,     |
|                          |                          | clients are advised to   |
|                          |                          | specify at most a single |
|                          |                          | plugin.                  |
|                          |                          |                          |
|                          |                          | Example:                 |
|                          |                          |                          |
|                          |                          | .. code:: cpp            |
|                          |                          |                          |
|                          |                          |     plugin MyPluginLibra |
|                          |                          | ry                       |
+--------------------------+--------------------------+--------------------------+
| C++ Plugin Class         | .. code:: cpp            | Provides the class name  |
|                          |                          | of the C++ plugin used   |
|                          |     classname <C++ plugi | by the module.           |
|                          | n class>                 | This information is      |
|                          |                          | required for all the QML |
|                          |                          | modules that depend on a |
|                          |                          | C++ plugin for           |
|                          |                          | additional               |
|                          |                          | functionality. Qt Quick  |
|                          |                          | applications built with  |
|                          |                          | static linking cannot    |
|                          |                          | resolve the module       |
|                          |                          | imports without this     |
|                          |                          | information.             |
+--------------------------+--------------------------+--------------------------+
| Type Information         | .. code:: cpp            | Declares a `type         |
| Description File         |                          | description              |
| Declaration              |     typeinfo <File>      | file </sdk/apps/qml/QtQm |
|                          |                          | l/qtqml-modules-qmldir#w |
|                          |                          | riting-a-qmltypes-file>` |
|                          |                          | __                       |
|                          |                          | for the module that can  |
|                          |                          | be read by QML tools     |
|                          |                          | such as Qt Creator to    |
|                          |                          | access information about |
|                          |                          | the types defined by the |
|                          |                          | module's plugins.        |
|                          |                          | ``<File>`` is the        |
|                          |                          | (relative) file name of  |
|                          |                          | a ``.qmltypes`` file.    |
|                          |                          | Example:                 |
|                          |                          |                          |
|                          |                          | .. code:: cpp            |
|                          |                          |                          |
|                          |                          |     typeinfo mymodule.qm |
|                          |                          | ltypes                   |
|                          |                          |                          |
|                          |                          | Without such a file, QML |
|                          |                          | tools may be unable to   |
|                          |                          | offer features such as   |
|                          |                          | code completion for the  |
|                          |                          | types defined in your    |
|                          |                          | plugins.                 |
+--------------------------+--------------------------+--------------------------+
| Dependency Declaration   | .. code:: cpp            | Declares that this       |
|                          |                          | module depends on        |
|                          |     depends <ModuleIdent | another.                 |
|                          | ifier> <InitialVersion>  | Example:                 |
|                          |                          |                          |
|                          |                          | .. code:: cpp            |
|                          |                          |                          |
|                          |                          |     depends MyOtherModul |
|                          |                          | e 1.0                    |
|                          |                          |                          |
|                          |                          | This declaration is      |
|                          |                          | necessary only in cases  |
|                          |                          | when the dependency is   |
|                          |                          | hidden: for example,     |
|                          |                          | when the C++ code for    |
|                          |                          | one module is used to    |
|                          |                          | load QML (perhaps        |
|                          |                          | conditionally) which     |
|                          |                          | then depends on other    |
|                          |                          | modules. In such cases,  |
|                          |                          | the ``depends``          |
|                          |                          | declaration is necessary |
|                          |                          | to include the other     |
|                          |                          | modules in application   |
|                          |                          | packages.                |
+--------------------------+--------------------------+--------------------------+
| Comment                  | .. code:: cpp            | Declares a comment.      |
|                          |                          | These are ignored by the |
|                          |     # <Comment>          | engine.                  |
|                          |                          | Example:                 |
|                          |                          |                          |
|                          |                          | .. code:: cpp            |
|                          |                          |                          |
|                          |                          |     # this is a comment  |
+--------------------------+--------------------------+--------------------------+
| designersupported        | .. code:: cpp            | Set this property if the |
|                          |                          | plugin is supported by   |
|                          |               designersu | Qt Quick Designer. By    |
|                          | pported                  | default, the plugin will |
|                          |                          | not be supported.        |
|                          |                          | A plugin that is         |
|                          |                          | supported by Qt Quick    |
|                          |                          | Designer has to be       |
|                          |                          | properly tested. This    |
|                          |                          | means that the plugin    |
|                          |                          | does not crash when      |
|                          |                          | running inside the       |
|                          |                          | qml2puppet that is used  |
|                          |                          | by Qt Quick Designer to  |
|                          |                          | execute QML. Generally   |
|                          |                          | the plugin should work   |
|                          |                          | well in the Qt Quick     |
|                          |                          | Designer and not cause   |
|                          |                          | any show stoppers, like  |
|                          |                          | taking huge amounts of   |
|                          |                          | memory, slowing down the |
|                          |                          | qml2puppet heavily or    |
|                          |                          | anything else that       |
|                          |                          | renders the plugin       |
|                          |                          | effectively unusable in  |
|                          |                          | the Qt Quick Designer.   |
|                          |                          |                          |
|                          |                          | The items of an          |
|                          |                          | unsupported plugin are   |
|                          |                          | not painted in the Qt    |
|                          |                          | Quick Designer, but they |
|                          |                          | are still available as   |
|                          |                          | empty boxes and the      |
|                          |                          | properties can be        |
|                          |                          | edited.                  |
+--------------------------+--------------------------+--------------------------+

Each command in a ``qmldir`` file must be on a separate line.

.. rubric:: Versioning Semantics
   :name: versioning-semantics

Types which are exported for a particular version are still made
available if a later version is imported. If a module provides a
``MyButton`` type in version 1.0 and a ``MyWindow`` type in version 1.1,
clients which import version 1.1 of the module will be able to use the
``MyButton`` type and the ``MyWindow`` type. However, the reverse is not
true: a type exported for a particular version cannot be used if an
earlier version is imported. If the client had imported version 1.0 of
the module, they can use the ``MyButton`` type but **not** the
``MyWindow`` type.

A version cannot be imported if no types have been explicitly exported
for that version. If a module provides a ``MyButton`` type in version
1.0 and a ``MyWindow`` type in version 1.1, you cannot import version
1.2 or version 2.0 of that module.

A type can be defined by different files in different versions. In this
case, the most closely matching version will be used when imported by
clients. For example, if a module had specified the following types via
its ``qmldir`` file:

.. code:: cpp

    module ExampleModule
    MyButton 1.0 MyButton.qml
    MyButton 1.1 MyButton11.qml
    MyButton 1.3 MyButton13.qml
    MyButton 2.0 MyButton20.qml
    MyRectangle 1.2 MyRectangle12.qml

a client who imports version 1.2 of ExampleModule will get the
``MyButton`` type definition provided by ``MyButton11.qml`` as it is the
most closely matching (i.e., latest while not being greater than the
import) version of the type, and the ``MyRectangle`` type definition
provided by ``MyRectangle12.qml``.

The versioning system ensures that a given QML file will work regardless
of the version of installed software, since a versioned import *only*
imports types for that version, leaving other identifiers available,
even if the actual installed version might otherwise provide those
identifiers.

.. rubric:: Example of a qmldir File
   :name: example-of-a-qmldir-file

One example of a ``qmldir`` file follows:

.. code:: cpp

    module ExampleModule
    CustomButton 1.0 CustomButton.qml
    CustomButton 2.0 CustomButton20.qml
    CustomButton 2.1 CustomButton21.qml
    plugin examplemodule
    MathFunctions 2.0 mathfuncs.js

The above ``qmldir`` file defines a module called "ExampleModule". It
defines the ``CustomButton`` QML object type in versions 1.1, 2.0 and
2.1 of the module, with different implementations in each version. It
specifies a plugin which must be loaded by the engine when the module is
imported by clients, and that plugin may register various C++-defined
types with the QML type system. On Unix-like systems the QML engine will
attempt to load ``libexamplemodule.so`` as a QQmlExtensionPlugin, and on
Windows it will attempt to load ``examplemodule.dll`` as a
QQmlExtensionPlugin. Finally, the ``qmldir`` file specifies a JavaScript
resource which is only available if version 2.0 or greater of the module
is imported, accessible via the ``MathFunctions`` identifier.

If the module is
`installed </sdk/apps/qml/QtQml/qtqml-modules-identifiedmodules/>`__
into the QML import path, clients could import and use the module in the
following manner:

.. code:: qml

    import QtQuick 2.0
    import ExampleModule 2.1
    Rectangle {
        width: 400
        height: 400
        color: "lightsteelblue"
        CustomButton {
            color: "gray"
            text: "Click Me!"
            onClicked: MathFunctions.generateRandom() > 10 ? color = "red" : color = "gray";
        }
    }

The ``CustomButton`` type used above would come from the definition
specified in the ``CustomButton21.qml`` file, and the JavaScript
resource identified by the ``MathFunctions`` identifier would be defined
in the ``mathfuncs.js`` file.

.. rubric:: Writing a qmltypes File
   :name: writing-a-qmltypes-file

QML modules may refer to one or more type information files in their
``qmldir`` file. These usually have the ``.qmltypes`` extension and are
read by external tools to gain information about types defined in
plugins.

As such qmltypes files have no effect on the functionality of a QML
module. Their only use is to allow tools such as Qt Creator to provide
code completion, error checking and other functionality to users of your
module.

Any module that uses plugins should also ship a type description file.

The best way to create a qmltypes file for your module is to generate it
using the ``qmlplugindump`` tool that is provided with Qt.

Example: If your module is in ``/tmp/imports/My/Module``, you could run

.. code:: cpp

    qmlplugindump My.Module 1.0 /tmp/imports > /tmp/imports/My/Module/mymodule.qmltypes

to generate type information for your module. Afterwards, add the line

.. code:: cpp

    typeinfo mymodule.qmltypes

to ``/tmp/imports/My/Module/qmldir`` to register it.

While the qmldump tool covers most cases, it does not work if:

-  The plugin uses a ``QQmlCustomParser``. The component that uses the
   custom parser will not get its members documented.
-  The plugin can not be loaded. In particular if you cross-compiled the
   plugin for a different architecture, qmldump will not be able to load
   it.

In case you have to create a qmltypes file manually or need to adjust an
existing one, this is the file format:

.. code:: qml

    import QtQuick.tooling 1.1
    // There always is a single Module object that contains all
    // Component objects.
    Module {
        // A Component object directly corresponds to a type exported
        // in a plugin with a call to qmlRegisterType.
        Component {
            // The name is a unique identifier used to refer to this type.
            // It is recommended you simply use the C++ type name.
            name: "QQuickAbstractAnimation"
            // The name of the prototype Component.
            prototype: "QObject"
            // The name of the default property.
            defaultProperty: "animations"
            // The name of the type containing attached properties
            // and methods.
            attachedType: "QQuickAnimationAttached"
            // The list of exports determines how a type can be imported.
            // Each string has the format "URI/Name version" and matches the
            // arguments to qmlRegisterType. Usually types are only exported
            // once, if at all.
            // If the "URI/" part of the string is missing that means the
            // type should be put into the package defined by the URI the
            // module was imported with.
            // For example if this module was imported with 'import Foo 4.8'
            // the Animation object would be found in the package Foo and
            // QtQuick.
            exports: [
                "Animation 4.7",
                "QtQuick/Animation 1.0"
            ]
            // The meta object revisions for the exports specified in 'exports'.
            // Describes with revisioned properties will be visible in an export.
            // The list must have exactly the same length as the 'exports' list.
            // For example the 'animations' propery described below will only be
            // available through the QtQuick/Animation 1.0 export.
            exportMetaObjectRevisions: [0, 1]
            Property {
                name: "animations";
                type: "QQuickAbstractAnimation"
                // defaults to false, whether this property is read only
                isReadonly: true
                // defaults to false, whether the type of this property was a pointer in C++
                isPointer: true
                // defaults to false: whether the type actually is a QQmlListProperty<type>
                isList: true
                // defaults to 0: the meta object revision that introduced this property
                revision: 1
            }
            Property { name: "loops"; type: "int" }
            Property { name: "name"; type: "string" }
            Property { name: "loopsEnum"; type: "Loops" }
            Enum {
                name: "Loops"
                values: {
                    "Infinite": -2,
                    "OnceOnly": 1
                }
            }
            // Signal and Method work the same way. The inner Parameter
            // declarations also support the isReadonly, isPointer and isList
            // attributes which mean the same as for Property
            Method { name: "restart" }
            Signal { name: "started"; revision: 2 }
            Signal {
                name: "runningChanged"
                Parameter { type: "bool" }
                Parameter { name: "foo"; type: "bool" }
            }
        }
    }

