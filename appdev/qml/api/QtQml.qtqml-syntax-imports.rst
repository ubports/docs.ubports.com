QtQml.qtqml-syntax-imports
==========================

.. raw:: html

   <h2 id="syntax-of-an-import-statement">

Syntax of an Import Statement

.. raw:: html

   </h2>

.. raw:: html

   <p>

An import statement allows clients to tell the engine which modules,
JavaScript resources and component directories are used within a QML
document. The types which may be used within a document depends on which
modules, resources and directories are imported by the document.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Import Types

.. raw:: html

   </h3>

.. raw:: html

   <p>

There are three different types of imports. Each import type has a
slightly different syntax, and different semantics apply to different
import types.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Module (Namespace) Imports

.. raw:: html

   </h4>

.. raw:: html

   <p>

The most common type of import is a module import. Clients can import
QML modules which register QML object types and JavaScript resources
into a given namespace.

.. raw:: html

   </p>

.. raw:: html

   <p>

The generic form of a module import is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="operator">&lt;</span>ModuleIdentifier<span class="operator">&gt;</span> <span class="operator">&lt;</span>Version<span class="operator">.</span>Number<span class="operator">&gt;</span> <span class="operator">[</span>as <span class="operator">&lt;</span>Qualifier<span class="operator">&gt;</span><span class="operator">]</span></pre>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The <ModuleIdentifier> is an identifier specified in dotted URI
notation, which uniquely identifies the type namespace provided by the
module.

.. raw:: html

   </li>

.. raw:: html

   <li>

The <Version.Number> is a version of the form MajorVersion.MinorVersion
which specifies which definitions of various object types and JavaScript
resources will be made available due to the import.

.. raw:: html

   </li>

.. raw:: html

   <li>

The <Qualifier> is an optional local namespace identifier into which the
object types and JavaScript resources provided by the module will be
installed, if given. If omitted, the object types and JavaScript
resources provided by the module will be installed into the global
namespace.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

An example of an unqualified module import is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span></pre>

.. raw:: html

   <p>

This import allows the use of all of the types provided by the QtQuick
module without needing to specify a qualifier. For example, the client
code to create a rectangle is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">200</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }</pre>

.. raw:: html

   <p>

An example of a qualified module import is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span> as Quick</pre>

.. raw:: html

   <p>

This import allows multiple modules which provide conflicting type names
to be imported at the same time, however since each usage of a type
provided by a module which was imported into a qualified namespace must
be preceded by the qualifier, the conflict is able to be resolved
unambiguously by the QML engine.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example of client code which creates a rectangle after using a
qualified module import is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0 as Quick
   <span class="type">Quick</span>.Rectangle {
   <span class="name">width</span>: <span class="number">200</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }</pre>

.. raw:: html

   <p>

For more information about qualified imports, see the upcoming section
on Importing Into A Qualified Local Namespace.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that if a QML document does not import a module which provides a
particular QML object type, but attempts to use that object type anyway,
an error will occur. For example, the following QML document does not
import QtQuick and thus attempting to use the Rectangle type will fail:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">200</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }</pre>

.. raw:: html

   <p>

In this case, the engine will emit an error and refuse to load the file.

.. raw:: html

   </p>

.. raw:: html

   <h5>

Non-module Namespace Imports

.. raw:: html

   </h5>

.. raw:: html

   <p>

Types can also be registered into namespaces directly via the various
registration functions in C++ (such as qmlRegisterType()). The types
which have been registered into a namespace in this way may be imported
by importing the namespace, as if the namespace was a module identifier.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is most common in client applications which define their own QML
object types in C++ and register them with the QML type system manually.

.. raw:: html

   </p>

.. raw:: html

   <h5>

Importing into a Qualified Local Namespace

.. raw:: html

   </h5>

.. raw:: html

   <p>

The import statement may optionally use the as keyword to specify that
the types should be imported into a particular document-local namespace.
If a namespace is specified, then any references to the types made
available by the import must be prefixed by the local namespace
qualifier.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below, the QtQuick module is imported into the namespace "CoreItems".
Now, any references to types from the QtQuick module must be prefixed
with the CoreItems name:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0 as CoreItems
   <span class="type">CoreItems</span>.Rectangle {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">CoreItems</span>.Text { <span class="name">text</span>: <span class="string">&quot;Hello, world!&quot;</span> }
   <span class="comment">// WRONG! No namespace prefix - the Text type won't be found</span>
   <span class="type">Text</span> { <span class="name">text</span>: <span class="string">&quot;Hello, world!&quot;</span> }
   }</pre>

.. raw:: html

   <p>

A namespace acts as an identifier for a module within the scope of the
file. The namespace does not become an attribute of the root object that
can be referred to externally as can be done with properties, signals
and methods.

.. raw:: html

   </p>

.. raw:: html

   <p>

The namespaced import is useful if there is a requirement to use two QML
types that have the same name but are located in different modules. In
this case the two modules can be imported into different namespaces to
ensure the code is referring to the correct type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0 as CoreItems
   import &quot;../textwidgets&quot; as MyModule
   <span class="type">CoreItems</span>.Rectangle {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MyModule</span>.Text { <span class="name">text</span>: <span class="string">&quot;Hello from my custom text item!&quot;</span> }
   <span class="type">CoreItems</span>.Text { <span class="name">text</span>: <span class="string">&quot;Hello from Qt Quick!&quot;</span> }
   }</pre>

