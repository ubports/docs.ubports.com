QtQml.qtqml-modules-cppplugins
==============================

.. raw:: html

   <h2 id="creating-a-plugin">

Creating a Plugin

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QML engine load C++ plugins for QML. Such plugins are usually
provided in a QML extension module, and can provide types for use by
clients in QML documents which import the module. A module requires at
least one type registered in order to be considered valid.

.. raw:: html

   </p>

.. raw:: html

   <p>

QQmlExtensionPlugin is a plugin interface that makes it possible to
create QML extensions that can be loaded dynamically into QML
applications. These extensions allow custom QML types to be made
available to the QML engine.

.. raw:: html

   </p>

.. raw:: html

   <p>

To write a QML extension plugin:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

Subclass QQmlExtensionPlugin

.. raw:: html

   <ul>

.. raw:: html

   <li>

Use the Q\_PLUGIN\_METADATA() macro to register the plugin with the Qt
meta object system

.. raw:: html

   </li>

.. raw:: html

   <li>

Override the registerTypes() method and call qmlRegisterType() to
register the types to be exported by the plugin

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li>

Write a project file for the plugin

.. raw:: html

   </li>

.. raw:: html

   <li>

Create a qmldir file to describe the plugin

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

QML extension plugins are for either application-specific or
library-like plugins. Library plugins should limit themselves to
registering types, as any manipulation of the engine's root context may
cause conflicts or other issues in the library user's code.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="plugin-example">

Plugin Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

Suppose there is a new TimeModel C++ class that should be made available
as a new QML type. It provides the current time through hour and minute
properties.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> TimeModel : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">int</span> hour READ hour NOTIFY timeChanged)
   Q_PROPERTY(<span class="type">int</span> minute READ minute NOTIFY timeChanged)
   ...</pre>

.. raw:: html

   <p>

To make this type available, we create a plugin class named
QExampleQmlPlugin which is a subclass of QQmlExtensionPlugin. It
overrides the registerTypes() method in order to register the TimeModel
type using qmlRegisterType(). It also uses the Q\_PLUGIN\_METADATA()
macro in the class definition to register the plugin with the Qt meta
object system using a unique identifier for the plugin.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> <span class="type">QExampleQmlPlugin</span> : <span class="keyword">public</span> <span class="type">QQmlExtensionPlugin</span>
   {
   Q_OBJECT
   Q_PLUGIN_METADATA(IID <span class="string">&quot;org.qt-project.Qt.QQmlExtensionInterface&quot;</span>)
   <span class="keyword">public</span>:
   <span class="type">void</span> registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri)
   {
   Q_ASSERT(uri <span class="operator">=</span><span class="operator">=</span> QLatin1String(<span class="string">&quot;TimeExample&quot;</span>));
   qmlRegisterType<span class="operator">&lt;</span>TimeModel<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;Time&quot;</span>);
   }
   };</pre>

.. raw:: html

   <p>

The TimeModel class receives a 1.0 version of this plugin library, as a
QML type called Time. The Q\_ASSERT() macro can ensure the type
namespace is imported correctly by any QML components that use this
plugin. The Defining QML Types from C++ article has more information
about registering C++ types into the runtime.

.. raw:: html

   </p>

.. raw:: html

   <p>

For this example, the TimeExample source directory is in
imports/TimeExample. The plugin's type namespace will mirror this
structure, so the types are registered into the namespace "TimeExample".

.. raw:: html

   </p>

.. raw:: html

   <p>

Additionally, the project file, in a .pro file, defines the project as a
plugin library, specifies it should be built into the
imports/TimeExample directory, and registers the plugin target name and
various other details:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">TEMPLATE <span class="operator">=</span> lib
   CONFIG <span class="operator">+</span><span class="operator">=</span> qt plugin
   QT <span class="operator">+</span><span class="operator">=</span> qml
   DESTDIR <span class="operator">=</span> imports<span class="operator">/</span>TimeExample
   TARGET <span class="operator">=</span> qmlqtimeexampleplugin
   SOURCES <span class="operator">+</span><span class="operator">=</span> qexampleqmlplugin<span class="operator">.</span>cpp</pre>

.. raw:: html

   <p>

Finally, a qmldir file is required in the imports/TimeExample directory
to describe the plugin and the types that it exports. The plugin
includes a Clock.qml file along with the qmlqtimeexampleplugin that is
built by the project (as shown above in the .pro file) so both of these
need to be specified in the qmldir file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">module TimeExample
   Clock <span class="number">1.0</span> Clock<span class="operator">.</span>qml
   plugin qmlqtimeexampleplugin</pre>

.. raw:: html

   <p>

Once the project is built and installed, the new Time component is
accessible by any QML component that imports the TimeExample module

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import TimeExample 1.0 <span class="comment">// import types from the plugin</span>
   <span class="type">Clock</span> { <span class="comment">// this class is defined in QML (imports/TimeExample/Clock.qml)</span>
   <span class="type">Time</span> { <span class="comment">// this class is defined in C++ (plugin.cpp)</span>
   <span class="name">id</span>: <span class="name">time</span>
   }
   <span class="name">hours</span>: <span class="name">time</span>.<span class="name">hour</span>
   <span class="name">minutes</span>: <span class="name">time</span>.<span class="name">minute</span>
   }</pre>

.. raw:: html

   <p>

The full source code is available in the plugins example.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="reference">

Reference

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Writing QML Extensions with C++ - contains a chapter on creating QML
plugins.

.. raw:: html

   </li>

.. raw:: html

   <li>

Defining QML Types from C++ - information about registering C++ types
into the runtime.

.. raw:: html

   </li>

.. raw:: html

   <li>

How to Create Qt Plugins - information about Qt plugins

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@qtqml-modules-cppplugins.html -->
