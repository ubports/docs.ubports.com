QtQml.qtqml-modules-topic
=========================

.. raw:: html

   <p>

A QML module provides versioned types and JavaScript resources in a type
namespace which may be used by clients who import the module. The types
which a module provides may be defined in C++ within a plugin, or in QML
documents. Modules make use of the QML versioning system which allows
modules to be independently updated.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defining of a QML module allows:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The sharing of common QML types within a project - for example, a group
of UI components that are used by different windows

.. raw:: html

   </li>

.. raw:: html

   <li>

The distribution of QML-based libraries

.. raw:: html

   </li>

.. raw:: html

   <li>

The modularization of distinct features, so that applications only load
the libraries necessary for their individual needs

.. raw:: html

   </li>

.. raw:: html

   <li>

Versioning of types and resources so that the module can be updated
safely without breaking client code

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="defining-a-qml-module">

Defining a QML Module

.. raw:: html

   </h2>

.. raw:: html

   <p>

A module is defined by a module definition qmldir file. Each module has
an associated type namespace, which is the module's identifier. A module
can provide QML object types (defined either by QML documents or via a
C++ plugin) and JavaScript resources, and may be imported by clients.

.. raw:: html

   </p>

.. raw:: html

   <p>

To define a module, a developer should gather together the various QML
documents, JavaScript resources and C++ plugins which belong in the
module into a single directory, and write an appropriate module
definition qmldir file which should also be placed into the directory.
The directory can then be installed into the QML import path as a
module.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that defining a module is not the only way to share common QML
types within a project - a simple QML document directory import may also
be used for this purpose.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="supported-qml-module-types">

Supported QML Module Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are two different types of modules supported by QML:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Identified Modules

.. raw:: html

   </li>

.. raw:: html

   <li>

Legacy Modules (deprecated)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Identified modules explicitly define their identifier and are installed
into QML import path. Identified modules are more maintainable (due to
type versioning) and are provided with type registration guarantees by
the QML engine which are not provided to legacy modules. Legacy modules
are only supported to allow legacy code to continue to work with the
latest version of QML, and should be avoided by clients if possible.

.. raw:: html

   </p>

.. raw:: html

   <p>

Clients may import a QML module from within QML documents or JavaScript
files. Please see the documentation about importing a QML module for
more information on the topic.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="providing-types-and-functionality-in-a-c-plugin">

Providing Types and Functionality in a C++ Plugin

.. raw:: html

   </h2>

.. raw:: html

   <p>

An application which has a lot of logic implemented in C++, or which
defines types in C++ and exposes them to QML, may wish to implement a
QML plugin. A QML extension module developer may wish to implement some
types in a C++ plugin (as opposed to defining them via QML documents) to
achieve better performance or for greater flexibility.

.. raw:: html

   </p>

.. raw:: html

   <p>

Every C++ plugin for QML has an initialiatization function which is
called by the QML engine when it loads the plugin. This initialization
function must register any types that the plugin provides, but must not
do anything else (for example, instantiating QObjects is not allowed).

.. raw:: html

   </p>

.. raw:: html

   <p>

See Creating C++ Plugins For QML for more information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-modules-topic.html -->
