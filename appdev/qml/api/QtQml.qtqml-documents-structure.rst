QtQml.qtqml-documents-structure
===============================

.. raw:: html

   <p>

A QML document is a self contained piece of QML source code that
consists of two parts:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Its import statements

.. raw:: html

   </li>

.. raw:: html

   <li>

A single root object declaration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

By convention, a single empty line separates the imports from the object
hierarchy definition.

.. raw:: html

   </p>

.. raw:: html

   <p>

QML documents are always encoded in UTF-8 format.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="imports">

Imports

.. raw:: html

   </h2>

.. raw:: html

   <p>

A document must import the necessary modules or type namespaces to
enable the engine to load the QML object types referenced within the
document. By default, a document can access any QML object types that
have been defined through .qml files in the same directory; if a
document needs to refer to any other object types, it must import the
type namespace into which those types have been registered.

.. raw:: html

   </p>

.. raw:: html

   <p>

QML does not have a preprocessor that modifies the document prior to
presentation to the QML engine, unlike C or C++. The import statements
do not copy and prepend the code in the document, but instead instruct
the QML engine on how to resolve type references found in the document.
Any type reference present in a QML document - such as Rectangle and
ListView - including those made within a JavaScript block or property
bindings, are resolved based exclusively on the import statements. At
least one import statement must be present such as import QtQuick 2.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see the QML Syntax - Import Statements documentation for in-depth
information about QML imports.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="the-root-object-declaration">

The Root Object Declaration

.. raw:: html

   </h2>

.. raw:: html

   <p>

A QML document describes a hierarchy of objects which can be
instantiated. Each object definition has a certain structure; it has a
type, it can have an id and an object name, it can have properties, it
can have methods, it can have signals and it can have signal handlers.

.. raw:: html

   </p>

.. raw:: html

   <p>

A QML file must only contain a single root object definition. The
following is invalid and will generate an error:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// MyQmlFile.qml</span>
   import <span class="type">QtQuick</span> <span class="number">2.0</span>
   Rectangle { width: <span class="number">200</span>; height: <span class="number">200</span>; color: <span class="string">&quot;red&quot;</span> }
   Rectangle { width: <span class="number">200</span>; height: <span class="number">200</span>; color: <span class="string">&quot;blue&quot;</span> }    <span class="comment">// invalid!</span></pre>

.. raw:: html

   <p>

This is because a .qml file automatically defines a QML type, which
encapsulates a single QML object definition. This is discussed further
in Documents as QML object type definitions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-documents-structure.html -->
