QtQml.qtqml-modules-qmldir
==========================

.. raw:: html

   <p>

There are two distinct types of qmldir files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QML document directory listing files

.. raw:: html

   </li>

.. raw:: html

   <li>

QML module definition files

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This documentation covers only the second form of qmldir file. For more
information about the first form of qmldir file, please see the
documentation about directory listing qmldir files.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="contents-of-a-module-definition-qmldir-file">

Contents of a Module Definition qmldir File

.. raw:: html

   </h2>

.. raw:: html

   <p>

A qmldir file which defines a module is a plain-text file which consists
of the following commands:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Command

.. raw:: html

   </th>

.. raw:: html

   <th>

Syntax

.. raw:: html

   </th>

.. raw:: html

   <th>

Usage

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Module Identifier Directive

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">module <span class="operator">&lt;</span>ModuleIdentifier<span class="operator">&gt;</span></pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Declares the module identifier of the module. The <ModuleIdentifier> is
the (dotted URI notation) identifier for the module, which must match
the module's install path.

.. raw:: html

   <p>

The module identifier directive must be the first line of the file.
Exactly one module identifier directive may exist in the qmldir file.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">module ExampleModule</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Object Type Declaration

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp"><span class="operator">&lt;</span>TypeName<span class="operator">&gt;</span> <span class="operator">&lt;</span>InitialVersion<span class="operator">&gt;</span> <span class="operator">&lt;</span>File<span class="operator">&gt;</span></pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Declares a QML object type to be made available by the module.

.. raw:: html

   <ul>

.. raw:: html

   <li>

<TypeName> is the type being made available

.. raw:: html

   </li>

.. raw:: html

   <li>

<InitialVersion> is the module version for which the type is to be made
available

.. raw:: html

   </li>

.. raw:: html

   <li>

<File> is the (relative) file name of the QML file that defines the type

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Zero or more object type declarations may exist in the qmldir file,
however each object type must have a unique type name within any
particular version of the module.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">MyCustomType <span class="number">1.0</span> MyCustomType<span class="operator">.</span>qml</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Internal Object Type Declaration

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">internal <span class="operator">&lt;</span>TypeName<span class="operator">&gt;</span> <span class="operator">&lt;</span>File<span class="operator">&gt;</span></pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Declares an object type that is in the module but should not be made
available to users of the module.

.. raw:: html

   <p>

Zero or more internal object type declarations may exist in the qmldir
file.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">internal MyPrivateType MyPrivateType<span class="operator">.</span>qml</pre>

.. raw:: html

   <p>

This is necessary if the module may be imported remotely (see Remotely
Installed Identified Modules) because if an exported type depends on an
non-exported type within the module, the engine must also load the
non-exported type.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

JavaScript Resource Declaration

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp"><span class="operator">&lt;</span>ResourceIdentifier<span class="operator">&gt;</span> <span class="operator">&lt;</span>InitialVersion<span class="operator">&gt;</span> <span class="operator">&lt;</span>File<span class="operator">&gt;</span></pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Declares a JavaScript file to be made available by the module. The
resource will be made available via the specified identifier with the
specified version number.

.. raw:: html

   <p>

Zero or more JavaScript resource declarations may exist in the qmldir
file, however each JavaScript resource must have a unique identifier
within any particular version of the module.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">MyScript <span class="number">1.0</span> MyScript<span class="operator">.</span>js</pre>

.. raw:: html

   <p>

See the documentation about defining JavaScript resources and Importing
JavaScript Resources In QML for more information.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

C++ Plugin Declaration

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">plugin <span class="operator">&lt;</span>Name<span class="operator">&gt;</span> <span class="operator">[</span><span class="operator">&lt;</span>Path<span class="operator">&gt;</span><span class="operator">]</span></pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Declares a plugin to be made available by the module.

.. raw:: html

   <ul>

.. raw:: html

   <li>

<Name> is the plugin library name. This is usually not the same as the
file name of the plugin binary, which is platform dependent; e.g. the
library MyAppTypes would produce libMyAppTypes.so on Linux and
MyAppTypes.dll on Windows.

.. raw:: html

   </li>

.. raw:: html

   <li>

<Path> (optional) specifies either:

.. raw:: html

   <ul>

.. raw:: html

   <li>

an absolute path to the directory containing the plugin file, or

.. raw:: html

   </li>

.. raw:: html

   <li>

a relative path from the directory containing the qmldir file to the
directory containing the plugin file.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

By default the engine searches for the plugin library in the directory
that contains the qmldir file. (The plugin search path can be queried
with QQmlEngine::pluginPathList() and modified using
QQmlEngine::addPluginPath().)

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Zero or more C++ plugin declarations may exist in the qmldir file,
however since plugin loading is a relatively expensive operation,
clients are advised to specify at most a single plugin.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">plugin MyPluginLibrary</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

