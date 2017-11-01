

A QML module provides versioned types and JavaScript resources in a type
namespace which may be used by clients who import the module. The types
which a module provides may be defined in C++ within a plugin, or in QML
documents. Modules make use of the QML versioning system which allows
modules to be independently updated.

Defining of a QML module allows:

-  The sharing of common QML types within a project - for example, a
   group of UI components that are used by different windows
-  The distribution of QML-based libraries
-  The modularization of distinct features, so that applications only
   load the libraries necessary for their individual needs
-  Versioning of types and resources so that the module can be updated
   safely without breaking client code

.. rubric:: Defining a QML Module
   :name: defining-a-qml-module

A module is defined by a `module definition qmldir
file </sdk/apps/qml/QtQml/qtqml-modules-qmldir/>`__. Each module has an
associated type namespace, which is the module's identifier. A module
can provide QML object types (defined either by QML documents or via a
C++ plugin) and JavaScript resources, and may be imported by clients.

To define a module, a developer should gather together the various QML
documents, JavaScript resources and C++ plugins which belong in the
module into a single directory, and write an appropriate `module
definition qmldir file </sdk/apps/qml/QtQml/qtqml-modules-qmldir/>`__
which should also be placed into the directory. The directory can then
be installed into the `QML import
path </sdk/apps/qml/QtQml/qtqml-syntax-imports#qml-import-path>`__ as a
module.

Note that defining a module is not the only way to share common QML
types within a project - a simple `QML document directory
import </sdk/apps/qml/QtQml/qtqml-syntax-directoryimports/>`__ may also
be used for this purpose.

.. rubric:: Supported QML Module Types
   :name: supported-qml-module-types

There are two different types of modules supported by QML:

-  `Identified
   Modules </sdk/apps/qml/QtQml/qtqml-modules-identifiedmodules/>`__
-  `Legacy Modules </sdk/apps/qml/QtQml/qtqml-modules-legacymodules/>`__
   (deprecated)

Identified modules explicitly define their identifier and are installed
into QML import path. Identified modules are more maintainable (due to
type versioning) and are provided with type registration guarantees by
the QML engine which are not provided to legacy modules. Legacy modules
are only supported to allow legacy code to continue to work with the
latest version of QML, and should be avoided by clients if possible.

Clients may import a QML module from within QML documents or JavaScript
files. Please see the documentation about `importing a QML
module </sdk/apps/qml/QtQml/qtqml-syntax-imports#module-namespace-imports>`__
for more information on the topic.

.. rubric:: Providing Types and Functionality in a C++ Plugin
   :name: providing-types-and-functionality-in-a-c-plugin

An application which has a lot of logic implemented in C++, or which
defines types in C++ and exposes them to QML, may wish to implement a
QML plugin. A QML extension module developer may wish to implement some
types in a C++ plugin (as opposed to defining them via QML documents) to
achieve better performance or for greater flexibility.

Every C++ plugin for QML has an initialiatization function which is
called by the QML engine when it loads the plugin. This initialization
function must register any types that the plugin provides, but must not
do anything else (for example, instantiating QObjects is not allowed).

See `Creating C++ Plugins For
QML </sdk/apps/qml/QtQml/qtqml-modules-cppplugins/>`__ for more
information.

