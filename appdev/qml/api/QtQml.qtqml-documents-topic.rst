QtQml.qtqml-documents-topic
===========================

.. raw:: html

   <p>

A QML document is a string which conforms to QML document syntax. A
document defines a QML object type. A document is generally loaded from
a ".qml" file stored either locally or remotely, but can be constructed
manually in code. An instance of the object type defined by a document
may be created using a Component in QML code, or a QQmlComponent in C++.
Alternatively, if the object type is explicitly exposed to the QML type
system with a particular type name, the type may be used directly in
object declarations in other documents.

.. raw:: html

   </p>

.. raw:: html

   <p>

The ability to define re-usable QML object types in documents is an
important enabler to allow clients to write modular, highly readable and
maintainable code.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since Qt 5.4, a document can also have the file extension ".ui.qml". The
QML engine handles these files like standard .qml files and ignores the
.ui part of the extension. Qt Creator handles those files as UI forms
for the Qt Quick Designer. The files can contain only a subset of the
QML language that is defined by Qt Creator.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="structure-of-a-qml-document">

Structure of a QML Document

.. raw:: html

   </h2>

.. raw:: html

   <p>

A QML document consists of two sections: the imports section, and the
object declaration section. The imports section in a document contains
import statements that define which QML object types and JavaScript
resources the document is able to use. The object declaration section
defines the object tree to be created when instantiating the object type
defined by the document.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example of a simple document is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">300</span>
   <span class="name">height</span>: <span class="number">200</span>
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   }</pre>

.. raw:: html

   <p>

See the Structure of a QML Document for more information on the topic.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Syntax of the QML Language

.. raw:: html

   </h3>

.. raw:: html

   <p>

The object declaration section of the document must specify a valid
object hierarchy with appropriate QML syntax. An object declaration may
include the specification of custom object attributes. Object method
attributes may be specified as JavaScript functions, and object property
attributes may be assigned property binding expressions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see the documentation about the syntax of QML for more
information about valid syntax, and see the documentation about
integrating QML and JavaScript for in-depth information on that topic.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="defining-object-types-through-qml-documents">

Defining Object Types through QML Documents

.. raw:: html

   </h2>

.. raw:: html

   <p>

As described briefly in the previous section, a document implicitly
defines a QML object type. One of the core principles of QML is the
ability to define and then re-use object types. This improves the
maintainability of QML code, increases the readability of object
hierarchy declarations, and promotes separation between UI definition
and logic implementation.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example, the client developer defines a Button type
with a document in a file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// Button.qml</span>
   import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Button clicked!&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

The Button type can then be used in an application:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="comment">// application.qml</span>
   import QtQuick 2.0
   <span class="type">Column</span> {
   <span class="type">Button</span> { <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type">Button</span> { <span class="name">x</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
   <span class="type">Button</span> { <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">radius</span>: <span class="number">8</span> }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

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

Please see the documentation about defining object types in documents
for in-depth information on the topic.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="resource-loading-and-network-transparency">

Resource Loading and Network Transparency

.. raw:: html

   </h2>

.. raw:: html

   <p>

It is important to note that QML is network-transparent. Applications
can import documents from remote paths just as simply as documents from
local paths. In fact, any url property may be assigned a remote or local
URL, and the QML engine will handle any network communication involved.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see the Network Transparency documentation for more information
about network transparency in imports.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="scope-and-naming-resolution">

Scope and Naming Resolution

.. raw:: html

   </h2>

.. raw:: html

   <p>

Expressions in documents usually involve objects or properties of
objects, and since multiple objects may be defined and since different
objects may have properties with the same name, some predefined symbol
resolution semantics must be defined by QML. Please see the page on
scope and symbol resolution for in-depth information about the topic.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-documents-topic.html -->