.. raw:: html

   <p>

Note that multiple modules can be imported into the same namespace in
the same way that multiple modules can be imported into the global
namespace. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0 as Project
   import QtMultimedia 5.0 as Project
   <span class="type">Project</span>.Rectangle {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type">Project</span>.Audio {
   <span class="name">source</span>: <span class="string">&quot;music.wav&quot;</span>
   <span class="name">autoPlay</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <h4>

Directory Imports

.. raw:: html

   </h4>

.. raw:: html

   <p>

A directory which contains QML documents may also be imported directly
in a QML document. This provides a simple way for QML types to be
segmented into reusable groupings: directories on the filesystem.

.. raw:: html

   </p>

.. raw:: html

   <p>

The generic form of a directory import is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;&lt;DirectoryPath&gt;&quot; [as &lt;Qualifier&gt;]</pre>

.. raw:: html

   <p>

Note: Import paths are network transparent: applications can import
documents from remote paths just as simply as documents from local
paths. See the general URL resolution rules for Network Transparency in
QML documents. If the directory is remote, it must contain a directory
import listing qmldir file as the QML engine cannot determine the
contents of a remote directory if that qmldir file does not exist.

.. raw:: html

   </p>

.. raw:: html

   <p>

Similar semantics for the <Qualifier> apply to directory imports as for
module imports; for more information on the topic, please see the
previous section about Importing into a Qualified Local Namespace.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information about directory imports, please see the in-depth
documentation about directory imports.

.. raw:: html

   </p>

.. raw:: html

   <h4>

JavaScript Resource Imports

.. raw:: html

   </h4>

.. raw:: html

   <p>

JavaScript resources may be imported directly in a QML document. Every
JavaScript resource must have an identifier by which it is accessed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The generic form of a JavaScript resource import is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="string">&quot;&lt;JavaScriptFile&gt;&quot;</span> as <span class="operator">&lt;</span>Identifier<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

Note that the <Identifier> must be unique within a QML document, unlike
the local namespace qualifier which can be applied to module imports.

.. raw:: html

   </p>

.. raw:: html

   <h5>

JavaScript Resources from Modules

.. raw:: html

   </h5>

.. raw:: html

   <p>

Javascript files can be provided by modules, by adding identifier
definitions to the qmldir file which specifies the module.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if the projects.MyQMLProject.MyFunctions module is
specified with the following qmldir file, and installed into the QML
import path:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">module projects<span class="operator">.</span>MyQMLProject<span class="operator">.</span>MyFunctions
   SystemFunctions <span class="number">1.0</span> SystemFunctions<span class="operator">.</span>js
   UserFunctions <span class="number">1.0</span> UserFunctions<span class="operator">.</span>js</pre>

.. raw:: html

   <p>

a client application is able to import the JavaScript resources declared
in the module by importing the module and using the identifier
associated with a declared resource:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import projects.MyQMLProject.MyFunctions 1.0
   <span class="type">Item</span> {
   <span class="name">Component</span>.onCompleted: { <span class="name">SystemFunctions</span>.<span class="name">cleanUp</span>(); }
   }</pre>

.. raw:: html

   <p>

If the module was imported into a document-local namespace, the
JavaScript resource identifiers must be prefixed with the namespace
qualifier in order to be used:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import projects.MyQMLProject.MyFunctions 1.0 as MyFuncs
   import org.example.Functions 1.0 as TheirFuncs
   <span class="type">Item</span> {
   <span class="name">Component</span>.onCompleted: {
   <span class="name">MyFuncs</span>.<span class="name">SystemFunctions</span>.<span class="name">cleanUp</span>();
   <span class="name">TheirFuncs</span>.<span class="name">SystemFunctions</span>.<span class="name">shutdown</span>();
   }
   }</pre>

.. raw:: html

   <h5>

Further Information

.. raw:: html

   </h5>

.. raw:: html

   <p>

For more information about JavaScript resources, please see the
documentation about defining JavaScript resources in QML, and for more
information about how to import JavaScript resources, and how imports
can be used from within JavaScript resources, please see the in-depth
documentation about importing JavaScript resources in QML.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qml-import-path">

QML Import Path

.. raw:: html

   </h2>

.. raw:: html

   <p>

When an identified module is imported, the QML engine searches the
import path for a matching module.

.. raw:: html

   </p>

.. raw:: html

   <p>

This import path, as returned by QQmlEngine::importPathList(), defines
the default locations to be searched by the engine. By default, this
list contains:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The directory of the current file

.. raw:: html

   </li>

.. raw:: html

   <li>

The location specified by QLibraryInfo::Qml2ImportsPath

.. raw:: html

   </li>

.. raw:: html

   <li>

Paths specified by the QML2\_IMPORT\_PATH environment variable

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Additional import paths can be added through QQmlEngine::addImportPath()
or the QML2\_IMPORT\_PATH environment variable. When running the
qmlscene tool, you can also use the -I option to add an import path.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="debugging">

Debugging

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QML\_IMPORT\_TRACE environment variable can be useful for debugging
when there are problems with finding and loading modules. See Debugging
module imports for more information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-syntax-imports.html -->