C++ Plugin Class

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">classname <span class="operator">&lt;</span>C<span class="operator">+</span><span class="operator">+</span> plugin <span class="keyword">class</span><span class="operator">&gt;</span></pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Provides the class name of the C++ plugin used by the module.

.. raw:: html

   <p>

This information is required for all the QML modules that depend on a
C++ plugin for additional functionality. Qt Quick applications built
with static linking cannot resolve the module imports without this
information.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Type Information Description File Declaration

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">typeinfo <span class="operator">&lt;</span>File<span class="operator">&gt;</span></pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Declares a type description file for the module that can be read by QML
tools such as Qt Creator to access information about the types defined
by the module's plugins. <File> is the (relative) file name of a
.qmltypes file.

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">typeinfo mymodule<span class="operator">.</span>qmltypes</pre>

.. raw:: html

   <p>

Without such a file, QML tools may be unable to offer features such as
code completion for the types defined in your plugins.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Dependency Declaration

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">depends <span class="operator">&lt;</span>ModuleIdentifier<span class="operator">&gt;</span> <span class="operator">&lt;</span>InitialVersion<span class="operator">&gt;</span></pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Declares that this module depends on another.

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">depends MyOtherModule <span class="number">1.0</span></pre>

.. raw:: html

   <p>

This declaration is necessary only in cases when the dependency is
hidden: for example, when the C++ code for one module is used to load
QML (perhaps conditionally) which then depends on other modules. In such
cases, the depends declaration is necessary to include the other modules
in application packages.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Comment

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp"><span class="preprocessor"># &lt;Comment&gt;</span></pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Declares a comment. These are ignored by the engine.

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="preprocessor"># this is a comment</span></pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

designersupported

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">          designersupported</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

Set this property if the plugin is supported by Qt Quick Designer. By
default, the plugin will not be supported.

.. raw:: html

   <p>

A plugin that is supported by Qt Quick Designer has to be properly
tested. This means that the plugin does not crash when running inside
the qml2puppet that is used by Qt Quick Designer to execute QML.
Generally the plugin should work well in the Qt Quick Designer and not
cause any show stoppers, like taking huge amounts of memory, slowing
down the qml2puppet heavily or anything else that renders the plugin
effectively unusable in the Qt Quick Designer.

.. raw:: html

   </p>

.. raw:: html

   <p>

The items of an unsupported plugin are not painted in the Qt Quick
Designer, but they are still available as empty boxes and the properties
can be edited.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Each command in a qmldir file must be on a separate line.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="versioning-semantics">

Versioning Semantics

.. raw:: html

   </h2>

.. raw:: html

   <p>

Types which are exported for a particular version are still made
available if a later version is imported. If a module provides a
MyButton type in version 1.0 and a MyWindow type in version 1.1, clients
which import version 1.1 of the module will be able to use the MyButton
type and the MyWindow type. However, the reverse is not true: a type
exported for a particular version cannot be used if an earlier version
is imported. If the client had imported version 1.0 of the module, they
can use the MyButton type but not the MyWindow type.

.. raw:: html

   </p>

.. raw:: html

   <p>

A version cannot be imported if no types have been explicitly exported
for that version. If a module provides a MyButton type in version 1.0
and a MyWindow type in version 1.1, you cannot import version 1.2 or
version 2.0 of that module.

.. raw:: html

   </p>

.. raw:: html

   <p>

A type can be defined by different files in different versions. In this
case, the most closely matching version will be used when imported by
clients. For example, if a module had specified the following types via
its qmldir file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">module ExampleModule
   MyButton <span class="number">1.0</span> MyButton<span class="operator">.</span>qml
   MyButton <span class="number">1.1</span> MyButton11<span class="operator">.</span>qml
   MyButton <span class="number">1.3</span> MyButton13<span class="operator">.</span>qml
   MyButton <span class="number">2.0</span> MyButton20<span class="operator">.</span>qml
   MyRectangle <span class="number">1.2</span> MyRectangle12<span class="operator">.</span>qml</pre>

.. raw:: html

   <p>

a client who imports version 1.2 of ExampleModule will get the MyButton
type definition provided by MyButton11.qml as it is the most closely
matching (i.e., latest while not being greater than the import) version
of the type, and the MyRectangle type definition provided by
MyRectangle12.qml.

.. raw:: html

   </p>

.. raw:: html

   <p>

The versioning system ensures that a given QML file will work regardless
of the version of installed software, since a versioned import only
imports types for that version, leaving other identifiers available,
even if the actual installed version might otherwise provide those
identifiers.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-of-a-qmldir-file">

