QtQml.qtqml-typesystem-objecttypes
==================================

.. raw:: html

   <p>

A QML object type is a type from which a QML object can be instantiated.

.. raw:: html

   </p>

.. raw:: html

   <p>

In syntactic terms, a QML object type is one which can be used to
declare an object by specifying the type name followed by a set of curly
braces that encompasses the attributes of that object. This differs from
basic types, which cannot be used in the same way. For example,
Rectangle is a QML object type: it can be used to create Rectangle type
objects. This cannot be done with primitive types such as int and bool,
which are used to hold simple data types rather than objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

Custom QML object types can be defined by creating a .qml file that
defines the type, as discussed in Documents as QML object type
definitions, or by defining a QML type from C++ and registering the type
with the QML engine, as discussed in Defining QML Types from C++.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="defining-object-types-from-qml">

Defining Object Types from QML

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Defining Object Types through QML Documents

.. raw:: html

   </h3>

.. raw:: html

   <p>

Plugin writers and application developers may provide types defined as
QML documents. A QML document, when visible to the QML import system,
defines a type identified by the name of the file minus the file
extensions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Thus, if a QML document named "MyButton.qml" exists, it provides the
definition of the "MyButton" type, which may be used in a QML
application.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the documentation about QML Documents for information on how to
define a QML document, and the syntax of the QML language. Once you are
familiar with the QML language and how to define QML documents, see the
documentation which explains how to define and use your own reusable QML
types in QML documents.

.. raw:: html

   </p>

.. raw:: html

   <p>

See Defining Object Types through QML Documents for more information.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Defining Anonymous Types with Component

.. raw:: html

   </h3>

.. raw:: html

   <p>

Another method of creating object types from within QML is to use the
Component type. This allows a type to be defined inline within a QML
document, instead of using a separate document in a .qml file.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="name">width</span>: <span class="number">500</span>; <span class="name">height</span>: <span class="number">500</span>
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">myComponent</span>
   <span class="type">Rectangle</span> { <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
   }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">myComponent</span>.<span class="name">createObject</span>(<span class="name">root</span>)
   <span class="name">myComponent</span>.<span class="name">createObject</span>(<span class="name">root</span>, {&quot;x&quot;: <span class="number">200</span>})
   }
   }</pre>

.. raw:: html

   <p>

Here the myComponent object essentially defines an anonymous type that
can be instantiated using Component::createObject to create objects of
this anonymous type.

.. raw:: html

   </p>

.. raw:: html

   <p>

Inline components share all the characteristics of regular top-level
components and use the same import list as their containing QML
document.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that each Component object declaration creates its own component
scope. Any id values used and referred to from within a Component object
declaration must be unique within that scope, but do not need to be
unique within the document within which the inline component is
declared. So, the Rectangle declared in the myComponent object
declaration could have an id of root without conflicting with the root
declared for the Item object in the same document, as these two id
values are declared within different component scopes.

.. raw:: html

   </p>

.. raw:: html

   <p>

See Scope and Naming Resolution for more details.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="defining-object-types-from-c">

Defining Object Types from C++

.. raw:: html

   </h2>

.. raw:: html

   <p>

C++ plugin writers and application developers may register types defined
in C++ through API provided by the Qt QML module. There are various
registration functions which each allow different use-cases to be
fulfilled. For more information about those registration functions, and
the specifics of exposing custom C++ types to QML, see the documentation
regarding Defining QML Types from C++.

.. raw:: html

   </p>

.. raw:: html

   <p>

The QML type-system relies on imports, plugins and extensions being
installed into a known import path. Plugins may be provided by
third-party developers and reused by client application developers.
Please see the documentation about QML modules for more information
about how to create and deploy a QML extension module.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-typesystem-objecttypes.html -->
