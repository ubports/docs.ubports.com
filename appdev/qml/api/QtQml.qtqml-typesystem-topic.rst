QtQml.qtqml-typesystem-topic
============================

.. raw:: html

   <p>

The types which may be used in the definition of an object hierarchy in
a QML document can come from various sources. They may be:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

provided natively by the QML language

.. raw:: html

   </li>

.. raw:: html

   <li>

registered via C++ by QML modules

.. raw:: html

   </li>

.. raw:: html

   <li>

provided as QML documents by QML modules

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Furthermore, application developers can provide their own types, either
by registering C++ types directly, or by defining reusable components in
QML documents which can then be imported.

.. raw:: html

   </p>

.. raw:: html

   <p>

Wherever the type definitions come from, the engine will enforce
type-safety for properties and instances of those types.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="basic-types">

Basic Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QML language has built-in support for various primitive types
including integers, double-precision floating point numbers, strings,
and boolean values. Objects may have properties of these types, and
values of these types may be passed as arguments to methods of objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the QML Basic Types documentation for more information about basic
types.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="javascript-types">

JavaScript Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

JavaScript objects and arrays are supported by the QML engine. Any
standard JavaScript type can be created and stored using the generic var
type.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the standard Date and Array types are available, as below:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   property <span class="type">var</span> <span class="name">theArray</span>: new <span class="name">Array</span>()
   property <span class="type">var</span> <span class="name">theDate</span>: new <span class="name">Date</span>()
   <span class="name">Component</span>.onCompleted: {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">10</span>; i++)
   <span class="name">theArray</span>.<span class="name">push</span>(<span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">i</span>)
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;There are&quot;</span>, <span class="name">theArray</span>.<span class="name">length</span>, <span class="string">&quot;items in the array&quot;</span>)
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The time is&quot;</span>, <span class="name">theDate</span>.<span class="name">toUTCString</span>())
   }
   }</pre>

.. raw:: html

   <p>

See JavaScript Expressions in QML Documents for more details.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qml-object-types">

QML Object Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

A QML object type is a type from which a QML object can be instantiated.
QML object types are derived from QtObject, and are provided by QML
modules. Applications can import these modules to use the object types
they provide. The QtQuick module provides the most common object types
needed to create user interfaces in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

Finally, every QML document implicitly defines a QML object type, which
can be re-used in other QML documents. See the documentation about
object types in the QML type system for in-depth information about
object types.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-typesystem-topic.html -->