Example of a qmldir File

.. raw:: html

   </h2>

.. raw:: html

   <p>

One example of a qmldir file follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">module ExampleModule
   CustomButton <span class="number">1.0</span> CustomButton<span class="operator">.</span>qml
   CustomButton <span class="number">2.0</span> CustomButton20<span class="operator">.</span>qml
   CustomButton <span class="number">2.1</span> CustomButton21<span class="operator">.</span>qml
   plugin examplemodule
   MathFunctions <span class="number">2.0</span> mathfuncs<span class="operator">.</span>js</pre>

.. raw:: html

   <p>

The above qmldir file defines a module called "ExampleModule". It
defines the CustomButton QML object type in versions 1.1, 2.0 and 2.1 of
the module, with different implementations in each version. It specifies
a plugin which must be loaded by the engine when the module is imported
by clients, and that plugin may register various C++-defined types with
the QML type system. On Unix-like systems the QML engine will attempt to
load libexamplemodule.so as a QQmlExtensionPlugin, and on Windows it
will attempt to load examplemodule.dll as a QQmlExtensionPlugin.
Finally, the qmldir file specifies a JavaScript resource which is only
available if version 2.0 or greater of the module is imported,
accessible via the MathFunctions identifier.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the module is installed into the QML import path, clients could
import and use the module in the following manner:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import ExampleModule 2.1
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">400</span>
   <span class="name">height</span>: <span class="number">400</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type">CustomButton</span> {
   <span class="name">color</span>: <span class="string">&quot;gray&quot;</span>
   <span class="name">text</span>: <span class="string">&quot;Click Me!&quot;</span>
   <span class="name">onClicked</span>: <span class="name">MathFunctions</span>.<span class="name">generateRandom</span>() <span class="operator">&gt;</span> <span class="number">10</span> ? <span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;red&quot;</span> : <span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;gray&quot;</span>;
   }
   }</pre>

.. raw:: html

   <p>

The CustomButton type used above would come from the definition
specified in the CustomButton21.qml file, and the JavaScript resource
identified by the MathFunctions identifier would be defined in the
mathfuncs.js file.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="writing-a-qmltypes-file">

Writing a qmltypes File

.. raw:: html

   </h2>

.. raw:: html

   <p>

QML modules may refer to one or more type information files in their
qmldir file. These usually have the .qmltypes extension and are read by
external tools to gain information about types defined in plugins.

.. raw:: html

   </p>

.. raw:: html

   <p>

As such qmltypes files have no effect on the functionality of a QML
module. Their only use is to allow tools such as Qt Creator to provide
code completion, error checking and other functionality to users of your
module.

.. raw:: html

   </p>

.. raw:: html

   <p>

Any module that uses plugins should also ship a type description file.

.. raw:: html

   </p>

.. raw:: html

   <p>

The best way to create a qmltypes file for your module is to generate it
using the qmlplugindump tool that is provided with Qt.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example: If your module is in /tmp/imports/My/Module, you could run

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlplugindump My<span class="operator">.</span>Module <span class="number">1.0</span> <span class="operator">/</span>tmp<span class="operator">/</span>imports <span class="operator">&gt;</span> <span class="operator">/</span>tmp<span class="operator">/</span>imports<span class="operator">/</span>My<span class="operator">/</span>Module<span class="operator">/</span>mymodule<span class="operator">.</span>qmltypes</pre>

.. raw:: html

   <p>

to generate type information for your module. Afterwards, add the line

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">typeinfo mymodule<span class="operator">.</span>qmltypes</pre>

.. raw:: html

   <p>

to /tmp/imports/My/Module/qmldir to register it.

.. raw:: html

   </p>

.. raw:: html

   <p>

While the qmldump tool covers most cases, it does not work if:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The plugin uses a QQmlCustomParser. The component that uses the custom
parser will not get its members documented.

.. raw:: html

   </li>

.. raw:: html

   <li>

The plugin can not be loaded. In particular if you cross-compiled the
plugin for a different architecture, qmldump will not be able to load
it.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

