QtQml.qtqml-syntax-basics
=========================

.. raw:: html

   <p>

QML is a multi-paradigm language that enables objects to be defined in
terms of their attributes and how they relate and respond to changes in
other objects. In contrast to purely imperative code, where changes in
attributes and behavior are expressed through a series of statements
that are processed step by step, QML's declarative syntax integrates
attribute and behavioral changes directly into the definitions of
individual objects. These attribute definitions can then include
imperative code, in the case where complex custom application behavior
is needed.

.. raw:: html

   </p>

.. raw:: html

   <p>

QML source code is generally loaded by the engine through QML documents,
which are standalone documents of QML code. These can be used to define
QML object types that can then be reused throughout an application.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="import-statements">

Import Statements

.. raw:: html

   </h2>

.. raw:: html

   <p>

A QML document may have one or more imports at the top of the file. An
import can be any one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

a versioned namespace into which types have been registered (e.g., by a
plugin)

.. raw:: html

   </li>

.. raw:: html

   <li>

a relative directory which contains type-definitions as QML documents

.. raw:: html

   </li>

.. raw:: html

   <li>

a JavaScript file

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

JavaScript file imports must be qualified when imported, so that the
properties and methods they provide can be accessed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The generic form of the various imports are as follows:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

import Namespace VersionMajor.VersionMinor

.. raw:: html

   </li>

.. raw:: html

   <li>

import Namespace VersionMajor.VersionMinor as SingletonTypeIdentifier

.. raw:: html

   </li>

.. raw:: html

   <li>

import "directory"

.. raw:: html

   </li>

.. raw:: html

   <li>

import "file.js" as ScriptIdentifier

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Examples:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

import QtQuick 2.0

.. raw:: html

   </li>

.. raw:: html

   <li>

import QtQuick.LocalStorage 2.0 as Database

.. raw:: html

   </li>

.. raw:: html

   <li>

import "../privateComponents"

.. raw:: html

   </li>

.. raw:: html

   <li>

import "somefile.js" as Script

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Please see the QML Syntax - Import Statements documentation for in-depth
information about QML imports.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="object-declarations">

Object Declarations

.. raw:: html

   </h2>

.. raw:: html

   <p>

Syntactically, a block of QML code defines a tree of QML objects to be
created. Objects are defined using object declarations that describe the
type of object to be created as well as the attributes that are to be
given to the object. Each object may also declare child objects using
nested object declarations.

.. raw:: html

   </p>

.. raw:: html

   <p>

An object declaration consists of the name of its object type, followed
by a set of curly braces. All attributes and child objects are then
declared within these braces.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a simple object declaration:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }</pre>

.. raw:: html

   <p>

This declares an object of type Rectangle, followed by a set of curly
braces that encompasses the attributes defined for that object. The
Rectangle type is a type made available by the QtQuick module, and the
attributes defined in this case are the values of the rectangle's width,
height and color properties. (These are properties made available by the
Rectangle type, as described in the Rectangle documentation.)

.. raw:: html

   </p>

.. raw:: html

   <p>

The above object can be loaded by the engine if it is part of a QML
document. That is, if the source code is complemented with import
statement that imports the QtQuick module (to make the Rectangle type
available), as below:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }</pre>

.. raw:: html

   <p>

When placed into a .qml file and loaded by the QML engine, the above
code creates a Rectangle object using the Rectangle type supplied by the
QtQuick module:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: If an object definition only has a small number of properties, it
can be written on a single line like this, with the properties separated
by semi-colons:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> { <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }</pre>

.. raw:: html

   <p>

Obviously, the Rectangle object declared in this example is very simple
indeed, as it defines nothing more than a few property values. To create
more useful objects, an object declaration may define many other types
of attributes: these are discussed in the QML Object Attributes
documentation. Additionally, an object declaration may define child
objects, as discussed below.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Child Objects

.. raw:: html

   </h3>

.. raw:: html

   <p>

Any object declaration can define child objects through nested object
declarations. In this way, any object declaration implicitly declares an
object tree that may contain any number of child objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the Rectangle object declaration below includes a Gradient
object declaration, which in turn contains two GradientStop
declarations:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">gradient</span>: <span class="name">Gradient</span> {
   <span class="type">GradientStop</span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
   <span class="type">GradientStop</span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span> }
   }
   }</pre>

.. raw:: html

   <p>

When this code is loaded by the engine, it creates an object tree with a
Rectangle object at the root; this object has a Gradient child object,
which in turn has two GradientStop children.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note, however, that this is a parent-child relationship in the context
of the QML object tree, not in the context of the visual scene. The
concept of a parent-child relationship in a visual scene is provided by
the Item type from the QtQuick module, which is the base type for most
QML types, as most QML objects are intended to be visually rendered. For
example, Rectangle and Text are both Item-based types, and below, a Text
object has been declared as a visual child of a Rectangle object:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">200</span>
   <span class="name">height</span>: <span class="number">200</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type">Text</span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Hello, QML!&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

When the Text object refers to its parent value in the above code, it is
referring to its visual parent, not the parent in the object tree. In
this case, they are one and the same: the Rectangle object is the parent
of the Text object in both the context of the QML object tree as well as
the context of the visual scene. However, while the parent property can
be modified to change the visual parent, the parent of an object in the
context of the object tree cannot be changed from QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

(Additionally, notice that the Text object has been declared without
assigning it to a property of the Rectangle, unlike the earlier example
which assigned a Gradient object to the rectangle's gradient property.
This is because the children property of Item has been set as the type's
default property to enable this more convenient syntax.)

.. raw:: html

   </p>

.. raw:: html

   <p>

See the visual parent documentation for more information on the concept
of visual parenting with the Item type.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="comments">

Comments

.. raw:: html

   </h2>

.. raw:: html

   <p>

The syntax for commenting in QML is similar to that of JavaScript:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Single line comments start with // and finish at the end of the line.

.. raw:: html

   </li>

.. raw:: html

   <li>

Multiline comments start with /\* and finish with \*/

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <pre class="qml"><span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>    <span class="comment">//a basic greeting</span>
   <span class="comment">/*
   We want this text to stand out from the rest so
   we give it a large size and different font.
   */</span>
   <span class="name">font</span>.family: <span class="string">&quot;Helvetica&quot;</span>
   <span class="name">font</span>.pointSize: <span class="number">24</span>
   }</pre>

.. raw:: html

   <p>

Comments are ignored by the engine when processing QML code. They are
useful for explaining what a section of code is doing, whether for
reference at a later date or for explaining the implementation to
others.

.. raw:: html

   </p>

.. raw:: html

   <p>

Comments can also be used to prevent the execution of code, which is
sometimes useful for tracking down problems.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>
   <span class="comment">//opacity: 0.5</span>
   }</pre>

.. raw:: html

   <p>

In the above example, the Text object will have normal opacity, since
the line opacity: 0.5 has been turned into a comment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-syntax-basics.html -->