In case you have to create a qmltypes file manually or need to adjust an
existing one, this is the file format:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick.tooling 1.1
   <span class="comment">// There always is a single Module object that contains all</span>
   <span class="comment">// Component objects.</span>
   <span class="type">Module</span> {
   <span class="comment">// A Component object directly corresponds to a type exported</span>
   <span class="comment">// in a plugin with a call to qmlRegisterType.</span>
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="comment">// The name is a unique identifier used to refer to this type.</span>
   <span class="comment">// It is recommended you simply use the C++ type name.</span>
   <span class="name">name</span>: <span class="string">&quot;QQuickAbstractAnimation&quot;</span>
   <span class="comment">// The name of the prototype Component.</span>
   <span class="name">prototype</span>: <span class="string">&quot;QObject&quot;</span>
   <span class="comment">// The name of the default property.</span>
   <span class="name">defaultProperty</span>: <span class="string">&quot;animations&quot;</span>
   <span class="comment">// The name of the type containing attached properties</span>
   <span class="comment">// and methods.</span>
   <span class="name">attachedType</span>: <span class="string">&quot;QQuickAnimationAttached&quot;</span>
   <span class="comment">// The list of exports determines how a type can be imported.</span>
   <span class="comment">// Each string has the format &quot;URI/Name version&quot; and matches the</span>
   <span class="comment">// arguments to qmlRegisterType. Usually types are only exported</span>
   <span class="comment">// once, if at all.</span>
   <span class="comment">// If the &quot;URI/&quot; part of the string is missing that means the</span>
   <span class="comment">// type should be put into the package defined by the URI the</span>
   <span class="comment">// module was imported with.</span>
   <span class="comment">// For example if this module was imported with 'import Foo 4.8'</span>
   <span class="comment">// the Animation object would be found in the package Foo and</span>
   <span class="comment">// QtQuick.</span>
   <span class="name">exports</span>: [
   <span class="string">&quot;Animation 4.7&quot;</span>,
   <span class="string">&quot;QtQuick/Animation 1.0&quot;</span>
   ]
   <span class="comment">// The meta object revisions for the exports specified in 'exports'.</span>
   <span class="comment">// Describes with revisioned properties will be visible in an export.</span>
   <span class="comment">// The list must have exactly the same length as the 'exports' list.</span>
   <span class="comment">// For example the 'animations' propery described below will only be</span>
   <span class="comment">// available through the QtQuick/Animation 1.0 export.</span>
   <span class="name">exportMetaObjectRevisions</span>: [<span class="number">0</span>, <span class="number">1</span>]
   <span class="type">Property</span> {
   <span class="name">name</span>: <span class="string">&quot;animations&quot;</span>;
   <span class="name">type</span>: <span class="string">&quot;QQuickAbstractAnimation&quot;</span>
   <span class="comment">// defaults to false, whether this property is read only</span>
   <span class="name">isReadonly</span>: <span class="number">true</span>
   <span class="comment">// defaults to false, whether the type of this property was a pointer in C++</span>
   <span class="name">isPointer</span>: <span class="number">true</span>
   <span class="comment">// defaults to false: whether the type actually is a QQmlListProperty&lt;type&gt;</span>
   <span class="name">isList</span>: <span class="number">true</span>
   <span class="comment">// defaults to 0: the meta object revision that introduced this property</span>
   <span class="name">revision</span>: <span class="number">1</span>
   }
   <span class="type">Property</span> { <span class="name">name</span>: <span class="string">&quot;loops&quot;</span>; <span class="name">type</span>: <span class="string">&quot;int&quot;</span> }
   <span class="type">Property</span> { <span class="name">name</span>: <span class="string">&quot;name&quot;</span>; <span class="name">type</span>: <span class="string">&quot;string&quot;</span> }
   <span class="type">Property</span> { <span class="name">name</span>: <span class="string">&quot;loopsEnum&quot;</span>; <span class="name">type</span>: <span class="string">&quot;Loops&quot;</span> }
   <span class="type">Enum</span> {
   <span class="name">name</span>: <span class="string">&quot;Loops&quot;</span>
   <span class="name">values</span>: {
   &quot;Infinite&quot;: -<span class="number">2</span>,
   &quot;OnceOnly&quot;: <span class="number">1</span>
   }
   }
   <span class="comment">// Signal and Method work the same way. The inner Parameter</span>
   <span class="comment">// declarations also support the isReadonly, isPointer and isList</span>
   <span class="comment">// attributes which mean the same as for Property</span>
   <span class="type">Method</span> { <span class="name">name</span>: <span class="string">&quot;restart&quot;</span> }
   <span class="type">Signal</span> { <span class="name">name</span>: <span class="string">&quot;started&quot;</span>; <span class="name">revision</span>: <span class="number">2</span> }
   <span class="type">Signal</span> {
   <span class="name">name</span>: <span class="string">&quot;runningChanged&quot;</span>
   <span class="type">Parameter</span> { <span class="name">type</span>: <span class="string">&quot;bool&quot;</span> }
   <span class="type">Parameter</span> { <span class="name">name</span>: <span class="string">&quot;foo&quot;</span>; <span class="name">type</span>: <span class="string">&quot;bool&quot;</span> }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@qtqml-modules-qmldir.html -->
